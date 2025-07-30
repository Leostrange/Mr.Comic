package com.example.feature.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import android.graphics.BitmapFactory
import com.example.feature.reader.domain.BookReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import java.io.File

/**
 * A [BookReader] implementation for reading CBZ (ZIP archive) files.
 */
class CbzReader(
    private val context: Context
) : BookReader {

    private var tempDir: File? = null
    private var pagePaths: List<String> = emptyList()
    private var tempComicFile: File? = null

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            try {
                val cacheDir = context.cacheDir

                // Create a unique temporary directory for this comic to avoid conflicts
                tempDir = File(cacheDir, "reader_cbz_${uri.toString().hashCode()}_${System.currentTimeMillis()}").apply {
                    mkdirs()
                }

                // Copy content from URI to a temporary file because Zip4j works with Files
                val createdTempFile = File.createTempFile("temp_cbz_", ".cbz", cacheDir)
                tempComicFile = createdTempFile
                
                context.contentResolver.openInputStream(uri)?.use { inputStream ->
                    createdTempFile.outputStream().use { outputStream ->
                        inputStream.copyTo(outputStream)
                    }
                } ?: throw IllegalStateException("Cannot open input stream from URI")

                // Validate file exists and is not empty
                if (!createdTempFile.exists() || createdTempFile.length() == 0L) {
                    throw IllegalStateException("CBZ файл пустой или поврежден")
                }

                val zipFile = ZipFile(createdTempFile)
                if (zipFile.isEncrypted) {
                    throw IllegalStateException("Зашифрованные CBZ файлы не поддерживаются")
                }

                // Filter for image files, extract them, and collect their paths
                val extractedImagePaths = zipFile.fileHeaders
                    .filter { !it.isDirectory && isImageFile(it.fileName) }
                    .mapNotNull { fileHeader ->
                        try {
                            val currentTempDir = tempDir ?: throw IllegalStateException("Temp directory is null")
                            zipFile.extractFile(fileHeader, currentTempDir.absolutePath)
                            File(currentTempDir, fileHeader.fileName.substringAfterLast(File.separator)).absolutePath
                        } catch (e: Exception) {
                            // Log the error but continue with other files
                            android.util.Log.w("CbzReader", "Failed to extract ${fileHeader.fileName}: ${e.message}")
                            null
                        }
                    }

                if (extractedImagePaths.isEmpty()) {
                    throw IllegalStateException("В CBZ файле не найдено изображений")
                }

                // Sort pages alphabetically to ensure correct order
                pagePaths = extractedImagePaths.sorted()
                pagePaths.size
            } catch (e: Exception) {
                // Clean up on error
                cleanup()
                throw when (e) {
                    is IllegalStateException -> e
                    else -> IllegalStateException("Ошибка при открытии CBZ файла: ${e.message}", e)
                }
            }
        }
    }

    override fun renderPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= pagePaths.size) {
            android.util.Log.w("CbzReader", "Invalid page index: $pageIndex (total pages: ${pagePaths.size})")
            return null
        }
        
        val path = pagePaths[pageIndex]
        return runCatching { 
            val bitmap = BitmapFactory.decodeFile(path)
            if (bitmap == null) {
                android.util.Log.w("CbzReader", "Failed to decode bitmap from: $path")
            }
            bitmap
        }.getOrElse { e ->
            android.util.Log.e("CbzReader", "Error rendering page $pageIndex: ${e.message}", e)
            null
        }
    }

    override fun close() {
        cleanup()
    }

    private fun cleanup() {
        try {
            tempDir?.deleteRecursively()
        } catch (e: Exception) {
            android.util.Log.w("CbzReader", "Failed to delete temp directory: ${e.message}")
        }
        tempDir = null
        
        try {
            tempComicFile?.delete()
        } catch (e: Exception) {
            android.util.Log.w("CbzReader", "Failed to delete temp file: ${e.message}")
        }
        tempComicFile = null
        
        pagePaths = emptyList()
    }

    private fun isImageFile(fileName: String): Boolean {
        val lowercaseName = fileName.lowercase()
        return lowercaseName.endsWith(".jpg") ||
            lowercaseName.endsWith(".jpeg") ||
            lowercaseName.endsWith(".png") ||
            lowercaseName.endsWith(".webp") ||
            lowercaseName.endsWith(".bmp")
    }
}