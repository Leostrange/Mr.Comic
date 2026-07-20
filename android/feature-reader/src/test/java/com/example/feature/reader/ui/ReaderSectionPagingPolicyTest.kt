package com.example.feature.reader.ui

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
}
