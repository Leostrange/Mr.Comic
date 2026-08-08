package io.leostrange.mrcomic.core.domain.translation

import io.leostrange.mrcomic.core.interfaces.translation.TranslationCacheRepository
import io.leostrange.mrcomic.core.interfaces.translation.TranslationCacheEntry
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Wraps any [TranslatorEngine] with a Room-backed translation cache.
 *
 * Cache key = SHA-256(normalizedText + "|" + sourceLang + "|" + targetLang).
 * Cache hits update the lastUsedAt timestamp and hitCount for LRU eviction.
 */
@Singleton
class CachingTranslatorEngine @Inject constructor(
    private val delegate: TranslatorEngine,
    private val cacheRepository: TranslationCacheRepository
) : TranslatorEngine {

    override val engineName: String = "Cached(${delegate.engineName})"

    override val requiresNetwork: Boolean = delegate.requiresNetwork

    override suspend fun isLanguagePairAvailable(sourceLang: String, targetLang: String): Boolean =
        delegate.isLanguagePairAvailable(sourceLang, targetLang)

    override suspend fun prepareLanguagePair(sourceLang: String, targetLang: String): Boolean =
        delegate.prepareLanguagePair(sourceLang, targetLang)

    override suspend fun translate(
        text: String,
        sourceLang: String,
        targetLang: String
    ): String {
        val normalized = text.trim().replace(Regex("\\s+"), " ")
        if (normalized.isEmpty()) return ""

        val key = TranslationCacheEntry.cacheKey(normalized, sourceLang, targetLang)

        // Check cache
        val cached = cacheRepository.getByKey(key)
        if (cached != null) {
            cacheRepository.recordHit(key)
            return cached.translatedText
        }

        // Translate via delegate
        val result = delegate.translate(normalized, sourceLang, targetLang)

        // Cache the result
        cacheRepository.insert(
            TranslationCacheEntry(
                cacheKey = key,
                sourceLang = sourceLang,
                targetLang = targetLang,
                sourceTextPreview = normalized.take(500),
                translatedText = result,
                provider = delegate.engineName
            )
        )
        cacheRepository.recordHit(key)

        return result
    }
}
