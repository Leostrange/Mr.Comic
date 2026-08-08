package io.leostrange.mrcomic.core.interfaces.translation

interface TranslationCacheRepository {
    suspend fun getByKey(key: String): TranslationCacheEntry?
    suspend fun recordHit(key: String)
    suspend fun insert(entry: TranslationCacheEntry)
    suspend fun evictOlderThan(before: Long)
    suspend fun count(): Int
    suspend fun clearAll()
    suspend fun getRecent(sourceLang: String, targetLang: String, limit: Int = 50): List<TranslationCacheEntry>
}

data class TranslationCacheEntry(
    val cacheKey: String,
    val sourceLang: String,
    val targetLang: String,
    val sourceTextPreview: String,
    val translatedText: String,
    val provider: String,
    val lastUsedAt: Long = System.currentTimeMillis(),
    val hitCount: Int = 0
) {
    companion object {
        fun cacheKey(text: String, sourceLang: String, targetLang: String): String {
            val normalized = text.trim().replace(Regex("\\s+"), " ").lowercase()
            val input = "$normalized|$sourceLang|$targetLang"
            return java.security.MessageDigest.getInstance("SHA-256")
                .digest(input.toByteArray())
                .joinToString("") { "%02x".format(it) }
        }
    }
}
