package io.leostrange.mrcomic.feature.reader.ui.gesture

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [PagedLayoutParams].
 *
 * Pins down the page-step and column-width calculations currently embedded
 * in ReaderScreen's inline JS.
 */
class PagedLayoutParamsTest {

    // ── Usable page height ─────────────────────────────────────────────────

    @Test
    fun calculateUsablePageHeight_typicalPhone_returnsCompleteBudget() {
        // 800px viewport, 24px top, 48px bottom, 27px line height
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 800,
            topInsetPx = 24,
            bottomInsetPx = 48,
            lineHeightPx = 27f
        )
        // clipHeight = max(81, 800) = 800
        // rawUsable = max(81, 800 - 24 - 48) = 728
        assertEquals(728, result)
    }

    @Test
    fun calculateUsablePageHeight_smallViewport_returnsMinimum() {
        // Very small viewport → minimum 3 lines
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 200,
            topInsetPx = 24,
            bottomInsetPx = 48,
            lineHeightPx = 27f
        )
        // clipHeight = max(81, 200) = 200
        // rawUsable = max(81, 200 - 24 - 48) = 128
        assertEquals(128, result)
    }

    @Test
    fun calculateUsablePageHeight_noInsets_returnsFullViewport() {
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 900,
            topInsetPx = 0,
            bottomInsetPx = 0,
            lineHeightPx = 24f
        )
        // clipHeight = max(72, 900) = 900
        // rawUsable = max(72, 900 - 0 - 0) = 900
        assertEquals(900, result)
    }

    @Test
    fun calculateUsablePageHeight_zeroLineHeight_usesDefault() {
        // lineHeight=0 → defaults to 27 (18sp * 1.5)
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 800,
            topInsetPx = 24,
            bottomInsetPx = 48,
            lineHeightPx = 0f
        )
        // Same as typical phone test with lineHeight=27
        assertEquals(728, result)
    }

    @Test
    fun calculateUsablePageHeight_preservesNonLineAlignedViewportRemainder() {
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 997,
            topInsetPx = 41,
            bottomInsetPx = 42,
            lineHeightPx = 30f,
        )
        assertEquals(914, result)
    }

    @Test
    fun calculateUsablePageHeight_doesNotDropAnExtraLineForSafetyMargin() {
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 1000,
            topInsetPx = 40,
            bottomInsetPx = 40,
            lineHeightPx = 40f
        )

        // The two 40px insets are the complete top/bottom gutter contract.
        // A second safety subtraction would floor 850/40 to 21 lines and
        // visibly create a third line of empty space at the bottom.
        assertEquals(920, result)
    }

    @Test
    fun calculateUsablePageHeight_keepsFractionalLineRemainderInsidePageBudget() {
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 800,
            topInsetPx = 24,
            bottomInsetPx = 48,
            lineHeightPx = 27f,
        )

        // The complete viewport budget is 728px. Flooring it to 26 lines
        // returns 702px and turns the remaining 26px into a visible third
        // bottom gutter even though the outer container already owns two.
        assertEquals(728, result)
    }

    @Test
    fun calculateUsablePageHeight_largerInsets_smallerResult() {
        val smallInsets = PagedLayoutParams.calculateUsablePageHeight(800, 10, 10, 27f)
        val largeInsets = PagedLayoutParams.calculateUsablePageHeight(800, 100, 100, 27f)
        assertTrue(largeInsets < smallInsets)
    }

    // ── Column width ───────────────────────────────────────────────────────

    @Test
    fun calculateColumnWidth_subtractsPadding() {
        assertEquals(340, PagedLayoutParams.calculateColumnWidth(360, 20))
    }

    @Test
    fun calculateColumnWidth_minimumOne() {
        assertEquals(1, PagedLayoutParams.calculateColumnWidth(100, 200))
    }

    @Test
    fun calculateColumnWidth_noPadding() {
        assertEquals(360, PagedLayoutParams.calculateColumnWidth(360, 0))
    }

    // ── Visible height ─────────────────────────────────────────────────────

    @Test
    fun calculateVisibleHeight_subtractsInsets() {
        assertEquals(728, PagedLayoutParams.calculateVisibleHeight(800, 24, 48))
    }

    @Test
    fun calculateVisibleHeight_minimum240() {
        assertEquals(240, PagedLayoutParams.calculateVisibleHeight(200, 50, 50))
    }

    @Test
    fun calculateVisibleHeight_noInsets() {
        assertEquals(800, PagedLayoutParams.calculateVisibleHeight(800, 0, 0))
    }
}
