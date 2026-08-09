package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.api.BookSession
import io.leostrange.mrcomic.engine.api.FormatReader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * 4.2 (slice 2): html page cache / TOC / warmup operations extracted from
 * ReaderViewModel. Owns the webtoon html cache, adjacent-page cache refresh,
 * html prewarm around a center page and TOC loading, so the book-opening
 * pipeline, page loader and navigation can delegate without ViewModel state.
 *
 * The ViewModel stays the single owner of state and lifecycle; this controller
 * holds only the transient `tocLoadJob`.
 */
internal class ReaderPageCacheController(
    private val scope: CoroutineScope,
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val textReaderOrchestrator: TextReaderOrchestrator,
    private val _webtoonHtmlCache: MutableStateFlow<Map<Int, String>>,
    private val navigationController: ReaderNavigationController,
    private val progressController: ReaderProgressController,
    private val formatReader: () -> FormatReader?,
    private val activeBookSession: () -> BookSession?,
) {
    private var tocLoadJob: Job? = null

    fun cancelPendingToc() {
        tocLoadJob?.cancel()
    }

    /** Loads the TOC from BookEngine (Readium) or the legacy format reader. */
    fun loadToc(force: Boolean = false) {
        val reader = formatReader() ?: run {
            _uiState.update { it.copy(tableOfContents = emptyList()) }
            return
        }
        if (!force && _uiState.value.tableOfContents.isNotEmpty()) return
        tocLoadJob?.cancel()
        tocLoadJob = scope.launch(Dispatchers.IO) {
            val bookSession = activeBookSession()
            val toc = textReaderOrchestrator.resolveTableOfContents(reader, bookSession)
            if (formatReader() !== reader) return@launch
            _uiState.update { it.copy(tableOfContents = toc) }
            progressController.rememberChapterMilestoneAnchor(_uiState.value.currentPage) { p ->
                navigationController.currentChapterFor(p)
            }
        }
    }

    fun tocDisplayPage(enginePageIndex: Int): Int =
        TextReaderNavigation.tocDisplayPage(
            state = _uiState.value,
            controller = textReaderOrchestrator.controller,
            enginePageIndex = enginePageIndex
        )

    fun clearHtmlPageCache() {
        textReaderOrchestrator.resetSessionAndCaches {
            _webtoonHtmlCache.value = emptyMap()
            _uiState.update {
                it.copy(
                    textWebtoonHtmlContent = null,
                    textWebtoonHtmlAssetBasePath = null,
                    textWebtoonHtmlPageCount = 0
                )
            }
        }
    }

    fun refreshAdjacentHtmlPages(centerPage: Int = _uiState.value.currentPage) {
        val previous = textReaderOrchestrator.controller.cachedHtmlPage(centerPage - 1)
        val next = textReaderOrchestrator.controller.cachedHtmlPage(centerPage + 1)
        _uiState.update { state ->
            if (state.currentHtmlContent == null && state.currentPage != centerPage) {
                state
            } else {
                state.copy(
                    previousHtmlContent = previous?.html,
                    previousHtmlAssetBasePath = previous?.assetBasePath,
                    nextHtmlContent = next?.html,
                    nextHtmlAssetBasePath = next?.assetBasePath
                )
            }
        }
    }

    suspend fun getOrLoadHtmlPage(reader: FormatReader, index: Int): CachedHtmlPage? =
        textReaderOrchestrator.loadHtmlPage(
            reader = reader,
            index = index,
            containerKind = _uiState.value.readerContainerKind,
            onWebtoonPageCached = { pageIndex, html ->
                _webtoonHtmlCache.update { it + (pageIndex to html) }
            }
        )

    fun prewarmHtmlPagesAround(centerPage: Int, delayMillis: Long = 0L) {
        val reader = formatReader() ?: return
        val comicId = _uiState.value.comic?.id ?: return
        textReaderOrchestrator.prewarmHtmlPagesAround(
            scope = scope,
            reader = reader,
            comicId = comicId,
            centerPage = centerPage,
            getUiState = { _uiState.value },
            visiblePagesFor = navigationController::visiblePagesFor,
            isStillActive = { formatReader() === reader && _uiState.value.comic?.id == comicId },
            loadPage = { pageIndex -> getOrLoadHtmlPage(reader, pageIndex) },
            onPagePrewarmed = { refreshAdjacentHtmlPages() },
            delayMillis = delayMillis
        )
    }
}
