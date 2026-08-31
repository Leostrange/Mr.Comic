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
    fun estimatedTotalPages(
        sectionPageCounts: Map<Int, Int>,
        totalSections: Int,
        stableEstimateOverride: Int? = null
    ): Int {
        if (sectionPageCounts.isEmpty()) return 0
        val orderedCounts = orderedSectionPageCounts(sectionPageCounts)
        val visitedPages = orderedCounts.values.sum()
        val visitedSections = orderedCounts.size
        if (totalSections <= visitedSections) return visitedPages
        val estimate = stableEstimateOverride?.coerceAtLeast(1)
            ?: stableEstimate(orderedCounts)
        // BUG-RDR-013: Always use estimate-based total when totalSections is
        // provisional (< actual section count). This prevents "2/2" display
        // when only a few sections have been paginated.
        if (totalSections < orderedCounts.size + 3) {
            return (estimate * totalSections).coerceAtLeast(visitedPages)
        }
        return visitedPages + estimate * (totalSections - visitedSections)
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
        totalSections: Int = 0,
        stableEstimateOverride: Int? = null
    ): AccumulatedProgress {
        if (sectionPageCounts.isEmpty()) return AccumulatedProgress(0, 0)
        val orderedCounts = orderedSectionPageCounts(sectionPageCounts)
        val safePageIndex = sectionPageIndex.coerceAtLeast(0)
        val visitedTotal = orderedCounts.values.sum()
        val stableEstimate = stableEstimateOverride?.coerceAtLeast(1)
            ?: stableEstimate(orderedCounts)
        var current = 0
        for (index in 0 until sectionIndex) {
            current += orderedCounts[index] ?: stableEstimate
        }
        current += safePageIndex
        // The effective section count must be at least large enough to cover the
        // section we are currently in, even when totalBookSections is still
        // provisional (deferred page-count not yet resolved). Without this floor,
        // the total can be smaller than current, causing the progress bar to
        // show 100% (or even a "page N / N" where N < current after coercion).
        val effectiveTotalSections = totalSections.coerceAtLeast(sectionIndex + 1)
        // Estimate total using the stable baseline for unvisited sections.
        // This prevents the "floating total" where progress jumps backwards
        // when a new section loads with more pages than the running average.
        val total = if (effectiveTotalSections > orderedCounts.size) {
            if (stableEstimateOverride != null) {
                stableEstimate * effectiveTotalSections
            } else {
                val unvisitedSections = effectiveTotalSections - orderedCounts.size
                visitedTotal + stableEstimate * unvisitedSections
            }
        } else {
            visitedTotal
        }
        val isResolved = effectiveTotalSections > 0 && orderedCounts.size >= effectiveTotalSections
        return AccumulatedProgress(
            accumulatedTotalPages = total,
            accumulatedCurrentPage = current.coerceAtMost(total),
            isResolved = isResolved
        )
    }

    /**
     * Returns true if all spine sections have measured visual page counts.
     */
    fun isResolved(sectionPageCounts: Map<Int, Int>, totalSections: Int): Boolean {
        if (totalSections <= 0 || sectionPageCounts.isEmpty()) return false
        val orderedCounts = orderedSectionPageCounts(sectionPageCounts)
        return orderedCounts.size >= totalSections
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
        val orderedCounts = orderedSectionPageCounts(sectionPageCounts)
        val stableEstimate = stableEstimate(orderedCounts)
        var page = 0
        for (i in 0 until sectionIndex) {
            page += orderedCounts[i] ?: stableEstimate
        }
        return page + sectionPageIndex.coerceAtLeast(0)
    }

    private fun orderedSectionPageCounts(sectionPageCounts: Map<Int, Int>): Map<Int, Int> =
        sectionPageCounts
            .asSequence()
            .filter { (sectionIndex, pageCount) -> sectionIndex >= 0 && pageCount > 0 }
            .sortedBy { (sectionIndex, _) -> sectionIndex }
            .associate { (sectionIndex, pageCount) -> sectionIndex to pageCount }

    private fun stableEstimate(orderedCounts: Map<Int, Int>): Int {
        if (orderedCounts.isEmpty()) return 1
        return (orderedCounts.values.sum() / orderedCounts.size).coerceAtLeast(1)
    }

    data class AccumulatedProgress(
        val accumulatedTotalPages: Int,
        val accumulatedCurrentPage: Int,
        val isResolved: Boolean = false
    )

    /**
     * Generates a simplified CFI (Content Fragment Identifier) for progress persistence.
     *
     * Format: `epubcfi(/6/{spineIndex}!/4/2/1/{domPath}:{charOffset})`
     * - `/6/{spineIndex}` — spine item index (EPUB CFI convention: /6 = spine)
     * - `!/4/2/1/{domPath}` — simplified DOM path to the text node
     * - `:{charOffset}` — character offset within the text node
     *
     * This is a simplified CFI that's stable across font size/screen changes,
     * unlike page-number-based progress which breaks when pagination changes.
     */
    fun generateCfi(
        spineIndex: Int,
        domPath: List<Int> = emptyList(),
        charOffset: Int = 0
    ): String {
        val pathStr = if (domPath.isEmpty()) "" else "/" + domPath.joinToString("/")
        return "epubcfi(/6/$spineIndex!/4/2/1$pathStr:$charOffset)"
    }

    /**
     * Parses a simplified CFI string and extracts spine index, DOM path, and char offset.
     *
     * Returns null if the CFI is invalid or doesn't match the expected format.
     */
    fun parseCfi(cfi: String?): CfiComponents? {
        if (cfi.isNullOrBlank()) return null
        val match = CFI_REGEX.matchEntire(cfi.trim()) ?: return null
        val spineIndex = match.groupValues[1].toIntOrNull() ?: return null
        val domPathStr = match.groupValues[2]
        val charOffset = match.groupValues[3].toIntOrNull() ?: 0
        val domPath = if (domPathStr.isBlank()) {
            emptyList()
        } else {
            domPathStr.split("/").mapNotNull { it.toIntOrNull() }
        }
        return CfiComponents(
            spineIndex = spineIndex,
            domPath = domPath,
            charOffset = charOffset
        )
    }

    private val CFI_REGEX = Regex("""epubcfi\(/6/(\d+)(?:!/4/2/1(?:/(\d+(?:/\d+)*))?)?:(\d+)\)""")

    data class CfiComponents(
        val spineIndex: Int,
        val domPath: List<Int>,
        val charOffset: Int
    )
}
