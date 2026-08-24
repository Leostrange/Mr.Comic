package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.engine.api.TocEntry
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderTextWebtoonCursor
import io.leostrange.mrcomic.feature.reader.domain.session.ReaderSessionCoordinator
import io.leostrange.mrcomic.engine.rendering.preload.PagePreloader
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update

/**
 * Core navigation: page turning, jump-to, position sync, visible-page
 * calculation, and section paging alignment.
 */
internal class ReaderNavigationController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val readerSessionCoordinator: ReaderSessionCoordinator,
    private val pagePreloader: PagePreloader,
    private val textReaderOrchestrator: TextReaderOrchestrator,
    private val formatReader: () -> io.leostrange.mrcomic.engine.api.FormatReader?,
    private val loadPage: (Int) -> Unit,
    private val prewarmHtmlPagesAround: (Int) -> Unit,
    private val loadPageTranslationNote: (Int) -> Unit,
    private val saveProgress: (Int, ReaderNavigationProgressSource) -> Unit,
    private val maybeEmitChapterMilestone: (Int, ReaderNavigationProgressSource) -> Unit,
    private val isProgressAlreadyPersisted: (String?, Int) -> Boolean,
    private val scheduleHighQualityWarmup: (Int) -> Unit,
    private val applyHighQualityRetention: (Set<Int>) -> Unit,
    private val activeComicSupportsBitmapPreload: () -> Boolean,
    private val playPageSound: () -> Unit
) {
    fun navigateTo(
        page: Int,
        progressSource: ReaderNavigationProgressSource = ReaderNavigationProgressSource.READING
    ) {
        val resolvedPage = resolveNavigationPage(page, progressSource)
        val clamped = normalizePageForMode(
            page = resolvedPage,
            mode = _uiState.value.readingMode,
            totalPages = _uiState.value.totalPages
        )
        val previousState = _uiState.value
        val shouldResetInlineState =
            previousState.selectedTextActionSheet != null || previousState.selectedTextTranslation != null
        if (clamped == previousState.currentPage && !shouldResetInlineState) {
            return
        }
        if (countsAsManualPageTurn(progressSource)) {
            readerSessionCoordinator.recordManualPageTurn()
        }
        _uiState.update {
            val sectionPaging = sectionPagingStateAfterNavigation(
                previousSection = previousState.currentPage,
                nextSection = clamped,
                previousPageCount = previousState.sectionPageCount,
                previousPageIndex = previousState.sectionCurrentPage
            )
            it.copy(
                currentPage = clamped,
                sectionPageCount = sectionPaging.pageCount,
                sectionCurrentPage = sectionPaging.pageIndex,
                sectionCharacterOffset = if (previousState.currentPage != clamped) 0 else it.sectionCharacterOffset,
                footnotePopup = null,
                footnotePresentation = FootnotePresentation.PEEK,
                selectedTextActionSheet = null,
                selectedTextTranslation = null,
                error = null
            )
        }
        if (progressSource == ReaderNavigationProgressSource.READING) {
            playPageSound()
        }
        syncReaderPosition(
            page = clamped,
            mode = _uiState.value.readingMode,
            persistProgress = true,
            progressSource = progressSource
        )
    }

    fun navigateToTocEntry(page: Int, anchorId: String, sectionIndex: Int = -1, charOffset: Int = -1) {
        val current = _uiState.value.currentPage
        val targetSection = if (sectionIndex >= 0) sectionIndex else page
        // BUG-READER-07: Normalize anchor — empty string should be treated as null
        // to avoid setting pendingScrollToAnchor to a blank value that gets filtered out.
        val normalizedAnchor = anchorId.takeIf { it.isNotBlank() }
        if (targetSection != current) {
            _uiState.update { it.copy(pendingScrollToAnchor = normalizedAnchor) }
            navigateTo(targetSection, progressSource = ReaderNavigationProgressSource.JUMP)
            return
        }
        // Same section: reset sub-page to start and apply anchor scroll.
        // This handles the case where the user is mid-section and taps a TOC entry
        // that points to the same section — we still need to scroll to the anchor.
        _uiState.update {
            it.copy(
                pendingScrollToAnchor = normalizedAnchor,
                sectionCurrentPage = 0,
                sectionCharacterOffset = if (charOffset >= 0) charOffset else 0
            )
        }
    }

    fun nextPage() = navigateTo(
        _uiState.value.currentPage + pageStepForMode(_uiState.value.readingMode),
        progressSource = ReaderNavigationProgressSource.READING
    )

    fun prevPage() = navigateTo(
        _uiState.value.currentPage - pageStepForMode(_uiState.value.readingMode),
        progressSource = ReaderNavigationProgressSource.READING
    )

    fun syncReaderPosition(
        page: Int,
        mode: ReadingMode,
        persistProgress: Boolean,
        progressSource: ReaderNavigationProgressSource = ReaderNavigationProgressSource.READING,
        announceChapterMilestone: Boolean = true
    ) {
        val visiblePages = visiblePagesFor(page, mode)
        visiblePages.forEach { visiblePage ->
            loadPage(visiblePage)
        }
        if (activeComicSupportsBitmapPreload()) {
            applyHighQualityRetention(visiblePages.toSet())
            if (mode != ReadingMode.WEBTOON) {
                formatReader()?.let { reader ->
                    pagePreloader.preloadAround(reader, visiblePages, _uiState.value.totalPages, _uiState.value.preloadPages)
                }
                scheduleHighQualityWarmup(page)
            }
        } else {
            applyHighQualityRetention(emptySet())
            prewarmHtmlPagesAround(page)
        }
        loadPageTranslationNote(page)
        if (persistProgress) {
            saveProgress(page, progressSource)
        }
        if (announceChapterMilestone) {
            maybeEmitChapterMilestone(page, progressSource)
        }
    }

    fun visiblePagesFor(page: Int, mode: ReadingMode): List<Int> {
        return ReaderNavigationPolicy.visiblePages(
            page = page,
            mode = mode,
            totalPages = _uiState.value.totalPages
        )
    }

    fun currentChapterFor(page: Int): TocEntry? {
        return ReaderChapterPolicy.currentChapter(
            tableOfContents = _uiState.value.tableOfContents,
            enginePage = enginePageForUiPage(page)
        )
    }

    fun enginePageForUiPage(page: Int): Int =
        TextReaderNavigation.enginePageForUiPage(
            state = _uiState.value,
            controller = textReaderOrchestrator.controller,
            page = page
        )

    fun resolveNavigationPage(
        page: Int,
        progressSource: ReaderNavigationProgressSource
    ): Int = TextReaderNavigation.resolveNavigationPage(
        state = _uiState.value,
        controller = textReaderOrchestrator.controller,
        page = page,
        progressSource = progressSource
    )

    fun normalizePageForMode(
        page: Int,
        mode: ReadingMode,
        totalPages: Int = _uiState.value.totalPages
    ): Int = ReaderNavigationPolicy.normalizePage(page, mode, totalPages)

    fun pageStepForMode(mode: ReadingMode): Int = ReaderNavigationPolicy.pageStep(mode)

    fun consumePendingScrollToAnchor() {
        _uiState.update { it.copy(pendingScrollToAnchor = null) }
    }

    fun consumePendingWebtoonSection() {
        _uiState.update { it.copy(pendingWebtoonSectionIndex = null) }
    }

    /**
     * Last text WEBTOON cursor reported by the stitched document.
     *
     * This keeps the canonical engine section separate from the visual Webtoon section so
     * WEBTOON → PAGE does not reset a single-spine book to the beginning.
     */
    var lastTextWebtoonCursor: ReaderTextWebtoonCursor? = null
        private set

    fun seedTextWebtoonCursor(cursor: ReaderTextWebtoonCursor?) {
        lastTextWebtoonCursor = cursor
    }

    fun clearTextWebtoonCursor() {
        lastTextWebtoonCursor = null
    }

    fun updateTextWebtoonVisibleSection(sectionIndex: Int) {
        lastTextWebtoonCursor = readerTextWebtoonCursorAtVisibleSection(
            previous = lastTextWebtoonCursor,
            visibleSectionIndex = sectionIndex
        )
    }

    fun updateTextWebtoonVisiblePosition(
        characterOffset: Int?,
        progression: Double?
    ) {
        val current = lastTextWebtoonCursor ?: ReaderTextWebtoonCursor(
            engineSectionIndex = _uiState.value.currentPage.coerceAtLeast(0),
            webtoonSectionIndex = _uiState.value.currentPage.coerceAtLeast(0)
        )
        lastTextWebtoonCursor = readerTextWebtoonCursorAtVisibleSection(
            previous = current,
            visibleSectionIndex = current.webtoonSectionIndex,
            characterOffset = characterOffset,
            progression = progression,
            fragment = _uiState.value.pendingScrollToAnchor
        )
    }
}
