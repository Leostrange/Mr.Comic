package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTextChromeLayoutPolicyTest {
    @Test
    fun visibleChrome_doesNotChangeTextLayoutInsets() {
        val hidden = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 0,
            measuredBottomCssPx = 0,
        )
        val visible = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 196,
            measuredBottomCssPx = 236,
        )

        assertEquals(ReaderTextChromeLayoutInsets(0, 0), hidden)
        assertEquals(hidden, visible)
    }
}
