package io.leostrange.mrcomic.core.data.dictionary

import android.content.Context
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class DictionaryRepository @Inject constructor(
    @ApplicationContext private val context: Context,
    private val downloader: DictionaryDownloader
) {
    private val lookupCache = object : LinkedHashMap<String, List<DictionaryLookupCard>>(128, 0.75f, true) {
        override fun removeEldestEntry(
            eldest: MutableMap.MutableEntry<String, List<DictionaryLookupCard>>?
        ): Boolean = size > LOOKUP_CACHE_LIMIT
    }

    private val suggestionCache = object : LinkedHashMap<String, List<String>>(128, 0.75f, true) {
        override fun removeEldestEntry(
            eldest: MutableMap.MutableEntry<String, List<String>>?
        ): Boolean = size > SUGGESTION_CACHE_LIMIT
    }

    private val daoCache = mutableMapOf<String, DictionaryDao?>()

    private val routeCache = object : LinkedHashMap<String, Boolean>(64, 0.75f, true) {
        override fun removeEldestEntry(
            eldest: MutableMap.MutableEntry<String, Boolean>?
        ): Boolean = size > ROUTE_CACHE_LIMIT
    }

    suspend fun isLookupAvailable(language: String): Boolean {
        val normalizedLanguage = language.normalizeLanguageCode() ?: return false
        return daoForLanguage(normalizedLanguage) != null
    }

    suspend fun hasTranslationRoute(
        language: String,
        targetLanguage: String,
    ): Boolean {
        val normalizedLanguage = language.normalizeLanguageCode() ?: return false
        val normalizedTarget = targetLanguage.normalizeLanguageCode() ?: return false
        if (normalizedLanguage == normalizedTarget) {
            return isLookupAvailable(normalizedLanguage)
        }
        val dao = daoForLanguage(normalizedLanguage) ?: return false
        val cacheKey = "route|$normalizedLanguage|$normalizedTarget"
        synchronized(routeCache) {
            routeCache[cacheKey]?.let { return it }
        }
        val hasRoute = dao.hasTranslationsForTarget(
            lang = normalizedLanguage,
            targetLang = normalizedTarget
        )
        synchronized(routeCache) {
            routeCache[cacheKey] = hasRoute
        }
        return hasRoute
    }

    suspend fun lookup(
        surface: String,
        language: String,
        targetLanguage: String? = null,
        limit: Int = 8,
    ): List<DictionaryLookupCard> {
        val normalizedLanguage = language.normalizeLanguageCode() ?: return emptyList()
        val normalized = DictionaryNormalizer.normalize(surface, normalizedLanguage)
        if (normalized.isBlank()) return emptyList()
        val dao = daoForLanguage(normalizedLanguage) ?: return emptyList()
        val normalizedTarget = targetLanguage?.normalizeLanguageCode()
        val cacheKey = "lookup|$normalizedLanguage|${normalizedTarget ?: "_"}|$normalized|$limit"
        synchronized(lookupCache) {
            lookupCache[cacheKey]?.let { return it }
        }

        val primary = dao.lookupByNormalizedForm(normalizedLanguage, normalized, limit)
        val fallback = if (primary.isEmpty()) {
            dao.lookupByNormalizedLemma(normalizedLanguage, normalized, limit)
        } else {
            emptyList()
        }

        val bundles = if (primary.isNotEmpty()) primary else fallback
        val cards = bundles
            .sortedWith(
                compareByDescending<DictionaryEntryBundle> {
                    it.rankingScore(targetLanguage = normalizedTarget)
                }
                    .thenBy { bundle -> if (bundle.entry.normalizedLemma == normalized) 0 else 1 }
                    .thenBy { bundle -> bundle.entry.lemma.length }
                    .thenBy { bundle -> bundle.entry.id }
            )
            .map { it.toLookupCard() }
            .take(limit)

        synchronized(lookupCache) {
            lookupCache[cacheKey] = cards
        }
        return cards
    }

    suspend fun suggest(
        prefix: String,
        language: String,
        limit: Int = 12,
    ): List<String> {
        val normalizedLanguage = language.normalizeLanguageCode() ?: return emptyList()
        val normalized = DictionaryNormalizer.normalize(prefix, normalizedLanguage)
        if (normalized.isBlank()) return emptyList()
        val dao = daoForLanguage(normalizedLanguage) ?: return emptyList()
        val cacheKey = "suggest|$normalizedLanguage|$normalized|$limit"
        synchronized(suggestionCache) {
            suggestionCache[cacheKey]?.let { return it }
        }
        val suggestions = dao.suggestForms(normalizedLanguage, normalized, limit)
        synchronized(suggestionCache) {
            suggestionCache[cacheKey] = suggestions
        }
        return suggestions
    }

    private suspend fun daoForLanguage(language: String): DictionaryDao? {
        synchronized(daoCache) {
            if (daoCache.containsKey(language)) return daoCache[language]
        }

        val databaseFile = downloader.ensureDictionary(language)
        val dao = if (databaseFile != null) {
            withContext(Dispatchers.IO) {
                val config = DictionaryAssetCatalog.configForLanguage(language)
                DictionaryDatabase.fromFile(
                    context = context,
                    databaseFile = databaseFile,
                    databaseName = config?.databaseName ?: "dictionary_${language}_room_asset_v3.db",
                ).dictionaryDao()
            }
        } else {
            null
        }

        synchronized(daoCache) {
            daoCache[language] = dao
        }
        return dao
    }
}

private fun DictionaryEntryBundle.toLookupCard(): DictionaryLookupCard {
    return DictionaryLookupCard(
        entryId = entry.id,
        language = entry.lang,
        lemma = entry.lemma,
        pos = entry.pos.ifBlank { null },
        source = entry.source,
        readings = readings
            .sortedBy { it.script + "\u0000" + it.text }
            .map { it.text }
            .distinct(),
        meanings = senses
            .sortedBy { it.ord }
            .map { it.gloss }
            .distinct()
            .take(6),
        translations = translations
            .sortedBy { it.ord }
            .map {
                DictionaryLookupTranslation(
                    targetLanguage = it.targetLang.normalizeLanguageCode() ?: it.targetLang.lowercase(),
                    text = it.text
                )
            }
            .distinctBy { it.targetLanguage to it.text }
            .take(12),
        examples = examples
            .map { DictionaryLookupExample(text = it.text, translation = it.translation) }
            .take(4),
    )
}

private fun DictionaryEntryBundle.rankingScore(targetLanguage: String?): Int {
    val source = entry.source.lowercase()
    val hasDirectTargetTranslation = targetLanguage != null &&
        translations.any { it.targetLang.normalizeLanguageCode() == targetLanguage && it.text.isNotBlank() }
    val hasEnglishTranslation = translations.any { it.targetLang.normalizeLanguageCode() == "en" && it.text.isNotBlank() }
    return when {
        source in SPECIALIZED_SOURCES && hasDirectTargetTranslation -> 140
        source in SPECIALIZED_SOURCES -> 100
        source.startsWith("kaikki") && hasDirectTargetTranslation -> 70
        source.startsWith("kaikki") && (hasEnglishTranslation || senses.isNotEmpty()) -> 50
        else -> 20
    }
}

internal fun String.normalizeLanguageCode(): String? =
    trim()
        .replace('_', '-')
        .lowercase()
        .substringBefore('-')
        .takeIf { it.isNotBlank() && it != "und" }

private const val LOOKUP_CACHE_LIMIT = 256
private const val SUGGESTION_CACHE_LIMIT = 256
private const val ROUTE_CACHE_LIMIT = 128
private val SPECIALIZED_SOURCES = setOf("wordnet", "jmdict", "cedict", "cc-cedict")
