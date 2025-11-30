package com.example.core.reader.cache

import android.graphics.Bitmap
import android.util.LruCache
import java.util.Locale
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
        
        /**
         * 🔥 КРИТИЧЕСКОЕ ИСПРАВЛЕНИЕ: Динамический лимит кэша
         * Рекомендация из "new/OptimizedCache.kt" и отчёта по анализу
         * 
         * Вместо фиксированного размера (50MB), используем 1/8 от доступной памяти приложения.
         * Это предотвращает OOM на устройствах с малой памятью и оптимально использует ресурсы.
         */
        private const val MIN_CACHE_SIZE_BYTES = 32 * 1024 * 1024 // 32MB
        private const val MAX_CACHE_SIZE_BYTES = 256 * 1024 * 1024 // 256MB
        private fun calculateOptimalCacheSize(): Int {
            val maxMemory = Runtime.getRuntime().maxMemory()
            val cacheSize = (maxMemory / 8).toInt().coerceIn(MIN_CACHE_SIZE_BYTES, MAX_CACHE_SIZE_BYTES)
            android.util.Log.d(TAG, "Calculated optimal cache size: ${cacheSize / 1024 / 1024}MB (1/8 of ${maxMemory / 1024 / 1024}MB)")
            return cacheSize
        }
    }
    
    // LRU кэш для полноразмерных bitmap с динамическим лимитом
    private val bitmapCache = object : LruCache<String, Bitmap>(calculateOptimalCacheSize()) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.byteCount
        }
        
        override fun entryRemoved(evicted: Boolean, key: String, oldValue: Bitmap, newValue: Bitmap?) {
            if (evicted && !oldValue.isRecycled) {
                android.util.Log.d(TAG, "Evicted bitmap from cache: $key (${oldValue.byteCount} bytes)")
            }
        }
    }
    
    // Отдельный кэш для превью (thumbnail) - 1/4 от основного кэша
    private val thumbnailCache = object : LruCache<String, Bitmap>(calculateOptimalCacheSize() / 4) {
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
        val normalizedScale = String.format(java.util.Locale.US, "%.3f", scale)
        val safeWidth = width.coerceAtLeast(1)
        val safeHeight = height.coerceAtLeast(1)
        return "${uri.hashCode()}_${pageIndex}_${safeWidth}x${safeHeight}_${normalizedScale}"
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
