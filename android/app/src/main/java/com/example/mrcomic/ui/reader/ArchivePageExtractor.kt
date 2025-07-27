package com.example.mrcomic.ui.reader

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.File
import java.io.FileOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipFile
import com.github.junrar.Archive
import com.github.junrar.rarfile.FileHeader

class ArchivePageExtractor(private val context: Context, private val uri: Uri) : PageExtractor {

    private var zipFile: ZipFile? = null
    private var rarArchive: Archive? = null
    private var imageEntries: List<Any> = emptyList() // ZipEntry or FileHeader
    private var tempDir: File? = null

    init {
        try {
            val scheme = uri.scheme
            val file: File? = if (scheme == "content") {
                // For content URIs, copy to a temp file
                val inputStream = context.contentResolver.openInputStream(uri)
                val tempFile = File(context.cacheDir, "temp_comic_${System.currentTimeMillis()}.${uri.lastPathSegment?.substringAfterLast(".")}")
                inputStream?.use { input ->
                    FileOutputStream(tempFile).use { output ->
                        input.copyTo(output)
                    }
                }
                tempFile
            } else {
                uri.path?.let { File(it) }
            }

            if (file == null || !file.exists()) {
                Log.e(TAG, "File does not exist or could not be created: $uri")
                throw IllegalArgumentException("File does not exist or could not be created: $uri")
            }

            when (file.extension.lowercase()) {
                "cbz" -> {
                    zipFile = ZipFile(file)
                    imageEntries = zipFile?.entries()?.toList()?.filter { it.name.endsWith(".jpg", true) || it.name.endsWith(".png", true) || it.name.endsWith(".jpeg", true) }?.sortedBy { it.name } ?: emptyList()
                    Log.d(TAG, "CBZ initialized with ${imageEntries.size} entries.")
                }
                "cbr" -> {
                    tempDir = File(context.cacheDir, "cbr_cache_${file.nameWithoutExtension}_${System.currentTimeMillis()}")
                    if (!tempDir!!.exists()) {
                        tempDir!!.mkdirs()
                    }
                    rarArchive = Archive(file)
                    imageEntries = rarArchive?.fileHeaders?.filter { !it.isDirectory && (it.fileName.endsWith(".jpg", true) || it.fileName.endsWith(".png", true) || it.fileName.endsWith(".jpeg", true)) }?.sortedBy { it.fileName } ?: emptyList()

                    // Extract all images to tempDir
                    for (header in imageEntries) {
                        if (header is FileHeader) {
                            val outputFile = File(tempDir, header.fileName)
                            FileOutputStream(outputFile).use { os ->
                                rarArchive?.extractFile(header, os)
                            }
                        }
                    }
                    Log.d(TAG, "CBR initialized with ${imageEntries.size} entries. Extracted to ${tempDir?.absolutePath}")
                }
                else -> throw IllegalArgumentException("Unsupported archive type: ${file.extension}")
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error initializing ArchivePageExtractor for URI: $uri", e)
            close()
            throw e
        }
    }

    override fun getPageCount(): Int {
        return imageEntries.size
    }

    override suspend fun getPage(pageIndex: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (pageIndex < 0 || pageIndex >= pageCount) {
            Log.w(TAG, "Page index $pageIndex out of bounds (0..${pageCount - 1})")
            return@withContext null
        }

        return@withContext try {
            val entry = imageEntries[pageIndex]
            when (entry) {
                is ZipEntry -> {
                    val inputStream = zipFile?.getInputStream(entry)
                    BitmapFactory.decodeStream(inputStream)
                }
                is FileHeader -> {
                    val imageFile = File(tempDir, entry.fileName)
                    BitmapFactory.decodeFile(imageFile.absolutePath)
                }
                else -> null
            }
        } catch (e: Exception) {
            Log.e(TAG, "Exception getting page $pageIndex from archive", e)
            null
        }
    }

    override fun close() {
        try {
            zipFile?.close()
            rarArchive?.close()
            tempDir?.deleteRecursively() // Clean up temporary CBR extraction directory
            Log.d(TAG, "ArchivePageExtractor closed and temp files cleaned.")
        } catch (e: Exception) {
            Log.e(TAG, "Error closing ArchivePageExtractor", e)
        }
    }

    companion object {
        private const val TAG = "ArchivePageExtractor"
    }
}

