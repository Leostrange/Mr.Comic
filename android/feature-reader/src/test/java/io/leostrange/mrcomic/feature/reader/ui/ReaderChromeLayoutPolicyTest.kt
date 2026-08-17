package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderChromeLayoutPolicyTest {

    @Test
    fun sevenTextPageActions_fitInsideNarrowToolbar() {
        val buttonSize = readerChromeActionButtonSizeDp(
            availableWidthDp = 281f,
            actionCount = 7,
        )

        assertEquals(281f / 7f, buttonSize, 0.01f)
        assertTrue(buttonSize * 7 <= 281f)
    }

    @Test
    fun textReaderKeepsTocButtonWhileTocIsStillEmptyOrLoading() {
        assertTrue(
            readerShouldShowTocChromeButton(
                isTextReader = true,
                buttonEnabled = true,
            )
        )
    }
}
