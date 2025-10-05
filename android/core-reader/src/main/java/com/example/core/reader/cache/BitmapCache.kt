package com.example.core.reader.cache

import android.graphics.Bitmap
import android.util.LruCache
import javax.inject.Inject
import javax.inject.Singleton

/**
 * LRU кэш для bitmap с ограничением по памяти
 * Оптимизирует использование памяти и скорость доступа к страницам
 */
@Singleton
class BitmapCache @Inject constructor() {
    
    companion object {
        private const val TAG = "BitmapCache"
        // Целевой размер кэша - 50MB
        private const val TARGET_CACHE_SIZE_MB = 50
        private const val BYTES_PER_MB = 1024 * 1024
        private const val TARGET_CACHE_SIZE_BYTES = TARGET_CACHE_SIZE_MB * BYTES_PER_MB
    }
    
    // LRU кэш для полноразмерных bitmap
    private val bitmapCache = object : LruCache<String, Bitmap>(TARGET_CACHE_SIZE_BYTES) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.byteCount
        }
        
        override fun entryRemoved(evicted: Boolean, key: String, oldValue: Bitmap, newValue: Bitmap?) {
            if (evicted && !oldValue.isRecycled) {
                android.util.Log.d(TAG, "Evicted bitmap from cache: $key (${oldValue.byteCount} bytes)")
            }
        }
    }
    
    // Отдельный кэш для превью (thumbnail)
    private val thumbnailCache = object : LruCache<String, Bitmap>(TARGET_CACHE_SIZE_BYTES / 4) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.byteCount
        }
    }
    
    /**
     * Получить bitmap из кэша
     */
    fun getBitmap(key: String): Bitmap? {
        return bitmapCache.get(key)
    }
    
    /**
     * Сохранить bitmap в кэш
     */
    fun putBitmap(key: String, bitmap: Bitmap) {
        if (!bitmap.isRecycled) {
            bitmapCache.put(key, bitmap)
            android.util.Log.d(TAG, "Cached bitmap: $key (${bitmap.byteCount} bytes)")
        }
    }
    
    /**
     * Получить превью из кэша
     */
    fun getThumbnail(key: String): Bitmap? {
        return thumbnailCache.get(key)
    }
    
    /**
     * Сохранить превью в кэш
     */
    fun putThumbnail(key: String, thumbnail: Bitmap) {
        if (!thumbnail.isRecycled) {
            thumbnailCache.put(key, thumbnail)
            android.util.Log.d(TAG, "Cached thumbnail: $key (${thumbnail.byteCount} bytes)")
        }
    }
    
    /**
     * Создать ключ для кэша
     */
    fun createKey(uri: String, pageIndex: Int, width: Int, height: Int, scale: Float): String {
        return "${uri.hashCode()}_${pageIndex}_${width}x${height}_${scale}"
    }
    
    /**
     * Создать ключ для превью
     */
    fun createThumbnailKey(uri: String, pageIndex: Int): String {
        return "thumb_${uri.hashCode()}_$pageIndex"
    }
    
    /**
     * Очистить весь кэш
     */
    fun clearCache() {
        bitmapCache.evictAll()
        thumbnailCache.evictAll()
        android.util.Log.d(TAG, "Cache cleared")
    }
    
    /**
     * Получить статистику кэша
     */
    fun getCacheStats(): CacheStats {
        return CacheStats(
            bitmapCacheSize = bitmapCache.size(),
            bitmapCacheMaxSize = bitmapCache.maxSize(),
            bitmapCacheHitCount = bitmapCache.hitCount().toLong(),
            bitmapCacheMissCount = bitmapCache.missCount().toLong(),
            thumbnailCacheSize = thumbnailCache.size(),
            thumbnailCacheMaxSize = thumbnailCache.maxSize(),
            thumbnailCacheHitCount = thumbnailCache.hitCount().toLong(),
            thumbnailCacheMissCount = thumbnailCache.missCount().toLong()
        )
    }
    
    /**
     * Проверить, есть ли bitmap в кэше
     */
    fun hasBitmap(key: String): Boolean {
        return bitmapCache.get(key) != null
    }
    
    /**
     * Проверить, есть ли превью в кэше
     */
    fun hasThumbnail(key: String): Boolean {
        return thumbnailCache.get(key) != null
    }
}

/**
 * Статистика кэша
 */
data class CacheStats(
    val bitmapCacheSize: Int,
    val bitmapCacheMaxSize: Int,
    val bitmapCacheHitCount: Long,
    val bitmapCacheMissCount: Long,
    val thumbnailCacheSize: Int,
    val thumbnailCacheMaxSize: Int,
    val thumbnailCacheHitCount: Long,
    val thumbnailCacheMissCount: Long
) {
    val bitmapHitRate: Float
        get() = if (bitmapCacheHitCount + bitmapCacheMissCount > 0) {
            bitmapCacheHitCount.toFloat() / (bitmapCacheHitCount + bitmapCacheMissCount)
        } else 0f
        
    val thumbnailHitRate: Float
        get() = if (thumbnailCacheHitCount + thumbnailCacheMissCount > 0) {
            thumbnailCacheHitCount.toFloat() / (thumbnailCacheHitCount + thumbnailCacheMissCount)
        } else 0f
}
