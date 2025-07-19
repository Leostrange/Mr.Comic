package com.example.core.data.repository

import android.content.Context
import android.graphics.Bitmap
import com.example.feature.reader.domain.BookReaderFactory
import android.net.Uri
import androidx.documentfile.provider.DocumentFile
import dagger.hilt.android.qualifiers.ApplicationContext
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
    private val bookReaderFactory: BookReaderFactory,
) : CoverExtractor {

    override suspend fun extractAndSaveCover(uri: Uri): String? {
        return runCatching {
            val reader = bookReaderFactory.create(uri)
            var bitmap: Bitmap? = null
            try {
                if (reader.open(uri) > 0) {
                    bitmap = reader.renderPage(0)
                }
            } finally {
                reader.close()
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