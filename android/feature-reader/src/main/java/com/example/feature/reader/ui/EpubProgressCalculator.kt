package com.example.feature.reader.ui

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
     * Returns `(accumulatedTotalPages, accumulatedCurrentPage)` for the book progress bar.
     *
     * @param sectionPageCounts snapshot of `sectionIndex -> visualPageCount`. Must be a
     *   stable snapshot (copy), never the live mutable map — callers must copy under the
     *   map's monitor before invoking this.
     * @param sectionIndex active spine section (where the reader currently is).
     * @param sectionPageIndex visual sub-page index within [sectionIndex] (0-based).
     */
    fun accumulate(
        sectionPageCounts: Map<Int, Int>,
        sectionIndex: Int,
        sectionPageIndex: Int
    ): AccumulatedProgress {
        if (sectionPageCounts.isEmpty()) return AccumulatedProgress(0, 0)
        val safePageIndex = sectionPageIndex.coerceAtLeast(0)
        var total = 0
        var current = 0
        sectionPageCounts.forEach { (index, count) ->
            if (index in 0 until sectionIndex) {
                current += count
            }
            total += count
        }
        current += safePageIndex
        return AccumulatedProgress(
            accumulatedTotalPages = total,
            accumulatedCurrentPage = current
        )
    }

    /**
     * Accumulated absolute page for progress persistence. Sums the visual page counts of
     * all sections preceding [sectionIndex], then adds the in-section offset.
     */
    fun absolutePage(
        sectionPageCounts: Map<Int, Int>,
        sectionIndex: Int,
        sectionPageIndex: Int
    ): Int {
        if (sectionPageCounts.isEmpty()) return sectionIndex
        var page = 0
        for (i in 0 until sectionIndex) {
            page += sectionPageCounts[i] ?: 0
        }
        return page + sectionPageIndex.coerceAtLeast(0)
    }

    data class AccumulatedProgress(
        val accumulatedTotalPages: Int,
        val accumulatedCurrentPage: Int
    )
}
