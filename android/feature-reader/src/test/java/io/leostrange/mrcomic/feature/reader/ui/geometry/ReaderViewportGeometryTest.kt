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

        // VERTICAL-01/02: hidden toolbars add 8px safety margin
        // top: (84 + 0 + 0 + 8) / 2.75 ≈ 33 CSS px
        assertEquals(33, geo.contentTopInsetCssPx)
        // bottom: (126 + 0 + 0 + 8) / 2.75 ≈ 49 CSS px
        assertEquals(49, geo.contentBottomInsetCssPx)
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

        // 252 / 2.75 ≈ 92 CSS px
        assertEquals(92, geo.contentTopInsetCssPx)
        // 318 / 2.75 ≈ 116 CSS px
        assertEquals(116, geo.contentBottomInsetCssPx)
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
        // VERTICAL-01: safety margin 8px added when toolbars hidden
        assertEquals(92, geo.contentTopInsetCssPx)
    }
}
