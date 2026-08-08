package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.data.dictionary.DictionaryRepository
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.runCatchingResult
import io.leostrange.mrcomic.core.model.DictionaryEntry
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

        val fallbackRouteAvailable = when (
            val fallback = fallbackDictionaryEngine.isLookupAvailable(
                sourceLanguage = normalizedSource,
                targetLanguage = normalizedTarget
            )
        ) {
            is Result.Success -> fallback.data
            is Result.Error -> false
            Result.Loading -> false
        }

        val sourceDictionaryAvailable = dictionaryRepository.isLookupAvailable(normalizedSource)
        val hasDirectTargetRoute = dictionaryRepository.hasTranslationRoute(
            language = normalizedSource,
            targetLanguage = normalizedTarget
        )
        val hasEnglishBridgeRoute = normalizedTarget != "en" && dictionaryRepository.hasTranslationRoute(
            language = normalizedSource,
            targetLanguage = "en"
        )
        val englishToTargetRouteAvailable = if (hasEnglishBridgeRoute) {
            dictionaryRepository.hasTranslationRoute(
                language = "en",
                targetLanguage = normalizedTarget
            ) || when (
                val fallback = fallbackDictionaryEngine.isLookupAvailable(
                    sourceLanguage = "en",
                    targetLanguage = normalizedTarget
                )
            ) {
                is Result.Success -> fallback.data
                is Result.Error -> false
                Result.Loading -> false
            }
        } else {
            false
        }

        resolveRoomDictionaryLookupAvailability(
            sourceLanguage = normalizedSource,
            targetLanguage = normalizedTarget,
            sourceDictionaryAvailable = sourceDictionaryAvailable,
            hasDirectTargetRoute = hasDirectTargetRoute,
            hasEnglishBridgeRoute = hasEnglishBridgeRoute,
            englishToTargetRouteAvailable = englishToTargetRouteAvailable,
            fallbackRouteAvailable = fallbackRouteAvailable
        )
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
            translations = mergeRoomDictionaryTranslations(
                preferredTranslations = preferredTranslations,
                bridgedTargetTranslations = bridgedTargetTranslations,
                bridgeTranslations = bridgeTranslations,
                fallbackTranslations = fallbackEntry()?.translations ?: emptyList()
            ),
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
        ).ensureTranslationsOrFallback(
            targetLanguage = normalizedTarget,
            fallbackEntry = fallbackEntry()
        )
    }

    private fun DictionaryEntry.ensureTranslationsOrFallback(
        targetLanguage: String,
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
        resolveRoomDictionaryFallbackTranslations(
            targetLanguage = targetLanguage,
            glosses = glosses,
            fallbackEntry = fallbackEntry
        )?.let { fallbackTranslations ->
            return copy(translations = fallbackTranslations)
        }
        throw IllegalStateException("Dictionary lookup did not produce translations")
    }

    private suspend fun bridgeToTargetTranslation(
        bridgeText: String,
        bridgeLanguage: String,
        targetLanguage: String
    ): String? {
        val normalizedBridgeLanguage = normalizeLanguageCode(bridgeLanguage) ?: return null
        val normalizedTargetLanguage = normalizeLanguageCode(targetLanguage) ?: return null
        val trimmedBridgeText = bridgeText.trim()

        if (normalizedBridgeLanguage == normalizedTargetLanguage) {
            return trimmedBridgeText.takeIf { it.isNotBlank() }
        }

        val roomBridgeTranslation = dictionaryRepository
            .lookup(
                surface = trimmedBridgeText,
                language = normalizedBridgeLanguage,
                targetLanguage = normalizedTargetLanguage,
                limit = 4
            )
            .asSequence()
            .flatMap { card -> card.translations.asSequence() }
            .filter { translation ->
                translation.targetLanguage == normalizedTargetLanguage && translation.text.isNotBlank()
            }
            .map { translation -> translation.text.trim() }
            .firstOrNull()

        if (!roomBridgeTranslation.isNullOrBlank()) {
            return roomBridgeTranslation
        }

        if (trimmedBridgeText.countLookupTokens() != 1) {
            return null
        }
        return when (
            val bridgeLookup = fallbackDictionaryEngine.lookup(
                rawWord = trimmedBridgeText,
                sourceLanguage = normalizedBridgeLanguage,
                targetLanguage = normalizedTargetLanguage
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

internal fun mergeRoomDictionaryTranslations(
    preferredTranslations: List<String>,
    bridgedTargetTranslations: List<String>,
    bridgeTranslations: List<String>,
    fallbackTranslations: List<String>
): List<String> {
    val primaryTranslations = buildList {
        addAll(preferredTranslations)
        addAll(bridgedTargetTranslations)
        addAll(fallbackTranslations)
    }
        .map { it.trim() }
        .filter { it.isNotBlank() }
        .distinct()
        .take(8)

    if (primaryTranslations.isNotEmpty()) {
        return primaryTranslations
    }

    return emptyList()
}

internal fun resolveRoomDictionaryLookupAvailability(
    sourceLanguage: String,
    targetLanguage: String,
    sourceDictionaryAvailable: Boolean,
    hasDirectTargetRoute: Boolean,
    hasEnglishBridgeRoute: Boolean,
    englishToTargetRouteAvailable: Boolean,
    fallbackRouteAvailable: Boolean
): Boolean {
    if (fallbackRouteAvailable) {
        return true
    }
    if (!sourceDictionaryAvailable) {
        return false
    }
    if (sourceLanguage == targetLanguage) {
        return true
    }
    if (hasDirectTargetRoute) {
        return true
    }
    return hasEnglishBridgeRoute && englishToTargetRouteAvailable
}

internal fun resolveRoomDictionaryFallbackTranslations(
    targetLanguage: String,
    glosses: List<String>,
    fallbackEntry: DictionaryEntry?
): List<String>? {
    if (fallbackEntry?.translations?.isNotEmpty() == true) {
        return fallbackEntry.translations
    }
    if (targetLanguage == "en" && glosses.isNotEmpty()) {
        return glosses.take(3)
    }
    return null
}
