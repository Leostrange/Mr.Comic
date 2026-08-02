package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
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
}
