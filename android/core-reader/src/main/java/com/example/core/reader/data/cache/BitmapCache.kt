package com.example.core.reader.data.cache

import android.graphics.Bitmap
import androidx.collection.LruCache
import java.util.Locale
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class BitmapCache @Inject constructor() {
    
    // Alternative constructor for manual instantiation
    constructor(maxSizeInMB: Int) : this() {
        // This will use the default initialization but with custom logic if needed
    }
    // Get max available VM memory, exceeding this amount will throw an
    // OutOfMemoryError exception. Stored in kilobytes as LruCache takes an
    // int in its constructor.
    private val maxMemory = (Runtime.getRuntime().maxMemory() / 1024).toInt()

    // Use 1/8th of the available memory for this memory cache.
    private val cacheSize = maxMemory / 8

    private val memoryCache = object : LruCache<String, Bitmap>(cacheSize) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            // The cache size will be measured in kilobytes rather than number of items.
            return bitmap.byteCount / 1024
        }
    }

    fun getBitmap(key: String): Bitmap? = memoryCache.get(key)

    fun putBitmap(key: String, bitmap: Bitmap) {
        if (getBitmap(key) == null && !bitmap.isRecycled) {
            memoryCache.put(key, bitmap)
        }
    }

    fun hasBitmap(key: String): Boolean = memoryCache.get(key) != null

    fun createKey(uri: String, pageIndex: Int, width: Int, height: Int, scale: Float): String {
        val normalizedScale = String.format(Locale.US, "%.3f", scale)
        val safeWidth = width.coerceAtLeast(1)
        val safeHeight = height.coerceAtLeast(1)
        return "${uri.hashCode()}_${pageIndex}_${safeWidth}x${safeHeight}_${normalizedScale}"
    }

    fun clearCache() {
        memoryCache.evictAll()
    }
}

/**
 * Специализированный кэш для миниатюр страниц PDF
 * Использует меньший размер памяти (1/16 от доступной) для оптимизации
 */
@Singleton
class ThumbnailCache @Inject constructor() {
    
    // Alternative constructor for manual instantiation
    constructor(context: android.content.Context) : this() {
        // Context can be used for cache directory or other Android-specific optimizations
    }
    private val maxMemory = (Runtime.getRuntime().maxMemory() / 1024).toInt()
    private val cacheSize = maxMemory / 16 // 1/16 памяти для миниатюр

    private val memoryCache = object : LruCache<String, Bitmap>(cacheSize) {
        override fun sizeOf(key: String, bitmap: Bitmap): Int {
            return bitmap.byteCount / 1024
        }
    }

    fun getThumbnail(key: String): Bitmap? = memoryCache.get(key)

    fun putThumbnail(key: String, bitmap: Bitmap) {
        if (getThumbnail(key) == null) {
            memoryCache.put(key, bitmap)
        }
    }

    fun clear() = memoryCache.evictAll()
}
