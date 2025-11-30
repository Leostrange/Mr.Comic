package com.example.core.reader.cache

import android.net.Uri
import androidx.collection.LruCache
import androidx.annotation.VisibleForTesting
import java.util.Locale

/**
 * Lightweight LRU cache that stores raw (full-resolution) page bytes.
 * This enables lazy decoding of images without having to hit the archive every time.
 */
class PageByteCache private constructor(
    maxSizeBytes: Int
) {

    companion object {
        private const val DEFAULT_CACHE_SIZE_BYTES = 32 * 1024 * 1024 // 32 MB

        @Volatile
        private var INSTANCE: PageByteCache? = null

        fun getInstance(): PageByteCache {
            return INSTANCE ?: synchronized(this) {
                INSTANCE ?: PageByteCache(DEFAULT_CACHE_SIZE_BYTES).also { INSTANCE = it }
            }
        }

        /**
         * Generates a stable key for a page within a book.
         */
        fun createKey(uri: Uri?, pageIndex: Int): String {
            val uriHash = uri?.toString()?.hashCode() ?: 0
            return String.format(Locale.US, "raw_%d_%05d", uriHash, pageIndex)
        }

        /**
         * Allows tests to recreate the cache with a deterministic size.
         */
        @VisibleForTesting
        internal fun resetForTests(maxSizeBytes: Int = DEFAULT_CACHE_SIZE_BYTES) {
            INSTANCE = PageByteCache(maxSizeBytes)
        }
    }

    private val byteCache = object : LruCache<String, ByteArray>(maxSizeBytes) {
        override fun sizeOf(key: String, value: ByteArray): Int = value.size
    }

    fun get(key: String): ByteArray? = byteCache.get(key)

    fun put(key: String, data: ByteArray) {
        if (data.isNotEmpty()) {
            byteCache.put(key, data)
        }
    }

    fun clear() = byteCache.evictAll()

    @VisibleForTesting
    internal fun snapshotSizeBytes(): Int = byteCache.size()
}

