package com.example.feature.reader.ui

import android.graphics.Bitmap
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Thumbnail provider for generating and caching page thumbnails
 * Optimized for lazy loading
 */
class ThumbnailProvider(
    private val scope: CoroutineScope,
    private val pageLoader: suspend (Int) -> Bitmap?,
    private val thumbnailSize: Int = 200 // Max dimension for thumbnail
) {
    private val _thumbnails = MutableStateFlow<Map<Int, Bitmap>>(emptyMap())
    val thumbnails: StateFlow<Map<Int, Bitmap>> = _thumbnails.asStateFlow()
    
    private val loadingJobs = mutableMapOf<Int, Job>()
    private val maxCacheSize = 50 // Maximum thumbnails in cache
    
    /**
     * Get thumbnail for page (load if not cached)
     */
    fun getThumbnail(pageIndex: Int): Bitmap? {
        val cached = _thumbnails.value[pageIndex]
        if (cached != null) {
            return cached
        }
        
        // Start loading if not already loading
        if (!loadingJobs.containsKey(pageIndex)) {
            loadThumbnail(pageIndex)
        }
        
        return null
    }
    
    /**
     * Load thumbnail for page
     */
    private fun loadThumbnail(pageIndex: Int) {
        val job = scope.launch(Dispatchers.IO) {
            try {
                val fullBitmap = pageLoader(pageIndex)
                if (fullBitmap != null) {
                    val thumbnail = createThumbnail(fullBitmap)
                    
                    _thumbnails.value = _thumbnails.value + (pageIndex to thumbnail)
                    
                    // Cleanup cache if too large
                    if (_thumbnails.value.size > maxCacheSize) {
                        cleanupOldestThumbnails()
                    }
                    
                    // Recycle original if different from thumbnail
                    if (fullBitmap != thumbnail) {
                        fullBitmap.recycle()
                    }
                }
            } catch (e: Exception) {
                // Ignore errors
            } finally {
                loadingJobs.remove(pageIndex)
            }
        }
        
        loadingJobs[pageIndex] = job
    }
    
    /**
     * Create thumbnail from full bitmap
     */
    private fun createThumbnail(bitmap: Bitmap): Bitmap {
        val width = bitmap.width
        val height = bitmap.height
        
        // Calculate scale to fit within thumbnailSize
        val scale = minOf(
            thumbnailSize.toFloat() / width,
            thumbnailSize.toFloat() / height
        )
        
        if (scale >= 1.0f) {
            // Already small enough
            return bitmap
        }
        
        val newWidth = (width * scale).toInt()
        val newHeight = (height * scale).toInt()
        
        return Bitmap.createScaledBitmap(bitmap, newWidth, newHeight, true)
    }
    
    /**
     * Cleanup oldest thumbnails to free memory
     */
    private fun cleanupOldestThumbnails() {
        val currentThumbnails = _thumbnails.value
        val toKeep = currentThumbnails.entries
            .sortedByDescending { it.key } // Keep recent pages
            .take(maxCacheSize / 2)
            .associate { it.key to it.value }
        
        // Recycle removed thumbnails
        currentThumbnails.forEach { (key, bitmap) ->
            if (!toKeep.containsKey(key)) {
                bitmap.recycle()
            }
        }
        
        _thumbnails.value = toKeep
    }
    
    /**
     * Preload thumbnails for range
     */
    fun preloadThumbnails(startIndex: Int, endIndex: Int) {
        for (i in startIndex..endIndex) {
            if (!_thumbnails.value.containsKey(i) && !loadingJobs.containsKey(i)) {
                loadThumbnail(i)
            }
        }
    }
    
    /**
     * Clear all thumbnails
     */
    fun clearCache() {
        loadingJobs.values.forEach { it.cancel() }
        loadingJobs.clear()
        
        _thumbnails.value.values.forEach { it.recycle() }
        _thumbnails.value = emptyMap()
    }
}
