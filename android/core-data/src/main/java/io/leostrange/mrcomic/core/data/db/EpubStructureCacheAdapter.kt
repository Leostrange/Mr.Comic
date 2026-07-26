package io.leostrange.mrcomic.core.data.db

import io.leostrange.mrcomic.engine.api.EpubCacheEntry
import io.leostrange.mrcomic.engine.api.EpubCacheStore

/**
 * Room-backed [EpubCacheStore] for EPUB structure cache.
 */
class EpubStructureCacheAdapter(
    private val dao: EpubStructureCacheDao
) : EpubCacheStore {

    override suspend fun getByPath(filePath: String): EpubCacheEntry? =
        dao.getByPath(filePath)?.toDomain()

    override suspend fun upsert(entry: EpubCacheEntry) =
        dao.upsert(entry.toEntity())

    override suspend fun deleteOlderThan(updatedBefore: Long) =
        dao.deleteOlderThan(updatedBefore)
}

private fun EpubStructureCacheEntity.toDomain() = EpubCacheEntry(
    filePath = filePath,
    fileSize = fileSize,
    lastModified = lastModified,
    payloadJson = payloadJson,
    updatedAt = updatedAt
)

private fun EpubCacheEntry.toEntity() = EpubStructureCacheEntity(
    filePath = filePath,
    fileSize = fileSize,
    lastModified = lastModified,
    payloadJson = payloadJson,
    updatedAt = updatedAt
)
