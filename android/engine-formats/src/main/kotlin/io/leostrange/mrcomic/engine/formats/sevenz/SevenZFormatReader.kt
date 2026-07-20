package io.leostrange.mrcomic.engine.formats.sevenz

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.decodeBitmapFromByteArray
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import java.io.ByteArrayOutputStream
import java.io.File

/**
 * Reader for 7-Zip (.7z / .cb7) archives.
 *
 * Uses commons-compress SevenZFile which supports random access to individual entries,
 * so only the requested page bitmap is decoded on each [getPage] call.
 * The SevenZFile handle is kept open until [close] is called.
 */
class SevenZFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator
) : FormatReader {

    companion object {
        private const val TAG = "SevenZFormatReader"
        private val IMAGE_EXTS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private val lock = Any()
    private var szFile: SevenZFile? = null
    private var tempFile: File? = null

    // Sorted list of image entries — built once via getEntries() (no sequential scan needed)
    private val imageEntries: List<SevenZArchiveEntry> by lazy {
        try {
            val candidates = openSevenZFile()?.entries?.toList()
                ?.filter { !it.isDirectory }
                ?.sortedBy { it.name }
                ?: emptyList()

            val byExtension = candidates.filter { isImage(it.name ?: "") }
            if (byExtension.isNotEmpty()) {
                byExtension
            } else {
                val sz = openSevenZFile() ?: return@lazy emptyList()
                candidates.filter { entry -> isBitmapEntry(sz, entry) }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list 7z entries: $path", e)
            emptyList()
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { imageEntries.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        val entry = imageEntries.getOrNull(index) ?: return@withContext null
        synchronized(lock) {
            val sz = openSevenZFile() ?: return@withContext null
            try {
                sz.getInputStream(entry).use { stream ->
                    val bytes = ByteArrayOutputStream().use { output ->
                        stream.copyTo(output)
                        output.toByteArray()
                    }
                    decodeBitmapFromByteArray(
                        context = context,
                        bytes = bytes,
                        deviceProfile = deviceProfile,
                        bitmapAllocator = bitmapAllocator,
                        renderQuality = renderQuality
                    )
                }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to decode 7z page $index", e)
                null
            }
        }
    }

    override fun close() {
        synchronized(lock) {
            try { szFile?.close() } catch (_: Exception) {}
            szFile = null
            tempFile?.let { runCatching { it.delete() } }
            tempFile = null
        }
    }

    @Suppress("DEPRECATION")
    private fun openSevenZFile(): SevenZFile? {
        synchronized(lock) {
            szFile?.let { return it }
            return try {
                val file = if (path.startsWith("content://")) {
                    val uri = Uri.parse(path)
                    val tmp = File(
                        File(context.cacheDir, "7z_cache").apply { mkdirs() },
                        "cb7_${uri.hashCode()}.7z"
                    )
                    tempFile = tmp
                    context.contentResolver.openInputStream(uri)?.use { i ->
                        tmp.outputStream().use { o -> i.copyTo(o) }
                    } ?: return null
                    tmp
                } else {
                    File(path)
                }
                SevenZFile(file).also { szFile = it }
            } catch (e: Exception) {
                Log.e(TAG, "Failed to open 7z: $path", e)
                null
            }
        }
    }

    private fun isImage(name: String): Boolean =
        name.lowercase().substringAfterLast('.', "") in IMAGE_EXTS

    private fun isBitmapEntry(sz: SevenZFile, entry: SevenZArchiveEntry): Boolean {
        return sz.getInputStream(entry).use { stream ->
            val bytes = ByteArrayOutputStream().use { output ->
                stream.copyTo(output)
                output.toByteArray()
            }
            val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
            BitmapFactory.decodeByteArray(bytes, 0, bytes.size, options)
            options.outWidth > 0 && options.outHeight > 0
        }
    }
}
