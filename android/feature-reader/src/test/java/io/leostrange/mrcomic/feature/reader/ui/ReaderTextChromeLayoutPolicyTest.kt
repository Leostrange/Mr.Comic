package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTextChromeLayoutPolicyTest {
    @Test
    fun twoLineGutterIsTheSingleSymmetricReserve() {
        assertEquals(108, readerTextTwoLineGutterPx(54))
        assertEquals(16, readerTextTwoLineGutterPx(1))
    }

    @Test
    fun textKeepsSymmetricPersistentGutterWhenChromeIsHidden() {
        val hidden = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 0,
            measuredBottomCssPx = 0,
            persistentGutterCssPx = 18,
            persistentGutterPx = 54,
        )
        val visible = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 196,
            measuredBottomCssPx = 236,
            persistentGutterCssPx = 18,
            persistentGutterPx = 54,
        )

        assertEquals(ReaderTextChromeLayoutInsets(0, 0, 54, 54), hidden)
        assertEquals(ReaderTextChromeLayoutInsets(0, 0, 54, 54), visible)
    }

    @Test
    fun chromeVisibilityCannotChangeOuterReaderGutter() {
        val hidden = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 0,
            measuredBottomCssPx = 0,
            persistentGutterCssPx = 30,
            persistentGutterPx = 90,
        )
        val expanded = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 260,
            measuredBottomCssPx = 320,
            persistentGutterCssPx = 30,
            persistentGutterPx = 90,
        )

        assertEquals(hidden.outerTopPx, expanded.outerTopPx)
        assertEquals(hidden.outerBottomPx, expanded.outerBottomPx)
        assertEquals(hidden.topCssPx, expanded.topCssPx)
        assertEquals(hidden.bottomCssPx, expanded.bottomCssPx)
    }

    @Test
    fun twoStepGutterRemainsSymmetricAndIndependentOfChromeMeasurements() {
        val hidden = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 0,
            measuredBottomCssPx = 0,
            persistentGutterCssPx = 36,
            persistentGutterPx = 108,
        )
        val visible = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 220,
            measuredBottomCssPx = 280,
            persistentGutterCssPx = 36,
            persistentGutterPx = 108,
        )

        assertEquals(108, hidden.outerTopPx)
        assertEquals(108, hidden.outerBottomPx)
        assertEquals(hidden, visible)
    }
}
