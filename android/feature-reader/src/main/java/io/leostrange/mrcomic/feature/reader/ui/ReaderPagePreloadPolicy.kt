package io.leostrange.mrcomic.feature.reader.ui

/**
 * ARC-11 S8: pure-Kotlin policy for HTML page preload computation.
 *
 * Extracted from [TextReaderOrchestrator.prewarmHtmlPagesAround]. The orchestrator
 * owns the coroutine lifecycle (job management, cancellation, sequential I/O);
 * this policy owns only the decision of *which* pages to preload.
 *
 * ## Algorithm
 *
 * Given a center page, a set of currently-visible pages, a total page count,
 * and a preload distance:
 *
 * 1. Clip [preloadDistance] to `1..8` (over-preload wastes I/O on reflowable books).
 * 2. Determine the visible range: `minVisible..maxVisible`.
 * 3. Expand outward from the visible range by [preloadDistance] steps,
 *    clamping to `0..(totalPages-1)`.
 * 4. Return the expanded pages as a distinct, sorted list.
 */
internal object ReaderPagePreloadPolicy {

    /** Upper bound, beyond which reflowable-pagination preload becomes pure waste. */
    const val MAX_PRELOAD_DISTANCE = 8

    /**
     * Computes the set of page indices to preload.
     *
     * @param centerPage  current reader page (for preload distance reference).
     * @param visiblePages pages currently rendered on screen.
     * @param totalPages total number of pages in the book (0 = no preload possible).
     * @param preloadDistance how many pages outward to preload (clamped 1..8).
     * @return sorted, distinct list of page indices to preload, or empty list.
     */
    fun pagesToPreload(
        centerPage: Int,
        visiblePages: List<Int>,
        totalPages: Int,
        preloadDistance: Int,
    ): List<Int> {
        if (totalPages <= 0) return emptyList()
        val distance = preloadDistance.coerceIn(1, MAX_PRELOAD_DISTANCE)
        val minVisible = visiblePages.minOrNull() ?: centerPage
        val maxVisible = visiblePages.maxOrNull() ?: centerPage

        return buildList {
            for (offset in 1..distance) {
                val left = minVisible - offset
                if (left >= 0) add(left)
                val right = maxVisible + offset
                if (right < totalPages) add(right)
            }
        }.distinct().sorted()
    }
}
