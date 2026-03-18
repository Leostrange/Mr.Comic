package com.example.core.domain.translation

import com.example.core.data.dictionary.DictionaryRepository
import com.example.core.domain.util.Result
import com.example.core.domain.util.runCatchingResult
import com.example.core.model.DictionaryEntry
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class RoomDictionaryEngine @Inject constructor(
    private val dictionaryRepository: DictionaryRepository,
    private val fallbackDictionaryEngine: QuickDictionaryEngine,
) : DictionaryEngine {

    override suspend fun isLookupAvailable(
        sourceLanguage: String,
        targetLanguage: String
    ): Result<Boolean> = runCatchingResult {
        val normalizedSource = normalizeLanguageCode(sourceLanguage)
        val normalizedTarget = normalizeLanguageCode(targetLanguage)
        require(normalizedSource != null) { "Unsupported dictionary source language: $sourceLanguage" }
        require(normalizedTarget != null) { "Unsupported dictionary target language: $targetLanguage" }

        dictionaryRepository.isLookupAvailable(normalizedSource) || when (
            val fallback = fallbackDictionaryEngine.isLookupAvailable(
                sourceLanguage = normalizedSource,
                targetLanguage = normalizedTarget
            )
        ) {
            is Result.Success -> fallback.data
            is Result.Error -> false
            Result.Loading -> false
        }
    }

    override suspend fun lookup(
        rawWord: String,
        sourceLanguage: String,
        targetLanguage: String
    ): Result<DictionaryEntry> = runCatchingResult {
        val normalizedSource = normalizeLanguageCode(sourceLanguage)
        val normalizedTarget = normalizeLanguageCode(targetLanguage)
        require(normalizedSource != null) { "Unsupported dictionary source language: $sourceLanguage" }
        require(normalizedTarget != null) { "Unsupported dictionary target language: $targetLanguage" }

        var cachedFallbackEntry: DictionaryEntry? = null
        suspend fun fallbackEntry(): DictionaryEntry? {
            if (cachedFallbackEntry != null) return cachedFallbackEntry
            cachedFallbackEntry = when (
                val fallback = fallbackDictionaryEngine.lookup(
                    rawWord = rawWord,
                    sourceLanguage = normalizedSource,
                    targetLanguage = normalizedTarget
                )
            ) {
                is Result.Success -> fallback.data
                is Result.Error -> null
                Result.Loading -> null
            }
            return cachedFallbackEntry
        }

        val roomCard = dictionaryRepository
            .lookup(
                surface = rawWord,
                language = normalizedSource,
                targetLanguage = normalizedTarget,
                limit = 8
            )
            .firstOrNull()

        if (roomCard == null) {
            return@runCatchingResult fallbackEntry()
                ?: throw IllegalStateException("Dictionary lookup did not find any entry")
        }

        val preferredTranslations = roomCard.translations
            .filter { it.targetLanguage == normalizedTarget }
            .map { it.text.trim() }
            .filter { it.isNotBlank() }

        val bridgeTranslationCandidates = roomCard.translations
            .filter { it.targetLanguage != normalizedTarget && it.targetLanguage != normalizedSource }
            .sortedBy { translation ->
                when (translation.targetLanguage) {
                    "en" -> 0
                    else -> 1
                }
            }
            .map { translation ->
                translation.targetLanguage to translation.text.trim()
            }
            .filter { (_, text) -> text.isNotBlank() }

        val bridgeTranslations = bridgeTranslationCandidates
            .map { (_, text) -> text }

        val bridgedTargetTranslations = if (preferredTranslations.isNotEmpty()) {
            emptyList()
        } else {
            bridgeTranslationCandidates
                .take(3)
                .mapNotNull { (bridgeLanguage, bridgeText) ->
                    bridgeToTargetTranslation(
                        bridgeText = bridgeText,
                        bridgeLanguage = bridgeLanguage,
                        targetLanguage = normalizedTarget
                    )
                }
        }

        val orderedGlosses = if (preferredTranslations.isNotEmpty() || bridgedTargetTranslations.isNotEmpty()) {
            roomCard.meanings + bridgeTranslations
        } else {
            bridgeTranslations + roomCard.meanings
        }

        DictionaryEntry(
            id = "room-${roomCard.entryId}",
            languageFrom = normalizedSource,
            languageTo = normalizedTarget,
            lemma = roomCard.lemma.ifBlank { fallbackEntry()?.lemma ?: rawWord.trim() },
            normalizedLemma = roomCard.lemma.ifBlank { fallbackEntry()?.normalizedLemma ?: rawWord.trim().lowercase() },
            partOfSpeech = roomCard.pos ?: fallbackEntry()?.partOfSpeech,
            translations = (
                preferredTranslations +
                    bridgedTargetTranslations +
                    bridgeTranslations +
                    (fallbackEntry()?.translations ?: emptyList())
                )
                .distinct()
                .take(8),
            glosses = (orderedGlosses + (fallbackEntry()?.glosses ?: emptyList()))
                .map { it.trim() }
                .filter { it.isNotBlank() }
                .distinct()
                .take(8),
            examples = (
                roomCard.examples.mapNotNull { example ->
                    listOfNotNull(example.text.takeIf { it.isNotBlank() }, example.translation?.takeIf { it.isNotBlank() })
                        .takeIf { it.isNotEmpty() }
                        ?.joinToString(" — ")
                } + (fallbackEntry()?.examples ?: emptyList())
            )
                .distinct()
                .take(4),
            forms = (fallbackEntry()?.forms ?: emptyList()).distinct()
        ).ensureTranslationsOrFallback(fallbackEntry())
    }

    private fun DictionaryEntry.ensureTranslationsOrFallback(
        fallbackEntry: DictionaryEntry?
    ): DictionaryEntry {
        if (translations.isNotEmpty()) return this
        if (fallbackEntry != null) {
            return copy(
                translations = fallbackEntry.translations,
                glosses = (glosses + fallbackEntry.glosses).distinct(),
                examples = (examples + fallbackEntry.examples).distinct(),
                forms = (forms + fallbackEntry.forms).distinct()
            )
        }
        if (glosses.isNotEmpty()) {
            return copy(translations = glosses.take(3))
        }
        throw IllegalStateException("Dictionary lookup did not produce translations")
    }

    private suspend fun bridgeToTargetTranslation(
        bridgeText: String,
        bridgeLanguage: String,
        targetLanguage: String
    ): String? {
        if (bridgeLanguage == targetLanguage) {
            return bridgeText.takeIf { it.isNotBlank() }
        }
        if (bridgeText.countLookupTokens() != 1) {
            return null
        }
        return when (
            val bridgeLookup = fallbackDictionaryEngine.lookup(
                rawWord = bridgeText,
                sourceLanguage = bridgeLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> bridgeLookup.data.translations
                .firstOrNull()
                ?.trim()
                ?.takeIf { it.isNotBlank() }
            is Result.Error -> null
            Result.Loading -> null
        }
    }

    private fun String.countLookupTokens(): Int =
        LOOKUP_TOKEN_REGEX.findAll(this).count().coerceAtLeast(if (isBlank()) 0 else 1)

    private fun normalizeLanguageCode(rawCode: String?): String? =
        rawCode
            ?.trim()
            ?.replace('_', '-')
            ?.lowercase()
            ?.substringBefore('-')
            ?.takeIf { it.isNotBlank() && it != "und" }

    private companion object {
        val LOOKUP_TOKEN_REGEX = "[\\p{L}\\p{N}]+".toRegex()
    }
}
