package io.leostrange.mrcomic.feature.reader.ui.components

internal data class ReaderBottomProgress(
    val currentPage: Int,
    val totalPages: Int,
)

internal fun resolveReaderBottomProgress(
    currentPage: Int,
    totalPages: Int,
    isTextBook: Boolean,
    sectionPageCount: Int,
    epubAccumulatedCurrentPage: Int,
    epubAccumulatedTotalPages: Int,
): ReaderBottomProgress = when {
    isTextBook && epubAccumulatedTotalPages > 0 -> ReaderBottomProgress(
        currentPage = epubAccumulatedCurrentPage.coerceIn(0, epubAccumulatedTotalPages - 1),
        totalPages = epubAccumulatedTotalPages,
    )
    isTextBook && sectionPageCount > 0 -> ReaderBottomProgress(
        currentPage = currentPage.coerceAtLeast(0),
        totalPages = totalPages.coerceAtLeast(1),
    )
    else -> ReaderBottomProgress(
        currentPage = currentPage.coerceAtLeast(0),
        totalPages = totalPages.coerceAtLeast(1),
    )
}
