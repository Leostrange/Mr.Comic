package com.example.feature.cbr

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import com.example.core.reader.domain.BookReader
import com.example.core.reader.domain.UnsupportedFormatException
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileInputStream
import javax.inject.Inject

/**
 * CBR/RAR Reader implementation using JunRAR library
 */
class CbrReaderImpl @Inject constructor(
    private val context: Context
) : BookReader {
    
    companion object {
        private const val TAG = "CbrReaderImpl"
        private val SUPPORTED_IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "gif", "bmp", "webp")
    }
    
    private var archive: Archive? = null
    private var imageFiles: List<FileHeader> = emptyList()
    private var currentUri: Uri? = null
    
    override suspend fun open(uri: Uri): Int = withContext(Dispatchers.IO) {
        try {
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
            
            imageFiles.size
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to open CBR file: $uri", e)
            close()
            throw UnsupportedFormatException("Failed to open CBR file: ${e.message}")
        }
    }
    
    override suspend fun renderPage(pageIndex: Int): Bitmap? = withContext(Dispatchers.IO) {
        try {
            val currentArchive = archive ?: return@withContext null
            
            if (pageIndex < 0 || pageIndex >= imageFiles.size) {
                android.util.Log.w(TAG, "Page index $pageIndex out of bounds (0-${imageFiles.size - 1})")
                return@withContext null
            }
            
            val fileHeader = imageFiles[pageIndex]
            android.util.Log.d(TAG, "Rendering page $pageIndex: ${fileHeader.fileName}")
            
            // Extract file data from archive
            val outputStream = ByteArrayOutputStream()
            currentArchive.extractFile(fileHeader, outputStream)
            val imageData = outputStream.toByteArray()
            
            if (imageData.isEmpty()) {
                android.util.Log.w(TAG, "No data extracted for page $pageIndex")
                return@withContext null
            }
            
            // Decode bitmap from extracted data
            val bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.size)
            
            if (bitmap == null) {
                android.util.Log.w(TAG, "Failed to decode bitmap for page $pageIndex")
                return@withContext null
            }
            
            android.util.Log.d(TAG, "Successfully rendered page $pageIndex (${bitmap.width}x${bitmap.height})")
            bitmap
            
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Failed to render page $pageIndex", e)
            null
        }
    }
    
    override fun close() {
        try {
            archive?.close()
            android.util.Log.d(TAG, "CBR archive closed")
        } catch (e: Exception) {
            android.util.Log.w(TAG, "Error closing CBR archive", e)
        } finally {
            archive = null
            imageFiles = emptyList()
            currentUri = null
        }
    }
}
