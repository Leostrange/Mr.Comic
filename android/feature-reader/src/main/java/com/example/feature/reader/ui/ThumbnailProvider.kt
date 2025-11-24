package com.example.feature.reader.ui

import android.graphics.Bitmap
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import com.example.core.reader.preload.PagePreloader
import com.example.core.reader.cache.BitmapCache
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Provider for comic page thumbnails with lazy caching
 * Uses PagePreloader and ReaderViewModel for efficient thumbnail generation
 */
@Singleton
class ThumbnailProvider @Inject constructor(
    private val pagePreloader: PagePreloader,
    private val bitmapCache: BitmapCache
) {
    
    // Reference to ReaderViewModel for loading thumbnails (set externally)
    var readerViewModel: ReaderViewModel? = null
    
    /**
     * Get thumbnail for a specific page
     * Returns cached thumbnail if available, otherwise triggers load via ReaderViewModel
     */
    suspend fun getThumbnail(pageIndex: Int): Bitmap? {
        return try {
            // Try to get from preloader's thumbnail cache first
            pagePreloader.getThumbnailFromCache(pageIndex)
        } catch (e: Exception) {
            android.util.Log.w("ThumbnailProvider", "Failed to get thumbnail from preloader for page $pageIndex", e)
            null
        }
    }
    
    /**
     * Load thumbnail on cache miss
     * Called from UI when thumbnail is not in cache
     */
    suspend fun loadThumbnailOnCacheMiss(pageIndex: Int, uri: String?): Bitmap? {
        return try {
            if (uri == null) return null
            
            val thumbnailKey = bitmapCache.createThumbnailKey(uri, pageIndex)
            val cached = bitmapCache.getThumbnail(thumbnailKey)
            if (cached != null) {
                return cached
            }
            
            // Try to load using ReaderViewModel
            val viewModel = readerViewModel
            if (viewModel != null) {
                val bitmap = viewModel.loadThumbnail(pageIndex)
                if (bitmap != null) {
                    bitmapCache.putThumbnail(thumbnailKey, bitmap)
                    android.util.Log.d("ThumbnailProvider", "Loaded and cached thumbnail for page $pageIndex")
                }
                return bitmap
            }
            
            null
        } catch (e: Exception) {
            android.util.Log.w("ThumbnailProvider", "Failed to load thumbnail for page $pageIndex", e)
            null
        }
    }
    
    /**
     * Preload thumbnails for a range of pages
     */
    fun preloadThumbnails(startPage: Int, endPage: Int) {
        pagePreloader.preloadThumbnails(startPage, endPage)
    }
}

/**
 * Composable function to get thumbnail provider
 */
@Composable
fun rememberThumbnailProvider(): ThumbnailProvider {
    return remember { 
        ThumbnailProvider(
            com.example.core.reader.preload.PagePreloader(
                com.example.core.reader.cache.BitmapCache()
            )
        ) 
    }
}

/**
 * Composable function to get thumbnail with loading state
 */
@Composable
fun rememberThumbnail(
    pageIndex: Int,
    thumbnailProvider: ThumbnailProvider
): Bitmap? {
    val coroutineScope = rememberCoroutineScope()
    var thumbnail by remember(pageIndex) { mutableStateOf<Bitmap?>(null) }
    
    LaunchedEffect(pageIndex) {
        coroutineScope.launch {
            thumbnail = thumbnailProvider.getThumbnail(pageIndex)
        }
    }
    
    return thumbnail
}