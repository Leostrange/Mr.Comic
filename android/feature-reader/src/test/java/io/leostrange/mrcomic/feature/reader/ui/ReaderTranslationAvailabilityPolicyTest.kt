package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderTranslationAvailabilityPolicyTest {

    @Test
    fun `short phrase stays unavailable when only network exists but online route is not configured`() {
        assertFalse(
            readerPhraseTranslationAvailable(
                canTranslateAsPhrase = true,
                offlineAvailable = false,
                networkAvailable = true,
                onlineTranslationAvailable = false
            )
        )
    }

    @Test
    fun `short phrase is available when offline model exists`() {
        assertTrue(
            readerPhraseTranslationAvailable(
                canTranslateAsPhrase = true,
                offlineAvailable = true,
                networkAvailable = false,
                onlineTranslationAvailable = false
            )
        )
    }

    @Test
    fun `short phrase is available when online route is configured and network exists`() {
        assertTrue(
            readerPhraseTranslationAvailable(
                canTranslateAsPhrase = true,
                offlineAvailable = false,
                networkAvailable = true,
                onlineTranslationAvailable = true
            )
        )
    }
}
