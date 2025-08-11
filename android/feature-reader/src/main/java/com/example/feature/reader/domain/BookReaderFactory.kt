package com.example.feature.reader.domain

import android.content.Context
import android.net.Uri
import com.example.feature.reader.data.CachingBookReader
import com.example.feature.reader.data.CbrReader
// import com.example.feature.reader.data.DjvuReader // Removed - missing library
import com.example.feature.reader.data.CbzReader
import com.example.feature.reader.data.PdfReader
import com.example.feature.reader.data.cache.BitmapCache
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import javax.inject.Inject

/**
 * Factory for creating [BookReader] instances based on file type.
 */
class BookReaderFactory @Inject constructor(
    @ApplicationContext private val context: Context,
    private val bitmapCache: BitmapCache
) {
    
    companion object {
        private const val TAG = "BookReaderFactory"
    }
    
    private var currentReader: BookReader? = null
    private var currentUri: Uri? = null
    
    /**
     * Creates a [BookReader] for the given URI.
     *
     * @param uri The URI of the file to create a reader for.
     * @return A [BookReader] instance suitable for the file type.
     * @throws UnsupportedFormatException if the file format is not supported.
     */
    fun create(uri: Uri): BookReader {
        // Clean up previous reader if exists
        currentReader?.close()
        
        val fileName = uri.lastPathSegment ?: ""
        val extension = fileName.substringAfterLast('.', "").lowercase()
        
        android.util.Log.d(TAG, "Creating reader for URI: $uri, fileName: $fileName, extension: $extension")
        
        val delegateReader = when (extension) {
            "cbr" -> {
                android.util.Log.d(TAG, "Creating CBR reader")
                CbrReader(context)
            }
            "cbz" -> {
                android.util.Log.d(TAG, "Creating CBZ reader")
                CbzReader(context)
            }
            "pdf" -> {
                android.util.Log.d(TAG, "Creating PDF reader")
                PdfReader(context)
            }
            // "djvu", "djv" -> {
            //     android.util.Log.d(TAG, "Creating DJVU reader")
            //     DjvuReader(context)
            // } // DJVU support disabled - missing library
            else -> {
                android.util.Log.e(TAG, "Unsupported file format: $extension for file: $fileName")
                throw UnsupportedFormatException("Unsupported file format for: $fileName")
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
     * @return The current BookReader or null if none exists.
     */
    fun getCurrentReader(): BookReader? = currentReader
    
    /**
     * Gets the current URI.
     * @return The current URI or null if none exists.
     */
    fun getCurrentUri(): Uri? = currentUri
    
    fun releaseResources() {
        android.util.Log.d(TAG, "Releasing factory resources")
        currentReader?.close()
        currentReader = null
        currentUri = null
    }
}