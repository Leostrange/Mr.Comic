package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.TranslationProviderType
import com.example.core.model.TranslationRequest
import com.example.core.model.TranslationResult
import java.io.ByteArrayInputStream
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class QuickDictionaryEngineTest {

    @Test
    fun `english plural normalizes to lemma`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(
                available = true,
                translatedText = "книга"
            ),
            onlineTranslationEngine = FakeOnlineTranslationEngine()
        )

        val result = engine.lookup(
            rawWord = "\"books\"",
            sourceLanguage = "en",
            targetLanguage = "ru"
        )

        require(result is Result.Success)
        assertEquals("book", result.data.lemma)
        assertEquals("noun", result.data.partOfSpeech)
        assertEquals(listOf("книга"), result.data.translations)
        assertTrue(result.data.forms.contains("\"books\""))
    }

    @Test
    fun `source equals target returns same lemma`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(available = false),
            onlineTranslationEngine = FakeOnlineTranslationEngine()
        )

        val result = engine.lookup(
            rawWord = "Reading",
            sourceLanguage = "en",
            targetLanguage = "en"
        )

        require(result is Result.Success)
        assertEquals("read", result.data.lemma)
        assertEquals(listOf("read"), result.data.translations)
    }

    @Test
    fun `lookup availability follows offline pair or online route readiness`() = runBlocking {
        val offlineOnly = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(available = true),
            onlineTranslationEngine = FakeOnlineTranslationEngine(configured = false),
            networkAvailableProvider = { false }
        )
        val offlineResult = offlineOnly.isLookupAvailable("en", "ru")
        require(offlineResult is Result.Success)
        assertTrue(offlineResult.data)

        val onlineOnly = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(available = false),
            onlineTranslationEngine = FakeOnlineTranslationEngine(configured = true),
            networkAvailableProvider = { true }
        )
        val onlineResult = onlineOnly.isLookupAvailable("en", "ru")
        require(onlineResult is Result.Success)
        assertTrue(onlineResult.data)
    }

    @Test
    fun `lookup availability stays false when online provider is configured but network is absent`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(available = false),
            onlineTranslationEngine = FakeOnlineTranslationEngine(configured = true),
            networkAvailableProvider = { false }
        )

        val result = engine.isLookupAvailable("pl", "ru")
        require(result is Result.Success)
        assertTrue(!result.data)
    }

    @Test
    fun `bundled dictionary entry wins over translation fallback`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { path ->
                if (path == "dictionaries/freedict/en-ru.tsv") {
                    ByteArrayInputStream(
                        "lemma\tpart_of_speech\ttranslations\nbook\tnoun\tкнига|том\n".toByteArray()
                    )
                } else {
                    null
                }
            },
            offlineTranslationEngine = FakeOfflineTranslationEngine(
                available = true,
                translatedText = "машинный перевод"
            ),
            onlineTranslationEngine = FakeOnlineTranslationEngine()
        )

        val result = engine.lookup("book", "en", "ru")
        require(result is Result.Success)
        assertEquals(listOf("книга", "том"), result.data.translations)
        assertEquals("noun", result.data.partOfSpeech)
    }

    @Test
    fun `short phrase can fall back to machine assisted dictionary entry`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(
                available = true,
                translatedText = "добрый день"
            ),
            onlineTranslationEngine = FakeOnlineTranslationEngine(),
            networkAvailableProvider = { true }
        )

        val result = engine.lookup(
            rawWord = "dzień dobry",
            sourceLanguage = "pl",
            targetLanguage = "ru"
        )

        require(result is Result.Success)
        assertEquals("dzień dobry", result.data.lemma)
        assertEquals(listOf("добрый день"), result.data.translations)
        assertEquals(listOf("machine-assisted"), result.data.glosses)
    }

    @Test
    fun `short english phrase can fall back to machine assisted dictionary entry`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(
                available = true,
                translatedText = "ночной поезд"
            ),
            onlineTranslationEngine = FakeOnlineTranslationEngine(),
            networkAvailableProvider = { true }
        )

        val result = engine.lookup(
            rawWord = "night train",
            sourceLanguage = "en",
            targetLanguage = "ru"
        )

        require(result is Result.Success)
        assertEquals("night train", result.data.lemma)
        assertEquals(listOf("ночной поезд"), result.data.translations)
        assertEquals(listOf("machine-assisted"), result.data.glosses)
    }

    @Test
    fun `short japanese snippet can fall back to machine assisted dictionary entry`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(
                available = true,
                translatedText = "спасибо"
            ),
            onlineTranslationEngine = FakeOnlineTranslationEngine(),
            networkAvailableProvider = { true }
        )

        val result = engine.lookup(
            rawWord = "ありがとう",
            sourceLanguage = "ja",
            targetLanguage = "ru"
        )

        require(result is Result.Success)
        assertEquals("ありがとう", result.data.lemma)
        assertEquals(listOf("спасибо"), result.data.translations)
        assertEquals(listOf("machine-assisted"), result.data.glosses)
    }

    @Test
    fun `long phrase is still rejected for dictionary lookup`() = runBlocking {
        val engine = QuickDictionaryEngine(
            assetOpener = { null },
            offlineTranslationEngine = FakeOfflineTranslationEngine(
                available = true,
                translatedText = "ignored"
            ),
            onlineTranslationEngine = FakeOnlineTranslationEngine()
        )

        val result = engine.lookup(
            rawWord = "dzień dobry, jak się masz",
            sourceLanguage = "pl",
            targetLanguage = "ru"
        )

        assertTrue(result is Result.Error)
    }
}

private class FakeOfflineTranslationEngine(
    private val available: Boolean,
    private val translatedText: String = "translated"
) : OfflineTranslationEngine {
    override suspend fun isLanguagePairAvailable(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean> = Result.Success(available)

    override suspend fun translate(request: TranslationRequest): Result<TranslationResult> {
        if (!available) {
            return Result.Error(IllegalStateException("offline unavailable"))
        }
        return Result.Success(
            TranslationResult(
                requestId = request.id,
                translatedText = translatedText,
                provider = TranslationProviderType.ML_KIT,
                isOffline = true
            )
        )
    }
}

private class FakeOnlineTranslationEngine(
    private val configured: Boolean = false
) : OnlineTranslationEngine {
    override suspend fun isConfigured(): Result<Boolean> = Result.Success(configured)

    override suspend fun translate(request: TranslationRequest): Result<TranslationResult> =
        if (configured) {
            Result.Success(
                TranslationResult(
                    requestId = request.id,
                    translatedText = "online",
                    provider = TranslationProviderType.ONLINE_PROVIDER,
                    isOffline = false
                )
            )
        } else {
            Result.Error(IllegalStateException("online unavailable"))
        }
}
