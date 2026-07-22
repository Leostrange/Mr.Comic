package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
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

    @Test
    fun normalizePage_rtlUsesSameBoundsAsLtr() {
        // RTL does not invert page order at the policy level — the WebView handles direction
        assertEquals(0, ReaderNavigationPolicy.normalizePage(0, ReadingMode.PAGE_RTL, 10))
        assertEquals(9, ReaderNavigationPolicy.normalizePage(9, ReadingMode.PAGE_RTL, 10))
        assertEquals(5, ReaderNavigationPolicy.normalizePage(5, ReadingMode.PAGE_RTL, 10))
    }

    @Test
    fun normalizePage_webtoonClampsLikeSinglePage() {
        // Webtoon (vertical scroll) uses the same clamping as single-page
        assertEquals(0, ReaderNavigationPolicy.normalizePage(-1, ReadingMode.WEBTOON, 20))
        assertEquals(19, ReaderNavigationPolicy.normalizePage(100, ReadingMode.WEBTOON, 20))
        assertEquals(10, ReaderNavigationPolicy.normalizePage(10, ReadingMode.WEBTOON, 20))
    }

    @Test
    fun visiblePages_singlePageAlwaysReturnsOneElement() {
        assertEquals(listOf(0), ReaderNavigationPolicy.visiblePages(0, ReadingMode.PAGE_LTR, 10))
        assertEquals(listOf(5), ReaderNavigationPolicy.visiblePages(5, ReadingMode.PAGE_LTR, 10))
        assertEquals(listOf(9), ReaderNavigationPolicy.visiblePages(9, ReadingMode.PAGE_LTR, 10))
    }

    @Test
    fun visiblePages_dualPageAtEndReturnsSingleWhenNoPair() {
        // Last page in odd-total book returns single page
        assertEquals(listOf(4), ReaderNavigationPolicy.visiblePages(4, ReadingMode.DUAL_PAGE, 5))
    }

    @Test
    fun normalizePage_emptyBookReturnsZero() {
        assertEquals(0, ReaderNavigationPolicy.normalizePage(5, ReadingMode.PAGE_LTR, 0))
        assertEquals(0, ReaderNavigationPolicy.normalizePage(5, ReadingMode.DUAL_PAGE, 0))
        assertEquals(0, ReaderNavigationPolicy.normalizePage(5, ReadingMode.WEBTOON, 0))
    }

    @Test
    fun normalizePage_singlePageBookReturnsZero() {
        assertEquals(0, ReaderNavigationPolicy.normalizePage(0, ReadingMode.PAGE_LTR, 1))
        assertEquals(0, ReaderNavigationPolicy.normalizePage(5, ReadingMode.PAGE_LTR, 1))
    }
}
