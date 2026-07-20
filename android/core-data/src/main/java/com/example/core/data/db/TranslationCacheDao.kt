package com.example.core.data.db

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import com.example.core.model.TranslationCacheEntry

@Dao
interface TranslationCacheDao {

    @Query("SELECT * FROM translation_cache WHERE cacheKey = :cacheKey LIMIT 1")
    suspend fun getByKey(cacheKey: String): TranslationCacheEntry?

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insert(entry: TranslationCacheEntry)

    @Query("""
        UPDATE translation_cache
        SET lastUsedAt = :now, hitCount = hitCount + 1
        WHERE cacheKey = :cacheKey
    """)
    suspend fun recordHit(cacheKey: String, now: Long = System.currentTimeMillis())

    @Query("DELETE FROM translation_cache WHERE lastUsedAt < :before")
    suspend fun evictOlderThan(before: Long)

    @Query("SELECT COUNT(*) FROM translation_cache")
    suspend fun count(): Int

    @Query("DELETE FROM translation_cache")
    suspend fun clearAll()

    @Query("""
        SELECT * FROM translation_cache
        WHERE sourceLang = :sourceLang AND targetLang = :targetLang
        ORDER BY lastUsedAt DESC
        LIMIT :limit
    """)
    suspend fun getRecent(sourceLang: String, targetLang: String, limit: Int = 50): List<TranslationCacheEntry>
}
