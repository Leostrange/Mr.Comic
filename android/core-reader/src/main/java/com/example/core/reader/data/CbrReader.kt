package com.example.core.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import com.example.core.reader.domain.MediaReader
import com.example.core.reader.domain.MediaMetadata
import com.example.core.reader.domain.MediaType
import com.example.core.reader.domain.UnsupportedFormatException
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import java.io.ByteArrayOutputStream
import java.io.File
import javax.inject.Inject

/**
 * CBR/RAR Reader implementation using JunRAR library
 */
class CbrReader @Inject constructor(
    private val context: Context
) : MediaReader {
    
    companion object {
        private const val TAG = "CbrReader"
        private val SUPPORTED_IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "gif", "bmp", "webp")
    }
    
    private var archive: Archive? = null
    private var imageFiles: List<FileHeader> = emptyList()
    private var currentUri: Uri? = null
    private var pageCount: Int = 0
    private var metadata: MediaMetadata? = null
    private var isOpen: Boolean = false
    
    override suspend fun open(context: Context, uri: Uri): Result<MediaMetadata> {
        return try {
            android.util.Log.d(TAG, "Opening CBR file: $uri")
            
            // Close previous archive if exists
            close()
            
            currentUri = uri
            
            // Open the RAR archive
            val inputStream = context.contentResolver.openInputStream(uri)
                ?: throw UnsupportedFormatException("Cannot open input stream for: $uri")
            
            // Create temporary file for JunRAR (it requires File access)
            val tempFile = File.createTempFile("cbr_temp", ".rar", context.cacheDir)
            tempFile.deleteOnExit()
            
            inputStream.use { input ->
                tempFile.outputStream().use { output ->
                    input.copyTo(output)
                }
            }
            
            archive = Archive(tempFile)
            
            // Get all image files from the archive
            imageFiles = archive!!.fileHeaders
                .filter { header ->
                    !header.isDirectory && 
                    header.fileName.substringAfterLast('.', "").lowercase() in SUPPORTED_IMAGE_EXTENSIONS
                }
                .sortedBy { it.fileName.lowercase() }
            
            android.util.Log.d(TAG, "Found ${imageFiles.size} image files in CBR archive")
            
            if (imageFiles.isEmpty()) {
                throw UnsupportedFormatException("No supported image files found in CBR archive")
            }
            
            pageCount = imageFiles.size
            
            // Create metadata
            metadata = MediaMetadata(
                title = uri.lastPathSegment,
                pageCount = pageCount,
                type = MediaType.CBR,
                fileSize = tempFile.length()
            )
            
            isOpen = true
            Result.success(metadata!!)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to open CBR file: $uri", e)
            close()
            Result.failure(UnsupportedFormatException("Failed to open CBR file: ${e.message}"))
        }
    }
    
    override suspend fun renderPage(
        pageIndex: Int,
        maxWidth: Int,
        maxHeight: Int,
        scale: Float
    ): Result<Bitmap> {
        return try {
            val currentArchive = archive ?: return Result.failure(IllegalStateException("Archive not open"))
            
            if (pageIndex < 0 || pageIndex >= imageFiles.size) {
                android.util.Log.w(TAG, "Page index $pageIndex out of bounds (0-${imageFiles.size - 1})")
                return Result.failure(IndexOutOfBoundsException("Page index out of bounds"))
            }
            
            val fileHeader = imageFiles[pageIndex]
            android.util.Log.d(TAG, "Rendering page $pageIndex: ${fileHeader.fileName}")
            
            // Extract file data from archive
            val outputStream = ByteArrayOutputStream()
            currentArchive.extractFile(fileHeader, outputStream)
            val imageData = outputStream.toByteArray()
            
            if (imageData.isEmpty()) {
                android.util.Log.w(TAG, "No data extracted for page $pageIndex")
                return Result.failure(IllegalStateException("No data extracted for page"))
            }
            
            // Decode bitmap from extracted data
            val bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.size)
            
            if (bitmap == null) {
                android.util.Log.w(TAG, "Failed to decode bitmap for page $pageIndex")
                return Result.failure(IllegalStateException("Failed to decode bitmap"))
            }
            
            android.util.Log.d(TAG, "Successfully rendered page $pageIndex (${bitmap.width}x${bitmap.height})")
            Result.success(bitmap)
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to render page $pageIndex", e)
            Result.failure(e)
        }
    }
    
    override fun getPageCount(): Int? {
        return if (isOpen) pageCount else null
    }
    
    override fun getMetadata(): MediaMetadata? {
        return metadata
    }
    
    override suspend fun close() {
        try {
            archive?.close()
            android.util.Log.d(TAG, "CBR archive closed")
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing CBR archive", e)
        } finally {
            archive = null
            imageFiles = emptyList()
            currentUri = null
            pageCount = 0
            metadata = null
            isOpen = false
        }
    }
    
    override fun isOpen(): Boolean {
        return isOpen
    }
}