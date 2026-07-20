package com.example.feature.reader.ui.gesture

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
    fun calculateUsablePageHeight_typicalPhone_returnsLineAligned() {
        // 800px viewport, 24px top, 48px bottom, 27px line height
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 800,
            topInsetPx = 24,
            bottomInsetPx = 48,
            lineHeightPx = 27f
        )
        // clipHeight = max(81, 800) = 800
        // rawUsable = max(81, 800 - 24 - 48 - max(2, 3.24)) = max(81, 724.76) = 724.76
        // usableLineCount = max(3, floor(724.76/27)) = max(3, 26) = 26
        // usableHeight = max(81, 26*27) = max(81, 702) = 702
        assertEquals(702, result)
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
        // rawUsable = max(81, 200 - 24 - 48 - 3.24) = max(81, 124.76) = 124.76
        // usableLineCount = max(3, floor(124.76/27)) = max(3, 4) = 4
        // usableHeight = max(81, 4*27) = max(81, 108) = 108
        assertEquals(108, result)
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
        // rawUsable = max(72, 900 - 0 - 0 - max(2, 2.88)) = max(72, 897.12) = 897.12
        // usableLineCount = max(3, floor(897.12/24)) = max(3, 37) = 37
        // usableHeight = max(72, 37*24) = max(72, 888) = 888
        assertEquals(888, result)
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
        assertEquals(702, result)
    }

    @Test
    fun calculateUsablePageHeight_resultIsMultipleOfLineHeight() {
        // Result should always be a multiple of lineHeight (line-aligned)
        val lineHeight = 30f
        val result = PagedLayoutParams.calculateUsablePageHeight(
            viewportHeightPx = 1000,
            topInsetPx = 50,
            bottomInsetPx = 50,
            lineHeightPx = lineHeight
        )
        assertEquals(0, result % lineHeight.toInt())
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
