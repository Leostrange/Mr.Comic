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
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Provider for comic page thumbnails with lazy caching
 * Uses PagePreloader for efficient thumbnail generation
 */
@Singleton
class ThumbnailProvider @Inject constructor(
    private val pagePreloader: PagePreloader
) {
    
    /**
     * Get thumbnail for a specific page
     * Returns cached thumbnail if available, otherwise triggers preload
     */
    suspend fun getThumbnail(pageIndex: Int): Bitmap? {
        return try {
            // Try to get from preloader's thumbnail cache
            pagePreloader.getThumbnailFromCache(pageIndex)
        } catch (e: Exception) {
            android.util.Log.w("ThumbnailProvider", "Failed to get thumbnail for page $pageIndex", e)
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