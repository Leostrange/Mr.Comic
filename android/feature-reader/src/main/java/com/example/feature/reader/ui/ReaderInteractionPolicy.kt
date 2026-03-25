package com.example.feature.reader.ui

import android.view.KeyEvent
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
