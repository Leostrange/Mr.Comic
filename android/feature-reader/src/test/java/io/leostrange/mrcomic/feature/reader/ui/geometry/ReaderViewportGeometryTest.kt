package io.leostrange.mrcomic.feature.reader.ui.geometry

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [ReaderViewportGeometry].
 *
 * GEOMETRY-01: Verifies unified content bounds calculation.
 */
class ReaderViewportGeometryTest {

    // ── Toolbars hidden ────────────────────────────────────────────────

    @Test
    fun hiddenToolbars_topInsetIncludesOnlySystemInsets() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            displayCutoutInsetPx = 0,
            topToolbarHeightPx = 168,
            bottomToolbarHeightPx = 192,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // Toolbars hidden → chromeReserve = 0
        // contentTopInsetPx = max(84, 0) + 0 + 0 = 84 (no safety margin in physical px)
        assertEquals(84, geo.contentTopInsetPx)
        assertEquals(126, geo.contentBottomInsetPx)
    }

    @Test
    fun hiddenToolbars_cssInsetsIncludeSafetyMargin() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // BUG-PAGED-02 / T1: System insets are NOT included in CSS insets —
        // they are already handled by Compose WindowInsetsPadding modifier.
        // top: round((4 safety) / 2.75) = 1 → coerced up to MIN_INSET_CSS_PX = 2
        assertEquals(2, geo.contentTopInsetCssPx)
        // bottom: same symmetric calculation → 2
        assertEquals(2, geo.contentBottomInsetCssPx)
    }

    // ── Toolbars visible ────────────────────────────────────────────────

    @Test
    fun visibleToolbars_topInsetIncludesToolbarHeight() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            topToolbarHeightPx = 168,
            bottomToolbarHeightPx = 192,
            hideToolbarsWhileReading = false,
            densityScale = 2.75f
        )

        // contentTopInsetPx = max(84, 0) + 168 + 0 = 252
        assertEquals(252, geo.contentTopInsetPx)
        // contentBottomInsetPx = 126 + 192 + 0 = 318
        assertEquals(318, geo.contentBottomInsetPx)
    }

    @Test
    fun visibleToolbars_cssInsetsIncludeToolbar() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            topToolbarHeightPx = 168,
            bottomToolbarHeightPx = 192,
            hideToolbarsWhileReading = false,
            densityScale = 2.75f
        )

        // BUG-PAGED-02 / T1: System insets are NOT included in CSS insets.
        // top: (168 chrome + 0 reader padding + 0 safety) / 2.75 ≈ 61 CSS px
        assertEquals(61, geo.contentTopInsetCssPx)
        // bottom: (192 chrome + 0 reader padding + 0 safety) / 2.75 ≈ 70 CSS px
        assertEquals(70, geo.contentBottomInsetCssPx)
    }

    // ── Display cutout ──────────────────────────────────────────────────

    @Test
    fun displayCutout_includedInTopInset() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 24,
            navigationBarInsetPx = 126,
            displayCutoutInsetPx = 84,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // max(24, 84) = 84
        assertEquals(84, geo.contentTopInsetPx)
    }

    // ── Reader padding ──────────────────────────────────────────────────

    @Test
    fun readerPadding_addedToInsets() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            readerTopPaddingPx = 16,
            readerBottomPaddingPx = 16,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // 84 + 0 + 16 = 100
        assertEquals(100, geo.contentTopInsetPx)
        // 126 + 0 + 16 = 142
        assertEquals(142, geo.contentBottomInsetPx)
    }

    // ── Content dimensions ──────────────────────────────────────────────

    @Test
    fun contentHeight_reducedByInsets() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // usable = 2400 - 84 - 126 = 2190 px
        // CSS = 2190 / 2.75 ≈ 796
        assertTrue(geo.contentHeightCssPx > 700)
        assertTrue(geo.contentHeightCssPx < 900)
    }

    @Test
    fun contentWidth_cssConverted() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 0,
            navigationBarInsetPx = 0,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // 1080 / 2.75 ≈ 393
        assertEquals(393, geo.contentWidthCssPx)
    }

    // ── Edge cases ──────────────────────────────────────────────────────

    @Test
    fun minimumViewportHeight_enforced() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 100,
            viewportHeightPx = 50,
            statusBarInsetPx = 0,
            navigationBarInsetPx = 0,
            hideToolbarsWhileReading = true,
            densityScale = 1f
        )

        // Viewport height minimum is 240
        assertTrue(geo.contentHeightCssPx > 0)
    }

    @Test
    fun densityScale_minimum1() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            hideToolbarsWhileReading = true,
            densityScale = 0f // invalid → clamped to 1
        )

        // Should not crash, densityScale clamped to 1
        // BUG-PAGED-02 / T1: System insets are NOT included in CSS insets.
        // top: (0 chrome + 0 reader padding + 4 safety) / 1 = 4 CSS px
        assertEquals(4, geo.contentTopInsetCssPx)
    }
    // ── Chrome-reserve-only CSS insets (LAYOUT-02) ─────────────────────

    @Test
    fun chromeTopInset_hiddenToolbars_returnsZero() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            topToolbarHeightPx = 168,
            bottomToolbarHeightPx = 192,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        // Hidden toolbars → chrome reserve = 0 → CSS inset = 0
        assertEquals(0, geo.chromeTopInsetCssPx)
        assertEquals(0, geo.chromeBottomInsetCssPx)
    }

    @Test
    fun chromeTopInset_visibleToolbars_convertsToolbarHeight() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            topToolbarHeightPx = 168,
            bottomToolbarHeightPx = 192,
            hideToolbarsWhileReading = false,
            densityScale = 2.75f
        )

        // 168 / 2.75 ≈ 61 CSS px
        assertEquals(61, geo.chromeTopInsetCssPx)
        // 192 / 2.75 ≈ 70 CSS px
        assertEquals(70, geo.chromeBottomInsetCssPx)
    }

    @Test
    fun chromeInset_densityScaleOne_isExactPixels() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 0,
            navigationBarInsetPx = 0,
            topToolbarHeightPx = 100,
            bottomToolbarHeightPx = 50,
            hideToolbarsWhileReading = false,
            densityScale = 1f
        )

        assertEquals(100, geo.chromeTopInsetCssPx)
    }
}
