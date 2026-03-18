package com.example.feature.ocr.data

import android.content.Context
import com.example.core.model.BubbleMaskShape
import com.example.core.model.OcrBlock
import com.example.core.model.OcrBlockType
import com.example.core.model.OverlayBlock
import com.example.core.model.OverlayDisplayMode
import com.example.core.model.TranslationMode
import com.example.core.model.TranslationProviderType
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.security.MessageDigest
import java.util.LinkedHashMap
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class OcrPageCache @Inject constructor(
    @ApplicationContext context: Context
) {

    private val cacheRoot = File(context.cacheDir, "ocr_page_cache").apply { mkdirs() }
    private val cacheLock = Any()

    private val recognizedBlocksCache =
        object : LinkedHashMap<RecognizedPageKey, List<OcrBlock>>(16, 0.75f, true) {
            override fun removeEldestEntry(eldest: MutableMap.MutableEntry<RecognizedPageKey, List<OcrBlock>>): Boolean {
                return size > MAX_RECOGNIZED_PAGES
            }
        }

    private val translatedBlocksCache =
        object : LinkedHashMap<TranslatedPageKey, List<OverlayBlock>>(16, 0.75f, true) {
            override fun removeEldestEntry(eldest: MutableMap.MutableEntry<TranslatedPageKey, List<OverlayBlock>>): Boolean {
                return size > MAX_TRANSLATED_PAGES
            }
        }

    suspend fun getRecognizedBlocks(pageId: String, sourceLanguage: String): List<OcrBlock>? =
        withContext(Dispatchers.IO) {
            val key = RecognizedPageKey(pageId = pageId, sourceLanguage = sourceLanguage.normalizeCacheKey())
            synchronized(cacheLock) {
                recognizedBlocksCache[key]?.map { it.copy() }
            } ?: loadRecognizedBlocksFromDisk(key)?.also { loaded ->
                synchronized(cacheLock) {
                    recognizedBlocksCache[key] = loaded
                }
            }?.map { it.copy() }
        }

    suspend fun putRecognizedBlocks(pageId: String, sourceLanguage: String, blocks: List<OcrBlock>) {
        withContext(Dispatchers.IO) {
            val key = RecognizedPageKey(pageId = pageId, sourceLanguage = sourceLanguage.normalizeCacheKey())
            val snapshot = blocks.map { it.copy() }
            synchronized(cacheLock) {
                recognizedBlocksCache[key] = snapshot
            }
            writeJson(recognizedCacheFile(key), serializeRecognizedBlocks(snapshot))
            trimDiskCache(prefix = RECOGNIZED_PREFIX, maxEntries = MAX_RECOGNIZED_PAGES)
        }
    }

    suspend fun getTranslatedBlocks(
        pageId: String,
        sourceLanguage: String,
        targetLanguage: String,
        transport: String,
        filterProfile: String
    ): List<OverlayBlock>? = withContext(Dispatchers.IO) {
        val key = TranslatedPageKey(
            pageId = pageId,
            sourceLanguage = sourceLanguage.normalizeCacheKey(),
            targetLanguage = targetLanguage.normalizeCacheKey(),
            transport = transport.normalizeCacheKey(),
            filterProfile = filterProfile.normalizeCacheKey()
        )
        synchronized(cacheLock) {
            translatedBlocksCache[key]?.map { it.copy() }
        } ?: loadTranslatedBlocksFromDisk(key)?.also { loaded ->
            synchronized(cacheLock) {
                translatedBlocksCache[key] = loaded
            }
        }?.map { it.copy() }
    }

    suspend fun putTranslatedBlocks(
        pageId: String,
        sourceLanguage: String,
        targetLanguage: String,
        transport: String,
        filterProfile: String,
        blocks: List<OverlayBlock>
    ) {
        withContext(Dispatchers.IO) {
            val key = TranslatedPageKey(
                pageId = pageId,
                sourceLanguage = sourceLanguage.normalizeCacheKey(),
                targetLanguage = targetLanguage.normalizeCacheKey(),
                transport = transport.normalizeCacheKey(),
                filterProfile = filterProfile.normalizeCacheKey()
            )
            val snapshot = blocks.map { it.copy() }
            synchronized(cacheLock) {
                translatedBlocksCache[key] = snapshot
            }
            writeJson(translatedCacheFile(key), serializeTranslatedBlocks(snapshot))
            trimDiskCache(prefix = TRANSLATED_PREFIX, maxEntries = MAX_TRANSLATED_PAGES)
        }
    }

    suspend fun mergeTranslatedBlocks(
        pageId: String,
        sourceLanguage: String,
        targetLanguage: String,
        transport: String,
        filterProfile: String,
        newBlocks: List<OverlayBlock>
    ): List<OverlayBlock> = withContext(Dispatchers.IO) {
        val key = TranslatedPageKey(
            pageId = pageId,
            sourceLanguage = sourceLanguage.normalizeCacheKey(),
            targetLanguage = targetLanguage.normalizeCacheKey(),
            transport = transport.normalizeCacheKey(),
            filterProfile = filterProfile.normalizeCacheKey()
        )
        val currentBlocks = synchronized(cacheLock) {
            translatedBlocksCache[key]?.map { it.copy() }
        } ?: loadTranslatedBlocksFromDisk(key).orEmpty()
        val merged = LinkedHashMap<String, OverlayBlock>()
        currentBlocks.forEach { merged[it.ocrBlockId] = it }
        newBlocks.forEach { merged[it.ocrBlockId] = it }
        val mergedList = merged.values.map { it.copy() }
        synchronized(cacheLock) {
            translatedBlocksCache[key] = mergedList
        }
        writeJson(translatedCacheFile(key), serializeTranslatedBlocks(mergedList))
        trimDiskCache(prefix = TRANSLATED_PREFIX, maxEntries = MAX_TRANSLATED_PAGES)
        mergedList
    }

    suspend fun pruneExpiredEntries() = withContext(Dispatchers.IO) {
        synchronized(cacheLock) {
            recognizedBlocksCache.clear()
            translatedBlocksCache.clear()
        }
        pruneDiskCacheByAge(prefix = RECOGNIZED_PREFIX, maxAgeMs = MAX_CACHE_AGE_MS)
        pruneDiskCacheByAge(prefix = TRANSLATED_PREFIX, maxAgeMs = MAX_CACHE_AGE_MS)
    }

    private fun loadRecognizedBlocksFromDisk(key: RecognizedPageKey): List<OcrBlock>? =
        readJson(recognizedCacheFile(key))?.optJSONArray("blocks")?.let(::parseRecognizedBlocks)

    private fun loadTranslatedBlocksFromDisk(key: TranslatedPageKey): List<OverlayBlock>? =
        readJson(translatedCacheFile(key))?.optJSONArray("blocks")?.let(::parseTranslatedBlocks)

    private fun serializeRecognizedBlocks(blocks: List<OcrBlock>): JSONObject = JSONObject().apply {
        put("version", CACHE_SCHEMA_VERSION)
        put("writtenAt", System.currentTimeMillis())
        put("blocks", JSONArray().apply {
            blocks.forEach { block ->
                put(JSONObject().apply {
                    put("id", block.id)
                    put("pageId", block.pageId)
                    put("bboxLeft", block.bboxLeft.toDouble())
                    put("bboxTop", block.bboxTop.toDouble())
                    put("bboxWidth", block.bboxWidth.toDouble())
                    put("bboxHeight", block.bboxHeight.toDouble())
                    put("textOriginal", block.textOriginal)
                    put("textNormalized", block.textNormalized)
                    put("detectedLanguage", block.detectedLanguage)
                    put("confidence", block.confidence?.toDouble())
                    put("blockType", block.blockType.name)
                    put("rotation", block.rotation.toDouble())
                })
            }
        })
    }

    private fun serializeTranslatedBlocks(blocks: List<OverlayBlock>): JSONObject = JSONObject().apply {
        put("version", CACHE_SCHEMA_VERSION)
        put("writtenAt", System.currentTimeMillis())
        put("blocks", JSONArray().apply {
            blocks.forEach { block ->
                put(JSONObject().apply {
                    put("ocrBlockId", block.ocrBlockId)
                    put("translatedText", block.translatedText)
                    put("translationMode", block.translationMode?.name)
                    put("provider", block.provider.name)
                    put("isOffline", block.isOffline)
                    put("displayMode", block.displayMode.name)
                    put("fontSize", block.fontSize.toDouble())
                    put("padding", block.padding.toDouble())
                    put("backgroundOpacity", block.backgroundOpacity.toDouble())
                    put("maskShape", block.maskShape.name)
                    put("maskCornerRadius", block.maskCornerRadius.toDouble())
                    put("maskInset", block.maskInset.toDouble())
                    put("prefersReplacementPreview", block.prefersReplacementPreview)
                })
            }
        })
    }

    private fun parseRecognizedBlocks(array: JSONArray): List<OcrBlock> = buildList {
        for (index in 0 until array.length()) {
            val item = array.optJSONObject(index) ?: continue
            add(
                OcrBlock(
                    id = item.optString("id"),
                    pageId = item.optString("pageId"),
                    bboxLeft = item.optDouble("bboxLeft").toFloat(),
                    bboxTop = item.optDouble("bboxTop").toFloat(),
                    bboxWidth = item.optDouble("bboxWidth").toFloat(),
                    bboxHeight = item.optDouble("bboxHeight").toFloat(),
                    textOriginal = item.optString("textOriginal"),
                    textNormalized = item.optString("textNormalized", item.optString("textOriginal")),
                    detectedLanguage = item.optString("detectedLanguage").takeIf { it.isNotBlank() && it != "null" },
                    confidence = item.takeIf { !it.isNull("confidence") }?.optDouble("confidence")?.toFloat(),
                    blockType = item.optString("blockType")
                        .takeIf { it.isNotBlank() }
                        ?.let { runCatching { OcrBlockType.valueOf(it) }.getOrDefault(OcrBlockType.UNKNOWN) }
                        ?: OcrBlockType.UNKNOWN,
                    rotation = item.optDouble("rotation").toFloat()
                )
            )
        }
    }

    private fun parseTranslatedBlocks(array: JSONArray): List<OverlayBlock> = buildList {
        for (index in 0 until array.length()) {
            val item = array.optJSONObject(index) ?: continue
            add(
                OverlayBlock(
                    ocrBlockId = item.optString("ocrBlockId"),
                    translatedText = item.optString("translatedText"),
                    translationMode = item.optString("translationMode")
                        .takeIf { it.isNotBlank() && it != "null" }
                        ?.let { runCatching { TranslationMode.valueOf(it) }.getOrNull() },
                    provider = item.optString("provider")
                        .takeIf { it.isNotBlank() }
                        ?.let { runCatching { TranslationProviderType.valueOf(it) }.getOrDefault(TranslationProviderType.UNKNOWN) }
                        ?: TranslationProviderType.UNKNOWN,
                    isOffline = item.optBoolean("isOffline", false),
                    displayMode = item.optString("displayMode")
                        .takeIf { it.isNotBlank() }
                        ?.let { runCatching { OverlayDisplayMode.valueOf(it) }.getOrDefault(OverlayDisplayMode.OVERLAY) }
                        ?: OverlayDisplayMode.OVERLAY,
                    fontSize = item.optDouble("fontSize", 14.0).toFloat(),
                    padding = item.optDouble("padding", 8.0).toFloat(),
                    backgroundOpacity = item.optDouble("backgroundOpacity", 0.78).toFloat(),
                    maskShape = item.optString("maskShape")
                        .takeIf { it.isNotBlank() }
                        ?.let { runCatching { BubbleMaskShape.valueOf(it) }.getOrDefault(BubbleMaskShape.ROUNDED_RECT) }
                        ?: BubbleMaskShape.ROUNDED_RECT,
                    maskCornerRadius = item.optDouble("maskCornerRadius", 12.0).toFloat(),
                    maskInset = item.optDouble("maskInset", 0.0).toFloat(),
                    prefersReplacementPreview = item.optBoolean("prefersReplacementPreview", false)
                )
            )
        }
    }

    private fun readJson(file: File): JSONObject? {
        if (!file.exists()) return null
        return runCatching {
            val parsed = JSONObject(file.readText(Charsets.UTF_8))
            val version = parsed.optInt("version", 0)
            if (version != CACHE_SCHEMA_VERSION) {
                file.delete()
                return null
            }
            file.setLastModified(System.currentTimeMillis())
            parsed
        }.getOrElse {
            file.delete()
            null
        }
    }

    private fun writeJson(file: File, json: JSONObject) {
        file.parentFile?.mkdirs()
        file.writeText(json.toString(), Charsets.UTF_8)
        file.setLastModified(System.currentTimeMillis())
    }

    private fun trimDiskCache(prefix: String, maxEntries: Int) {
        pruneDiskCacheByAge(prefix = prefix, maxAgeMs = MAX_CACHE_AGE_MS)
        cacheRoot.listFiles { candidate ->
            candidate.isFile && candidate.name.startsWith(prefix)
        }?.sortedByDescending { it.lastModified() }
            ?.drop(maxEntries)
            ?.forEach { it.delete() }
    }

    private fun pruneDiskCacheByAge(prefix: String, maxAgeMs: Long) {
        val cutoff = System.currentTimeMillis() - maxAgeMs
        cacheRoot.listFiles { candidate ->
            candidate.isFile && candidate.name.startsWith(prefix)
        }?.forEach { file ->
            if (file.lastModified() < cutoff) {
                file.delete()
            }
        }
    }

    private fun recognizedCacheFile(key: RecognizedPageKey): File =
        File(cacheRoot, "$RECOGNIZED_PREFIX${key.toStableFileKey()}.json")

    private fun translatedCacheFile(key: TranslatedPageKey): File =
        File(cacheRoot, "$TRANSLATED_PREFIX${key.toStableFileKey()}.json")

    private fun RecognizedPageKey.toStableFileKey(): String =
        sha256("$pageId|$sourceLanguage")

    private fun TranslatedPageKey.toStableFileKey(): String =
        sha256("$pageId|$sourceLanguage|$targetLanguage|$transport|$filterProfile")

    private fun sha256(raw: String): String =
        MessageDigest.getInstance("SHA-256")
            .digest(raw.toByteArray(Charsets.UTF_8))
            .joinToString(separator = "") { byte -> "%02x".format(byte) }

    private fun String.normalizeCacheKey(): String = trim().lowercase()

    private data class RecognizedPageKey(
        val pageId: String,
        val sourceLanguage: String
    )

    private data class TranslatedPageKey(
        val pageId: String,
        val sourceLanguage: String,
        val targetLanguage: String,
        val transport: String,
        val filterProfile: String
    )

    private companion object {
        const val MAX_RECOGNIZED_PAGES = 24
        const val MAX_TRANSLATED_PAGES = 24
        const val RECOGNIZED_PREFIX = "recognized_"
        const val TRANSLATED_PREFIX = "translated_"
        const val CACHE_SCHEMA_VERSION = 3
        const val MAX_CACHE_AGE_MS = 7L * 24L * 60L * 60L * 1000L
    }
}
