package com.example.core.reader.cache

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.io.IOException
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Disk-based persistent cache for bitmaps
 * Complements BitmapCache (memory) with persistent storage
 *
 * Uses simple file-based caching with LRU cleanup
 */
@Singleton
class DiskBitmapCache @Inject constructor(
    @ApplicationContext private val context: Context
) {
    companion object {
        private const val TAG = "DiskBitmapCache"
        private const val CACHE_DIR_NAME = "bitmap_cache"
        private const val MAX_DISK_CACHE_SIZE = 512L * 1024 * 1024 // 512MB
        private const val CLEANUP_THRESHOLD = 0.9f // Clean when 90% full
    }

    private val cacheDir: File by lazy {
        File(context.cacheDir, CACHE_DIR_NAME).apply {
            if (!exists()) {
                mkdirs()
            }
        }
    }

    /**
     * Get bitmap from disk cache
     */
    suspend fun getBitmap(key: String): Bitmap? = withContext(Dispatchers.IO) {
        try {
            val file = getCacheFile(key)
            if (file.exists()) {
                // Update access time for LRU
                file.setLastModified(System.currentTimeMillis())

                val bitmap = BitmapFactory.decodeFile(file.absolutePath)
                if (bitmap != null) {
                    android.util.Log.d(TAG, "✅ Disk cache HIT: $key")
                    return@withContext bitmap
                } else {
                    // Corrupted file, delete it
                    file.delete()
                }
            }
            android.util.Log.d(TAG, "❌ Disk cache MISS: $key")
            null
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to read from disk cache: $key", e)
            null
        }
    }

    /**
     * Put bitmap into disk cache
     */
    suspend fun putBitmap(key: String, bitmap: Bitmap, quality: Int = 90) = withContext(Dispatchers.IO) {
        try {
            val file = getCacheFile(key)

            // Ensure parent directory exists
            file.parentFile?.mkdirs()

            // Write bitmap to file
            FileOutputStream(file).use { out ->
                val format = if (bitmap.hasAlpha()) {
                    Bitmap.CompressFormat.PNG
                } else {
                    Bitmap.CompressFormat.JPEG
                }
                bitmap.compress(format, quality, out)
                out.flush()
            }

            android.util.Log.d(TAG, "💾 Disk cache WRITE: $key (${file.length()} bytes)")

            // Check if cleanup is needed
            if (shouldCleanup()) {
                cleanupOldFiles()
            }
            Unit // Explicit return for withContext
        } catch (e: IOException) {
            android.util.Log.e(TAG, "Failed to write to disk cache: $key", e)
        }
    }

    /**
     * Check if bitmap exists in disk cache
     */
    suspend fun hasBitmap(key: String): Boolean = withContext(Dispatchers.IO) {
        getCacheFile(key).exists()
    }

    /**
     * Remove specific bitmap from cache
     */
    suspend fun remove(key: String) = withContext(Dispatchers.IO) {
        try {
            val file = getCacheFile(key)
            if (file.exists()) {
                file.delete()
                android.util.Log.d(TAG, "🗑️ Removed from disk cache: $key")
            }
            Unit // Explicit return for withContext
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to remove from disk cache: $key", e)
        }
    }

    /**
     * Clear entire disk cache
     */
    suspend fun clearCache() = withContext(Dispatchers.IO) {
        try {
            val files = cacheDir.listFiles()
            files?.forEach { it.delete() }
            android.util.Log.d(TAG, "🧹 Disk cache cleared (${files?.size ?: 0} files)")
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to clear disk cache", e)
        }
    }

    /**
     * Get current disk cache size in bytes
     */
    suspend fun getCacheSize(): Long = withContext(Dispatchers.IO) {
        try {
            cacheDir.listFiles()?.sumOf { it.length() } ?: 0L
        } catch (e: Exception) {
            0L
        }
    }

    /**
     * Get cache statistics
     */
    suspend fun getCacheStats(): DiskCacheStats = withContext(Dispatchers.IO) {
        try {
            val files = cacheDir.listFiles() ?: emptyArray()
            val totalSize = files.sumOf { it.length() }
            DiskCacheStats(
                fileCount = files.size,
                totalSize = totalSize,
                maxSize = MAX_DISK_CACHE_SIZE,
                usagePercent = (totalSize.toFloat() / MAX_DISK_CACHE_SIZE * 100).toInt()
            )
        } catch (e: Exception) {
            DiskCacheStats(0, 0, MAX_DISK_CACHE_SIZE, 0)
        }
    }

    private fun getCacheFile(key: String): File {
        // Use hash to avoid filesystem issues with special characters
        val filename = key.hashCode().toString(16)
        return File(cacheDir, filename)
    }

    private fun shouldCleanup(): Boolean {
        val currentSize = cacheDir.listFiles()?.sumOf { it.length() } ?: 0L
        return currentSize >= (MAX_DISK_CACHE_SIZE * CLEANUP_THRESHOLD)
    }

    private fun cleanupOldFiles() {
        try {
            val files = cacheDir.listFiles() ?: return

            // Sort by last modified (oldest first)
            val sortedFiles = files.sortedBy { it.lastModified() }

            var currentSize = sortedFiles.sumOf { it.length() }
            val targetSize = (MAX_DISK_CACHE_SIZE * 0.7).toLong() // Clean down to 70%

            var deletedCount = 0
            for (file in sortedFiles) {
                if (currentSize <= targetSize) break

                val fileSize = file.length()
                if (file.delete()) {
                    currentSize -= fileSize
                    deletedCount++
                }
            }

            android.util.Log.d(TAG, "🧹 Cleanup: deleted $deletedCount files, size now ${currentSize / 1024 / 1024}MB")
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to cleanup disk cache", e)
        }
    }
}

/**
 * Disk cache statistics
 */
data class DiskCacheStats(
    val fileCount: Int,
    val totalSize: Long,
    val maxSize: Long,
    val usagePercent: Int
) {
    val totalSizeMB: Float get() = totalSize / 1024f / 1024f
    val maxSizeMB: Float get() = maxSize / 1024f / 1024f
}
