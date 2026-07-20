package com.example.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderNotePanelHeightPolicyTest {

    @Test
    fun preservesExistingPreferredHeightWhenViewportHasRoom() {
        assertEquals(
            460,
            ReaderNotePanelHeightPolicy.maxContentHeightDp(
                screenHeightDp = 640,
                topInsetDp = 24,
                bottomInsetDp = 24,
                chromeReservedDp = 64,
                expanded = true
            )
        )
    }

    @Test
    fun limitsLongExpandedNoteToSpaceAboveInsetsAndChrome() {
        assertEquals(
            148,
            ReaderNotePanelHeightPolicy.maxContentHeightDp(
                screenHeightDp = 320,
                topInsetDp = 24,
                bottomInsetDp = 24,
                chromeReservedDp = 56,
                expanded = true
            )
        )
    }

    @Test
    fun peekKeepsItsCompactLimitWhenChromeIsHidden() {
        assertEquals(
            230,
            ReaderNotePanelHeightPolicy.maxContentHeightDp(
                screenHeightDp = 640,
                topInsetDp = 24,
                bottomInsetDp = 24,
                chromeReservedDp = 0,
                expanded = false
            )
        )
    }
}
