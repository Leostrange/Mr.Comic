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
            val cacheDir = context.cacheDir

            // Create a unique temporary directory for this comic to avoid conflicts
            tempDir = File(cacheDir, "reader_cbz_${uri.toString().hashCode()}_${System.currentTimeMillis()}").apply {
                mkdirs()
            }

            // Copy content from URI to a temporary file because Zip4j works with Files
            tempComicFile = File.createTempFile("temp_cbz_", ".cbz", cacheDir)
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                tempComicFile!!.outputStream().use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            }

            val zipFile = ZipFile(tempComicFile)
            if (zipFile.isEncrypted) {
                // For now, we don't support encrypted archives.
                throw IllegalStateException("Encrypted CBZ files are not supported.")
            }

            // Filter for image files, extract them, and collect their paths
            val extractedImagePaths = zipFile.fileHeaders
                .filter { !it.isDirectory && isImageFile(it.fileName) }
                .map { fileHeader ->
                    zipFile.extractFile(fileHeader, tempDir!!.absolutePath)
                    File(tempDir, fileHeader.fileName.substringAfterLast(File.separator)).absolutePath
                }

            // Sort pages alphabetically to ensure correct order
            pagePaths = extractedImagePaths.sorted()
            pagePaths.size
        }
    }

    override fun renderPage(pageIndex: Int): Bitmap? {
        if (pageIndex < 0 || pageIndex >= pagePaths.size) {
            return null
        }
        val path = pagePaths[pageIndex]
        return runCatching { BitmapFactory.decodeFile(path) }.getOrNull()
    }

    override fun close() {
        tempDir?.deleteRecursively()
        tempDir = null
        tempComicFile?.delete()
        tempComicFile = null
    }

    private fun isImageFile(fileName: String): Boolean {
        return fileName.lowercase().endsWith(".jpg") ||
            fileName.lowercase().endsWith(".jpeg") ||
            fileName.lowercase().endsWith(".png") ||
            fileName.lowercase().endsWith(".webp")
    }
}