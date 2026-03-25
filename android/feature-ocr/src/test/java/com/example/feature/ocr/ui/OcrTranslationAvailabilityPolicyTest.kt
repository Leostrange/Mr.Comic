package com.example.feature.ocr.ui

import com.example.core.model.TranslationTransportPreference
import org.junit.Assert.assertEquals
import org.junit.Test

class OcrTranslationAvailabilityPolicyTest {

    @Test
    fun `offline transport explains missing model when pair is supported`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.OFFLINE,
            availability = OcrTranslationAvailability(
                offlinePairSupported = true,
                offlineModelInstalled = false,
                networkAvailable = true,
                onlineConfigured = false
            )
        )

        assertEquals(
            "The offline model for this language pair is not installed yet.",
            message
        )
    }

    @Test
    fun `online transport explains missing route explicitly`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.ONLINE,
            availability = OcrTranslationAvailability(
                onlineConfigured = false
            )
        )

        assertEquals("The online translation route is not configured yet.", message)
    }

    @Test
    fun `online transport includes active pair in missing route message when pair is known`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.ONLINE,
            availability = OcrTranslationAvailability(
                onlineConfigured = false
            ),
            sourceLanguage = "pl",
            targetLanguage = "ru"
        )

        assertEquals("The online translation route for PL → RU is not configured yet.", message)
    }

    @Test
    fun `online transport reports network requirement when route is configured but offline`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.ONLINE,
            availability = OcrTranslationAvailability(
                networkAvailable = false,
                onlineConfigured = true
            ),
            sourceLanguage = "ja",
            targetLanguage = "ru"
        )

        assertEquals(
            "The online translation route for JA → RU needs network access right now.",
            message
        )
    }

    @Test
    fun `auto transport reports dictionary-only route for short text`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.AUTO,
            availability = OcrTranslationAvailability(
                dictionaryAvailable = true,
                offlinePairSupported = false,
                offlineModelInstalled = false,
                onlineConfigured = false
            ),
            dictionaryRouteAvailable = true
        )

        assertEquals(
            "Machine translation is unavailable for this pair right now. Dictionary lookup is still available for short text.",
            message
        )
    }

    @Test
    fun `auto transport reports unsupported machine pair when no route exists`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.AUTO,
            availability = OcrTranslationAvailability(
                dictionaryAvailable = false,
                offlinePairSupported = false,
                offlineModelInstalled = false,
                onlineConfigured = false
            )
        )

        assertEquals(
            "Machine translation is not supported for this language pair right now.",
            message
        )
    }

    @Test
    fun `auto transport reports dictionary only route with pair label`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.AUTO,
            availability = OcrTranslationAvailability(
                dictionaryAvailable = true,
                offlinePairSupported = false,
                offlineModelInstalled = false,
                onlineConfigured = false
            ),
            dictionaryRouteAvailable = true,
            sourceLanguage = "ja",
            targetLanguage = "ru"
        )

        assertEquals(
            "Machine translation is unavailable for JA → RU right now. Dictionary lookup is still available for short text.",
            message
        )
    }

    @Test
    fun `auto transport prefers network-needed message over unsupported pair when online route is configured`() {
        val message = resolveOcrTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.AUTO,
            availability = OcrTranslationAvailability(
                dictionaryAvailable = false,
                offlinePairSupported = false,
                offlineModelInstalled = false,
                networkAvailable = false,
                onlineConfigured = true
            ),
            sourceLanguage = "en",
            targetLanguage = "ru"
        )

        assertEquals(
            "The online translation route for EN → RU needs network access right now.",
            message
        )
    }
}
