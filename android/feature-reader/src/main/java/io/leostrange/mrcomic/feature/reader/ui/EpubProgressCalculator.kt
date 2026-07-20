package io.leostrange.mrcomic.feature.reader.ui

/**
 * Pure accumulation helpers for the EPUB visual-page progress model.
 *
 * EPUB PAGE mode renders one XHTML spine item per [TextReaderSection]; the WebView JS
 * paginates each section into N visual sub-pages and reports the count back via
 * [ReaderViewModel.onPagedLayoutPageCountChanged]. The accumulated book progress is the
 * sum of all preceding sections' visual page counts plus the current offset inside the
 * active section.
 *
 * Extracted into a stateless object so the arithmetic can be unit-tested independently of
 * the ViewModel's mutable `sectionPageCounts` map (which is accessed concurrently from
 * WebView callbacks and prewarm coroutines).
 */
internal object EpubProgressCalculator {

    /**
     * Estimates the total visual pages from a stable snapshot of paginated spine sections.
     *
     * The fractional average is deliberately applied before conversion to Int so the
     * persisted total stays consistent with the previous reader progress calculation.
     */
    fun estimatedTotalPages(sectionPageCounts: Map<Int, Int>, totalSections: Int): Int {
        if (sectionPageCounts.isEmpty()) return 0
        val visitedPages = sectionPageCounts.values.sum()
        val visitedSections = sectionPageCounts.size
        if (totalSections <= visitedSections) return visitedPages
        val averagePagesPerSection = visitedPages.toFloat() / visitedSections.toFloat()
        return visitedPages + (averagePagesPerSection * (totalSections - visitedSections)).toInt()
    }

    /**
     * Returns `(accumulatedTotalPages, accumulatedCurrentPage)` for the book progress bar.
     *
     * @param sectionPageCounts snapshot of `sectionIndex -> visualPageCount`. Must be a
     *   stable snapshot (copy), never the live mutable map — callers must copy under the
     *   map's monitor before invoking this.
     * @param sectionIndex active spine section (where the reader currently is).
     * @param sectionPageIndex visual sub-page index within [sectionIndex] (0-based).
     * @param totalSections total number of sections (spine items) in the book. When > 0
     *   and exceeds the visited section count, unvisited sections are estimated using the
     *   average visual page count from visited sections. This prevents premature 100%
     *   progress display when only a few sections have been paginated.
     */
    fun accumulate(
        sectionPageCounts: Map<Int, Int>,
        sectionIndex: Int,
        sectionPageIndex: Int,
        totalSections: Int = 0
    ): AccumulatedProgress {
        if (sectionPageCounts.isEmpty()) return AccumulatedProgress(0, 0)
        val safePageIndex = sectionPageIndex.coerceAtLeast(0)
        val visitedTotal = sectionPageCounts.values.sum()
        val averagePageCount = (visitedTotal.toFloat() / sectionPageCounts.size.toFloat())
            .toInt()
            .coerceAtLeast(1)
        var current = 0
        for (index in 0 until sectionIndex) {
            current += sectionPageCounts[index] ?: averagePageCount
        }
        current += safePageIndex
        // Estimate total pages including unvisited sections to prevent premature 100%.
        val total = if (totalSections > sectionPageCounts.size) {
            val unvisitedSections = totalSections - sectionPageCounts.size
            visitedTotal + averagePageCount * unvisitedSections
        } else {
            visitedTotal
        }
        // Clamp current to total — stale sectionPageIndex or prewarmed sections
        // can push current above the estimated total, causing >100% progress.
        return AccumulatedProgress(
            accumulatedTotalPages = total,
            accumulatedCurrentPage = current.coerceAtMost(total)
        )
    }

    /**
     * Accumulated absolute page for progress persistence. Sums the visual page counts of
     * all sections preceding [sectionIndex], then adds the in-section offset. Unvisited
     * sections are estimated using the average page count from visited sections.
     */
    fun absolutePage(
        sectionPageCounts: Map<Int, Int>,
        sectionIndex: Int,
        sectionPageIndex: Int,
        totalSections: Int = 0
    ): Int {
        // When no sections have been paginated yet, we cannot know the visual page.
        // Returning sectionIndex (spine index) causes random position on reopen —
        // the stored value is later interpreted as a visual page, not a spine index.
        if (sectionPageCounts.isEmpty()) return 0
        val avgPages = if (sectionPageCounts.isNotEmpty()) {
            sectionPageCounts.values.sum().toFloat() / sectionPageCounts.size.toFloat()
        } else 1f
        var page = 0
        for (i in 0 until sectionIndex) {
            page += sectionPageCounts[i] ?: avgPages.toInt().coerceAtLeast(1)
        }
        return page + sectionPageIndex.coerceAtLeast(0)
    }

    data class AccumulatedProgress(
        val accumulatedTotalPages: Int,
        val accumulatedCurrentPage: Int
    )
}
