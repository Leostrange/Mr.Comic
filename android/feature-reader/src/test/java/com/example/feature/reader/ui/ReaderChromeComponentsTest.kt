package com.example.feature.reader.ui

import androidx.compose.ui.unit.dp
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderChromeComponentsTest {

    @Test
    fun readerNotePanelMaxHeight_scalesAndClampsExpandedPanels() {
        assertEquals(345.dp, readerNotePanelMaxHeightDp(screenHeightDp = 320, expanded = true))
        assertEquals(460.dp, readerNotePanelMaxHeightDp(screenHeightDp = 640, expanded = true))
        assertEquals(720.dp, readerNotePanelMaxHeightDp(screenHeightDp = 1400, expanded = true))
    }

    @Test
    fun readerNotePanelMaxHeight_scalesAndClampsPeekPanels() {
        assertEquals(180.dp, readerNotePanelMaxHeightDp(screenHeightDp = 320, expanded = false))
        assertEquals(230.dp, readerNotePanelMaxHeightDp(screenHeightDp = 640, expanded = false))
        assertEquals(320.dp, readerNotePanelMaxHeightDp(screenHeightDp = 1400, expanded = false))
    }
}
