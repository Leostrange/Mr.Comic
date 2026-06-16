package com.example.engine.epub.readium



import android.content.Context

import android.net.Uri

import android.provider.OpenableColumns

import android.util.Log

import com.example.core.model.BookSource

import dagger.hilt.android.qualifiers.ApplicationContext

import java.io.File

import javax.inject.Inject

import javax.inject.Singleton



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

            is BookSource.FilePath -> {

                if (source.path.startsWith("content://")) {

                    val uri = Uri.parse(source.path)

                    ReadiumResolvedAsset(

                        file = ensureCachedContentUriFile(uri)

                            ?: error("Failed to cache EPUB content URI for Readium: ${source.path}"),

                        cleanupOnClose = true

                    )

                } else {

                    val readable = ensureReadableFile(File(source.path))

                        ?: error("Failed to resolve readable EPUB path for Readium: ${source.path}")

                    ReadiumResolvedAsset(

                        file = readable,

                        cleanupOnClose = readable.absolutePath != File(source.path).absolutePath

                    )

                }

            }

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



    internal fun ensureReadableFile(source: File): File? {

        if (source.exists() && source.canRead()) return source

        return ensureCachedExternalFile(source)

    }



    private fun ensureCachedExternalFile(source: File): File? {

        if (!source.exists()) {

            Log.w(TAG, "EPUB source missing: ${source.absolutePath}")

            return null

        }

        val dir = File(context.cacheDir, "readium_epub_cache").apply { mkdirs() }

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

                }

            }

            tempCopy.exists() && tempCopy.length() > 0L

        }.getOrDefault(false)

        if (!copied) {

            runCatching { tempCopy.delete() }

            Log.w(TAG, "Failed to cache unreadable EPUB path: ${source.absolutePath}")

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

            Log.w(

                TAG,

                "cache copy failed copied=$copied len=${tempCopy.length()} expected=$expectedSize uri=$uri"

            )

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



    private companion object {

        private const val TAG = "ReadiumAssetFactory"

    }

}


