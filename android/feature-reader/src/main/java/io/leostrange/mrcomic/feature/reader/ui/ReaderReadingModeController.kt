package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderNavigationBounds
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Manages reading mode switching: PAGE, WEBTOON, DUAL_PAGE, orientation
 * changes, landscape spread, and portrait-mode memory.
 */
internal class ReaderReadingModeController(
    private val _uiState: MutableStateFlow<ReaderUiState>,
    private val viewModelScope: CoroutineScope,
    private val readerPreferences: UserPreferences,
    private val textReaderOrchestrator: TextReaderOrchestrator,
    private val totalBookSections: () -> Int,
    private val normalizePageForMode: (Int, ReadingMode, Int) -> Int,
    private val syncReaderPosition: (Int, ReadingMode, Boolean) -> Unit,
    private val scheduleTextPagePaginationBuild: () -> Unit,
    private val isProgressAlreadyPersisted: (String?, Int) -> Boolean,
    private val prewarmHtmlPagesAround: (Int) -> Unit,
    private val activeComicSupportsBitmapPreload: () -> Boolean,
    private val markReaderPresetCustom: () -> Unit,
    private val getLastTextWebtoonSection: () -> Int? = { null },
    private val onAutoScrollModeChanged: (ReadingMode) -> Unit = {}
) {
    var portraitReadingMode: ReadingMode = ReadingMode.PAGE_LTR
    var portraitPagedReadingMode: ReadingMode = ReadingMode.PAGE_LTR

    fun setReadingMode(mode: ReadingMode) {
        val currentState = _uiState.value
        val alignedPage = normalizePageForMode(
            currentState.currentPage,
            mode,
            currentState.totalPages
        )
        if (currentState.readingMode == mode && currentState.currentPage == alignedPage) {
            rememberPortraitMode(mode)
            return
        }
        rememberPortraitMode(mode)
        markReaderPresetCustom()
        applyReadingMode(mode)
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READING_MODE, mode.name)
        }
    }

    fun onOrientationChanged(
        useLandscapeSpread: Boolean,
        isTextReader: Boolean = false
    ) {
        _uiState.update { it.copy(isLandscape = useLandscapeSpread) }
        val currentMode = _uiState.value.readingMode
        val canAutoLandscapeSpread = _uiState.value.landscapeSpreadEnabled &&
            ReaderOpeningModePolicy.supportsAutomaticLandscapeSpread(portraitReadingMode)
        if (isTextReader) {
            if (currentMode == ReadingMode.DUAL_PAGE) {
                applyReadingMode(portraitPagedReadingMode)
            }
            return
        }
        if (useLandscapeSpread && canAutoLandscapeSpread && currentMode != ReadingMode.DUAL_PAGE) {
            applyReadingMode(ReadingMode.DUAL_PAGE)
        } else if (!useLandscapeSpread && currentMode == ReadingMode.DUAL_PAGE) {
            applyReadingMode(portraitReadingMode)
        }
    }

    fun applyReadingMode(mode: ReadingMode) {
        val currentState = _uiState.value
        val nextContainerKind = resolveReaderContainerKind(
            format = currentState.comic?.format,
            readingMode = mode,
            readerRendersHtmlContent = currentState.readerRendersHtmlContent
        )
        val currentPrimaryIndex = if (
            currentState.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON
        ) {
            getLastTextWebtoonSection() ?: currentState.currentPage
        } else {
            currentState.currentPage
        }
        val currentLocator = ReaderNavigatorFacade.locator(
            kind = currentState.readerContainerKind,
            primaryIndex = currentPrimaryIndex,
            pageInSection = currentState.sectionCurrentPage,
            characterOffset = currentState.sectionCharacterOffset,
            fragment = currentState.pendingScrollToAnchor
        )
        val sectionCount = totalBookSections().takeIf { it > 0 } ?: currentState.totalPages
        val resolvedPosition = ReaderNavigatorFacade.resolve(
            locator = currentLocator,
            kind = nextContainerKind,
            bounds = ReaderNavigationBounds(
                sectionCount = sectionCount.coerceAtLeast(1),
                pageCount = currentState.totalPages.coerceAtLeast(1),
                pagesPerSection = mapOf(
                    currentState.currentPage to currentState.sectionPageCount.coerceAtLeast(1)
                )
            )
        ).position
        val pageForAlignment = ReaderNavigatorFacade.primaryIndex(resolvedPosition)
        val alignedPage = normalizePageForMode(
            pageForAlignment,
            mode,
            currentState.totalPages
        )
        val webtoonRestoreSection = ReaderNavigatorFacade.textSection(resolvedPosition)
        if (currentState.readingMode == mode && currentState.currentPage == alignedPage) {
            return
        }
        _uiState.update { state ->
            state.copy(
                readingMode = mode,
                currentPage = alignedPage,
                pendingWebtoonSectionIndex = if (
                    readerShouldRestoreTextWebtoonSection(
                        previousMode = currentState.readingMode,
                        nextMode = mode,
                        readerRendersHtmlContent = currentState.readerRendersHtmlContent
                    )
                ) {
                    webtoonRestoreSection
                } else {
                    state.pendingWebtoonSectionIndex
                },
                readerContainerKind = nextContainerKind
            )
        }
        if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON) {
            textReaderOrchestrator.clearTextPagePagination()
            textReaderOrchestrator.cancelPaginationJob()
        } else if (_uiState.value.readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
            scheduleTextPagePaginationBuild()
        }
        syncReaderPosition(
            alignedPage,
            mode,
            !isProgressAlreadyPersisted(_uiState.value.comic?.id, alignedPage)
        )
        onAutoScrollModeChanged(mode)
    }

    fun setLandscapeSpreadEnabled(enabled: Boolean) {
        _uiState.update { it.copy(landscapeSpreadEnabled = enabled) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
        }
        onOrientationChanged(
            useLandscapeSpread = _uiState.value.isLandscape,
            isTextReader = _uiState.value.currentHtmlContent != null ||
                _uiState.value.readerRendersHtmlContent
        )
    }

    fun setPreloadPages(count: Int) {
        val safe = count.coerceIn(2, 8)
        _uiState.update { it.copy(preloadPages = safe) }
        viewModelScope.launch {
            readerPreferences.set(PreferencesKeys.READER_PRELOAD_PAGES, safe)
        }
        if (!activeComicSupportsBitmapPreload()) {
            prewarmHtmlPagesAround(_uiState.value.currentPage)
        }
    }

    fun effectiveOpeningModeFor(
        format: ComicFormat,
        readerRendersHtmlContent: Boolean = format.isTextReadingFormat()
    ): ReadingMode = ReaderOpeningModePolicy.resolve(
        readerRendersHtmlContent = readerRendersHtmlContent,
        currentMode = _uiState.value.readingMode,
        portraitMode = portraitReadingMode,
        portraitPagedMode = portraitPagedReadingMode,
        isLandscape = _uiState.value.isLandscape,
        landscapeSpreadEnabled = _uiState.value.landscapeSpreadEnabled
    )

    fun rememberPortraitMode(mode: ReadingMode) {
        if (mode == ReadingMode.DUAL_PAGE) return
        portraitReadingMode = mode
        if (mode == ReadingMode.PAGE_LTR || mode == ReadingMode.PAGE_RTL) {
            portraitPagedReadingMode = mode
        }
    }
}
