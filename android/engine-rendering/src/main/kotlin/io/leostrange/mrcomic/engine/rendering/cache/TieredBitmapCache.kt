package io.leostrange.mrcomic.engine.rendering.cache

import android.content.Context
import android.graphics.Bitmap
import android.util.LruCache
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.resolveRenderDeviceProfile
import dagger.hilt.android.qualifiers.ApplicationContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class TieredBitmapCache @Inject constructor(
    @ApplicationContext context: Context
) {

    private data class CacheEntry(
        val bitmap: Bitmap,
        val sizeKb: Int
    )

    companion object {
        private const val TAG = "TieredBitmapCache"
    }

    private val deviceProfile = context.resolveRenderDeviceProfile()
    private val maxMemoryKb = (
        Runtime.getRuntime().maxMemory() / 1024 / deviceProfile.memoryCacheFractionDivisor
    ).toInt().coerceAtLeast(1024)

    // L1: LRU memory cache
    private val memCache = object : LruCache<String, CacheEntry>(maxMemoryKb) {
        override fun sizeOf(key: String, value: CacheEntry) = value.sizeKb

        override fun entryRemoved(
            evicted: Boolean,
            key: String,
            oldValue: CacheEntry,
            newValue: CacheEntry?
        ) {
            // Recycle evicted bitmaps to free native memory (especially on pre-O).
            // Only recycle if the bitmap is not being reused (newValue != oldValue)
            // and is not already recycled.
            if (evicted && oldValue.bitmap != newValue?.bitmap && !oldValue.bitmap.isRecycled) {
                oldValue.bitmap.recycle()
            }
        }
    }

    fun get(key: String): Bitmap? {
        val entry = memCache.get(key) ?: return null
        if (entry.bitmap.isRecycled) {
            memCache.remove(key)
            return null
        }
        return entry.bitmap
    }

    fun put(key: String, bitmap: Bitmap) {
        val sizeKb = bitmap.safeSizeKb()
        // Allow large pages (up to half the memory budget) to be cached.
        // Previously only pages < maxMemoryKb/3 were cached, discarding
        // large spreads that would then be re-decoded on every visit. (P2-3)
        if (sizeKb < maxMemoryKb / 2) {
            memCache.put(key, CacheEntry(bitmap = bitmap, sizeKb = sizeKb))
        }
    }

    fun remove(key: String): Bitmap? = memCache.remove(key)?.bitmap

    fun clear() = memCache.evictAll()

    fun trimToSize(targetKb: Int) {
        try { memCache.trimToSize(targetKb) } catch (e: Exception) { Log.e(TAG, "trim error", e) }
    }

    fun maxBudgetKb(): Int = maxMemoryKb

    private fun Bitmap.safeSizeKb(): Int {
        val bytes = runCatching {
            if (isRecycled) 0 else allocationByteCount
        }.getOrElse {
            runCatching { if (isRecycled) 0 else byteCount }.getOrDefault(0)
        }
        return (bytes / 1024).coerceAtLeast(1)
    }
}
