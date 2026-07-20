package com.example.core.domain.translation

import com.example.core.data.db.TranslationCacheDao
import com.example.core.model.TranslationCacheEntry
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
    private val cacheDao: TranslationCacheDao
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
        val cached = cacheDao.getByKey(key)
        if (cached != null) {
            cacheDao.recordHit(key)
            return cached.translatedText
        }

        // Translate via delegate
        val result = delegate.translate(normalized, sourceLang, targetLang)

        // Cache the result. OnConflictStrategy.IGNORE means the insert is a no-op
        // when the key already exists; recordHit updates lastUsedAt/hitCount for
        // the existing row so LRU eviction works correctly.
        cacheDao.insert(
            TranslationCacheEntry(
                cacheKey = key,
                sourceLang = sourceLang,
                targetLang = targetLang,
                sourceTextPreview = normalized.take(500),
                translatedText = result,
                provider = delegate.engineName
            )
        )
        cacheDao.recordHit(key)

        return result
    }
}
