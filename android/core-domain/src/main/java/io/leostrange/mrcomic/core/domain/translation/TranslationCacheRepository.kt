package io.leostrange.mrcomic.core.domain.translation

/**
 * Repository interface for translation cache storage.
 *
 * Moved from core-data to core-domain to enforce dependency inversion.
 * Implementation lives in core-data and is injected via Hilt.
 */
interface TranslationCacheRepository {
    suspend fun getByKey(key: String): TranslationCacheEntry?
    suspend fun recordHit(key: String)
    suspend fun insert(entry: TranslationCacheEntry)
}

/**
 * Simplified translation cache entry for domain layer.
 */
data class TranslationCacheEntry(
    val cacheKey: String,
    val sourceLang: String,
    val targetLang: String,
    val sourceTextPreview: String,
    val translatedText: String,
    val provider: String
)
