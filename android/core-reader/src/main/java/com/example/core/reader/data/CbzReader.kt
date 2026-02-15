package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.LruCache
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import com.example.core.reader.domain.UnsupportedFormatException
import com.example.core.reader.streaming.StreamingExtractor
import com.example.core.reader.utils.BitmapUtils
import com.example.core.reader.cache.PageByteCache
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.ByteArrayOutputStream
import java.io.File
import java.util.*
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class CbzReader @Inject constructor(
    private val context: Context
) : MediaReader {

    companion object {
        private const val MAX_BYTE_CACHE_SIZE = 10 * 1024 * 1024 // 10MB - порог для использования byte cache
    }
    
    private val memoryManager = com.example.core.reader.utils.MemoryManager.getInstance()
    private val pageByteCache = PageByteCache.getInstance()
    
    private var streamingExtractor: StreamingExtractor? = null
    private var pageCount: Int = 0
    private var currentUri: Uri? = null
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    private var tempFile: File? = null
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> = withContext(Dispatchers.IO) {
        try {
            android.util.Log.d("CbzReader", "🔥 CBZ DIAGNOSTIC: Opening CBZ file: $uri")
            android.util.Log.d("CbzReader", "🔥 CBZ DIAGNOSTIC: Context: $context")
            android.util.Log.d("CbzReader", "🔥 CBZ DIAGNOSTIC: URI scheme: ${uri.scheme}, path: ${uri.path}")
            cleanup()
            currentUri = uri
            
            // Check and request permissions for content:// URIs
            if (uri.scheme == "content") {
                try {
                    // Try to take persistable permission
                    context.contentResolver.takePersistableUriPermission(
                        uri, 
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                    )
                    android.util.Log.d("CbzReader", "✅ CBZ DIAGNOSTIC: Persistable permission granted for URI: $uri")
                } catch (e: SecurityException) {
                    android.util.Log.w("CbzReader", "⚠️ CBZ DIAGNOSTIC: Could not take persistable permission: ${e.message}")
                    // Continue anyway, might work with temporary permission
                }
            }
            
            // Create a temporary file for the CBZ
            tempFile = File.createTempFile("cbz_temp_${System.currentTimeMillis()}", ".cbz", context.cacheDir).apply {
                deleteOnExit()
            }
            
            // Copy the content to the temporary file
            android.util.Log.d("CbzReader", "🔥 CBZ DIAGNOSTIC: Opening input stream for URI: $uri")
            val inputStream = try {
                context.contentResolver.openInputStream(uri)
            } catch (e: SecurityException) {
                android.util.Log.e("CbzReader", "❌ CBZ DIAGNOSTIC: SecurityException when opening URI: $uri", e)
                throw UnsupportedFormatException("Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs")
            }
            
            if (inputStream == null) {
                android.util.Log.e("CbzReader", "❌ CBZ DIAGNOSTIC: Failed to open input stream for URI: $uri")
                android.util.Log.e("CbzReader", "❌ CBZ DIAGNOSTIC: URI scheme: ${uri.scheme}, authority: ${uri.authority}")
                throw UnsupportedFormatException("Не удалось открыть файл. Проверьте разрешения на чтение файлов.")
            }
            
            android.util.Log.d("CbzReader", "✅ CBZ DIAGNOSTIC: Input stream opened successfully")
            android.util.Log.d("CbzReader", "📁 CBZ DIAGNOSTIC: Copying to temp file: ${tempFile?.absolutePath}")
            
            inputStream.use { input ->
                tempFile?.outputStream()?.use { output ->
                    val bytesCount = input.copyTo(output)
                    android.util.Log.d("CbzReader", "📦 CBZ DIAGNOSTIC: Copied $bytesCount bytes to temp file")
                }
            }
            
            android.util.Log.d("CbzReader", "✅ CBZ DIAGNOSTIC: Temp file created: ${tempFile?.exists()}, size: ${tempFile?.length()} bytes")
            
            // Initialize the streaming extractor with the temp file
            streamingExtractor = StreamingExtractor(context)
            val result = streamingExtractor!!.openArchive(Uri.fromFile(tempFile))
            
            if (result.isSuccess) {
                val imageFiles = result.getOrNull() ?: emptyList()
                if (imageFiles.isEmpty()) {
                    throw UnsupportedFormatException("В архиве нет изображений. Проверьте содержимое файла.")
                }
                
                pageCount = imageFiles.size
                android.util.Log.d("CbzReader", "Opened CBZ with $pageCount pages using streaming extraction")
                
                // Create metadata with file size
                metadata = MediaMetadata(
                    title = uri.lastPathSegment?.substringBeforeLast('.') ?: "Unknown",
                    pageCount = pageCount,
                    type = MediaType.CBZ,
                    fileSize = tempFile?.length() ?: 0
                )
                
                isOpen = true
                Result.success(metadata!!)
            } else {
                throw result.exceptionOrNull() ?: UnsupportedFormatException("Failed to open CBZ archive")
            }
        } catch (e: Exception) {
            cleanup()
            val message = when {
                e.message?.contains("Permission Denial") == true -> e.message!!
                e.message?.contains("SecurityException") == true -> "Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs"
                else -> "Архив CBZ повреждён или не поддерживается: ${e.message ?: "неизвестная ошибка"}"
            }
            val friendly = IllegalStateException(message, e)
            Result.failure(friendly)
        }
    }
    
    override fun getPageCount(): Int? = if (isOpen) pageCount else null
    
    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> = withContext(Dispatchers.IO) {
        if (!isOpen) {
            return@withContext Result.failure(IllegalStateException("CBZ reader is not open"))
        }
        
        val extractor = streamingExtractor ?: return@withContext Result.failure(
            IllegalStateException("Streaming extractor not initialized")
        )
        
        if (pageIndex < 0 || pageIndex >= pageCount) {
            android.util.Log.w("CbzReader", "Invalid page index: $pageIndex (total pages: $pageCount)")
            return@withContext Result.failure(IndexOutOfBoundsException("Invalid page index: $pageIndex"))
        }
        
        // Generate a unique cache key for this page that respects render parameters
        val cacheKey = createCacheKey(
            currentUri,
            pageIndex,
            maxWidth,
            maxHeight,
            scale
        )
        
        // Try to get from cache first
        memoryManager.getBitmap(cacheKey)?.let { cachedBitmap ->
            if (!cachedBitmap.isRecycled) {
                android.util.Log.d("CbzReader", "Cache hit for page $pageIndex")
                return@withContext Result.success(cachedBitmap)
            }
        }
        
        return@withContext try {
            val fileSize = extractor.getFileSize(pageIndex) ?: 0L
            val useByteCache = fileSize <= MAX_BYTE_CACHE_SIZE

            val imageData = if (useByteCache) {
                val rawCacheKey = PageByteCache.createKey(currentUri, pageIndex)
                pageByteCache.get(rawCacheKey) ?: run {
                    val streamResult = extractor.getInputStream(pageIndex)
                    if (streamResult.isFailure) {
                        val error = streamResult.exceptionOrNull() ?: IllegalStateException("Failed to get input stream")
                        android.util.Log.w("CbzReader", "Failed to get input stream for page $pageIndex", error)
                        return@withContext Result.failure(error)
                    }

                    val bytes = streamResult.getOrNull()!!.use { it.readBytes() }
                    android.util.Log.d("CbzReader", "Extracted page $pageIndex bytes=${bytes.size} (cached)")
                    if (bytes.isNotEmpty()) {
                        pageByteCache.put(rawCacheKey, bytes)
                    }
                    bytes
                }
            } else {
                // Для больших файлов декодировать напрямую из stream, без кэширования bytes
                android.util.Log.d("CbzReader", "Large file detected ($fileSize bytes), using streaming decode")
                null // Указывает, что нужно декодировать из stream
            }
            
            // Use optimized decoding with memory management
            val options = BitmapFactory.Options().apply {
                inJustDecodeBounds = true
                inPreferredConfig = Bitmap.Config.ARGB_8888 // Высокое качество
                inDither = false
                inScaled = false
                inPremultiplied = false
            }

            if (imageData != null) {
                // Декодирование из byte array (для маленьких файлов)
                BitmapFactory.decodeByteArray(imageData, 0, imageData.size, options)
            } else {
                // Декодирование из stream (для больших файлов)
                val streamResult = extractor.getInputStream(pageIndex)
                if (streamResult.isFailure) {
                    val error = streamResult.exceptionOrNull() ?: IllegalStateException("Failed to get input stream for bounds")
                    android.util.Log.w("CbzReader", "Failed to get input stream for bounds $pageIndex", error)
                    return@withContext Result.failure(error)
                }
                streamResult.getOrNull()!!.use { inputStream ->
                    BitmapFactory.decodeStream(inputStream, null, options)
                }
            }
            
            options.inSampleSize = BitmapUtils.calculateInSampleSize(
                options,
                maxWidth,
                maxHeight
            )
            options.inJustDecodeBounds = false
            
            var bitmap: Bitmap? = null
            var retryCount = 0
            val maxRetries = 2
            
            while (bitmap == null && retryCount < maxRetries) {
                try {
                    bitmap = if (imageData != null) {
                        // Декодирование из byte array (для маленьких файлов)
                        BitmapUtils.decodeBitmapWithExif(
                            imageData,
                            maxWidth,
                            maxHeight,
                            options.inPreferredConfig
                        )
                    } else {
                        // Декодирование из stream (для больших файлов)
                        val streamResult2 = extractor.getInputStream(pageIndex)
                        if (streamResult2.isFailure) {
                            val error = streamResult2.exceptionOrNull() ?: IllegalStateException("Failed to get input stream for decode")
                            android.util.Log.w("CbzReader", "Failed to get input stream for decode $pageIndex", error)
                            throw error
                        }
                        streamResult2.getOrNull()!!.use { inputStream ->
                            BitmapFactory.decodeStream(inputStream, null, options)
                        }
                    }

                    if (bitmap == null && retryCount == 0) {
                        options.inPreferredConfig = Bitmap.Config.ARGB_8888
                        retryCount++
                    } else if (bitmap == null) {
                        break
                    }
                } catch (e: OutOfMemoryError) {
                    memoryManager.clearCache()
                    System.gc()
                    retryCount++
                } catch (e: Exception) {
                    android.util.Log.e("CbzReader", "Error decoding bitmap: ${e.message}")
                    retryCount++
                }
            }
            
            bitmap?.let { 
                memoryManager.putBitmap(cacheKey, it)
                android.util.Log.d("CbzReader", "Successfully rendered page $pageIndex (${it.width}x${it.height})")
                Result.success(it)
            } ?: run {
                android.util.Log.e("CbzReader", "Failed to decode page $pageIndex after $maxRetries attempts")
                Result.failure(IllegalStateException("Failed to decode page $pageIndex"))
            }
        } catch (e: Exception) {
            android.util.Log.e("CbzReader", "Error rendering page $pageIndex", e)
            Result.failure(e)
        }
    }
    
    override fun getMetadata(): MediaMetadata? {
        return metadata
    }
    
    override fun isOpen(): Boolean {
        return isOpen
    }
    
    override suspend fun close() {
        cleanup()
    }
    
    private fun createCacheKey(
        uri: Uri?,
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): String {
        val uriHash = uri?.toString()?.hashCode() ?: 0
        val normalizedScale = String.format(java.util.Locale.US, "%.3f", scale)
        return "${uriHash}_${pageIndex}_${maxWidth.coerceAtLeast(1)}x${maxHeight.coerceAtLeast(1)}_$normalizedScale"
    }
    
    private fun cleanup() {
        try {
            // Clear memory cache
            memoryManager.clearCache()
            
            // Clean up extractor
            streamingExtractor?.cleanup()
            
            // Delete temporary file
            tempFile?.let {
                if (it.exists()) {
                    it.delete()
                }
            }
            
            android.util.Log.d("CbzReader", "CBZ reader closed and resources released")
        } catch (e: Exception) {
            android.util.Log.w("CbzReader", "Error during cleanup", e)
        } finally {
            streamingExtractor = null
            tempFile = null
            pageCount = 0
            currentUri = null
            metadata = null
            isOpen = false
        }
    }
    
    private fun isImageFile(fileName: String): Boolean {
        val lowercaseName = fileName.lowercase()
        return listOf(".jpg", ".jpeg", ".png", ".webp", ".bmp", ".gif")
            .any { lowercaseName.endsWith(it) }
    }
}
