package com.example.engine.formats.epub

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import java.io.File

/**
 * Ensures EPUB files on unreadable external paths are copied into app cache before open.
 */
object EpubReadablePath {

    private const val CACHE_DIR = "epub_cache"

    fun ensureLocal(context: Context, rawPath: String): String? {
        val normalized = rawPath.removePrefix("file://")
        val source = File(normalized)
        if (!source.exists()) return null
        if (source.canRead()) return source.absolutePath
        return cacheToAppDir(context, source)?.absolutePath
    }

    fun ensureLocalFromContentUri(context: Context, contentUri: String): String? {
        if (!contentUri.startsWith("content://")) return null
        return cacheContentUriToAppDir(context, Uri.parse(contentUri))?.absolutePath
    }

    internal fun cacheToAppDir(context: Context, source: File): File? {
        if (!source.exists()) return null
        val dir = File(context.cacheDir, CACHE_DIR).apply { mkdirs() }
        val cacheFile = File(
            dir,
            "epub_file_${source.absolutePath.hashCode()}_${source.length()}.epub"
        )
        if (cacheFile.exists() &&
            cacheFile.length() == source.length() &&
            cacheFile.canRead()
        ) {
            return cacheFile
        }
        val tempCopy = File(dir, "${cacheFile.name}.part")
        runCatching { if (tempCopy.exists()) tempCopy.delete() }
        val copied = runCatching {
            when {
                source.canRead() -> source.inputStream().use { input ->
                    tempCopy.outputStream().use { output -> input.copyTo(output) }
                }
                else -> context.contentResolver.openInputStream(Uri.fromFile(source))?.use { input ->
                    tempCopy.outputStream().use { output -> input.copyTo(output) }
                } ?: runCatching {
                    FileInputStreamCompat.open(source)?.use { input ->
                        tempCopy.outputStream().use { output -> input.copyTo(output) }
                    }
                }.getOrNull()
            }
            tempCopy.exists() && tempCopy.length() > 0L
        }.getOrDefault(false)
        if (!copied) {
            runCatching { tempCopy.delete() }
            return null
        }
        if (cacheFile.exists()) runCatching { cacheFile.delete() }
        val finalized = tempCopy.renameTo(cacheFile)
        if (!finalized) {
            runCatching { tempCopy.copyTo(cacheFile, overwrite = true) }.getOrNull() ?: return null
            runCatching { tempCopy.delete() }
        }
        return cacheFile
    }

    internal fun cacheContentUriToAppDir(context: Context, uri: Uri): File? {
        val dir = File(context.cacheDir, CACHE_DIR).apply { mkdirs() }
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
        val cacheFile = File(dir, "epub_content_${uri.hashCode()}_${expectedSize ?: 0L}.$extension")
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
        if (cacheFile.exists()) runCatching { cacheFile.delete() }
        val finalized = tempCopy.renameTo(cacheFile)
        if (!finalized) {
            runCatching { tempCopy.copyTo(cacheFile, overwrite = true) }.getOrNull() ?: return null
            runCatching { tempCopy.delete() }
        }
        return cacheFile
    }

    private object FileInputStreamCompat {
        fun open(source: File) = runCatching { source.inputStream() }.getOrNull()
    }
}
