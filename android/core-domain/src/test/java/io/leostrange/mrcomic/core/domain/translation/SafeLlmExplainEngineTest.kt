package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.ExplainRequest
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRequest
import io.leostrange.mrcomic.core.model.TranslationResult
import io.leostrange.mrcomic.core.model.TranslationSourceType
import org.junit.Assert.assertEquals
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Test

class SafeLlmExplainEngineTest {

    private class FakeOfflineTranslationEngine(
        private val availablePairs: Set<Pair<String, String>> = emptySet(),
        private val translations: Map<Pair<String, String>, String> = emptyMap()
    ) : OfflineTranslationEngine {
        override suspend fun isLanguagePairAvailable(
            sourceLanguage: String,
            targetLanguage: String
        ): Result<Boolean> = Result.Success(availablePairs.contains(sourceLanguage to targetLanguage))

        override suspend fun translate(
            request: TranslationRequest
        ): Result<TranslationResult> {
            val translated = translations[request.sourceLanguage to request.targetLanguage]
                ?: return Result.Error(IllegalStateException("No fake translation for pair"))
            return Result.Success(
                TranslationResult(
                    requestId = request.id,
                    translatedText = translated,
                    isOffline = true
                )
            )
        }
    }

    @Test
    fun `isConfigured reports safe built-in explain availability`() = runBlocking {
        val engine = SafeLlmExplainEngine(FakeOfflineTranslationEngine())

        val result = engine.isConfigured()

        assertTrue(result is Result.Success)
        assertTrue((result as Result.Success).data)
    }

    @Test
    fun `returns a localized structured explanation when translated text is already available`() = runBlocking {
        val engine = SafeLlmExplainEngine(FakeOfflineTranslationEngine())

        val result = engine.explain(
            ExplainRequest(
                id = "explain-1",
                sourceType = TranslationSourceType.BOOK_TEXT,
                text = "This phrase sounds odd in context.",
                sourceLanguage = "en",
                targetLanguage = "ru",
                translatedText = "Эта фраза звучит странно в контексте.",
                createdAt = 1L
            )
        )

        assertTrue(result is Result.Success)
        val explanation = (result as Result.Success).data
        assertEquals("explain-1", explanation.requestId)
        assertTrue(explanation.explanation.contains("Пояснение", ignoreCase = true))
        assertTrue(explanation.explanation.contains("Прямой смысл", ignoreCase = true))
        assertTrue(explanation.explanation.contains("Эта фраза звучит странно в контексте.", ignoreCase = true))
        assertTrue(explanation.cleanedText == "This phrase sounds odd in context.")
    }

    @Test
    fun `uses offline translation fallback when explicit translated text is missing`() = runBlocking {
        val engine = SafeLlmExplainEngine(
            FakeOfflineTranslationEngine(
                availablePairs = setOf("fr" to "ru"),
                translations = mapOf(("fr" to "ru") to "Привет, друг!")
            )
        )

        val result = engine.explain(
            ExplainRequest(
                id = "explain-2",
                sourceType = TranslationSourceType.OCR_TEXT,
                text = "Bonjour, ami!",
                sourceLanguage = "fr",
                targetLanguage = "ru",
                createdAt = 2L
            )
        )

        assertTrue(result is Result.Success)
        val explanation = (result as Result.Success).data
        assertTrue(explanation.isOffline)
        assertTrue(explanation.explanation.contains("Прямой смысл: Привет, друг!", ignoreCase = true))
    }

    @Test
    fun `adds low confidence OCR note for uncertain OCR text`() = runBlocking {
        val engine = SafeLlmExplainEngine(FakeOfflineTranslationEngine())

        val result = engine.explain(
            ExplainRequest(
                id = "explain-3",
                sourceType = TranslationSourceType.OCR_TEXT,
                text = "WHAT?!",
                sourceLanguage = "en",
                targetLanguage = "en",
                ocrConfidence = 0.42f,
                createdAt = 3L
            )
        )

        assertTrue(result is Result.Success)
        val explanation = (result as Result.Success).data
        assertTrue(explanation.explanation.contains("OCR note", ignoreCase = true))
        assertTrue(explanation.explanation.contains("emotional question", ignoreCase = true))
    }
}
