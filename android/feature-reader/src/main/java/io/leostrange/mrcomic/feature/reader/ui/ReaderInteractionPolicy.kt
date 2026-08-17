package io.leostrange.mrcomic.feature.reader.ui

// ARC-11 S4: KeyEvent import removed — see ReaderKeyActionPolicy.kt
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.engine.api.TocEntry
import io.leostrange.mrcomic.feature.reader.domain.navigation.ReaderTextWebtoonCursor
import kotlin.math.roundToInt

// ARC-11 S4: ReaderHardwareKeyDecision moved to ReaderKeyActionPolicy.kt

fun previousReaderChapterPage(
    tableOfContents: List<TocEntry>,
    currentPage: Int
): Int? {
    val sorted = tableOfContents.sortedBy { it.pageIndex }
    return sorted.lastOrNull { it.pageIndex < currentPage }?.pageIndex
}

fun nextReaderChapterPage(
    tableOfContents: List<TocEntry>,
    currentPage: Int
): Int? {
    val sorted = tableOfContents.sortedBy { it.pageIndex }
    return sorted.firstOrNull { it.pageIndex > currentPage }?.pageIndex
}

fun currentReaderChapterTitle(
    tableOfContents: List<TocEntry>,
    currentPage: Int
): String? = tableOfContents
    .sortedBy { it.pageIndex }
    .lastOrNull { it.pageIndex <= currentPage }
    ?.title
    ?.trim()
    ?.takeIf { it.isNotBlank() }

// ARC-11 S4: readerVolumePagingStep moved to ReaderKeyActionPolicy.kt

fun readerModeAllowsHorizontalPageTurn(readingMode: ReadingMode): Boolean =
    readingMode == ReadingMode.PAGE_LTR ||
        readingMode == ReadingMode.PAGE_RTL ||
        readingMode == ReadingMode.DUAL_PAGE

fun readerModeLocksHtmlVerticalScroll(readingMode: ReadingMode): Boolean =
    readingMode == ReadingMode.PAGE_LTR ||
        readingMode == ReadingMode.PAGE_RTL ||
        readingMode == ReadingMode.DUAL_PAGE

fun readerTextWebtoonBoundaryNavigationStep(
    startedAtTopBoundary: Boolean,
    startedAtBottomBoundary: Boolean,
    dragDeltaY: Float,
    dragDeltaX: Float,
    minimumVerticalPullPx: Float = 56f
): Int? {
    val absY = kotlin.math.abs(dragDeltaY)
    val absX = kotlin.math.abs(dragDeltaX)
    if (absY < minimumVerticalPullPx) return null
    if (absX > absY * 0.65f) return null

    return when {
        startedAtBottomBoundary && dragDeltaY < 0f -> 1
        startedAtTopBoundary && dragDeltaY > 0f -> -1
        else -> null
    }
}

/**
 * Text selection and its action mode are enabled in both PAGE and WEBTOON.
 * A proven PAGE swipe suppresses the action mode through the drag flag instead,
 * so a page turn is never mistaken for a long-press selection.
 */
fun readerHtmlSelectionActionsEnabled(pagedModeScrollLock: Boolean): Boolean = true

fun readerHtmlReloadResetsScroll(pagedModeScrollLock: Boolean): Boolean = !pagedModeScrollLock

fun readerHtmlModeChangeRequiresPagedLayoutTeardown(
    previousPagedModeScrollLock: Boolean,
    nextPagedModeScrollLock: Boolean
): Boolean = previousPagedModeScrollLock && !nextPagedModeScrollLock

fun readerShouldRestoreTextWebtoonSection(
    previousMode: ReadingMode,
    nextMode: ReadingMode,
    readerRendersHtmlContent: Boolean
): Boolean = readerRendersHtmlContent &&
    previousMode != ReadingMode.WEBTOON &&
    nextMode == ReadingMode.WEBTOON

/**
 * Maps a paged WebView location back to the stitched document used by the vertical reader.
 *
 * Some EPUBs expose the whole spine through the first HTML source. In that case the engine
 * section remains zero while PAGE tracks the visible subpage separately. Using section zero
 * directly would make PAGE -> WEBTOON jump to the cover, so preserve its relative position.
 */
fun readerWebtoonRestoreSectionIndex(
    engineSectionIndex: Int,
    pagedSubpageIndex: Int,
    pagedSubpageCount: Int,
    totalWebtoonSections: Int
): Int {
    val lastSection = (totalWebtoonSections - 1).coerceAtLeast(0)
    val safeEngineSection = engineSectionIndex.coerceIn(0, lastSection)
    if (safeEngineSection != 0 || pagedSubpageCount <= 1 || pagedSubpageIndex <= 0) {
        return safeEngineSection
    }

    val progress = pagedSubpageIndex.toFloat() / (pagedSubpageCount - 1).toFloat()
    return (progress * lastSection).roundToInt().coerceIn(0, lastSection)
}

/**
 * Creates the bidirectional cursor used when PAGE enters a stitched WEBTOON document.
 *
 * The old implementation persisted only the mapped Webtoon section. That is insufficient for
 * a single-spine document: the mapped section is a visual coordinate, while the return target
 * must remain the original engine section plus its in-section anchor.
 */
internal fun readerTextWebtoonCursorFromPagedPosition(
    engineSectionIndex: Int,
    pagedSubpageIndex: Int,
    pagedSubpageCount: Int,
    totalWebtoonSections: Int,
    characterOffset: Int? = null,
    fragment: String? = null
): ReaderTextWebtoonCursor {
    val lastEngineSection = (totalWebtoonSections - 1).coerceAtLeast(0)
    val safeEngineSection = engineSectionIndex.coerceIn(0, lastEngineSection)
    val webtoonSection = readerWebtoonRestoreSectionIndex(
        engineSectionIndex = safeEngineSection,
        pagedSubpageIndex = pagedSubpageIndex,
        pagedSubpageCount = pagedSubpageCount,
        totalWebtoonSections = totalWebtoonSections
    )
    return ReaderTextWebtoonCursor(
        engineSectionIndex = safeEngineSection,
        webtoonSectionIndex = webtoonSection,
        characterOffset = characterOffset?.takeIf { it >= 0 },
        fragment = fragment?.takeIf { it.isNotBlank() }
    )
}

/**
 * Keeps an absent PAGE text anchor absent while entering WEBTOON.
 *
 * The navigator's legacy position model represents an unknown character offset as zero. Passing
 * that synthetic zero to the WebView restore runtime takes precedence over the mapped section and
 * scrolls the document to its first character.
 */
internal fun readerTextWebtoonRestoreCharacterOffset(
    transitionCursor: ReaderTextWebtoonCursor?,
    resolvedCharacterOffset: Int
): Int = transitionCursor?.characterOffset
    ?: resolvedCharacterOffset.takeIf { transitionCursor == null && it > 0 }
    ?: -1

/**
 * Updates the visible side of a Webtoon cursor without losing its canonical engine section.
 *
 * When the previous cursor started at engine section 0 but was mapped to another stitched
 * section, it is a single-spine document and the engine section must stay 0 while the Webtoon
 * section advances. For ordinary multi-spine books the two coordinates advance together.
 */
internal fun readerTextWebtoonCursorAtVisibleSection(
    previous: ReaderTextWebtoonCursor?,
    visibleSectionIndex: Int,
    characterOffset: Int? = null,
    progression: Double? = null,
    fragment: String? = null
): ReaderTextWebtoonCursor {
    val webtoonSection = visibleSectionIndex.coerceAtLeast(0)
    val isSingleSpine = previous != null &&
        previous.engineSectionIndex == 0 &&
        previous.webtoonSectionIndex != 0
    val sameSection = previous?.webtoonSectionIndex == webtoonSection
    return ReaderTextWebtoonCursor(
        engineSectionIndex = if (isSingleSpine) 0 else webtoonSection,
        webtoonSectionIndex = webtoonSection,
        characterOffset = characterOffset?.takeIf { it >= 0 }
            ?: previous?.characterOffset?.takeIf { sameSection },
        progression = progression ?: previous?.progression?.takeIf { sameSection },
        fragment = fragment?.takeIf { it.isNotBlank() }
            ?: previous?.fragment?.takeIf { sameSection }
    )
}

fun readerChromeRequiresOpaqueSurface(
    preset: ReadingPreset,
    isTextReader: Boolean
): Boolean = preset == ReadingPreset.EINK

fun readerResolvedPagedCssViewportHeight(
    nativeViewportHeight: Int,
    visualViewportHeight: Int,
    windowInnerHeight: Int,
    rootClientHeight: Int,
    minimumHeight: Int = 320,
    fallbackHeight: Int = 640
): Int {
    val fallbackViewportHeight = when {
        windowInnerHeight > 0 -> windowInnerHeight
        rootClientHeight > 0 -> rootClientHeight
        visualViewportHeight > 0 -> visualViewportHeight
        else -> fallbackHeight
    }
    val resolved = when {
        nativeViewportHeight > 0 -> nativeViewportHeight
        else -> fallbackViewportHeight
    }
    return maxOf(minimumHeight, resolved)
}

fun readerPagedVisibleViewportHeight(
    contentViewportTopOffset: Int,
    pageStart: Int,
    pageEnd: Int,
    clipHeight: Int
): Int {
    return clipHeight.coerceAtLeast(1)
}

fun readerPagedContentShiftY(
    pageStart: Int,
    contentViewportTopOffset: Int
): Int {
    return pageStart.coerceAtLeast(0)
}

fun readerPagedNextStartAfterFittedLine(
    currentStart: Int,
    lineHeight: Int,
    lastFittedBottom: Int,
    contentHeight: Int
): Int {
    val minimumNextStart = currentStart + lineHeight.coerceAtLeast(1)
    val overlapGuardPx = (lineHeight.coerceAtLeast(1) * 0.5f).toInt().coerceAtLeast(1)
    return maxOf(minimumNextStart, lastFittedBottom + overlapGuardPx)
        .coerceAtMost(contentHeight.coerceAtLeast(minimumNextStart))
}

// ARC-11 S4: resolveReaderHardwareKeyDecision moved to ReaderKeyActionPolicy.kt
