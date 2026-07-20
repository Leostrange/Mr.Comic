package com.example.feature.reader.ui

import android.view.KeyEvent
import com.example.core.model.ReadingMode
import com.example.core.ui.theme.ReadingPreset
import com.example.engine.formats.base.TocEntry

data class ReaderHardwareKeyDecision(
    val consume: Boolean,
    val pageStep: Int? = null
)

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

fun readerVolumePagingStep(keyCode: Int): Int? = when (keyCode) {
    KeyEvent.KEYCODE_VOLUME_UP -> -1
    KeyEvent.KEYCODE_VOLUME_DOWN -> 1
    else -> null
}

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

fun resolveReaderHardwareKeyDecision(
    event: KeyEvent,
    volumePagingEnabled: Boolean
): ReaderHardwareKeyDecision {
    if (!volumePagingEnabled) return ReaderHardwareKeyDecision(consume = false)
    val pageStep = readerVolumePagingStep(event.keyCode) ?: return ReaderHardwareKeyDecision(consume = false)
    return when (event.action) {
        KeyEvent.ACTION_DOWN -> {
            if (event.repeatCount == 0) {
                ReaderHardwareKeyDecision(consume = true, pageStep = pageStep)
            } else {
                ReaderHardwareKeyDecision(consume = true)
            }
        }
        KeyEvent.ACTION_UP -> ReaderHardwareKeyDecision(consume = true)
        else -> ReaderHardwareKeyDecision(consume = false)
    }
}
