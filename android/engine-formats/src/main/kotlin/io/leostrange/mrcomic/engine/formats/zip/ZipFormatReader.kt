package io.leostrange.mrcomic.engine.formats.zip

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.decodeBitmapFromStream
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import java.io.File

class ZipFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator
) : FormatReader {

    companion object {
        private const val TAG = "ZipFormatReader"
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private val lock = Any()
    private var tempFile: File? = null
    private var zipFile: ZipFile? = null

    private val imageEntries: List<String> by lazy {
        try {
            val zip = ensureZipFile() ?: return@lazy emptyList()
            val candidates = zip.fileHeaders
                .filter { !it.isDirectory }
                .map { it.fileName }
                .sorted()

            val byExtension = candidates.filter(::isImageEntry)
            if (byExtension.isNotEmpty()) {
                byExtension
            } else {
                candidates.filter { entryName -> isBitmapEntry(zip, entryName) }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list zip entries", e)
            emptyList()
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { imageEntries.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (index < 0 || index >= imageEntries.size) return@withContext null
        try {
            val zip = ensureZipFile() ?: return@withContext null
            val entryName = imageEntries[index]
            val header = zip.getFileHeader(entryName) ?: return@withContext null
            decodeBitmapFromStream(
                context = context,
                openStream = { zip.getInputStream(header) },
                deviceProfile = deviceProfile,
                bitmapAllocator = bitmapAllocator,
                renderQuality = renderQuality
            ) ?: run {
                zip.getInputStream(header).use { input ->
                    android.graphics.BitmapFactory.decodeStream(input)
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to decode page $index", e)
            null
        }
    }

    override fun close() {
        synchronized(lock) {
            try { zipFile?.close() } catch (_: Exception) {}
            zipFile = null
            tempFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp CBZ: ${file.absolutePath}", it) }
            }
            tempFile = null
        }
    }

    private fun ensureZipFile(): ZipFile? {
        synchronized(lock) {
            zipFile?.let { return it }
            return try {
                val resolvedPath = if (path.startsWith("content://")) {
                    val uri = Uri.parse(path)
                    val cacheDir = File(context.cacheDir, "cbz_cache").apply { mkdirs() }
                    val fileName = "cbz_${uri.hashCode()}_${System.currentTimeMillis()}.zip"
                    val cached = File(cacheDir, fileName)
                    context.contentResolver.openInputStream(uri)?.use { input ->
                        cached.outputStream().use { output -> input.copyTo(output) }
                    } ?: return null
                    tempFile = cached
                    cached.absolutePath
                } else {
                    path
                }
                ZipFile(resolvedPath).also { zipFile = it }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to open CBZ: $path", e)
                null
            }
        }
    }

    private fun isImageEntry(name: String): Boolean {
        val ext = name.lowercase().substringAfterLast('.', "")
        return ext in IMAGE_EXTENSIONS
    }

    private fun isBitmapEntry(zip: ZipFile, entryName: String): Boolean {
        val header = zip.getFileHeader(entryName) ?: return false
        return zip.getInputStream(header).use { input ->
            val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            BitmapFactory.decodeStream(input, null, options)
            options.outWidth > 0 && options.outHeight > 0
        }
    }
}
