package io.leostrange.mrcomic.engine.api

/**
 * Abstraction over EPUB structure/manifest caching.
 *
 * Keeps engine-formats independent of Room — the Room-backed implementation
 * lives in core-data and is injected via DI.
 */
interface EpubCacheStore {

    suspend fun getByPath(filePath: String): EpubCacheEntry?

    suspend fun upsert(entry: EpubCacheEntry)

    suspend fun deleteOlderThan(updatedBefore: Long)
}

data class EpubCacheEntry(
    val filePath: String,
    val fileSize: Long,
    val lastModified: Long,
    val payloadJson: String,
    val updatedAt: Long
)
