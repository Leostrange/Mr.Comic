package com.example.feature.reader.data

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import android.graphics.BitmapFactory
import com.example.feature.reader.domain.BookReader
import com.github.junrar.api.Archive
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream

/**
 * A [BookReader] implementation for reading CBR (RAR archive) files.
 */
class CbrReader(
    private val context: Context
) : BookReader {

    private var tempDir: File? = null
    private var pagePaths: List<String> = emptyList()
    private var tempComicFile: File? = null
    private var pageCount: Int = 0

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            try {
                val cacheDir = context.cacheDir

                // Create a unique temporary directory for this comic to avoid conflicts
                tempDir = File(cacheDir, "reader_cbr_${uri.toString().hashCode()}_${System.currentTimeMillis()}").apply {
                    mkdirs()
                }

                // Copy content from URI to a temporary file because junrar works with Files
                val createdTempFile = File.createTempFile("temp_cbr_", ".cbr", cacheDir)
                tempComicFile = createdTempFile
                
                context.contentResolver.openInputStream(uri)?.use { inputStream ->
                    createdTempFile.outputStream().use { outputStream ->
                        inputStream.copyTo(outputStream)
                    }
                } ?: throw IllegalStateException("Cannot open input stream from URI")

                // Validate file exists and is not empty
                if (!createdTempFile.exists() || createdTempFile.length() == 0L) {
                    throw IllegalStateException("CBR файл пустой или поврежден")
                }

                val extractedImagePaths = mutableListOf<String>()
                var archive: Archive? = null
                try {
                    archive = Archive(createdTempFile)
                    if (archive.isEncrypted) {
                        throw IllegalStateException("Зашифрованные CBR файлы не поддерживаются")
                    }

                    var header = archive.nextFileHeader()
                    while (header != null) {
                        if (!header.isDirectory && isImageFile(header.fileName)) {
                            try {
                                val extractedFile = File(tempDir, header.fileName.substringAfterLast('/'))
                                FileOutputStream(extractedFile).use { os ->
                                    archive.extractFile(header, os)
                                }
                                if (extractedFile.exists() && extractedFile.length() > 0) {
                                    extractedImagePaths.add(extractedFile.absolutePath)
                                }
                            } catch (e: Exception) {
                                // Log the error but continue with other files
                                android.util.Log.w("CbrReader", "Failed to extract ${header.fileName}: ${e.message}")
                            }
                        }
                        header = archive.nextFileHeader()
                    }
                } finally {
                    archive?.close()
                }

                if (extractedImagePaths.isEmpty()) {
                    throw IllegalStateException("В CBR файле не найдено изображений")
                }

                // Sort pages alphabetically to ensure correct order
                pagePaths = extractedImagePaths.sorted()
                pageCount = pagePaths.size
                pageCount
            } catch (e: Exception) {
                // Clean up on error
                cleanup()
                throw when (e) {
                    is IllegalStateException -> e
                    else -> IllegalStateException("Ошибка при открытии CBR файла: ${e.message}", e)
                }
            }
        }
    }

    override fun getPageCount(): Int = pageCount

    override fun renderPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= pagePaths.size) {
            android.util.Log.w("CbrReader", "Invalid page index: $pageIndex (total pages: ${pagePaths.size})")
            return null
        }
        
        val path = pagePaths[pageIndex]
        return runCatching { 
            val bitmap = BitmapFactory.decodeFile(path)
            if (bitmap == null) {
                android.util.Log.w("CbrReader", "Failed to decode bitmap from: $path")
            }
            bitmap
        }.getOrElse { e ->
            android.util.Log.e("CbrReader", "Error rendering page $pageIndex: ${e.message}", e)
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
            android.util.Log.w("CbrReader", "Failed to delete temp directory: ${e.message}")
        }
        tempDir = null
        
        try {
            tempComicFile?.delete()
        } catch (e: Exception) {
            android.util.Log.w("CbrReader", "Failed to delete temp file: ${e.message}")
        }
        tempComicFile = null
        
        pagePaths = emptyList()
        pageCount = 0
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