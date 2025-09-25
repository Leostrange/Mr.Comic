package com.example.core.data.repository

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.pdf.PdfRenderer
import android.net.Uri
import android.os.ParcelFileDescriptor
import androidx.documentfile.provider.DocumentFile
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipFile
import java.io.ByteArrayOutputStream
import com.github.junrar.Archive
import javax.inject.Inject

interface CoverExtractor {
    /**
     * Extracts the cover of a comic file identified by the given [Uri], saves
     * it to the app's cache and returns the path to the saved image.
     *
     * @param uri The URI of the comic file.
     * @return The absolute path to the cached cover image, or null on failure.
     */
    suspend fun extractAndSaveCover(uri: Uri): String?
}

class CoverExtractorImpl @Inject constructor(
    @ApplicationContext private val context: Context,
) : CoverExtractor {

    override suspend fun extractAndSaveCover(uri: Uri): String? = withContext(Dispatchers.IO) {
        try {
            // Определяем тип файла по URI
            val fileName = DocumentFile.fromSingleUri(context, uri)?.name ?: uri.lastPathSegment ?: ""

            val coverBitmap = when {
                fileName.endsWith(".cbz", ignoreCase = true) || fileName.endsWith(".zip", ignoreCase = true) -> {
                    // Для CBZ/ZIP файлов создаем временный файл для чтения
                    val tempFile = File.createTempFile("comic", ".${fileName.substringAfterLast('.')}").apply {
                        deleteOnExit()
                    }
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        tempFile.outputStream().use { output ->
                            input.copyTo(output)
                        }
                    }
                    extractCoverFromZip(tempFile)
                }
                fileName.endsWith(".cbr", ignoreCase = true) || fileName.endsWith(".rar", ignoreCase = true) -> {
                    val tempFile = File.createTempFile("comic", ".${fileName.substringAfterLast('.')}").apply {
                        deleteOnExit()
                    }
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        tempFile.outputStream().use { output -> input.copyTo(output) }
                    }
                    extractCoverFromCbr(tempFile)
                }
                fileName.endsWith(".pdf", ignoreCase = true) -> {
                    val tempFile = File.createTempFile("comic", ".pdf").apply { deleteOnExit() }
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        tempFile.outputStream().use { output -> input.copyTo(output) }
                    }
                    extractCoverFromPdf(tempFile)
                }
                else -> null
            }

            if (coverBitmap == null) {
                return@withContext null
            }

            // Сохраняем обложку в кэш
            val coversDir = File(context.cacheDir, "covers")
            if (!coversDir.exists()) {
                coversDir.mkdirs()
            }

            val coverFileName = "cover_${uri.hashCode()}.jpg"
            val coverFile = File(coversDir, coverFileName)

            FileOutputStream(coverFile).use { outputStream ->
                coverBitmap.compress(Bitmap.CompressFormat.JPEG, 85, outputStream)
            }

            coverFile.absolutePath
        } catch (e: Exception) {
            null
        }
    }

    private fun extractCoverFromZip(zipFile: File): Bitmap? {
        return try {
            ZipFile(zipFile).use { zip ->
                val entries = zip.entries().toList()
                    .filter { !it.isDirectory && (it.name.endsWith(".jpg", ignoreCase = true) || it.name.endsWith(".png", ignoreCase = true)) }
                    .sortedBy { it.name } // Берем первый файл изображения

                if (entries.isEmpty()) return null

                val entry = entries.first()
                val inputStream = zip.getInputStream(entry)

                BitmapFactory.decodeStream(inputStream)
            }
        } catch (e: Exception) {
            null
        }
    }

    private fun extractCoverFromCbr(rarFile: File): Bitmap? {
        return try {
            Archive(rarFile).use { archive ->
                val imageHeader = archive.fileHeaders
                    .filter { !it.isDirectory && it.fileName.lowercase().matches(".*\\.(jpe?g|png|webp)$".toRegex()) }
                    .sortedBy { it.fileName.lowercase() }
                    .firstOrNull() ?: return null

                val output = ByteArrayOutputStream()
                archive.extractFile(imageHeader, output)
                val bytes = output.toByteArray()
                if (bytes.isEmpty()) return null
                BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
            }
        } catch (_: Exception) {
            null
        }
    }

    private fun extractCoverFromPdf(pdfFile: File): Bitmap? {
        return try {
            ParcelFileDescriptor.open(pdfFile, ParcelFileDescriptor.MODE_READ_ONLY).use { descriptor ->
                PdfRenderer(descriptor).use { renderer ->
                    if (renderer.pageCount == 0) return null
                    renderer.openPage(0).use { page ->
                        val width = (page.width * 0.8f).toInt().coerceAtLeast(1)
                        val height = (page.height * 0.8f).toInt().coerceAtLeast(1)
                        Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888).also { bitmap ->
                            page.render(bitmap, null, null, PdfRenderer.Page.RENDER_MODE_FOR_DISPLAY)
                        }
                    }
                }
            }
        } catch (_: Exception) {
            null
        }
    }
}