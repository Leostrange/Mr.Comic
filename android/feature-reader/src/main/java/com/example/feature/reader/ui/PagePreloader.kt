package com.example.feature.reader.ui

import android.graphics.Bitmap
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

/**
 * Page preloader for background loading of adjacent pages
 * Preloads ±2 pages from current page
 */
class PagePreloader(
    private val scope: CoroutineScope,
    private val pageLoader: suspend (Int) -> Bitmap?
) {
    private val _preloadedPages = MutableStateFlow<Map<Int, Bitmap>>(emptyMap())
    val preloadedPages: StateFlow<Map<Int, Bitmap>> = _preloadedPages.asStateFlow()
    
    private var currentPreloadJob: Job? = null
    private val preloadRange = 2 // ±2 pages
    private val maxCacheSize = 10 // Maximum pages in cache
    
    /**
     * Preload pages around current page
     */
    fun preloadPages(currentPage: Int, totalPages: Int) {
        // Cancel previous preload job
        currentPreloadJob?.cancel()
        
        currentPreloadJob = scope.launch(Dispatchers.IO) {
            val pagesToPreload = calculatePagesToPreload(currentPage, totalPages)
            
            // Remove pages that are too far from current
            cleanupCache(currentPage)
            
            // Load pages that aren't already loaded
            pagesToPreload.forEach { pageIndex ->
                if (!_preloadedPages.value.containsKey(pageIndex)) {
                    launch {
                        try {
                            val bitmap = pageLoader(pageIndex)
                            if (bitmap != null) {
                                _preloadedPages.value = _preloadedPages.value + (pageIndex to bitmap)
                            }
                        } catch (e: Exception) {
                            // Ignore errors during preload
                        }
                    }
                }
            }
        }
    }
    
    /**
     * Calculate which pages to preload
     */
    private fun calculatePagesToPreload(currentPage: Int, totalPages: Int): List<Int> {
        val pages = mutableListOf<Int>()
        
        // Add pages in order of priority: current, +1, -1, +2, -2
        pages.add(currentPage)
        
        for (i in 1..preloadRange) {
            val nextPage = currentPage + i
            val prevPage = currentPage - i
            
            if (nextPage < totalPages) {
                pages.add(nextPage)
            }
            if (prevPage >= 0) {
                pages.add(prevPage)
            }
        }
        
        return pages
    }
    
    /**
     * Clean up pages that are too far from current
     */
    private fun cleanupCache(currentPage: Int) {
        val currentCache = _preloadedPages.value
        
        if (currentCache.size > maxCacheSize) {
            val pagesToKeep = currentCache.filter { (pageIndex, _) ->
                kotlin.math.abs(pageIndex - currentPage) <= preloadRange
            }
            
            // Recycle bitmaps that are being removed
            currentCache.forEach { (pageIndex, bitmap) ->
                if (!pagesToKeep.containsKey(pageIndex)) {
                    bitmap.recycle()
                }
            }
            
            _preloadedPages.value = pagesToKeep
        }
    }
    
    /**
     * Get preloaded page if available
     */
    fun getPreloadedPage(pageIndex: Int): Bitmap? {
        return _preloadedPages.value[pageIndex]
    }
    
    /**
     * Clear all preloaded pages
     */
    fun clearCache() {
        _preloadedPages.value.values.forEach { it.recycle() }
        _preloadedPages.value = emptyMap()
        currentPreloadJob?.cancel()
    }
}
