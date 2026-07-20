package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderSectionPagingState(
    val pageCount: Int,
    val pageIndex: Int
)

/** Keeps a visual WebView subpage from leaking into the next document section. */
internal fun sectionPagingStateAfterNavigation(
    previousSection: Int,
    nextSection: Int,
    previousPageCount: Int,
    previousPageIndex: Int
): ReaderSectionPagingState {
    if (previousSection != nextSection) {
        return ReaderSectionPagingState(pageCount = 1, pageIndex = 0)
    }
    return ReaderSectionPagingState(
        pageCount = previousPageCount.coerceAtLeast(1),
        pageIndex = previousPageIndex.coerceIn(0, previousPageCount.coerceAtLeast(1) - 1)
    )
}
