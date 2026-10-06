package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.core.model.ReadingMode

/**
 * What every reader surface shows as "where am I": a page counter that never mixes scopes
 * (chapter pages for text, book pages for raster) and the canonical book percent.
 */
internal data class ReaderProgressDisplay(
    /** Null when the mode has no pages (vertical text). */
    val pageLabel: String?,
    val percent: Int,
)

internal fun resolveReaderProgressDisplay(
    isTextBook: Boolean,
    readingMode: ReadingMode,
    currentPage: Int,
    totalPages: Int,
    sectionCurrentPage: Int,
    sectionPageCount: Int,
    bookProgress: Float,
): ReaderProgressDisplay {
    val pageLabel = when {
        isTextBook && readingMode == ReadingMode.WEBTOON -> null
        isTextBook -> sectionPageCount.takeIf { it > 0 }?.let { count ->
            "${sectionCurrentPage.coerceIn(0, count - 1) + 1} / $count"
        }
        totalPages > 0 -> "${currentPage.coerceIn(0, totalPages - 1) + 1} / $totalPages"
        else -> null
    }
    return ReaderProgressDisplay(pageLabel = pageLabel, percent = readerProgressPercent(bookProgress))
}

/** Floors so 100% appears only at the actual end. */
internal fun readerProgressPercent(progress: Float): Int =
    (progress.coerceIn(0f, 1f) * 100f + 1e-4f).toInt().coerceIn(0, 100)
