package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderWebtoonRestorePolicyTest {

    @Test
    fun restoresOnlyForTheDocumentThatScheduledTheRequest() {
        assertTrue(shouldRestoreTextWebtoonSection("batch-12", "batch-12"))
    }

    @Test
    fun ignoresARequestAfterTheDocumentWasReplaced() {
        assertFalse(shouldRestoreTextWebtoonSection("batch-12", "batch-24"))
    }

    @Test
    fun requiresAnIdentifiedWebViewDocument() {
        assertFalse(shouldRestoreTextWebtoonSection(null, null))
    }
}
