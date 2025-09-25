package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.provider.DocumentsContract
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext

/**
 * A [MediaReader] implementation for reading sequences of images from directories.
 * Supports both file:// URIs and content:// URIs for directories.
 */
class ImageSeqReader(
    private val context: Context
) : MediaReader {
    
    private var imageUris: List<Uri> = emptyList()
    private var pageCount: Int = 0
    private var directoryUri: Uri? = null
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> = withContext(Dispatchers.IO) {
        try {
            cleanup()
            directoryUri = uri
            
            val images = when (uri.scheme) {
                "file" -> loadFromFileDirectory(uri)
                "content" -> loadFromContentDirectory(uri)
                else -> throw IllegalArgumentException("Unsupported URI scheme: ${uri.scheme}")
            }
            
            if (images.isEmpty()) {
                throw IllegalStateException("В папке не найдено изображений")
            }
            
            imageUris = images.sortedBy { it.toString() }
            pageCount = imageUris.size
            
            // Create metadata
            metadata = MediaMetadata(
                title = uri.lastPathSegment,
                pageCount = pageCount,
                type = MediaType.IMAGE_SEQ
            )
            
            isOpen = true
            Result.success(metadata!!)
        } catch (e: Exception) {
            cleanup()
            Result.failure(when (e) {
                is IllegalStateException -> e
                else -> IllegalStateException("Ошибка при открытии папки с изображениями: ${e.message}", e)
            })
        }
    }
    
    private fun loadFromFileDirectory(uri: Uri): List<Uri> {
        val directory = java.io.File(uri.path ?: return emptyList())
        if (!directory.exists() || !directory.isDirectory) {
            return emptyList()
        }
        
        return directory.listFiles { file ->
            file.isFile && isImageFile(file.name)
        }?.map { Uri.fromFile(it) } ?: emptyList()
    }
    
    private fun loadFromContentDirectory(uri: Uri): List<Uri> {
        val images = mutableListOf<Uri>()
        
        try {
            val childrenUri = DocumentsContract.buildChildDocumentsUriUsingTree(
                uri, DocumentsContract.getTreeDocumentId(uri)
            )
            
            context.contentResolver.query(
                childrenUri,
                arrayOf(
                    DocumentsContract.Document.COLUMN_DOCUMENT_ID,
                    DocumentsContract.Document.COLUMN_DISPLAY_NAME,
                    DocumentsContract.Document.COLUMN_MIME_TYPE
                ),
                null, null, null
            )?.use { cursor ->
                while (cursor.moveToNext()) {
                    val documentId = cursor.getString(0)
                    val displayName = cursor.getString(1)
                    val mimeType = cursor.getString(2)
                    
                    if (mimeType?.startsWith("image/") == true || isImageFile(displayName)) {
                        val documentUri = DocumentsContract.buildDocumentUriUsingTree(uri, documentId)
                        images.add(documentUri)
                    }
                }
            }
        } catch (e: Exception) {
            android.util.Log.w("ImageSeqReader", "Failed to load from content directory: ${e.message}")
        }
        
        return images
    }
    
    override fun getPageCount(): Int? = if (isOpen) pageCount else null
    
    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        if (!isOpen) {
            return Result.failure(IllegalStateException("Image sequence reader is not open"))
        }
        
        if (pageIndex < 0 || pageIndex >= imageUris.size) {
            android.util.Log.w("ImageSeqReader", "Invalid page index: $pageIndex (total pages: ${imageUris.size})")
            return Result.failure(IndexOutOfBoundsException("Invalid page index: $pageIndex"))
        }
        
        val imageUri = imageUris[pageIndex]
        return try {
            context.contentResolver.openInputStream(imageUri)?.use { inputStream ->
                val bitmap = BitmapFactory.decodeStream(inputStream)
                Result.success(bitmap)
            } ?: Result.failure(IllegalStateException("Failed to open input stream"))
        } catch (e: Exception) {
            android.util.Log.e("ImageSeqReader", "Error rendering page $pageIndex: ${e.message}", e)
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
        imageUris = emptyList()
        pageCount = 0
        directoryUri = null
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