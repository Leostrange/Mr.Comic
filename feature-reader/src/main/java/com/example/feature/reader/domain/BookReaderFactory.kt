package com.example.feature.reader.domain

import android.content.Context
import android.net.Uri
import androidx.documentfile.provider.DocumentFile
import com.example.feature.reader.data.CachingBookReader
import com.example.feature.reader.data.CbrReader
import com.example.feature.reader.data.DjvuReader
import com.example.feature.reader.data.CbzReader
import com.example.feature.reader.data.PdfReader
import com.example.feature.reader.data.cache.BitmapCache
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import javax.inject.Inject

/**
 * Factory for creating [BookReader] instances based on file type.
 */
class BookReaderFactory @Inject constructor(
    @ApplicationContext private val context: Context,
    private val bitmapCache: BitmapCache
) {
    /**
     * Creates a [BookReader] for the given file.
     *
     * @param file The file to create a reader for.
     * @return A [BookReader] instance suitable for the file type.
     * @throws UnsupportedFormatException if the file format is not supported.
     */
    fun create(uri: Uri): BookReader {
        val fileName = DocumentFile.fromSingleUri(context, uri)?.name ?: ""
        val delegateReader = when (fileName.substringAfterLast('.', "").lowercase()) {
            "cbr" -> CbrReader(context)
            "cbz" -> CbzReader(context)
            "pdf" -> PdfReader(context)
            "djvu", "djv" -> DjvuReader(context)
            else -> throw UnsupportedFormatException("Unsupported file format for: $fileName")
        }

        // Wrap the actual reader in the caching decorator
        return CachingBookReader(delegateReader, bitmapCache)
    }
}