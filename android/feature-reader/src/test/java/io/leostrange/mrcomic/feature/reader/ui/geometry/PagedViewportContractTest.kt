package io.leostrange.mrcomic.feature.reader.ui.geometry

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class PagedViewportContractTest {

    @Test
    fun portrait_withHiddenBars_allowsLayout() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 1080,
            viewportHeightPx = 2400,
            statusBarInsetPx = 84,
            navigationBarInsetPx = 126,
            displayCutoutInsetPx = 0,
            hideToolbarsWhileReading = true,
            densityScale = 2.75f
        )

        val contract = PagedViewportContract.evaluate(geo)

        assertTrue(contract.canLayout)
        assertNull(contract.blockedReason)
        assertEquals(0, contract.topInsetCss)
        assertEquals(0, contract.bottomInsetCss)
        assertTrue(contract.usableHeightCss > 500)
    }

    @Test
    fun portrait_withVisibleBars_reducesUsableHeight() {
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

        val contract = PagedViewportContract.evaluate(geo)

        assertTrue(contract.canLayout)
        assertTrue(contract.topInsetCss > 0)
        assertTrue(contract.bottomInsetCss > 0)
        assertTrue(contract.usableHeightCss > 400)
    }

    @Test
    fun lowLandscapeViewport_withHiddenBars_remainsViable() {
        // e.g. 720x360 landscape phone in edge-to-edge
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 720,
            viewportHeightPx = 360,
            statusBarInsetPx = 0,
            navigationBarInsetPx = 0,
            hideToolbarsWhileReading = true,
            densityScale = 2.0f
        )

        val contract = PagedViewportContract.evaluate(geo)

        assertTrue(contract.canLayout)
        assertEquals(180, contract.usableHeightCss)
        assertNull(contract.blockedReason)
    }

    @Test
    fun tooSmallWidth_blocksLayoutWithInformativeReason() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 100, // below MIN_WIDTH_CSS_PX (120)
            viewportHeightPx = 400,
            statusBarInsetPx = 0,
            navigationBarInsetPx = 0,
            densityScale = 1.0f
        )

        val contract = PagedViewportContract.evaluate(geo)

        assertFalse(contract.canLayout)
        assertTrue(contract.blockedReason?.contains("below minimum") == true)
    }

    @Test
    fun excessiveChromeInsets_blocksLayoutWithInformativeReason() {
        val geo = ReaderViewportGeometry.fromMeasured(
            viewportWidthPx = 720,
            viewportHeightPx = 400,
            statusBarInsetPx = 0,
            navigationBarInsetPx = 0,
            topToolbarHeightPx = 200,
            bottomToolbarHeightPx = 200,
            hideToolbarsWhileReading = false,
            densityScale = 1.0f
        )

        val contract = PagedViewportContract.evaluate(geo)

        assertFalse(contract.canLayout)
        assertTrue(contract.blockedReason?.contains("below minimum") == true)
    }
}
