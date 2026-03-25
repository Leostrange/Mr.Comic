package com.example.feature.ocr.data

import com.example.core.domain.translation.DictionaryEngine
import com.example.core.domain.translation.OfflineTranslationEngine
import com.example.core.domain.translation.OnlineTranslationEngine
import com.example.core.domain.util.Result
import com.example.core.model.DictionaryEntry
import com.example.core.model.OcrBlock
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationProviderType
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationResult
import com.example.core.model.TranslationTransportPreference
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DefaultComicTranslationEngineTest {

    @Test
    fun `uses dictionary for short polish phrase before unavailable machine translation`() = runBlocking {
        val offlineEngine = FakeOfflineTranslationEngine()
        val onlineEngine = FakeOnlineTranslationEngine()
        val dictionaryEngine = FakeDictionaryEngine(
            entries = mapOf(
                "pl|ru|dzień dobry" to dictionaryEntry(
                    sourceLanguage = "pl",
                    targetLanguage = "ru",
                    lemma = "dzień dobry",
                    translations = listOf("добрый день")
                )
            )
        )
        val engine = DefaultComicTranslationEngine(
            offlineTranslationEngine = offlineEngine,
            onlineTranslationEngine = onlineEngine,
            dictionaryEngine = dictionaryEngine,
            bubbleReplacementPreviewPlanner = BubbleReplacementPreviewPlanner()
        )

        val result = engine.translateBlocks(
            blocks = listOf(
                OcrBlock(
                    id = "block-1",
                    pageId = "page-1",
                    bboxLeft = 0f,
                    bboxTop = 0f,
                    bboxWidth = 120f,
                    bboxHeight = 40f,
                    textOriginal = "dzień dobry",
                    textNormalized = "dzień dobry",
                    detectedLanguage = "pl"
                )
            ),
            sourceLanguage = "pl",
            targetLanguage = "ru",
            preferredTransport = com.example.core.model.TranslationTransportPreference.AUTO
        )

        val overlays = (result as Result.Success).data
        assertEquals(1, overlays.size)
        assertEquals("добрый день", overlays.first().translatedText)
        assertEquals(TranslationMode.DICTIONARY, overlays.first().translationMode)
        assertEquals(TranslationProviderType.LOCAL_DICTIONARY, overlays.first().provider)
        assertTrue(overlays.first().isOffline)
        assertEquals(0, offlineEngine.translateCalls)
        assertEquals(0, onlineEngine.translateCalls)
    }

    @Test
    fun `does not use dictionary for long polish snippet when lookup policy rejects it`() = runBlocking {
        val offlineEngine = FakeOfflineTranslationEngine()
        val onlineEngine = FakeOnlineTranslationEngine()
        val dictionaryEngine = FakeDictionaryEngine(
            entries = mapOf(
                "pl|ru|dzień dobry" to dictionaryEntry(
                    sourceLanguage = "pl",
                    targetLanguage = "ru",
                    lemma = "dzień dobry",
                    translations = listOf("добрый день")
                )
            )
        )
        val engine = DefaultComicTranslationEngine(
            offlineTranslationEngine = offlineEngine,
            onlineTranslationEngine = onlineEngine,
            dictionaryEngine = dictionaryEngine,
            bubbleReplacementPreviewPlanner = BubbleReplacementPreviewPlanner()
        )

        val result = engine.translateBlocks(
            blocks = listOf(
                OcrBlock(
                    id = "block-2",
                    pageId = "page-1",
                    bboxLeft = 0f,
                    bboxTop = 0f,
                    bboxWidth = 180f,
                    bboxHeight = 60f,
                    textOriginal = "dzień dobry, jak się masz",
                    textNormalized = "dzień dobry, jak się masz",
                    detectedLanguage = "pl"
                )
            ),
            sourceLanguage = "pl",
            targetLanguage = "ru",
            preferredTransport = TranslationTransportPreference.AUTO
        )

        assertTrue(result is Result.Error)
        assertEquals(1, offlineEngine.translateCalls)
        assertEquals(1, onlineEngine.translateCalls)
    }

    @Test
    fun `uses dictionary for short japanese snippet before unavailable machine translation`() = runBlocking {
        val offlineEngine = FakeOfflineTranslationEngine()
        val onlineEngine = FakeOnlineTranslationEngine()
        val dictionaryEngine = FakeDictionaryEngine(
            entries = mapOf(
                "ja|ru|ありがとう" to dictionaryEntry(
                    sourceLanguage = "ja",
                    targetLanguage = "ru",
                    lemma = "ありがとう",
                    translations = listOf("спасибо")
                )
            )
        )
        val engine = DefaultComicTranslationEngine(
            offlineTranslationEngine = offlineEngine,
            onlineTranslationEngine = onlineEngine,
            dictionaryEngine = dictionaryEngine,
            bubbleReplacementPreviewPlanner = BubbleReplacementPreviewPlanner()
        )

        val result = engine.translateBlocks(
            blocks = listOf(
                OcrBlock(
                    id = "block-ja-1",
                    pageId = "page-1",
                    bboxLeft = 0f,
                    bboxTop = 0f,
                    bboxWidth = 100f,
                    bboxHeight = 32f,
                    textOriginal = "ありがとう",
                    textNormalized = "ありがとう",
                    detectedLanguage = "ja"
                )
            ),
            sourceLanguage = "ja",
            targetLanguage = "ru",
            preferredTransport = TranslationTransportPreference.AUTO
        )

        val overlays = (result as Result.Success).data
        assertEquals(1, overlays.size)
        assertEquals("спасибо", overlays.first().translatedText)
        assertEquals(TranslationMode.DICTIONARY, overlays.first().translationMode)
        assertEquals(TranslationProviderType.LOCAL_DICTIONARY, overlays.first().provider)
        assertTrue(overlays.first().isOffline)
        assertEquals(0, offlineEngine.translateCalls)
        assertEquals(0, onlineEngine.translateCalls)
    }

    @Test
    fun `uses dictionary for short english phrase before unavailable machine translation`() = runBlocking {
        val offlineEngine = FakeOfflineTranslationEngine()
        val onlineEngine = FakeOnlineTranslationEngine()
        val dictionaryEngine = FakeDictionaryEngine(
            entries = mapOf(
                "en|ru|night train" to dictionaryEntry(
                    sourceLanguage = "en",
                    targetLanguage = "ru",
                    lemma = "night train",
                    translations = listOf("ночной поезд")
                )
            )
        )
        val engine = DefaultComicTranslationEngine(
            offlineTranslationEngine = offlineEngine,
            onlineTranslationEngine = onlineEngine,
            dictionaryEngine = dictionaryEngine,
            bubbleReplacementPreviewPlanner = BubbleReplacementPreviewPlanner()
        )

        val result = engine.translateBlocks(
            blocks = listOf(
                OcrBlock(
                    id = "block-en-1",
                    pageId = "page-1",
                    bboxLeft = 0f,
                    bboxTop = 0f,
                    bboxWidth = 140f,
                    bboxHeight = 40f,
                    textOriginal = "night train",
                    textNormalized = "night train",
                    detectedLanguage = "en"
                )
            ),
            sourceLanguage = "en",
            targetLanguage = "ru",
            preferredTransport = TranslationTransportPreference.AUTO
        )

        val overlays = (result as Result.Success).data
        assertEquals(1, overlays.size)
        assertEquals("ночной поезд", overlays.first().translatedText)
        assertEquals(TranslationMode.DICTIONARY, overlays.first().translationMode)
        assertEquals(TranslationProviderType.LOCAL_DICTIONARY, overlays.first().provider)
        assertTrue(overlays.first().isOffline)
        assertEquals(0, offlineEngine.translateCalls)
        assertEquals(0, onlineEngine.translateCalls)
    }

    private fun dictionaryEntry(
        sourceLanguage: String,
        targetLanguage: String,
        lemma: String,
        translations: List<String>
    ) = DictionaryEntry(
        id = "$sourceLanguage-$targetLanguage-$lemma",
        languageFrom = sourceLanguage,
        languageTo = targetLanguage,
        lemma = lemma,
        normalizedLemma = lemma.lowercase(),
        translations = translations,
        forms = listOf(lemma)
    )

    private class FakeDictionaryEngine(
        private val entries: Map<String, DictionaryEntry>
    ) : DictionaryEngine {
        override suspend fun isLookupAvailable(
            sourceLanguage: String,
            targetLanguage: String
        ): Result<Boolean> = Result.Success(
            entries.keys.any { it.startsWith("$sourceLanguage|$targetLanguage|") }
        )

        override suspend fun lookup(
            rawWord: String,
            sourceLanguage: String,
            targetLanguage: String
        ): Result<DictionaryEntry> {
            val key = "$sourceLanguage|$targetLanguage|${rawWord.lowercase()}"
            return entries[key]?.let { entry -> Result.Success(entry) }
                ?: Result.Error(IllegalStateException("Missing dictionary entry for $key"))
        }
    }

    private class FakeOfflineTranslationEngine : OfflineTranslationEngine {
        var translateCalls: Int = 0

        override suspend fun isLanguagePairAvailable(
            sourceLanguage: String,
            targetLanguage: String
        ): Result<Boolean> = Result.Success(false)

        override suspend fun translate(
            request: TranslationRequest
        ): Result<TranslationResult> {
            translateCalls += 1
            return Result.Error(IllegalStateException("offline unavailable"))
        }
    }

    private class FakeOnlineTranslationEngine : OnlineTranslationEngine {
        var translateCalls: Int = 0

        override suspend fun isConfigured(): Result<Boolean> = Result.Success(false)

        override suspend fun translate(
            request: TranslationRequest
        ): Result<TranslationResult> {
            translateCalls += 1
            return Result.Error(IllegalStateException("online unavailable"))
        }
    }
}
