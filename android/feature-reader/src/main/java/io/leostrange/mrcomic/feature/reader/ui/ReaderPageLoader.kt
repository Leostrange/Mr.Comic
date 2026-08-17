package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.engine.api.FormatReader
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

/**
 * Loads bitmap and HTML pages, manages the webtoon HTML cache, and
 * triggers adjacent-page refresh and highlight reload after page load.
 */
internal class ReaderPageLoader(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val pagePreloader: PagePreloader,
    private val textReaderOrchestrator: TextReaderOrchestrator,
    private val _webtoonHtmlCache: MutableStateFlow<Map<Int, String>>,
    private val formatReader: () -> FormatReader?,
    private val getOrLoadHtmlPage: suspend (FormatReader, Int) -> CachedHtmlPage?,
    private val refreshAdjacentHtmlPages: (Int) -> Unit,
    private val loadHighlightsForCurrentPage: () -> Unit,
    private val activeBookSession: () -> io.leostrange.mrcomic.engine.api.BookSession?
) {
    fun getPage(index: Int, renderQuality: Int = 1): android.graphics.Bitmap? =
        pagePreloader.getPage(index, renderQuality)

    fun getPageFlow(index: Int, renderQuality: Int = 1) =
        pagePreloader.getPageFlow(index, renderQuality)

    private val _pageErrors = MutableStateFlow<Map<Int, String>>(emptyMap())

    /**
     * Combines the bitmap flow, webtoon HTML cache and per-page error map into a single
     * [PageLoadState] so containers can distinguish loading, ready and failed pages.
     */
    fun getPageLoadStateFlow(index: Int): Flow<PageLoadState> =
        combine(
            pagePreloader.getPageFlow(index, 1),
            _webtoonHtmlCache,
            _pageErrors,
        ) { bitmap, htmlCache, errors ->
            pageLoadStateFrom(
                bitmap = bitmap,
                html = htmlCache[index],
                error = errors[index],
            )
        }

    fun loadPage(index: Int, renderQuality: Int = 1) {
        val comicId = _uiState.value.comic?.id
        val reader = formatReader()
        viewModelScope.launch {
            if (reader == null || formatReader() !== reader) return@launch
            if (_uiState.value.readerRendersHtmlContent) {
                val cachedHtmlPage = runCatching {
                    getOrLoadHtmlPage(reader, index)
                }.getOrElse { error ->
                    Log.e("ReaderViewModel", "Failed to load HTML page $index", error)
                    if (_uiState.value.currentPage == index) {
                        CachedHtmlPage(
                            html = textReaderOrchestrator.loadErrorHtml(index, error),
                            assetBasePath = null
                        )
                    } else {
                        null
                    }
                }
                if (cachedHtmlPage != null) {
                    if (
                        formatReader() === reader &&
                        _uiState.value.comic?.id == comicId &&
                        _uiState.value.currentPage == index
                    ) {
                        _uiState.update {
                            it.copy(
                                currentHtmlContent = cachedHtmlPage.html,
                                htmlAssetBasePath = cachedHtmlPage.assetBasePath,
                                textWebtoonHtmlContent = if (it.readingMode == ReadingMode.WEBTOON) {
                                    it.textWebtoonHtmlContent
                                } else {
                                    null
                                },
                                textWebtoonHtmlAssetBasePath = if (it.readingMode == ReadingMode.WEBTOON) {
                                    it.textWebtoonHtmlAssetBasePath
                                } else {
                                    null
                                },
                                textWebtoonHtmlPageCount = if (it.readingMode == ReadingMode.WEBTOON) {
                                    it.textWebtoonHtmlPageCount
                                } else {
                                    0
                                }
                            )
                        }
                        refreshAdjacentHtmlPages(index)
                        loadHighlightsForCurrentPage()
                    }
                    return@launch
                }
                if (_uiState.value.currentPage == index && formatReader() === reader && comicId != null) {
                    Log.w("ReaderViewModel", "Empty HTML for page $index; showing error surface")
                    _uiState.update {
                        it.copy(
                            currentHtmlContent = textReaderOrchestrator.loadErrorHtml(
                                index,
                                IllegalStateException("Empty HTML page")
                            ),
                            htmlAssetBasePath = null
                        )
                    }
                }
                return@launch
            }
            // Bitmap page (image-based formats)
            if (renderQuality == 1) {
                if (formatReader() === reader && _uiState.value.comic?.id == comicId && _uiState.value.currentPage == index) {
                    _uiState.update {
                        it.copy(
                            currentHtmlContent = null,
                            htmlAssetBasePath = null,
                            previousHtmlContent = null,
                            previousHtmlAssetBasePath = null,
                            nextHtmlContent = null,
                            nextHtmlAssetBasePath = null,
                            error = null
                        )
                    }
                }
            }
            if (renderQuality == 1) {
                _pageErrors.update { it - index }
            }
            if (pagePreloader.getPage(index, renderQuality) == null) {
                val bitmap = try {
                    pagePreloader.loadPage(reader, index, renderQuality)
                } catch (e: Throwable) {
                    Log.e("ReaderViewModel", "Failed to load bitmap page $index", e)
                    null
                }
                // Surface bitmap load failure to the UI so PageView can show an error
                // surface instead of an infinite spinner.
                if (bitmap == null && renderQuality == 1 &&
                    formatReader() === reader && _uiState.value.comic?.id == comicId &&
                    _uiState.value.currentPage == index
                ) {
                    val message = "Failed to render page ${index + 1}"
                    _pageErrors.update { it + (index to message) }
                    _uiState.update {
                        it.copy(error = message)
                    }
                }
            }
        }
    }

    fun preloadWebtoonWindow(pages: List<Int>) {
        val reader = formatReader() ?: return
        val state = _uiState.value
        if (state.totalPages <= 0 || state.readerRendersHtmlContent) return
        val validPages = pages
            .asSequence()
            .filter { it in 0 until state.totalPages }
            .distinct()
            .toList()
        if (validPages.isEmpty()) return

        validPages.forEach { pageIndex ->
            viewModelScope.launch {
                if (formatReader() !== reader) return@launch
                if (pagePreloader.getPage(pageIndex, 1) == null) {
                    runCatching { pagePreloader.loadPage(reader, pageIndex, 1) }
                }
                if (formatReader() !== reader) return@launch
                if (pagePreloader.getPage(pageIndex, 1) == null &&
                    _webtoonHtmlCache.value[pageIndex] == null
                ) {
                    val html = withContext(Dispatchers.IO) {
                        runCatching { reader.getHtmlPage(pageIndex) }.getOrNull()
                    }
                    if (html != null && formatReader() === reader) {
                        _webtoonHtmlCache.update { it + (pageIndex to html) }
                    }
                }
                // Publish a per-page Failed state when neither bitmap nor HTML could be
                // produced, so the WebtoonView can show a retry card instead of a spinner.
                if (formatReader() === reader) {
                    val errorEntry = webtoonPageErrorEntry(
                        bitmapReady = pagePreloader.getPage(pageIndex, 1) != null,
                        htmlReady = _webtoonHtmlCache.value[pageIndex] != null,
                        pageIndex = pageIndex
                    )
                    if (errorEntry != null) {
                        _pageErrors.update { it + errorEntry }
                    } else {
                        _pageErrors.update { it - pageIndex }
                    }
                }
            }
        }

        pagePreloader.preloadAround(
            reader = reader,
            visiblePages = validPages,
            totalPages = state.totalPages,
            preloadAhead = state.preloadPages
        )
    }

    fun ensureTextWebtoonDocumentLoaded() {
        val reader = formatReader() ?: return
        val state = _uiState.value
        val comic = state.comic ?: return
        if (state.readerContainerKind != ReaderContainerKind.TEXT_WEBTOON) return
        textReaderOrchestrator.controller.ensureTextWebtoonDocumentLoaded(
            scope = viewModelScope,
            reader = reader,
            comic = comic,
            state = state,
            isSessionActive = { activeReader, comicId ->
                formatReader() === activeReader && _uiState.value.comic?.id == comicId
            },
            loadPage = { activeReader, pageIndex -> getOrLoadHtmlPage(activeReader, pageIndex) },
            publish = { document, loadedCount ->
                _uiState.update { current ->
                    if (current.comic?.id != comic.id || formatReader() !== reader) {
                        current
                    } else if (
                        current.textWebtoonHtmlContent != null &&
                        current.textWebtoonHtmlPageCount >= loadedCount
                    ) {
                        current
                    } else {
                        current.copy(
                            textWebtoonHtmlContent = document.html,
                            textWebtoonHtmlAssetBasePath = document.assetBasePath,
                            textWebtoonHtmlPageCount = loadedCount
                        )
                    }
                }
            },
            onBuildFailed = {
                // A stitched-document build failure (e.g. malformed RTF HTML) must not
                // crash the reader back to the library: surface a recoverable error page
                // in the webtoon container instead. pageCount = 0 keeps the re-entry
                // guard open so switching modes re-attempts the build.
                _uiState.update { current ->
                    if (current.comic?.id != comic.id || formatReader() !== reader) {
                        current
                    } else {
                        val errorHtml = textReaderOrchestrator.loadErrorHtml(
                            current.currentPage.coerceAtLeast(0),
                            IllegalStateException("Failed to build webtoon document")
                        )
                        current.copy(
                            textWebtoonHtmlContent = errorHtml,
                            textWebtoonHtmlAssetBasePath = null,
                            textWebtoonHtmlPageCount = 0
                        )
                    }
                }
            }
        )
    }
}
