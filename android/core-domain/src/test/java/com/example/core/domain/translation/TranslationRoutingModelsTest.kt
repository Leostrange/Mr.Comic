package com.example.core.domain.translation

import com.example.core.model.LanguageCandidate
import com.example.core.model.LanguageDetectionResult
import com.example.core.model.LookupRouteKind
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationRoutingDecision
import com.example.core.model.TranslationRoutingFailureReason
import com.example.core.model.TranslationRoutingRequest
import com.example.core.model.TranslationSourceType
import com.example.core.model.TranslationTransportPreference
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class TranslationRoutingModelsTest {

    @Test
    fun translationRoutingRequest_defaultsAreReasonable() {
        val request = TranslationRoutingRequest(
            text = "hello",
            sourceType = TranslationSourceType.BOOK_TEXT
        )

        assertEquals("hello", request.text)
        assertEquals(TranslationSourceType.BOOK_TEXT, request.sourceType)
        assertNull(request.sourceLanguageHint)
        assertNull(request.fallbackLanguage)
        assertEquals(TranslationTransportPreference.AUTO, request.preferredTransport)
        assertFalse(request.networkAvailable)
        assertFalse(request.onlineTranslationAvailable)
        assertFalse(request.offlineModelAvailable)
        assertFalse(request.dictionaryAvailable)
        assertFalse(request.llmAvailable)
        assertNull(request.ocrConfidence)
        assertFalse(request.forceExplain)
    }

    @Test
    fun translationRoutingRequest_withAllFields() {
        val request = TranslationRoutingRequest(
            text = "konnichiwa",
            sourceType = TranslationSourceType.OCR_TEXT,
            sourceLanguageHint = "ja",
            fallbackLanguage = "en",
            preferredTransport = TranslationTransportPreference.ONLINE,
            networkAvailable = true,
            onlineTranslationAvailable = true,
            offlineModelAvailable = false,
            dictionaryAvailable = true,
            llmAvailable = false,
            ocrConfidence = 0.85f,
            forceExplain = true
        )

        assertEquals("ja", request.sourceLanguageHint)
        assertEquals("en", request.fallbackLanguage)
        assertTrue(request.networkAvailable)
        assertTrue(request.onlineTranslationAvailable)
        assertFalse(request.offlineModelAvailable)
        assertTrue(request.dictionaryAvailable)
        assertEquals(0.85f, request.ocrConfidence!!)
        assertTrue(request.forceExplain)
    }

    @Test
    fun translationRoutingDecision_defaultsAreReasonable() {
        val decision = TranslationRoutingDecision(
            routeKind = LookupRouteKind.UNAVAILABLE
        )

        assertEquals(LookupRouteKind.UNAVAILABLE, decision.routeKind)
        assertNull(decision.primaryMode)
        assertTrue(decision.secondaryModes.isEmpty())
        assertNull(decision.detectedLanguage)
        assertFalse(decision.requiresUserReview)
        assertFalse(decision.shouldOfferPhraseTranslation)
        assertFalse(decision.shouldOfferExplanation)
        assertFalse(decision.isLongText)
        assertNull(decision.unavailableReason)
    }

    @Test
    fun translationRoutingDecision_withAllFields() {
        val detected = LanguageDetectionResult(
            languageCode = "ja",
            confidence = 0.92f,
            isReliable = true
        )
        val decision = TranslationRoutingDecision(
            routeKind = LookupRouteKind.DICTIONARY_WITH_TRANSLATION_OPTION,
            primaryMode = TranslationMode.DICTIONARY,
            secondaryModes = listOf(TranslationMode.OFFLINE_MT),
            detectedLanguage = detected,
            requiresUserReview = true,
            shouldOfferPhraseTranslation = true,
            shouldOfferExplanation = false,
            isLongText = false,
            unavailableReason = null
        )

        assertEquals(LookupRouteKind.DICTIONARY_WITH_TRANSLATION_OPTION, decision.routeKind)
        assertEquals(TranslationMode.DICTIONARY, decision.primaryMode)
        assertEquals(1, decision.secondaryModes.size)
        assertEquals(TranslationMode.OFFLINE_MT, decision.secondaryModes[0])
        assertEquals("ja", decision.detectedLanguage!!.languageCode)
        assertTrue(decision.requiresUserReview)
        assertTrue(decision.shouldOfferPhraseTranslation)
    }

    @Test
    fun languageDetectionResult_defaultsAreReasonable() {
        val result = LanguageDetectionResult(languageCode = "en")

        assertEquals("en", result.languageCode)
        assertNull(result.confidence)
        assertFalse(result.isReliable)
        assertFalse(result.fallbackUsed)
        assertTrue(result.candidates.isEmpty())
    }

    @Test
    fun languageDetectionResult_withCandidates() {
        val result = LanguageDetectionResult(
            languageCode = "ja",
            confidence = 0.78f,
            isReliable = false,
            fallbackUsed = true,
            candidates = listOf(
                LanguageCandidate("ja", 0.78f),
                LanguageCandidate("zh", 0.12f),
                LanguageCandidate("ko", 0.10f)
            )
        )

        assertEquals(3, result.candidates.size)
        assertEquals("ja", result.candidates[0].languageCode)
        assertEquals(0.78f, result.candidates[0].confidence!!)
    }

    @Test
    fun translationRoutingFailureReason_values() {
        val noText = TranslationRoutingFailureReason.NO_TEXT
        val noBackend = TranslationRoutingFailureReason.NO_TRANSLATION_BACKEND

        assertEquals("NO_TEXT", noText.name)
        assertEquals("NO_TRANSLATION_BACKEND", noBackend.name)
    }

    @Test
    fun lookupRouteKind_unavailable_meansNoRoute() {
        assertEquals(LookupRouteKind.UNAVAILABLE, LookupRouteKind.valueOf("UNAVAILABLE"))
    }

    @Test
    fun translationSourceType_allValuesExist() {
        val values = TranslationSourceType.values()
        assertEquals(3, values.size)
        assertTrue(TranslationSourceType.BOOK_TEXT in values)
        assertTrue(TranslationSourceType.OCR_TEXT in values)
        assertTrue(TranslationSourceType.COMIC_BLOCK in values)
    }

    @Test
    fun translationTransportPreference_allValuesExist() {
        val values = TranslationTransportPreference.values()
        assertEquals(3, values.size)
        assertTrue(TranslationTransportPreference.AUTO in values)
        assertTrue(TranslationTransportPreference.OFFLINE in values)
        assertTrue(TranslationTransportPreference.ONLINE in values)
    }
}
