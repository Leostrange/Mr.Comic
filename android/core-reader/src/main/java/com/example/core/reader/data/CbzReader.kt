package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import com.example.core.reader.streaming.StreamingExtractor
import com.example.core.reader.utils.BitmapUtils
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * A [MediaReader] implementation for reading CBZ (ZIP archive) files.
 */
class CbzReader(
    private val context: Context
) : MediaReader {
    
    private var streamingExtractor: StreamingExtractor? = null
    private var pageCount: Int = 0
    private var currentUri: Uri? = null
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> = withContext(Dispatchers.IO) {
        try {
            cleanup()
            currentUri = uri
            
            // Используем стриминговую распаковку
            streamingExtractor = StreamingExtractor(context)
            val result = streamingExtractor!!.openArchive(uri)
            
            if (result.isSuccess) {
                val imageFiles = result.getOrNull() ?: emptyList()
                if (imageFiles.isEmpty()) {
                    throw IllegalStateException("В CBZ файле не найдено изображений")
                }
                
                pageCount = imageFiles.size
                android.util.Log.d("CbzReader", "Opened CBZ with $pageCount pages using streaming extraction")
                
                // Create metadata
                metadata = MediaMetadata(
                    title = uri.lastPathSegment,
                    pageCount = pageCount,
                    type = MediaType.CBZ
                )
                
                isOpen = true
                Result.success(metadata!!)
            } else {
                throw result.exceptionOrNull() ?: IllegalStateException("Failed to open CBZ archive")
            }
        } catch (e: Exception) {
            cleanup()
            Result.failure(when (e) {
                is IllegalStateException -> e
                else -> IllegalStateException("Ошибка при открытии CBZ файла: ${e.message}", e)
            })
        }
    }
    
    override fun getPageCount(): Int? = if (isOpen) pageCount else null
    
    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        if (!isOpen) {
            return Result.failure(IllegalStateException("CBZ reader is not open"))
        }
        
        val extractor = streamingExtractor ?: return Result.failure(IllegalStateException("Streaming extractor not initialized"))
        
        if (pageIndex < 0 || pageIndex >= pageCount) {
            android.util.Log.w("CbzReader", "Invalid page index: $pageIndex (total pages: $pageCount)")
            return Result.failure(IndexOutOfBoundsException("Invalid page index: $pageIndex"))
        }
        
        return try {
            // Используем стриминговую распаковку для получения файла
            val fileResult = extractor.getFile(pageIndex)
            
            if (fileResult.isSuccess) {
                val file = fileResult.getOrNull()!!
                // Используем оптимизированное декодирование
                val bitmap = BitmapUtils.decodeSampledBitmapFromFile(
                    file.absolutePath,
                    maxWidth,
                    maxHeight,
                    Bitmap.Config.RGB_565 // Экономим память
                )
                if (bitmap != null) {
                    Result.success(bitmap)
                } else {
                    Result.failure(IllegalStateException("Failed to decode bitmap"))
                }
            } else {
                android.util.Log.w("CbzReader", "Failed to extract file for page $pageIndex: ${fileResult.exceptionOrNull()?.message}")
                Result.failure(fileResult.exceptionOrNull() ?: IllegalStateException("Failed to extract file"))
            }
        } catch (e: Exception) {
            android.util.Log.e("CbzReader", "Error rendering page $pageIndex: ${e.message}", e)
            Result.failure(e)
        }
    }
    
    override fun getMetadata(): MediaMetadata? {
        return metadata
    }
    
    override suspend fun close() {
        cleanup()
    }
    
    override fun isOpen(): Boolean {
        return isOpen
    }
    
    private fun cleanup() {
        streamingExtractor?.cleanup()
        streamingExtractor = null
        pageCount = 0
        currentUri = null
        metadata = null
        isOpen = false
    }
    
    private fun isImageFile(fileName: String): Boolean {
        val lowercaseName = fileName.lowercase()
        return lowercaseName.endsWith(".jpg") ||
            lowercaseName.endsWith(".jpeg") ||
            lowercaseName.endsWith(".png") ||
            lowercaseName.endsWith(".webp") ||
            lowercaseName.endsWith(".bmp") ||
            lowercaseName.endsWith(".gif")
    }
}