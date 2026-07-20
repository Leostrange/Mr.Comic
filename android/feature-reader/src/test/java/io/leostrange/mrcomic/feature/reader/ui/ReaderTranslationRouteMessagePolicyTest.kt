package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.TranslationTransportPreference
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTranslationRouteMessagePolicyTest {

    @Test
    fun `online transport reports missing route with pair`() {
        val message = resolveReaderTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.ONLINE,
            networkAvailable = true,
            onlineConfigured = false,
            offlineModelAvailable = false,
            sourceLanguage = "pl",
            targetLanguage = "ru"
        )

        assertEquals(
            "The online translation route for PL → RU is not configured yet.",
            message
        )
    }

    @Test
    fun `online transport reports network requirement with pair`() {
        val message = resolveReaderTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.ONLINE,
            networkAvailable = false,
            onlineConfigured = true,
            offlineModelAvailable = false,
            sourceLanguage = "ja",
            targetLanguage = "ru"
        )

        assertEquals(
            "The online translation route for JA → RU needs network access right now.",
            message
        )
    }

    @Test
    fun `auto transport reports dictionary only route when only short lookup remains`() {
        val message = resolveReaderTranslationUnavailableMessage(
            language = "en",
            preferredTransport = TranslationTransportPreference.AUTO,
            networkAvailable = false,
            onlineConfigured = false,
            offlineModelAvailable = false,
            dictionaryRouteAvailable = true,
            sourceLanguage = "en",
            targetLanguage = "ru"
        )

        assertEquals(
            "Machine translation is unavailable for EN → RU right now. Dictionary lookup is still available for short text.",
            message
        )
    }
}
