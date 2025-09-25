package com.example.core.reader.domain

import android.content.Context
import android.net.Uri
import com.example.core.reader.data.CachingBookReader
import com.example.core.reader.data.CbrReader
import com.example.core.reader.data.CbzReader
// import com.example.core.reader.data.EpubReader // Temporarily disabled
import com.example.core.reader.data.ImageSeqReader
import com.example.core.reader.data.PdfReader
// import com.example.core.reader.data.DjvuReader // Removed - missing library
import com.example.core.reader.data.cache.BitmapCache
import com.example.core.reader.data.cache.ThumbnailCache
import dagger.hilt.android.qualifiers.ApplicationContext

/**
 * Factory for creating [MediaReader] instances based on file type.
 */
class BookReaderFactory(
    @ApplicationContext private val context: Context,
    private val bitmapCache: BitmapCache,
    private val thumbnailCache: ThumbnailCache
) {
    
    companion object {
        private const val TAG = "BookReaderFactory"
    }
    
    private var currentReader: MediaReader? = null
    private var currentUri: Uri? = null
    
    /**
     * Creates a [MediaReader] for the given URI.
     *
     * @param uri The URI of the file to create a reader for.
     * @return A [MediaReader] instance suitable for the file type.
     * @throws UnsupportedFormatException if the file format is not supported.
     */
    fun create(uri: Uri): MediaReader {
        // Clean up previous reader if exists
        try {
            currentReader?.let { reader ->
                kotlinx.coroutines.runBlocking {
                    reader.close()
                }
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing previous reader: ${e.message}")
        }
        
        // Определяем расширение надёжно для file:// и content:// URI
        val extension = when (uri.scheme) {
            "file" -> uri.lastPathSegment?.substringAfterLast('.', "")?.lowercase() ?: ""
            "content" -> {
                val name = try {
                    val cursor = context.contentResolver.query(uri, arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)
                    cursor?.use { if (it.moveToFirst()) it.getString(0) else null }
                } catch (e: Exception) {
                    android.util.Log.w(TAG, "Failed to get display name for content URI", e)
                    null
                }
                android.util.Log.d(TAG, "Content URI display name: $name")
                name?.substringAfterLast('.', "")?.lowercase() ?: ""
            }
            else -> uri.lastPathSegment?.substringAfterLast('.', "")?.lowercase() ?: ""
        }
        
        android.util.Log.d(TAG, "Creating reader for URI: $uri, extension: $extension, scheme=${uri.scheme}")
        
        val delegateReader: MediaReader = when (extension) {
            "cbr" -> {
                android.util.Log.d(TAG, "Creating CBR reader")
                CbrReader(context)
            }
            "rar" -> {
                android.util.Log.d(TAG, "Creating CBR reader for .rar (treated as CBR)")
                CbrReader(context)
            }
            "cbz" -> {
                android.util.Log.d(TAG, "Creating CBZ reader")
                CbzReader(context)
            }
            "pdf" -> {
                android.util.Log.d(TAG, "Creating PDF reader")
                PdfReader(context, thumbnailCache)
            }
            // "epub" -> {
            //     android.util.Log.d(TAG, "Creating EPUB reader")
            //     // EpubReader(context) // Temporarily disabled due to compilation issues
            //     throw UnsupportedFormatException("EPUB support temporarily disabled")
            // }
            // Handle directories as image sequences
            "" -> {
                android.util.Log.d(TAG, "Creating Image Sequence reader for directory")
                ImageSeqReader(context)
            }
            // "djvu", "djv" -> {
            //     android.util.Log.d(TAG, "Creating DJVU reader")
            //     DjvuReader(context)
            // } // DJVU support disabled - missing library
            else -> {
                // Try to determine type by MIME type or content
                val mimeType = context.contentResolver.getType(uri)
                when {
                    mimeType?.startsWith("image/") == true -> {
                        android.util.Log.d(TAG, "Creating Image Sequence reader for image directory")
                        ImageSeqReader(context)
                    }
                    extension == "zip" -> {
                        android.util.Log.d(TAG, "Treating ZIP as CBZ")
                        CbzReader(context)
                    }
                    else -> {
                        android.util.Log.e(TAG, "Unsupported file format: $extension for uri: $uri")
                        throw UnsupportedFormatException("Unsupported file format for: $uri")
                    }
                }
            }
        }

        // Wrap the actual reader in the caching decorator
        val cachedReader = CachingBookReader(delegateReader, bitmapCache)
        android.util.Log.d(TAG, "Created cached reader for $extension file")
        
        // Store current reader and URI
        currentReader = cachedReader
        currentUri = uri
        
        return cachedReader
    }
    
    /**
     * Gets the current reader instance.
     * @return The current MediaReader or null if none exists.
     */
    fun getCurrentReader(): MediaReader? = currentReader
    
    /**
     * Gets the current URI.
     * @return The current URI or null if none exists.
     */
    fun getCurrentUri(): Uri? = currentUri
    
    fun releaseResources() {
        android.util.Log.d(TAG, "Releasing factory resources")
        try {
            currentReader?.let { reader ->
                kotlinx.coroutines.runBlocking {
                    reader.close()
                }
            }
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing reader: ${e.message}")
        }
        currentReader = null
        currentUri = null
    }
}