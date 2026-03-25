package com.example.core.domain.translation

import com.example.core.domain.util.Result
import com.example.core.model.DictionaryEntry
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class SingleWordDictionaryResolverTest {

    @Test
    fun `prefers candidate with meaningful translation over first available language`() = runBlocking {
        val engine = FakeDictionaryEngine(
            entries = mapOf(
                "en|ru|kot" to dictionaryEntry(
                    sourceLanguage = "en",
                    targetLanguage = "ru",
                    lemma = "kot",
                    translations = listOf("kot")
                ),
                "pl|ru|kot" to dictionaryEntry(
                    sourceLanguage = "pl",
                    targetLanguage = "ru",
                    lemma = "kot",
                    translations = listOf("кот")
                )
            )
        )

        val match = resolveBestSingleWordDictionaryMatch(
            rawWord = "kot",
            targetLanguage = "ru",
            dictionaryEngine = engine,
            detectedLanguage = "en",
            detectedCandidates = listOf("pl"),
            fallbackSourceLanguages = listOf("pl", "fr")
        )

        requireNotNull(match)
        assertEquals("pl", match.sourceLanguage)
        assertEquals("кот", match.entry.translations.first())
    }

    @Test
    fun `falls back to first successful dictionary result when no candidate has a better translation`() = runBlocking {
        val engine = FakeDictionaryEngine(
            entries = mapOf(
                "pl|ru|kot" to dictionaryEntry(
                    sourceLanguage = "pl",
                    targetLanguage = "ru",
                    lemma = "kot",
                    translations = listOf("kot")
                )
            )
        )

        val match = resolveBestSingleWordDictionaryMatch(
            rawWord = "kot",
            targetLanguage = "ru",
            dictionaryEngine = engine,
            preferredSourceLanguage = "pl"
        )

        requireNotNull(match)
        assertEquals("pl", match.sourceLanguage)
        assertEquals("kot", match.entry.translations.first())
    }

    @Test
    fun `normalizes and deduplicates fallback language candidates before lookup`() = runBlocking {
        val engine = FakeDictionaryEngine(
            entries = mapOf(
                "pl|ru|kot" to dictionaryEntry(
                    sourceLanguage = "pl",
                    targetLanguage = "ru",
                    lemma = "kot",
                    translations = listOf("кот")
                )
            )
        )

        val match = resolveBestSingleWordDictionaryMatch(
            rawWord = "kot",
            targetLanguage = "ru",
            dictionaryEngine = engine,
            preferredSourceLanguage = "en_US",
            detectedLanguage = "EN-gb",
            detectedCandidates = listOf("pl-PL", "PL"),
            fallbackSourceLanguages = listOf("PL", "fr_FR", "pl")
        )

        requireNotNull(match)
        assertEquals("pl", match.sourceLanguage)
        assertEquals("кот", match.entry.translations.first())
    }

    @Test
    fun `prefers polish for words with polish diacritics before generic latin fallbacks`() = runBlocking {
        val engine = FakeDictionaryEngine(
            entries = mapOf(
                "en|ru|żal" to dictionaryEntry(
                    sourceLanguage = "en",
                    targetLanguage = "ru",
                    lemma = "żal",
                    translations = listOf("жал")
                ),
                "pl|ru|żal" to dictionaryEntry(
                    sourceLanguage = "pl",
                    targetLanguage = "ru",
                    lemma = "żal",
                    translations = listOf("печаль")
                )
            )
        )

        val match = resolveBestSingleWordDictionaryMatch(
            rawWord = "żal",
            targetLanguage = "ru",
            dictionaryEngine = engine,
            fallbackSourceLanguages = listOf("en", "fr", "pl")
        )

        requireNotNull(match)
        assertEquals("pl", match.sourceLanguage)
        assertEquals("печаль", match.entry.translations.first())
    }

    @Test
    fun `returns null when no dictionary lookup is available`() = runBlocking {
        val match = resolveBestSingleWordDictionaryMatch(
            rawWord = "kot",
            targetLanguage = "ru",
            dictionaryEngine = FakeDictionaryEngine(entries = emptyMap()),
            fallbackSourceLanguages = listOf("pl", "en")
        )

        assertNull(match)
    }

    @Test
    fun `meaningful translation check ignores self-echo translations`() {
        assertTrue(
            dictionaryEntry(
                sourceLanguage = "pl",
                targetLanguage = "ru",
                lemma = "kot",
                translations = listOf("кот")
            ).hasMeaningfulTranslationFor("kot")
        )
        assertTrue(
            !dictionaryEntry(
                sourceLanguage = "pl",
                targetLanguage = "ru",
                lemma = "kot",
                translations = listOf("kot")
            ).hasMeaningfulTranslationFor("kot")
        )
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
}
