package com.example.core.domain.translation

import com.example.core.model.DictionaryEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class RoomDictionaryEngineBridgePolicyTest {

    @Test
    fun `prefers direct and bridged target translations before raw bridge text`() {
        val translations = mergeRoomDictionaryTranslations(
            preferredTranslations = emptyList(),
            bridgedTargetTranslations = listOf("кот"),
            bridgeTranslations = listOf("kot"),
            fallbackTranslations = listOf("kota")
        )

        assertEquals(listOf("кот", "kota"), translations)
    }

    @Test
    fun `does not surface raw bridge text as target translation when only bridge text exists`() {
        val translations = mergeRoomDictionaryTranslations(
            preferredTranslations = emptyList(),
            bridgedTargetTranslations = emptyList(),
            bridgeTranslations = listOf("kot"),
            fallbackTranslations = emptyList()
        )

        assertEquals(emptyList<String>(), translations)
    }

    @Test
    fun `availability stays false when source dictionary exists but target pair route does not`() {
        val available = resolveRoomDictionaryLookupAvailability(
            sourceLanguage = "pl",
            targetLanguage = "ru",
            sourceDictionaryAvailable = true,
            hasDirectTargetRoute = false,
            hasEnglishBridgeRoute = false,
            englishToTargetRouteAvailable = false,
            fallbackRouteAvailable = false
        )

        assertFalse(available)
    }

    @Test
    fun `availability becomes true when english bridge can reach target`() {
        val available = resolveRoomDictionaryLookupAvailability(
            sourceLanguage = "pl",
            targetLanguage = "ru",
            sourceDictionaryAvailable = true,
            hasDirectTargetRoute = false,
            hasEnglishBridgeRoute = true,
            englishToTargetRouteAvailable = true,
            fallbackRouteAvailable = false
        )

        assertTrue(available)
    }

    @Test
    fun `fallback route keeps availability true even without room dictionary route`() {
        val available = resolveRoomDictionaryLookupAvailability(
            sourceLanguage = "ja",
            targetLanguage = "ru",
            sourceDictionaryAvailable = false,
            hasDirectTargetRoute = false,
            hasEnglishBridgeRoute = false,
            englishToTargetRouteAvailable = false,
            fallbackRouteAvailable = true
        )

        assertTrue(available)
    }

    @Test
    fun `glosses can backfill translations only for english target`() {
        val translations = resolveRoomDictionaryFallbackTranslations(
            targetLanguage = "en",
            glosses = listOf("cat", "kitty"),
            fallbackEntry = null
        )

        assertEquals(listOf("cat", "kitty"), translations)
    }

    @Test
    fun `glosses are not surfaced as target translations for non english target`() {
        val translations = resolveRoomDictionaryFallbackTranslations(
            targetLanguage = "ru",
            glosses = listOf("cat", "kitty"),
            fallbackEntry = null
        )

        assertNull(translations)
    }

    @Test
    fun `fallback dictionary translations still win over glosses`() {
        val translations = resolveRoomDictionaryFallbackTranslations(
            targetLanguage = "ru",
            glosses = listOf("cat"),
            fallbackEntry = DictionaryEntry(
                id = "fallback",
                languageFrom = "pl",
                languageTo = "ru",
                lemma = "kot",
                normalizedLemma = "kot",
                partOfSpeech = "noun",
                translations = listOf("кот"),
                glosses = listOf("cat"),
                examples = emptyList(),
                forms = emptyList()
            )
        )

        assertEquals(listOf("кот"), translations)
    }
}
