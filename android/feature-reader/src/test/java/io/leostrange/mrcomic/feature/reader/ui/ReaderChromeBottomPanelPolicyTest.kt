package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderChromeBottomPanelPolicyTest {
    @Test
    fun landscapeDocumentReaderUsesCompactBottomPanel() {
        assertTrue(shouldUseCompactLandscapeBottomPanel(isLandscape = true, isTextBook = false))
    }

    @Test
    fun portraitAndReflowableTextKeepRegularBottomPanel() {
        assertFalse(shouldUseCompactLandscapeBottomPanel(isLandscape = false, isTextBook = false))
        assertFalse(shouldUseCompactLandscapeBottomPanel(isLandscape = true, isTextBook = true))
    }
}
