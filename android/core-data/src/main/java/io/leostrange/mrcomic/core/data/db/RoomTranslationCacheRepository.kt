package io.leostrange.mrcomic.core.data.db

import io.leostrange.mrcomic.core.interfaces.translation.TranslationCacheRepository
import io.leostrange.mrcomic.core.interfaces.translation.TranslationCacheEntry
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class RoomTranslationCacheRepository @Inject constructor(
    private val dao: TranslationCacheDao
) : TranslationCacheRepository {

    override suspend fun getByKey(key: String): TranslationCacheEntry? {
        return dao.getByKey(key)?.toDomain()
    }

    override suspend fun recordHit(key: String) {
        dao.recordHit(key)
    }

    override suspend fun insert(entry: TranslationCacheEntry) {
        dao.insert(entry.toEntity())
    }

    override suspend fun evictOlderThan(before: Long) {
        dao.evictOlderThan(before)
    }

    override suspend fun count(): Int {
        return dao.count()
    }

    override suspend fun clearAll() {
        dao.clearAll()
    }

    override suspend fun getRecent(sourceLang: String, targetLang: String, limit: Int): List<TranslationCacheEntry> {
        return dao.getRecent(sourceLang, targetLang, limit).map { it.toDomain() }
    }

    private fun io.leostrange.mrcomic.core.data.db.entity.TranslationCacheEntry.toDomain(): TranslationCacheEntry {
        return TranslationCacheEntry(
            cacheKey = cacheKey,
            sourceLang = sourceLang,
            targetLang = targetLang,
            sourceTextPreview = sourceTextPreview,
            translatedText = translatedText,
            provider = provider,
            lastUsedAt = lastUsedAt,
            hitCount = hitCount
        )
    }

    private fun TranslationCacheEntry.toEntity(): io.leostrange.mrcomic.core.data.db.entity.TranslationCacheEntry {
        return io.leostrange.mrcomic.core.data.db.entity.TranslationCacheEntry(
            cacheKey = cacheKey,
            sourceLang = sourceLang,
            targetLang = targetLang,
            sourceTextPreview = sourceTextPreview,
            translatedText = translatedText,
            provider = provider,
            lastUsedAt = lastUsedAt,
            hitCount = hitCount
        )
    }
}
