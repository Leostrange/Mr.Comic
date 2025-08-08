package com.example.core.data.repository

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import androidx.documentfile.provider.DocumentFile
import dagger.hilt.android.qualifiers.ApplicationContext
import com.example.core.reader.pdf.PdfReaderFactory
import java.io.File
import java.io.FileOutputStream
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

    override suspend fun extractAndSaveCover(uri: Uri): String? {
        return runCatching {
            val fileName = DocumentFile.fromSingleUri(context, uri)?.name ?: ""
            val extension = fileName.substringAfterLast('.', "").lowercase()

            var bitmap: Bitmap? = null

            if (extension == "pdf") {
                val pdfFactory = PdfReaderFactory()
                val openResult = pdfFactory.openPdfWithFallback(context, uri)
                val pdfReader = openResult.getOrNull()
                if (pdfReader != null) {
                    val renderResult = pdfReader.renderPage(0)
                    bitmap = renderResult.getOrNull()
                    pdfReader.close()
                }
            } else {
                // Non-PDF formats: cover extraction not implemented here
                bitmap = null
            }

            bitmap?.let {
                val coversDir = File(context.cacheDir, "covers")
                if (!coversDir.exists()) coversDir.mkdirs()
                val name = DocumentFile.fromSingleUri(context, uri)?.name
                    ?.substringBeforeLast('.') ?: uri.toString().hashCode().toString()
                val coverFile = File(coversDir, "$name.jpg")
                FileOutputStream(coverFile).use { out ->
                    it.compress(Bitmap.CompressFormat.JPEG, 85, out)
                }
                coverFile.absolutePath
            }
        }.getOrNull()
    }
}