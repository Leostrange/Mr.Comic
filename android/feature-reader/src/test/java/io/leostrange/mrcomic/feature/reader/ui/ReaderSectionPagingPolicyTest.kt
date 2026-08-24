package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderSectionPagingPolicyTest {

    @Test
    fun resetsVisualSubpageWhenNavigatingToAnotherDocumentSection() {
        val state = sectionPagingStateAfterNavigation(
            previousSection = 4,
            nextSection = 5,
            previousPageCount = 7,
            previousPageIndex = 6
        )

        assertEquals(1, state.pageCount)
        assertEquals(0, state.pageIndex)
    }

    @Test
    fun preservesVisualSubpageWhenStayingInTheSameDocumentSection() {
        val state = sectionPagingStateAfterNavigation(
            previousSection = 4,
            nextSection = 4,
            previousPageCount = 7,
            previousPageIndex = 6
        )

        assertEquals(7, state.pageCount)
        assertEquals(6, state.pageIndex)
    }

    /**
     * T6 regression: when navigating within the same section, the visual subpage
     * count and index must be preserved so the display doesn't flash "1/1".
     */
    @Test
    fun preservesVisualSubpageOnForwardNavigationWithinSection() {
        val state = sectionPagingStateAfterNavigation(
            previousSection = 5,
            nextSection = 5,
            previousPageCount = 12,
            previousPageIndex = 3
        )

        assertEquals(12, state.pageCount)
        assertEquals(3, state.pageIndex)
    }

    /**
     * T6 regression: cross-section navigation must always reset to page 1/1
     * to avoid showing stale subpage data from the previous section.
     */
    @Test
    fun alwaysResetsToFirstPageWhenCrossingSectionBoundary() {
        val state = sectionPagingStateAfterNavigation(
            previousSection = 3,
            nextSection = 4,
            previousPageCount = 15,
            previousPageIndex = 14
        )

        assertEquals(1, state.pageCount)
        assertEquals(0, state.pageIndex)
    }
}
