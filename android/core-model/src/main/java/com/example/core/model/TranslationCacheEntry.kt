package com.example.core.model

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey

/**
 * Cached translation to avoid re-translating the same text.
 *
 * The cache key is a SHA-256 hash of (normalizedText + sourceLang + targetLang).
 * This ensures identical text+language combinations always hit the cache,
 * regardless of which engine produced the translation.
 */
@Entity(
    tableName = "translation_cache",
    indices = [
        Index("cacheKey", unique = true),
        Index("lastUsedAt"),
        Index("sourceLang", "targetLang")
    ]
)
data class TranslationCacheEntry(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    /** SHA-256 hash of (normalizedText + "|" + sourceLang + "|" + targetLang). */
    val cacheKey: String,
    val sourceLang: String,
    val targetLang: String,
    /** Original text (for debugging/display). Truncated to 500 chars. */
    val sourceTextPreview: String,
    val translatedText: String,
    /** Which engine produced this translation. */
    val provider: String,
    val createdAt: Long = System.currentTimeMillis(),
    val lastUsedAt: Long = System.currentTimeMillis(),
    /** Number of times this cache entry was used. */
    val hitCount: Int = 1
) {
    companion object {
        /**
         * Generate a cache key from translation parameters.
         */
        fun cacheKey(text: String, sourceLang: String, targetLang: String): String {
            val normalized = text.trim().replace(Regex("\\s+"), " ").lowercase()
            val input = "$normalized|$sourceLang|$targetLang"
            return java.security.MessageDigest.getInstance("SHA-256")
                .digest(input.toByteArray())
                .joinToString("") { "%02x".format(it) }
        }
    }
}
