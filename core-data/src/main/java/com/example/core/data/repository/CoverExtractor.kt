package com.example.core.data.repository

import android.content.Context
import android.graphics.Bitmap
import com.example.core.reader.domain.BookReaderFactory
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import java.io.FileOutputStream
import javax.inject.Inject

interface CoverExtractor {
    /**
     * Extracts the cover of a comic file, saves it to the app's cache,
     * and returns the path to the saved image.
     *
     * @param file The comic file.
     * @return The absolute path to the cached cover image, or null on failure.
     */
    suspend fun extractAndSaveCover(file: File): String?
}

class CoverExtractorImpl @Inject constructor(
    @ApplicationContext private val context: Context,
    private val bookReaderFactory: BookReaderFactory,
) : CoverExtractor {

    override suspend fun extractAndSaveCover(file: File): String? {
        return runCatching {
            val reader = bookReaderFactory.create(file)
            var bitmap: Bitmap? = null
            try {
                if (reader.open(file) > 0) {
                    bitmap = reader.renderPage(0)
                }
            } finally {
                reader.close()
            }

            bitmap?.let {
                val coversDir = File(context.cacheDir, "covers")
                if (!coversDir.exists()) coversDir.mkdirs()
                val coverFile = File(coversDir, "${file.nameWithoutExtension}.jpg")
                FileOutputStream(coverFile).use { out ->
                    it.compress(Bitmap.CompressFormat.JPEG, 85, out)
                }
                coverFile.absolutePath
            }
        }.getOrNull()
    }
}