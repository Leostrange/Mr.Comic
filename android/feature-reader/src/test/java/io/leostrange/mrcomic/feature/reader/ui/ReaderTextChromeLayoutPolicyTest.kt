package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTextChromeLayoutPolicyTest {
    @Test
    fun hiddenChrome_resolvesToZeroInsets() {
        val hidden = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 0,
            measuredBottomCssPx = 0,
        )

        assertEquals(ReaderTextChromeLayoutInsets(0, 0), hidden)
    }

    @Test
    fun visibleChrome_reservesMeasuredChromeHeight() {
        val visible = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 196,
            measuredBottomCssPx = 236,
        )

        // PAGED-02: a visible toolbar must push the text content down/up by
        // its own height so text never crowds (or slides under) the chrome.
        assertEquals(ReaderTextChromeLayoutInsets(topCssPx = 196, bottomCssPx = 236), visible)
    }

    @Test(expected = IllegalArgumentException::class)
    fun negativeInset_isRejected() {
        resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = -1,
            measuredBottomCssPx = 0,
        )
    }
}
