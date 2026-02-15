package com.example.core.reader.domain

import android.content.Context
import android.net.Uri
import com.example.core.reader.data.CachingBookReader
import com.example.core.reader.data.CbrReader
import com.example.core.reader.data.CbrToCbzConverter
import com.example.core.reader.data.CbzReader
import com.example.core.reader.data.EpubReader
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
    private val thumbnailCache: ThumbnailCache,
    private val cbrToCbzConverter: CbrToCbzConverter
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
        android.util.Log.d(TAG, "🔥 DIAGNOSTIC: BookReaderFactory.create() called with URI: $uri")
        android.util.Log.d(TAG, "🔥 DIAGNOSTIC: URI scheme: ${uri.scheme}, path: ${uri.path}, lastPathSegment: ${uri.lastPathSegment}")
        
        // Clean up previous reader if exists
        try {
            currentReader?.let { reader ->
                android.util.Log.d(TAG, "🔥 DIAGNOSTIC: Closing previous reader: ${reader::class.simpleName}")
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
                // Сначала пытаемся получить имя через ContentResolver
                val name = try {
                    val cursor = context.contentResolver.query(uri, arrayOf(android.provider.OpenableColumns.DISPLAY_NAME), null, null, null)
                    cursor?.use { if (it.moveToFirst()) it.getString(0) else null }
                } catch (e: Exception) {
                    android.util.Log.w(TAG, "Failed to get display name for content URI", e)
                    null
                }
                android.util.Log.d(TAG, "🔥 Content URI display name: $name")
                
                // Если не получилось, пытаемся извлечь из lastPathSegment
                val ext = name?.substringAfterLast('.', "")?.lowercase() 
                    ?: uri.lastPathSegment?.substringAfterLast('.', "")?.lowercase()
                    ?: uri.path?.substringAfterLast('.', "")?.lowercase()
                    ?: ""
                
                android.util.Log.d(TAG, "🔥 Extracted extension: '$ext' from name='$name', lastPathSegment='${uri.lastPathSegment}', path='${uri.path}'")
                ext
            }
            else -> uri.lastPathSegment?.substringAfterLast('.', "")?.lowercase() ?: ""
        }
        
        android.util.Log.d(TAG, "🔥 DIAGNOSTIC: Creating reader for URI: $uri, extension: '$extension', scheme=${uri.scheme}")
        
        // Для CBR файлов проверяем сигнатуру файла, чтобы определить реальный формат
        val actualExtension = if (extension == "cbr" || extension == "rar") {
            try {
                val inputStream = context.contentResolver.openInputStream(uri)
                inputStream?.use { stream ->
                    val header = ByteArray(8)
                    val bytesRead = stream.read(header)
                    if (bytesRead >= 2) {
                        // ZIP signature: 50 4B 03 04 (PK)
                        if (header[0] == 0x50.toByte() && header[1] == 0x4B.toByte()) {
                            android.util.Log.d(TAG, "🔥 DIAGNOSTIC: File has .cbr extension but is actually a ZIP file - using CbzReader")
                            "cbz" // Автоматически используем CBZ для ZIP файлов
                        } else {
                            extension // Это действительно RAR файл
                        }
                    } else {
                        extension // Не удалось прочитать, используем расширение
                    }
                } ?: extension
            } catch (e: Exception) {
                android.util.Log.w(TAG, "Could not check file signature, using extension: ${e.message}")
                extension // В случае ошибки используем расширение
            }
        } else {
            extension
        }
        
        val delegateReader: MediaReader = when (actualExtension) {
            "cbr" -> {
                android.util.Log.d(TAG, "🔥 DIAGNOSTIC: ✅ Extension matches 'cbr' - Creating CbrReader")
                CbrReader(context, cbrToCbzConverter)
            }
            "rar" -> {
                android.util.Log.d(TAG, "🔥 DIAGNOSTIC: ✅ Extension matches 'rar' - Creating CbrReader")
                CbrReader(context, cbrToCbzConverter)
            }
            "cbz" -> {
                android.util.Log.d(TAG, "🔥 DIAGNOSTIC: ✅ Extension matches 'cbz' - Creating CbzReader")
                CbzReader(context)
            }
            "pdf" -> {
                android.util.Log.d(TAG, "Creating PDF reader")
                PdfReader(context, thumbnailCache)
            }
            "epub" -> {
                android.util.Log.d(TAG, "Creating EPUB reader")
                EpubReader(context)
            }
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
                        android.util.Log.e(TAG, "🔥 DIAGNOSTIC: ❌ Unsupported file format: extension='$extension' for uri: $uri")
                        android.util.Log.e(TAG, "🔥 DIAGNOSTIC: ❌ Available formats: cbr, rar, cbz, zip, pdf")
                        throw UnsupportedFormatException("Unsupported file format for: $uri (extension: $extension)")
                    }
                }
            }
        }

        // Wrap the actual reader in the caching decorator
        val cachedReader = CachingBookReader(delegateReader, bitmapCache)
        android.util.Log.d(TAG, "Created cached reader for $actualExtension file (original extension: $extension)")
        
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
