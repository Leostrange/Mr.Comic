package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.reader.data.cache.BitmapCache
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.data.PdfReader
import kotlinx.coroutines.launch
import kotlinx.coroutines.delay

/**
 * A decorator for [MediaReader] that adds a bitmap caching layer.
 *
 * @param delegate The actual media reader to delegate rendering to.
 * @param cache The singleton bitmap cache.
 */
class CachingBookReader(
    private val delegate: MediaReader,
    private val cache: BitmapCache
) : MediaReader {

    private lateinit var bookId: String
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    private var lastRenderedPage: Int = -1

    companion object {
        private const val TAG = "CachingBookReader"
        private const val PRELOAD_THRESHOLD = 2 // Предзагружать, если до конца страницы осталось 2 страницы
    }

    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> {
        android.util.Log.d(TAG, "Opening book with caching: $uri")
        // Use the URI as a unique identifier for the book
        this.bookId = uri.toString()
        
        val result = delegate.open(context, uri)
        if (result.isSuccess) {
            this.metadata = result.getOrThrow()
            this.isOpen = true
            android.util.Log.d(TAG, "Book opened, page count: ${metadata?.pageCount}")
        } else {
            android.util.Log.e(TAG, "Failed to open book: ${result.exceptionOrNull()?.message}")
        }
        
        return result
    }

    override fun getPageCount(): Int? = if (isOpen) delegate.getPageCount() else null

    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        if (!isOpen) {
            return Result.failure(IllegalStateException("Caching reader is not open"))
        }
        
        val key = "$bookId:$pageIndex"
        
        // Try to get from cache first
        val cachedBitmap = cache.getBitmap(key)
        if (cachedBitmap != null) {
            android.util.Log.d(TAG, "Cache hit for page $pageIndex")
            return Result.success(cachedBitmap)
        }
        
        // Not in cache, render from delegate
        android.util.Log.d(TAG, "Cache miss for page $pageIndex, rendering...")
        val result = delegate.renderPage(pageIndex, maxWidth, maxHeight, scale)

        if (result.isSuccess) {
            val renderedBitmap = result.getOrThrow()
            android.util.Log.d(TAG, "Successfully rendered page $pageIndex, caching...")
            cache.putBitmap(key, renderedBitmap)

            // Предзагружаем миниатюры для PDF, если это PdfReader
            if (delegate is PdfReader) {
                lastRenderedPage = pageIndex
                preloadNeighboringThumbnails(delegate, pageIndex)
            }
        } else {
            android.util.Log.w(TAG, "Failed to render page $pageIndex: ${result.exceptionOrNull()?.message}")
        }

        return result
    }

    override fun getMetadata(): MediaMetadata? {
        return metadata
    }

    override suspend fun close() {
        android.util.Log.d(TAG, "Closing caching book reader")
        delegate.close()
        metadata = null
        isOpen = false
    }
    
    override fun isOpen(): Boolean {
        return isOpen
    }

    /**
     * Предзагружает миниатюры для соседних страниц PDF
     */
    private suspend fun preloadNeighboringThumbnails(pdfReader: PdfReader, currentPage: Int) {
        val pageCount = getPageCount() ?: return

        // Не предзагружаем, если это не нужно
        if (pageCount <= PRELOAD_THRESHOLD) return

        // Предзагружаем миниатюры для следующих страниц
        val startPage = currentPage + 1
        val endPage = minOf(pageCount - 1, currentPage + PRELOAD_THRESHOLD)

        if (startPage > endPage) return

        android.util.Log.d(TAG, "Preloading thumbnails for pages $startPage to $endPage")

        for (i in startPage..endPage) {
            try {
                val result = pdfReader.getThumbnail(i)
                if (result.isSuccess) {
                    android.util.Log.d(TAG, "Preloaded thumbnail for page $i")
                } else {
                    android.util.Log.w(TAG, "Failed to preload thumbnail for page $i: ${result.exceptionOrNull()?.message}")
                }

                // Небольшая пауза между запросами
                delay(20)
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Exception preloading thumbnail for page $i: ${e.message}")
            }
        }
    }
}