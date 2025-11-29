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
        private const val TAG = "CbzReader"
        
        /**
         * Ensure URI permission with proper fallback handling
         */
        private fun ensureUriPermission(context: Context, uri: Uri): Boolean {
            return try {
                // Check if we already have permission
                val hasPermission = context.contentResolver.persistedUriPermissions
                    .any { it.uri == uri && it.isReadPermission }
                    
                if (!hasPermission) {
                    context.contentResolver.takePersistableUriPermission(
                        uri, 
                        android.content.Intent.FLAG_GRANT_READ_URI_PERMISSION
                    )
                    android.util.Log.d(TAG, "Persistable permission granted for URI: $uri")
                } else {
                    android.util.Log.d(TAG, "Already have permission for URI: $uri")
                }
                true
            } catch (e: SecurityException) {
                android.util.Log.e(TAG, "Could not take persistable permission: ${e.message}", e)
                false
            }
        }
    }
    
    private val memoryManager = com.example.core.reader.utils.MemoryManager.getInstance()
    
    private var streamingExtractor: StreamingExtractor? = null
    private var pageCount: Int = 0
    private var currentUri: Uri? = null
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    private var tempFile: File? = null
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> = withContext(Dispatchers.IO) {
        try {
            android.util.Log.d(TAG, "Opening CBZ file: $uri")
            cleanup()
            currentUri = uri
            
            // Check and request permissions for content:// URIs
            if (uri.scheme == "content") {
                if (!ensureUriPermission(context, uri)) {
                    return@withContext Result.failure(
                        SecurityException("Permission denied. Please re-select the file using file picker.")
                    )
                }
            }
            
            // Create a temporary file for the CBZ
            tempFile = File.createTempFile("cbz_", ".cbz", context.cacheDir)
            
            // Copy the content to the temporary file
            val inputStream = try {
                context.contentResolver.openInputStream(uri)
            } catch (e: SecurityException) {
                android.util.Log.e(TAG, "SecurityException when opening URI: $uri", e)
                return@withContext Result.failure(
                    UnsupportedFormatException("Permission Denial: reading ${uri.authority} uri $uri requires that you obtain access using ACTION_OPEN_DOCUMENT or related APIs")
                )
            }
            
            if (inputStream == null) {
                android.util.Log.e(TAG, "Failed to open input stream for URI: $uri")
                return@withContext Result.failure(
                    UnsupportedFormatException("Не удалось открыть файл. Проверьте разрешения на чтение файлов.")
                )
            }
            
            android.util.Log.d(TAG, "Input stream opened successfully")
            
            inputStream.use { input ->
                tempFile?.outputStream()?.use { output ->
                    val bytesCount = input.copyTo(output)
                    android.util.Log.d(TAG, "Copied $bytesCount bytes to temp file")
                }
            }
            
            android.util.Log.d(TAG, "Temp file created: ${tempFile?.exists()}, size: ${tempFile?.length()} bytes")
            
            // Initialize the streaming extractor with the temp file
            val extractor = try {
                StreamingExtractor(context)
            } catch (e: Exception) {
                android.util.Log.e(TAG, "Failed to initialize StreamingExtractor", e)
                return@withContext Result.failure(
                    UnsupportedFormatException("Failed to initialize extractor: ${e.message}")
                )
            }
            streamingExtractor = extractor
            
            val result = extractor.openArchive(Uri.fromFile(tempFile))
            
            if (result.isSuccess) {
                val imageFiles = result.getOrNull() ?: emptyList()
                if (imageFiles.isEmpty()) {
                    throw UnsupportedFormatException("В архиве нет изображений. Проверьте содержимое файла.")
                }
                
                pageCount = imageFiles.size
                if (pageCount <= 0) {
                    throw UnsupportedFormatException("В архиве нет изображений. Проверьте содержимое файла.")
                }
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
        
        // Generate a unique cache key for this page
        val cacheKey = "${currentUri?.toString() ?: ""}_$pageIndex"
        
        // Try to get from cache first
        memoryManager.getBitmap(cacheKey)?.let { cachedBitmap ->
            if (!cachedBitmap.isRecycled) {
                android.util.Log.d("CbzReader", "Cache hit for page $pageIndex")
                return@withContext Result.success(cachedBitmap)
            }
        }
        
        return@withContext try {
            // Use streaming extraction to get the file
            val fileResult = extractor.getFile(pageIndex)
            
            if (fileResult.isSuccess) {
                val file = fileResult.getOrNull()!!
                
                // Use optimized decoding with memory management
                val options = BitmapFactory.Options().apply {
                    inJustDecodeBounds = true
                    inPreferredConfig = Bitmap.Config.RGB_565
                }
                
                // First decode with inJustDecodeBounds=true to check dimensions
                BitmapFactory.decodeFile(file.absolutePath, options)
                
                // Calculate inSampleSize
                options.inSampleSize = BitmapUtils.calculateInSampleSize(
                    options,
                    maxWidth,
                    maxHeight
                )
                
                // Decode bitmap with inSampleSize set
                options.inJustDecodeBounds = false
                
                var bitmap: Bitmap? = null
                var retryCount = 0
                val maxRetries = 2
                
                while (bitmap == null && retryCount < maxRetries) {
                    try {
                        // Используем улучшенный декодер с поддержкой EXIF
                        bitmap = com.example.core.reader.utils.BitmapUtils.decodeBitmapFromFileWithExif(
                            file.absolutePath,
                            maxWidth,
                            maxHeight,
                            options.inPreferredConfig
                        )
                        
                        if (bitmap == null && retryCount == 0) {
                            // First try failed, try with ARGB_8888
                            options.inPreferredConfig = Bitmap.Config.ARGB_8888
                            retryCount++
                        } else if (bitmap == null) {
                            break
                        }
                    } catch (e: OutOfMemoryError) {
                        // Clear cache and try again
                        memoryManager.clearCache()
                        System.gc()
                        retryCount++
                    } catch (e: Exception) {
                        android.util.Log.e("CbzReader", "Error decoding bitmap: ${e.message}")
                        retryCount++
                    }
                }
                
                bitmap?.let { 
                    // Add to cache
                    memoryManager.putBitmap(cacheKey, it)
                    android.util.Log.d("CbzReader", "Successfully rendered page $pageIndex (${it.width}x${it.height})")
                    Result.success(it)
                } ?: run {
                    android.util.Log.e("CbzReader", "Failed to decode page $pageIndex after $maxRetries attempts")
                    Result.failure(IllegalStateException("Failed to decode page $pageIndex"))
                }
            } else {
                val error = fileResult.exceptionOrNull() ?: IllegalStateException("Failed to extract file")
                android.util.Log.w("CbzReader", "Failed to extract file for page $pageIndex", error)
                Result.failure(error)
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
