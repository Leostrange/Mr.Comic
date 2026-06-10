package com.example.engine.epub.readium

import android.net.Uri
import android.provider.OpenableColumns
import com.example.core.model.BookSource
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import javax.inject.Inject
import javax.inject.Singleton
import android.content.Context

data class ReadiumResolvedAsset(
    val file: File,
    val cleanupOnClose: Boolean
)

@Singleton
class ReadiumAssetFactory @Inject constructor(
    @ApplicationContext private val context: Context
) {

    suspend fun resolve(source: BookSource): ReadiumResolvedAsset {
        return when (source) {
            is BookSource.FilePath -> ReadiumResolvedAsset(
                file = File(source.path),
                cleanupOnClose = false
            )
            is BookSource.ContentUri -> {
                val uri = Uri.parse(source.uri)
                ReadiumResolvedAsset(
                    file = ensureCachedContentUriFile(uri)
                        ?: error("Failed to cache EPUB content URI for Readium: ${source.uri}"),
                    cleanupOnClose = true
                )
            }
        }
    }

    private fun ensureCachedContentUriFile(uri: Uri): File? {
        val dir = File(context.cacheDir, "readium_epub_cache").apply { mkdirs() }
        val expectedSize = runCatching {
            context.contentResolver.openAssetFileDescriptor(uri, "r")
                ?.use { descriptor -> descriptor.length.takeIf { it > 0L } }
        }.getOrNull()
        val displayName = runCatching {
            context.contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
                ?.use { cursor ->
                    if (cursor.moveToFirst()) {
                        cursor.getString(cursor.getColumnIndexOrThrow(OpenableColumns.DISPLAY_NAME))
                    } else {
                        null
                    }
                }
        }.getOrNull()
        val extension = displayName
            ?.substringAfterLast('.', "epub")
            ?.lowercase()
            ?.takeIf { it.isNotBlank() }
            ?: "epub"
        val cacheFile = File(dir, "readium_epub_${uri.hashCode()}_${expectedSize ?: 0L}.$extension")
        if (cacheFile.exists() &&
            cacheFile.length() > 0L &&
            (expectedSize == null || cacheFile.length() == expectedSize)
        ) {
            return cacheFile
        }

        val tempCopy = File(dir, "${cacheFile.name}.part")
        runCatching { if (tempCopy.exists()) tempCopy.delete() }
        val copied = context.contentResolver.openInputStream(uri)?.use { input ->
            tempCopy.outputStream().use { output -> input.copyTo(output) }
            true
        } ?: false
        if (!copied || tempCopy.length() == 0L || (expectedSize != null && tempCopy.length() != expectedSize)) {
            runCatching { tempCopy.delete() }
            return null
        }
        if (cacheFile.exists()) {
            runCatching { cacheFile.delete() }
        }
        val finalized = tempCopy.renameTo(cacheFile)
        if (!finalized) {
            runCatching { tempCopy.copyTo(cacheFile, overwrite = true) }.getOrNull() ?: return null
            runCatching { tempCopy.delete() }
        }
        return cacheFile
    }
}
