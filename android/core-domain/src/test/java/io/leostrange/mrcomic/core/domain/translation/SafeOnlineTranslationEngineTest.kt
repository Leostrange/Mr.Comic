package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationProviderType
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationResult
import io.leostrange.mrcomic.core.model.TranslationSourceType
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class SafeOnlineTranslationEngineTest {

    @Test
    fun `isConfigured is false until real online provider is added`() = runBlocking {
        val engine = SafeOnlineTranslationEngine(FakeOfflineEngine())

        val result = engine.isConfigured()

        assertTrue(result is Result.Success)
        assertFalse((result as Result.Success).data)
    }

    @Test
    fun `falls back to offline engine when offline pair is available`() = runBlocking {
        val engine = SafeOnlineTranslationEngine(
            FakeOfflineEngine(
                available = true,
                translatedText = "привет"
            )
        )

        val result = engine.translate(
            TranslationRequest(
                id = "req-1",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = "hello",
                sourceLanguage = "en",
                targetLanguage = "ru",
                mode = TranslationMode.ONLINE_MT,
                createdAt = 1L
            )
        )

        val translated = (result as Result.Success).data
        assertEquals("привет", translated.translatedText)
        assertTrue(translated.isOffline)
        assertEquals(TranslationProviderType.ML_KIT, translated.provider)
    }

    @Test
    fun `returns error when provider is missing and offline fallback is unavailable`() = runBlocking {
        val engine = SafeOnlineTranslationEngine(FakeOfflineEngine(available = false))

        val result = engine.translate(
            TranslationRequest(
                id = "req-2",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = "hello",
                sourceLanguage = "en",
                targetLanguage = "ru",
                mode = TranslationMode.ONLINE_MT,
                createdAt = 1L
            )
        )

        assertTrue(result is Result.Error)
        assertTrue((result as Result.Error).exception is TranslationBackendUnavailableException)
    }

    private class FakeOfflineEngine(
        private val available: Boolean = true,
        private val translatedText: String = "offline-result"
    ) : OfflineTranslationEngine {

        override suspend fun isLanguagePairAvailable(
            sourceLanguage: String,
            targetLanguage: String
        ): Result<Boolean> = Result.Success(available)

        override suspend fun translate(request: TranslationRequest): Result<TranslationResult> =
            if (available) {
                Result.Success(
                    TranslationResult(
                        requestId = request.id,
                        translatedText = translatedText,
                        provider = TranslationProviderType.ML_KIT,
                        isOffline = true
                    )
                )
            } else {
                Result.Error(IllegalStateException("offline unavailable"))
            }
    }
}
