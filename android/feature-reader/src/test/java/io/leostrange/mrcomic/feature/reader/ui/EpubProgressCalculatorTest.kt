package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class EpubProgressCalculatorTest {

    @Test
    fun estimatedTotalPages_preservesFractionalEstimateForUnvisitedSections() {
        assertEquals(
            11,
            EpubProgressCalculator.estimatedTotalPages(
                sectionPageCounts = mapOf(0 to 2, 1 to 3),
                totalSections = 5
            )
        )
        assertEquals(
            0,
            EpubProgressCalculator.estimatedTotalPages(emptyMap(), totalSections = 5)
        )
    }

    @Test
    fun accumulateEstimatesUnmeasuredSectionsBeforeCurrentSection() {
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(6 to 4),
            sectionIndex = 6,
            sectionPageIndex = 1,
            totalSections = 10
        )

        assertEquals(40, progress.accumulatedTotalPages)
        assertEquals(25, progress.accumulatedCurrentPage)
    }

    @Test
    fun accumulateUsesMeasuredCountsWhenAvailable() {
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 2, 1 to 5, 2 to 3),
            sectionIndex = 2,
            sectionPageIndex = 1,
            totalSections = 3
        )

        assertEquals(10, progress.accumulatedTotalPages)
        assertEquals(8, progress.accumulatedCurrentPage)
    }

    @Test
    fun progressUsesAverageSectionPageCountAsStableEstimateRegardlessOfMapOrder() {
        val loadedFromLastSectionFirst = linkedMapOf(6 to 4, 0 to 2)
        val loadedFromFirstSectionFirst = linkedMapOf(0 to 2, 6 to 4)

        val first = EpubProgressCalculator.accumulate(
            sectionPageCounts = loadedFromLastSectionFirst,
            sectionIndex = 6,
            sectionPageIndex = 1,
            totalSections = 10
        )
        val second = EpubProgressCalculator.accumulate(
            sectionPageCounts = loadedFromFirstSectionFirst,
            sectionIndex = 6,
            sectionPageIndex = 1,
            totalSections = 10
        )

        // Stable estimate is now the average of visited sections: (2+4)/2 = 3.
        // total = visitedTotal(6) + estimate(3) * unvisited(8) = 30.
        // current = sections 0..5: 2 + 3*5 = 17, + sectionPageIndex(1) = 18.
        assertEquals(30, first.accumulatedTotalPages)
        assertEquals(18, first.accumulatedCurrentPage)
        assertEquals(first, second)
    }

    @Test
    fun accumulateKeepsTheSessionEstimateStableAsMoreSectionsAreMeasured() {
        val firstMeasurement = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 2),
            sectionIndex = 0,
            sectionPageIndex = 0,
            totalSections = 4,
            stableEstimateOverride = 2
        )
        val afterAnotherSection = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 2, 1 to 8),
            sectionIndex = 1,
            sectionPageIndex = 0,
            totalSections = 4,
            stableEstimateOverride = 2
        )

        assertEquals(8, firstMeasurement.accumulatedTotalPages)
        assertEquals(8, afterAnotherSection.accumulatedTotalPages)
    }

    /**
     * T3 regression: when totalSections is provisional (deferred page-count still resolving)
     * and is smaller than the section the user is currently in, the accumulated current page
     * must not exceed the accumulated total. Before the fix, total could be smaller than
     * current (e.g. current=63, total=12) causing the progress to show 100%.
     */
    @Test
    fun accumulateCoversCurrentSectionWhenTotalSectionsIsProvisional() {
        // Simulates: EPUB with 100 sections, but deferred count only knows about 1.
        // User is on section 5 with 12 visual pages, on page 3.
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(5 to 12),
            sectionIndex = 5,
            sectionPageIndex = 3,
            totalSections = 1 // provisional — hasn't resolved yet
        )

        // effectiveTotalSections = max(1, 5+1) = 6
        // visitedTotal = 12, stableEstimate = 12
        // total = 12 + 12 * (6 - 1) = 12 + 60 = 72
        // current = 12*5 + 3 = 63
        assertEquals(72, progress.accumulatedTotalPages)
        assertEquals(63, progress.accumulatedCurrentPage)
    }

    /**
     * T3 regression: accumulatedCurrentPage must never exceed accumulatedTotalPages,
     * even in edge cases with very small provisional totalSections.
     */
    @Test
    fun accumulateNeverShowsPageBeyondTotal() {
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 20),
            sectionIndex = 0,
            sectionPageIndex = 19,
            totalSections = 0
        )

        // effectiveTotalSections = max(0, 0+1) = 1
        // total = 20, current = 19
        assertEquals(20, progress.accumulatedTotalPages)
        assertEquals(19, progress.accumulatedCurrentPage)
        assertTrue(
            "Current page must not exceed total pages",
            progress.accumulatedCurrentPage <= progress.accumulatedTotalPages
        )
    }

    /**
     * T3 regression: when the user is in the last section and totalSections is accurate,
     * the progress should reach 100% only at the very last visual page.
     */
    @Test
    fun accumulateReachesHundredPercentOnlyAtLastPage() {
        val lastSectionProgress = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 10, 1 to 5),
            sectionIndex = 1,
            sectionPageIndex = 4,
            totalSections = 2
        )

        // current = 10 + 4 = 14, total = 15
        assertEquals(15, lastSectionProgress.accumulatedTotalPages)
        assertEquals(14, lastSectionProgress.accumulatedCurrentPage)
        assertTrue(lastSectionProgress.isResolved)
    }

    @Test
    fun isResolvedReturnsFalseWhenUnvisitedSectionsRemain() {
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 10),
            sectionIndex = 0,
            sectionPageIndex = 2,
            totalSections = 5
        )
        assertEquals(false, progress.isResolved)
        assertEquals(false, EpubProgressCalculator.isResolved(mapOf(0 to 10), 5))
    }

    @Test
    fun isResolvedReturnsTrueWhenAllSectionsMeasured() {
        val map = mapOf(0 to 10, 1 to 12, 2 to 8)
        val progress = EpubProgressCalculator.accumulate(
            sectionPageCounts = map,
            sectionIndex = 1,
            sectionPageIndex = 2,
            totalSections = 3
        )
        assertEquals(true, progress.isResolved)
        assertEquals(true, EpubProgressCalculator.isResolved(map, 3))
    }
}
