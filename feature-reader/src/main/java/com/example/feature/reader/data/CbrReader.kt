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

    override suspend fun open(uri: Uri): Int {
        return withContext(Dispatchers.IO) {
            val cacheDir = context.cacheDir

            // Create a unique temporary directory for this comic to avoid conflicts
            tempDir = File(cacheDir, "reader_cbr_${uri.toString().hashCode()}_${System.currentTimeMillis()}").apply {
                mkdirs()
            }

            // Copy content from URI to a temporary file because junrar works with Files
            tempComicFile = File.createTempFile("temp_cbr_", ".cbr", cacheDir)
            context.contentResolver.openInputStream(uri)?.use { inputStream ->
                tempComicFile!!.outputStream().use { outputStream ->
                    inputStream.copyTo(outputStream)
                }
            }

            val extractedImagePaths = mutableListOf<String>()
            var archive: Archive? = null
            try {
                archive = Archive(tempComicFile)
                if (archive.isEncrypted) {
                    // For now, we don't support encrypted archives.
                    throw IllegalStateException("Encrypted CBR files are not supported.")
                }

                var header = archive.nextFileHeader()
                while (header != null) {
                    if (!header.isDirectory && isImageFile(header.fileName)) {
                        val extractedFile = File(tempDir, header.fileName.substringAfterLast('/'))
                        FileOutputStream(extractedFile).use { os ->
                            archive.extractFile(header, os)
                        }
                        extractedImagePaths.add(extractedFile.absolutePath)
                    }
                    header = archive.nextFileHeader()
                }
            } finally {
                archive?.close()
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