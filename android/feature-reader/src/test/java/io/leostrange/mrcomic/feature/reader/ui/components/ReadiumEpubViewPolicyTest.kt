package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.feature.reader.ui.ReadiumTapAction
import io.leostrange.mrcomic.feature.reader.ui.resolveReadiumTapAction
import org.junit.Assert.assertEquals
import org.junit.Test

class ReadiumEpubViewPolicyTest {

    @Test
    fun leftThirdTriggersPreviousPageInLtr() {
        val action = resolveReadiumTapAction(tapX = 100f, totalWidth = 1000f, isRtl = false)
        assertEquals(ReadiumTapAction.PREV_PAGE, action)
    }

    @Test
    fun rightThirdTriggersNextPageInLtr() {
        val action = resolveReadiumTapAction(tapX = 850f, totalWidth = 1000f, isRtl = false)
        assertEquals(ReadiumTapAction.NEXT_PAGE, action)
    }

    @Test
    fun centerThirdTriggersToggleChrome() {
        val action = resolveReadiumTapAction(tapX = 500f, totalWidth = 1000f, isRtl = false)
        assertEquals(ReadiumTapAction.TOGGLE_CHROME, action)
    }

    @Test
    fun rtlFlipsNavigationSides() {
        val leftAction = resolveReadiumTapAction(tapX = 100f, totalWidth = 1000f, isRtl = true)
        assertEquals(ReadiumTapAction.NEXT_PAGE, leftAction)

        val rightAction = resolveReadiumTapAction(tapX = 850f, totalWidth = 1000f, isRtl = true)
        assertEquals(ReadiumTapAction.PREV_PAGE, rightAction)

        val centerAction = resolveReadiumTapAction(tapX = 500f, totalWidth = 1000f, isRtl = true)
        assertEquals(ReadiumTapAction.TOGGLE_CHROME, centerAction)
    }

    @Test
    fun invalidWidthOrNegativeCoordinatesSafelyFallbackToChromeToggle() {
        assertEquals(ReadiumTapAction.TOGGLE_CHROME, resolveReadiumTapAction(tapX = -10f, totalWidth = 1000f))
        assertEquals(ReadiumTapAction.TOGGLE_CHROME, resolveReadiumTapAction(tapX = 100f, totalWidth = 0f))
        assertEquals(ReadiumTapAction.TOGGLE_CHROME, resolveReadiumTapAction(tapX = 100f, totalWidth = -500f))
    }
}
