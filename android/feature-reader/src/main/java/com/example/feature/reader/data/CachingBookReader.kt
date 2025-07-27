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

    override suspend fun open(uri: Uri): Int {
        // Use the URI as a unique identifier for the book
        this.bookId = uri.toString()
        return delegate.open(uri)
    }

    override fun renderPage(pageIndex: Int): Bitmap? {
        val key = "$bookId:$pageIndex"
        return cache.getBitmap(key) ?: delegate.renderPage(pageIndex)?.also { newBitmap ->
            cache.putBitmap(key, newBitmap)
        }
    }

    override fun close() {
        delegate.close()
    }
}