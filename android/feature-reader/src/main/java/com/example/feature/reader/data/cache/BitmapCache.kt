package com.example.feature.reader.data.cache

import android.graphics.Bitmap
import androidx.collection.LruCache
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class BitmapCache @Inject constructor() {
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
        if (getBitmap(key) == null) {
            memoryCache.put(key, bitmap)
        }
    }
}