package com.example.feature.reader.data

import android.graphics.Bitmap
import android.net.Uri
import com.example.feature.reader.data.cache.BitmapCache
import com.example.feature.reader.domain.BookReader

/**
 * A decorator for [BookReader] that adds a bitmap caching layer.
 *
 * @param delegate The actual book reader to delegate rendering to.
 * @param cache The singleton bitmap cache.
 */
class CachingBookReader(
    private val delegate: BookReader,
    private val cache: BitmapCache
) : BookReader {

    private lateinit var bookId: String
    
    companion object {
        private const val TAG = "CachingBookReader"
    }

    override suspend fun open(uri: Uri): Int {
        android.util.Log.d(TAG, "Opening book with caching: $uri")
        // Use the URI as a unique identifier for the book
        this.bookId = uri.toString()
        val pageCount = delegate.open(uri)
        android.util.Log.d(TAG, "Book opened, page count: $pageCount")
        return pageCount
    }

    override fun getPageCount(): Int = delegate.getPageCount()

    override fun renderPage(pageIndex: Int): Bitmap? {
        val key = "$bookId:$pageIndex"
        
        // Try to get from cache first
        val cachedBitmap = cache.getBitmap(key)
        if (cachedBitmap != null) {
            android.util.Log.d(TAG, "Cache hit for page $pageIndex")
            return cachedBitmap
        }
        
        // Not in cache, render from delegate
        android.util.Log.d(TAG, "Cache miss for page $pageIndex, rendering...")
        val renderedBitmap = delegate.renderPage(pageIndex)
        
        if (renderedBitmap != null) {
            android.util.Log.d(TAG, "Successfully rendered page $pageIndex, caching...")
            cache.putBitmap(key, renderedBitmap)
        } else {
            android.util.Log.w(TAG, "Failed to render page $pageIndex")
        }
        
        return renderedBitmap
    }

    override fun close() {
        android.util.Log.d(TAG, "Closing caching book reader")
        delegate.close()
    }
}