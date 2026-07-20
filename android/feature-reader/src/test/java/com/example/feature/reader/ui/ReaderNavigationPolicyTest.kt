package com.example.feature.reader.ui

import com.example.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderNavigationPolicyTest {

    @Test
    fun normalizePage_clampsBookBoundariesInSingleAndVerticalModes() {
        assertEquals(0, ReaderNavigationPolicy.normalizePage(-3, ReadingMode.PAGE_LTR, 5))
        assertEquals(4, ReaderNavigationPolicy.normalizePage(9, ReadingMode.PAGE_RTL, 5))
        assertEquals(4, ReaderNavigationPolicy.normalizePage(9, ReadingMode.WEBTOON, 5))
        assertEquals(0, ReaderNavigationPolicy.normalizePage(3, ReadingMode.PAGE_LTR, 0))
    }

    @Test
    fun normalizePage_alignsDualPageToTheOpeningOfItsSpread() {
        assertEquals(0, ReaderNavigationPolicy.normalizePage(1, ReadingMode.DUAL_PAGE, 5))
        assertEquals(2, ReaderNavigationPolicy.normalizePage(3, ReadingMode.DUAL_PAGE, 5))
        assertEquals(4, ReaderNavigationPolicy.normalizePage(4, ReadingMode.DUAL_PAGE, 5))
    }

    @Test
    fun visiblePages_keepsModeSpecificVisualCoordinates() {
        assertEquals(
            listOf(2, 3),
            ReaderNavigationPolicy.visiblePages(page = 3, mode = ReadingMode.DUAL_PAGE, totalPages = 5)
        )
        assertEquals(
            listOf(4),
            ReaderNavigationPolicy.visiblePages(page = 4, mode = ReadingMode.DUAL_PAGE, totalPages = 5)
        )
        assertEquals(
            listOf(3),
            ReaderNavigationPolicy.visiblePages(page = 3, mode = ReadingMode.WEBTOON, totalPages = 5)
        )
    }

    @Test
    fun pageStep_preservesSinglePageAndVerticalMovement() {
        assertEquals(1, ReaderNavigationPolicy.pageStep(ReadingMode.PAGE_LTR))
        assertEquals(1, ReaderNavigationPolicy.pageStep(ReadingMode.PAGE_RTL))
        assertEquals(1, ReaderNavigationPolicy.pageStep(ReadingMode.WEBTOON))
        assertEquals(2, ReaderNavigationPolicy.pageStep(ReadingMode.DUAL_PAGE))
    }
}
