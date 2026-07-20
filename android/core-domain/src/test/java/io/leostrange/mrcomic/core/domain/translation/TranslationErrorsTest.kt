package io.leostrange.mrcomic.core.domain.translation

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class TranslationErrorsTest {

    @Test
    fun translationBackendUnavailableException_containsLanguages() {
        val ex = TranslationBackendUnavailableException("ja", "en")

        assertEquals("ja", ex.sourceLanguage)
        assertEquals("en", ex.targetLanguage)
    }

    @Test
    fun translationBackendUnavailableException_isIllegalState() {
        val ex = TranslationBackendUnavailableException("zh", "ru")
        assertTrue(ex is IllegalStateException)
    }

    @Test
    fun translationBackendUnavailableException_messageContainsLanguages() {
        val ex = TranslationBackendUnavailableException("ko", "fr")
        assertTrue(ex.message!!.contains("ko"))
        assertTrue(ex.message!!.contains("fr"))
    }

    @Test
    fun translationBackendUnavailableException_messageMentionsNoProvider() {
        val ex = TranslationBackendUnavailableException("en", "de")
        assertTrue(ex.message!!.contains("No configured"))
    }
}
