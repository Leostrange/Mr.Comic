package io.leostrange.mrcomic.engine.formats.epub

import android.content.Context
import android.net.Uri
import android.provider.OpenableColumns
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import java.io.File

/**
 * Manages ZIP file lifecycle for EPUB reading.
 *
 * Handles opening ZIP files from various sources (file paths, content URIs),
 * caching content URIs to local files, and cleaning up temporary files.
 *
 * Extracted from EpubFormatReader to reduce its size.
 */
internal class EpubArchiveManager(
    private val context: Context,
    private val path: String,
    private val logW: (String, String, Throwable?) -> Unit,
    private val logE: (String, String, Throwable?) -> Unit
) {
    private val lock = Any()
    private var tempFile: File? = null
    private var zipFile: ZipFile? = null

    /**
     * Returns the current [ZipFile], opening it if necessary.
     * Thread-safe via [lock].
     */
    fun ensureZip(): ZipFile? {
        synchronized(lock) {
            zipFile?.let { return it }
            return try {
                val filePath = when {
                    path.startsWith("content://") -> {
                        val uri = Uri.parse(path)
                        val tmp = ensureCachedContentUriFile(uri) ?: return null
                        tempFile = tmp
                        tmp.absolutePath
                    }
                    else -> ensureReadableZipPath(path) ?: return null
                }
                ZipFile(filePath).also { zipFile = it }
            } catch (e: Exception) {
                logE("EpubFormatReader", "Failed to open EPUB: $path", e)
                tempFile?.let { f ->
                    if (f.exists()) {
                        logW("EpubFormatReader", "Deleting potentially corrupt temp EPUB: ${f.absolutePath}", null)
                        f.delete()
                        tempFile = null
                    }
                }
                null
            }
        }
    }

    /** Closes the ZIP file and deletes any temporary files. */
    fun close() {
        synchronized(lock) {
            try { zipFile?.close() } catch (_: Exception) {}
            zipFile = null
            tempFile?.let { runCatching { it.delete() } }
            tempFile = null
        }
    }

    private fun ensureReadableZipPath(rawPath: String): String? {
        val normalized = rawPath.removePrefix("file://")
        val source = File(normalized)
        if (source.exists() && source.canRead()) return source.absolutePath
        return ensureCachedExternalFile(source)
    }

    private fun ensureCachedExternalFile(source: File): String? {
        val cached = EpubReadablePath.cacheToAppDir(context, source) ?: return null
        tempFile = cached
        return cached.absolutePath
    }

    private fun ensureCachedContentUriFile(uri: Uri): File? {
        val dir = File(context.cacheDir, "epub_cache").apply { mkdirs() }
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
        val cacheFile = File(dir, "epub_${uri.hashCode()}_${expectedSize ?: 0L}.$extension")
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
