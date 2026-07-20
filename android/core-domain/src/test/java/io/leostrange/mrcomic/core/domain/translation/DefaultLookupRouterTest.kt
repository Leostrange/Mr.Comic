package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.model.LanguageDetectionResult
import io.leostrange.mrcomic.core.model.LookupRouteKind
import io.leostrange.mrcomic.core.model.TranslationMode
import io.leostrange.mrcomic.core.model.TranslationRoutingRequest
import io.leostrange.mrcomic.core.model.TranslationSourceType
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class DefaultLookupRouterTest {

    @Test
    fun `single word prefers dictionary when dictionary is available`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "hello",
                sourceType = TranslationSourceType.BOOK_TEXT,
                dictionaryAvailable = true,
                offlineModelAvailable = true
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.DICTIONARY_LOOKUP, decision.routeKind)
        assertEquals(TranslationMode.DICTIONARY, decision.primaryMode)
    }

    @Test
    fun `two words keep dictionary first and offer phrase translation`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "night train",
                sourceType = TranslationSourceType.BOOK_TEXT,
                dictionaryAvailable = true,
                networkAvailable = true,
                onlineTranslationAvailable = true,
                preferredTransport = TranslationTransportPreference.ONLINE
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.DICTIONARY_WITH_TRANSLATION_OPTION, decision.routeKind)
        assertEquals(TranslationMode.DICTIONARY, decision.primaryMode)
        assertEquals(listOf(TranslationMode.ONLINE_MT), decision.secondaryModes)
        assertTrue(decision.shouldOfferPhraseTranslation)
    }

    @Test
    fun `two words do not offer phrase translation when network exists but online route is not configured`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "dzien dobry",
                sourceType = TranslationSourceType.BOOK_TEXT,
                dictionaryAvailable = true,
                networkAvailable = true,
                onlineTranslationAvailable = false,
                offlineModelAvailable = false,
                preferredTransport = TranslationTransportPreference.AUTO
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.DICTIONARY_WITH_TRANSLATION_OPTION, decision.routeKind)
        assertTrue(decision.secondaryModes.isEmpty())
        assertFalse(decision.shouldOfferPhraseTranslation)
    }

    @Test
    fun `longer text prefers offline translation in auto mode when package exists`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "This is a full sentence that should go through machine translation.",
                sourceType = TranslationSourceType.BOOK_TEXT,
                offlineModelAvailable = true,
                networkAvailable = true
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.MACHINE_TRANSLATION, decision.routeKind)
        assertEquals(TranslationMode.OFFLINE_MT, decision.primaryMode)
    }

    @Test
    fun `low confidence ocr requests review path`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "??? noisy text ???",
                sourceType = TranslationSourceType.OCR_TEXT,
                networkAvailable = true,
                onlineTranslationAvailable = true,
                llmAvailable = true,
                ocrConfidence = 0.3f
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.REVIEW_OCR_TEXT, decision.routeKind)
        assertTrue(decision.requiresUserReview)
        assertTrue(decision.shouldOfferExplanation)
        assertEquals(TranslationMode.ONLINE_MT, decision.primaryMode)
    }

    @Test
    fun `without dictionary and translation backend route becomes unavailable`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "translate me",
                sourceType = TranslationSourceType.BOOK_TEXT
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.UNAVAILABLE, decision.routeKind)
        assertFalse(decision.shouldOfferPhraseTranslation)
    }

    @Test
    fun `network alone does not create online route when provider is unavailable`() = runBlocking {
        val router = DefaultLookupRouter(FakeLanguageDetector())

        val result = router.route(
            TranslationRoutingRequest(
                text = "dzien dobry",
                sourceType = TranslationSourceType.OCR_TEXT,
                sourceLanguageHint = "pl",
                fallbackLanguage = "pl",
                networkAvailable = true,
                onlineTranslationAvailable = false,
                offlineModelAvailable = false,
                dictionaryAvailable = false
            )
        )

        val decision = (result as Result.Success).data
        assertEquals(LookupRouteKind.UNAVAILABLE, decision.routeKind)
        assertEquals(null, decision.primaryMode)
    }

    private class FakeLanguageDetector : LanguageDetector {
        override suspend fun detectLanguage(
            text: String,
            fallbackLanguage: String?
        ): Result<LanguageDetectionResult> = Result.Success(
            LanguageDetectionResult(
                languageCode = fallbackLanguage ?: "en",
                isReliable = true
            )
        )
    }
}
