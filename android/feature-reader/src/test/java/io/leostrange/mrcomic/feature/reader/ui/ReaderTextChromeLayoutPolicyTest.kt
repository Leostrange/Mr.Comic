package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTextChromeLayoutPolicyTest {
    @Test
    fun textKeepsSymmetricPersistentGutterWhenChromeIsHidden() {
        val hidden = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 0,
            measuredBottomCssPx = 0,
            persistentGutterCssPx = 18,
        )
        val visible = resolveReaderTextChromeLayoutInsets(
            measuredTopCssPx = 196,
            measuredBottomCssPx = 236,
            persistentGutterCssPx = 18,
        )

        assertEquals(ReaderTextChromeLayoutInsets(18, 18), hidden)
        assertEquals(ReaderTextChromeLayoutInsets(196, 236), visible)
    }
}
