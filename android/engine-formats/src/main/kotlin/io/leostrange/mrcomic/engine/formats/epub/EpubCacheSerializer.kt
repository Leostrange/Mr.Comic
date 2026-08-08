package io.leostrange.mrcomic.engine.formats.epub

import com.google.gson.Gson
import io.leostrange.mrcomic.engine.api.EpubCacheEntry
import io.leostrange.mrcomic.engine.api.EpubCacheStore
import io.leostrange.mrcomic.engine.formats.base.log.safeLogW
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking

/**
 * Serializes and deserializes EPUB cache payloads.
 *
 * Extracted from [EpubFormatReader] so the cache-layer logic can be tested
 * independently of ZIP/archive dependencies.
 */
internal object EpubCacheSerializer {

    private const val TAG = "EpubCacheSerializer"
    const val MANIFEST_CACHE_VERSION = 3
    const val STRUCTURE_CACHE_VERSION = 10
    const val STRUCTURE_CACHE_MAX_AGE_MS = 30L * 24L * 60L * 60L * 1000L
    private const val FLAVOR_STANDARD = "standard"

    private val GSON = Gson()

    // ── Manifest serialization ─────────────────────────────────────────────

    fun serializeManifestBlueprint(blueprint: ManifestBlueprint): String =
        GSON.toJson(
            CachedManifestPayload(
                version = MANIFEST_CACHE_VERSION,
                manifest = blueprint.manifest,
                spine = blueprint.spine,
                ncxId = blueprint.ncxId,
                opfDir = blueprint.opfDir,
                flavor = blueprint.flavor,
                repairFrontMatter = blueprint.repairFrontMatter
            )
        )

    fun deserializeManifestBlueprint(payloadJson: String): ManifestBlueprint? = runCatching {
        val payload = GSON.fromJson(payloadJson, CachedManifestPayload::class.java)
        if (payload.version != MANIFEST_CACHE_VERSION) return@runCatching null
        if (payload.manifest.isEmpty() || payload.spine.isEmpty()) return@runCatching null
        ManifestBlueprint(
            manifest = payload.manifest,
            spine = payload.spine,
            ncxId = payload.ncxId,
            opfDir = payload.opfDir,
            flavor = payload.flavor.ifBlank { FLAVOR_STANDARD },
            repairFrontMatter = payload.repairFrontMatter
        )
    }.getOrElse { error ->
        safeLogW(TAG, "Failed to deserialize EPUB manifest cache", error)
        null
    }

    // ── Structure serialization ────────────────────────────────────────────

    fun serializeParsedEpub(parsed: ParsedEpub): String =
        GSON.toJson(
            CachedParsedEpubPayload(
                version = STRUCTURE_CACHE_VERSION,
                pages = parsed.pages.map { it.toCachedPage() }
            )
        )

    fun deserializeParsedEpub(payloadJson: String): ParsedEpub? = runCatching {
        val payload = GSON.fromJson(payloadJson, CachedParsedEpubPayload::class.java)
        if (payload.version != STRUCTURE_CACHE_VERSION) return@runCatching null
        val pages = payload.pages.mapNotNull { it.toEpubPage() }
        if (pages.isEmpty()) return@runCatching null
        ParsedEpub(pages = pages)
    }.getOrElse { error ->
        safeLogW(TAG, "Failed to deserialize EPUB structure cache", error)
        null
    }

    // ── Cache store helpers ────────────────────────────────────────────────

    fun loadManifestFromCache(
        cacheKey: EpubCacheKey?,
        cacheStore: EpubCacheStore?,
    ): ManifestBlueprint? {
        if (cacheKey == null) return null
        val store = cacheStore ?: return null
        val cachedEntry = runCatching {
            runBlocking(Dispatchers.IO) { store.getByPath(cacheKey.filePath) }
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to load EPUB manifest cache", error)
            null
        } ?: return null
        val isContentUri = cacheKey.filePath.startsWith("content://")
        if (!isContentUri && (cachedEntry.fileSize != cacheKey.fileSize || cachedEntry.lastModified != cacheKey.lastModified)) {
            return null
        }
        return deserializeManifestBlueprint(cachedEntry.payloadJson)
    }

    fun storeManifestInCache(
        cacheKey: EpubCacheKey?,
        blueprint: ManifestBlueprint,
        cacheStore: EpubCacheStore?,
    ) {
        if (cacheKey == null || blueprint.manifest.isEmpty() || blueprint.spine.isEmpty()) return
        val store = cacheStore ?: return
        val payloadJson = runCatching { serializeManifestBlueprint(blueprint) }.getOrElse { error ->
            safeLogW(TAG, "Failed to serialize EPUB manifest cache", error)
            return
        }
        runCatching {
            runBlocking(Dispatchers.IO) {
                store.upsert(
                    EpubCacheEntry(
                        filePath = cacheKey.filePath,
                        fileSize = cacheKey.fileSize,
                        lastModified = cacheKey.lastModified,
                        payloadJson = payloadJson,
                        updatedAt = System.currentTimeMillis()
                    )
                )
                store.deleteOlderThan(System.currentTimeMillis() - STRUCTURE_CACHE_MAX_AGE_MS)
            }
        }.onFailure { error ->
            safeLogW(TAG, "Failed to persist EPUB manifest cache", error)
        }
    }

    fun loadParsedFromCache(
        cacheKey: EpubCacheKey?,
        cacheStore: EpubCacheStore?,
    ): ParsedEpub? {
        if (cacheKey == null) return null
        val store = cacheStore ?: return null
        val cachedEntry = runCatching {
            runBlocking(Dispatchers.IO) { store.getByPath(cacheKey.filePath) }
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to load EPUB structure cache", error)
            null
        } ?: return null
        if (cachedEntry.fileSize != cacheKey.fileSize || cachedEntry.lastModified != cacheKey.lastModified) {
            return null
        }
        return deserializeParsedEpub(cachedEntry.payloadJson)
    }

    fun storeParsedInCache(
        cacheKey: EpubCacheKey?,
        parsed: ParsedEpub,
        cacheStore: EpubCacheStore?,
    ) {
        if (cacheKey == null || parsed.pages.isEmpty()) return
        val store = cacheStore ?: return
        val payloadJson = runCatching { serializeParsedEpub(parsed) }.getOrElse { error ->
            safeLogW(TAG, "Failed to serialize EPUB structure cache", error)
            return
        }
        runCatching {
            runBlocking(Dispatchers.IO) {
                store.upsert(
                    EpubCacheEntry(
                        filePath = cacheKey.filePath,
                        fileSize = cacheKey.fileSize,
                        lastModified = cacheKey.lastModified,
                        payloadJson = payloadJson,
                        updatedAt = System.currentTimeMillis()
                    )
                )
                store.deleteOlderThan(System.currentTimeMillis() - STRUCTURE_CACHE_MAX_AGE_MS)
            }
        }.onFailure { error ->
            safeLogW(TAG, "Failed to persist EPUB structure cache", error)
        }
    }
}
