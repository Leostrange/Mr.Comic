package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.engine.api.TocEntry
import kotlin.math.roundToInt

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

fun readerHtmlSelectionActionsEnabled(pagedModeScrollLock: Boolean): Boolean = !pagedModeScrollLock

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
 * Reverse of [readerWebtoonRestoreSectionIndex]: maps a visible WEBTOON section index
 * back to a paged engine section index for position restoration when switching
 * WEBTOON → PAGE.
 *
 * For most EPUBs each section maps 1:1 to a page, so the section index IS the page.
 * For EPUBs where the first section contains all content (single-spine),
 * this returns the section index directly — the subpage within that section
 * is not tracked and the user will land at the section start.
 */
fun readerPageFromWebtoonSection(
    webtoonSectionIndex: Int,
    totalPagedPages: Int
): Int {
    return webtoonSectionIndex.coerceIn(0, (totalPagedPages - 1).coerceAtLeast(0))
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

