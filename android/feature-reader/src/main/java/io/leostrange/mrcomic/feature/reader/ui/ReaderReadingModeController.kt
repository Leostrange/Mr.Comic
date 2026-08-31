package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderContainerPosition
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderNavigationBounds
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderTextWebtoonCursor
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
    private val getLastTextWebtoonCursor: () -> ReaderTextWebtoonCursor? = { null },
    private val seedTextWebtoonCursor: (ReaderTextWebtoonCursor?) -> Unit = {},
    private val onAutoScrollModeChanged: (ReadingMode) -> Unit = {},
    /** BUG-READER-02: immediate position save on mode change to survive rapid close. */
    private val savePositionImmediate: () -> Unit = {}
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
        // BUG-RDR-007: Save position BEFORE applying the new mode, so the
        // structured position captures the current scroll/page state.
        savePositionImmediate()
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
        val sectionCount = totalBookSections().takeIf { it > 0 } ?: currentState.totalPages
        val bounds = ReaderNavigationBounds(
            sectionCount = sectionCount.coerceAtLeast(1),
            pageCount = currentState.totalPages.coerceAtLeast(1),
            pagesPerSection = mapOf(
                currentState.currentPage to currentState.sectionPageCount.coerceAtLeast(1)
            )
        )
        val isEnteringTextWebtoon =
            currentState.readerContainerKind == ReaderContainerKind.TEXT_PAGE &&
                nextContainerKind == ReaderContainerKind.TEXT_WEBTOON
        val isLeavingTextWebtoon =
            currentState.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON &&
                nextContainerKind == ReaderContainerKind.TEXT_PAGE
        val existingWebtoonCursor = if (currentState.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON) {
            getLastTextWebtoonCursor() ?: ReaderTextWebtoonCursor(
                engineSectionIndex = currentState.currentPage.coerceAtLeast(0),
                webtoonSectionIndex = (
                    currentState.pendingWebtoonSectionIndex ?: currentState.currentPage
                    ).coerceAtLeast(0),
                characterOffset = currentState.freeScrollCharacterOffset.takeIf { it >= 0 },
                progression = currentState.freeScrollProgression.takeIf { it in 0.0..1.0 },
                fragment = currentState.pendingScrollToAnchor
            )
        } else {
            null
        }
        val transitionCursor = when {
            isLeavingTextWebtoon -> existingWebtoonCursor
            isEnteringTextWebtoon -> readerTextWebtoonCursorFromPagedPosition(
                engineSectionIndex = currentState.currentPage,
                pagedSubpageIndex = currentState.sectionCurrentPage,
                pagedSubpageCount = currentState.sectionPageCount,
                totalWebtoonSections = sectionCount,
                characterOffset = currentState.sectionCharacterOffset.takeIf { it >= 0 },
                fragment = currentState.pendingScrollToAnchor
            )
            else -> null
        }
        if (isEnteringTextWebtoon) seedTextWebtoonCursor(transitionCursor)

        val currentLocator = when {
            isLeavingTextWebtoon && transitionCursor != null -> ReaderNavigatorFacade.locator(
                kind = ReaderContainerKind.TEXT_PAGE,
                primaryIndex = transitionCursor.engineSectionIndex,
                characterOffset = transitionCursor.characterOffset ?: 0,
                progression = transitionCursor.progression,
                fragment = transitionCursor.fragment
            )
            isEnteringTextWebtoon && transitionCursor != null -> ReaderNavigatorFacade.locator(
                kind = ReaderContainerKind.TEXT_WEBTOON,
                primaryIndex = transitionCursor.webtoonSectionIndex,
                characterOffset = transitionCursor.characterOffset ?: 0,
                progression = transitionCursor.progression,
                fragment = transitionCursor.fragment
            )
            else -> ReaderNavigatorFacade.locator(
                kind = currentState.readerContainerKind,
                primaryIndex = existingWebtoonCursor?.webtoonSectionIndex ?: currentState.currentPage,
                pageInSection = currentState.sectionCurrentPage,
                characterOffset = existingWebtoonCursor?.characterOffset
                    ?: currentState.sectionCharacterOffset,
                progression = existingWebtoonCursor?.progression,
                fragment = existingWebtoonCursor?.fragment ?: currentState.pendingScrollToAnchor
            )
        }
        val resolvedPosition = ReaderNavigatorFacade.resolve(
            locator = currentLocator,
            kind = nextContainerKind,
            bounds = bounds
        ).position
        val pageForAlignment = when {
            transitionCursor != null -> transitionCursor.engineSectionIndex
            else -> ReaderNavigatorFacade.primaryIndex(resolvedPosition)
        }
        val alignedPage = normalizePageForMode(pageForAlignment, mode, currentState.totalPages)
        val webtoonRestoreSection = ReaderNavigatorFacade.textSection(resolvedPosition)
        if (
            currentState.readingMode == mode &&
            currentState.currentPage == alignedPage &&
            currentState.readerContainerKind == nextContainerKind
        ) {
            return
        }
        _uiState.update { state ->
            val textPagePosition = resolvedPosition as? ReaderContainerPosition.TextPage
            val textWebtoonPosition = resolvedPosition as? ReaderContainerPosition.TextWebtoon
            val nextIsTextWebtoon = nextContainerKind == ReaderContainerKind.TEXT_WEBTOON
            // BUG-READER-05: Explicitly preserve readerPreset and textColorScheme
            // to ensure mode changes don't reset the theme.
            state.copy(
                readingMode = mode,
                readerPreset = state.readerPreset,
                textColorScheme = state.textColorScheme,
                currentPage = alignedPage,
                sectionCurrentPage = when {
                    textPagePosition != null -> textPagePosition.pageInSplit
                    nextIsTextWebtoon -> 0
                    else -> state.sectionCurrentPage
                },
                sectionCharacterOffset = when {
                    textPagePosition != null -> textPagePosition.characterOffset
                    nextIsTextWebtoon -> 0
                    else -> state.sectionCharacterOffset
                },
                pendingScrollToAnchor = when {
                    textPagePosition != null -> textPagePosition.fragment
                    textWebtoonPosition != null -> textWebtoonPosition.fragment
                    else -> null
                },
                pendingWebtoonSectionIndex = if (
                    readerShouldRestoreTextWebtoonSection(
                        previousMode = currentState.readingMode,
                        nextMode = mode,
                        readerRendersHtmlContent = currentState.readerRendersHtmlContent
                    )
                ) {
                    webtoonRestoreSection
                } else {
                    null
                },
                freeScrollCharacterOffset = if (nextIsTextWebtoon) {
                    readerTextWebtoonRestoreCharacterOffset(
                        transitionCursor = transitionCursor,
                        resolvedCharacterOffset = textWebtoonPosition?.characterOffset ?: 0
                    )
                } else {
                    -1
                },
                freeScrollProgression = if (nextIsTextWebtoon) {
                    textWebtoonPosition?.progression ?: -1.0
                } else {
                    -1.0
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
            currentState.readingMode != mode ||
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
