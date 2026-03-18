package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.LanguageDetectionResult
import com.example.core.model.LookupRouteKind
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRoutingRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
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
