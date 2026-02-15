package com.example.core.reader.cache

import android.graphics.Bitmap
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Two-tier bitmap cache: Memory (L1) + Disk (L2)
 *
 * Strategy:
 * 1. Check memory cache first (fast)
 * 2. If miss, check disk cache (slower)
 * 3. If disk hit, promote to memory
 * 4. Always write to both caches
 *
 * This maximizes cache hits while providing persistent storage.
 */
@Singleton
class TieredBitmapCache @Inject constructor(
    private val memoryCache: BitmapCache,
    private val diskCache: DiskBitmapCache
) {
    companion object {
        private const val TAG = "TieredBitmapCache"
    }

    /**
     * Get bitmap from cache (checks L1 → L2)
     */
    suspend fun getBitmap(key: String): Bitmap? {
        // L1: Check memory cache first
        memoryCache.getBitmap(key)?.let { bitmap ->
            android.util.Log.d(TAG, "✅ L1 HIT (memory): $key")
            return bitmap
        }

        // L2: Check disk cache
        val diskBitmap = diskCache.getBitmap(key)
        if (diskBitmap != null) {
            android.util.Log.d(TAG, "✅ L2 HIT (disk): $key - promoting to memory")
            // Promote to memory cache
            memoryCache.putBitmap(key, diskBitmap)
            return diskBitmap
        }

        android.util.Log.d(TAG, "❌ MISS (both): $key")
        return null
    }

    /**
     * Put bitmap into both caches
     */
    suspend fun putBitmap(key: String, bitmap: Bitmap) {
        // L1: Always write to memory (fast)
        memoryCache.putBitmap(key, bitmap)

        // L2: Write to disk asynchronously (slower, but persistent)
        withContext(Dispatchers.IO) {
            diskCache.putBitmap(key, bitmap)
        }

        android.util.Log.d(TAG, "💾 WRITE (both): $key")
    }

    /**
     * Get thumbnail from cache
     */
    suspend fun getThumbnail(key: String): Bitmap? {
        // Thumbnails only in memory (small, fast access)
        return memoryCache.getThumbnail(key)
    }

    /**
     * Put thumbnail into memory cache
     */
    fun putThumbnail(key: String, thumbnail: Bitmap) {
        memoryCache.putThumbnail(key, thumbnail)
    }

    /**
     * Check if bitmap exists in either cache
     */
    suspend fun hasBitmap(key: String): Boolean {
        return memoryCache.hasBitmap(key) || diskCache.hasBitmap(key)
    }

    /**
     * Remove bitmap from both caches
     */
    suspend fun remove(key: String) {
        // Remove from memory (synchronous)
        memoryCache.getBitmap(key)?.recycle()

        // Remove from disk (asynchronous)
        withContext(Dispatchers.IO) {
            diskCache.remove(key)
        }

        android.util.Log.d(TAG, "🗑️ REMOVE (both): $key")
    }

    /**
     * Clear all caches
     */
    suspend fun clearAll() {
        memoryCache.clearCache()
        diskCache.clearCache()
        android.util.Log.d(TAG, "🧹 CLEAR (both caches)")
    }

    /**
     * Get comprehensive cache statistics
     */
    suspend fun getCacheStats(): TieredCacheStats {
        val memStats = memoryCache.getCacheStats()
        val diskStats = diskCache.getCacheStats()

        return TieredCacheStats(
            memoryStats = memStats,
            diskStats = diskStats,
            totalHitRate = calculateTotalHitRate(memStats)
        )
    }

    private fun calculateTotalHitRate(memStats: CacheStats): Float {
        val totalHits = memStats.bitmapCacheHitCount
        val totalRequests = totalHits + memStats.bitmapCacheMissCount
        return if (totalRequests > 0) {
            (totalHits.toFloat() / totalRequests) * 100
        } else {
            0f
        }
    }

    /**
     * Create cache key for full-size bitmap
     */
    fun createKey(uri: String, pageIndex: Int, width: Int, height: Int, scale: Float): String {
        return memoryCache.createKey(uri, pageIndex, width, height, scale)
    }

    /**
     * Create cache key for thumbnail
     */
    fun createThumbnailKey(uri: String, pageIndex: Int): String {
        return memoryCache.createThumbnailKey(uri, pageIndex)
    }
}

/**
 * Comprehensive cache statistics
 */
data class TieredCacheStats(
    val memoryStats: CacheStats,
    val diskStats: DiskCacheStats,
    val totalHitRate: Float
) {
    override fun toString(): String {
        return """
            |Tiered Cache Statistics:
            |  Memory:
            |    Size: ${memoryStats.bitmapCacheSize / 1024 / 1024}MB / ${memoryStats.bitmapCacheMaxSize / 1024 / 1024}MB
            |    Hit Rate: ${String.format("%.1f", memoryStats.bitmapHitRate * 100)}%
            |    Hits: ${memoryStats.bitmapCacheHitCount}, Misses: ${memoryStats.bitmapCacheMissCount}
            |  Disk:
            |    Files: ${diskStats.fileCount}
            |    Size: ${String.format("%.1f", diskStats.totalSizeMB)}MB / ${String.format("%.1f", diskStats.maxSizeMB)}MB
            |    Usage: ${diskStats.usagePercent}%
            |  Overall Hit Rate: ${String.format("%.1f", totalHitRate)}%
        """.trimMargin()
    }
}
