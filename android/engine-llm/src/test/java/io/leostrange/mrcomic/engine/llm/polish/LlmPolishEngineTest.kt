package io.leostrange.mrcomic.engine.llm.polish

import io.leostrange.mrcomic.core.domain.translation.TranslationErrorCode
import io.leostrange.mrcomic.core.domain.translation.TranslationException
import io.leostrange.mrcomic.engine.llm.LlmEngine
import io.mockk.coEvery
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

class LlmPolishEngineTest {

    private val mockLlm = mockk<LlmEngine>()
    private val polishEngine = LlmPolishEngine(mockLlm)

    @Test
    fun isLanguagePairAvailableSupportsMajorLanguages() = runTest {
        assertTrue(polishEngine.isLanguagePairAvailable("en", "ru"))
        assertTrue(polishEngine.isLanguagePairAvailable("ja", "en"))
        assertTrue(polishEngine.isLanguagePairAvailable("zh", "ru"))
        assertTrue(polishEngine.isLanguagePairAvailable("ko", "en"))
        assertFalse(polishEngine.isLanguagePairAvailable("xyz", "ru"))
    }

    @Test
    fun translateThrowsWhenLlmNotReadyAndCannotLoadModel() = runTest {
        coEvery { mockLlm.isReady() } returns false
        coEvery { mockLlm.loadModel() } returns false

        try {
            polishEngine.translate("Hello world", "en", "ru")
            fail("Expected TranslationException")
        } catch (e: TranslationException) {
            assertEquals(TranslationErrorCode.MODEL_NOT_DOWNLOADED, e.errorCode)
        }
    }

    @Test
    fun translateReturnsPolishedTextWhenReady() = runTest {
        coEvery { mockLlm.isReady() } returns true
        coEvery { mockLlm.generateText(any(), any()) } returns "Привет, мир"

        val result = polishEngine.translate("Hello world", "en", "ru")
        assertEquals("Привет, мир", result)
    }

    @Test
    fun polishTranslationFallsBackToRawOnException() = runTest {
        coEvery { mockLlm.isReady() } returns true
        coEvery { mockLlm.generateText(any(), any()) } throws RuntimeException("Network error")

        val result = polishEngine.polishTranslation(
            originalText = "Hello world",
            rawTranslation = "Здравствуй мир",
            sourceLang = "en",
            targetLang = "ru"
        )
        assertEquals("Здравствуй мир", result)
    }
}
