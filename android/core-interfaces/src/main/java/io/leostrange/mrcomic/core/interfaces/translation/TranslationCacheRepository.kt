package io.leostrange.mrcomic.core.interfaces.translation

interface TranslationCacheRepository {
    suspend fun getByKey(key: String): TranslationCacheEntry?
    suspend fun recordHit(key: String)
    suspend fun insert(entry: TranslationCacheEntry)
}

data class TranslationCacheEntry(
    val cacheKey: String,
    val sourceLang: String,
    val targetLang: String,
    val sourceTextPreview: String,
    val translatedText: String,
    val provider: String
)
