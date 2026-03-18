package com.example.engine.formats.tar

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import android.util.Log
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.decodeBitmapFromByteArray
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.RenderDeviceProfile
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import java.io.File
import java.io.InputStream

/**
 * Reader for TAR-based archives (.tar / .cbt).
 *
 * TAR does not support random access, so all image bytes are extracted in a
 * single sequential pass on first access and stored in memory, sorted by entry name.
 * For typical comic archives this is acceptable since pages must be in memory anyway.
 */
class TarFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator
) : FormatReader {

    companion object {
        private const val TAG = "TarFormatReader"
        private val IMAGE_EXTS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    // All image bytes extracted once, sorted by entry name (alphabetical = page order)
    private val pages: List<ByteArray> by lazy {
        try {
            openStream()?.use { raw ->
                TarArchiveInputStream(raw).use { tis ->
                    val results = mutableListOf<Pair<String, ByteArray>>()
                    var entry = tis.nextEntry
                    while (entry != null) {
                        if (!entry.isDirectory && isImage(entry.name ?: "")) {
                            // readBytes() reads exactly the current entry's data
                            results.add((entry.name ?: "") to tis.readBytes())
                        }
                        entry = tis.nextEntry
                    }
                    results.sortedBy { it.first }.map { it.second }
                }
            } ?: emptyList()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to parse TAR: $path", e)
            emptyList()
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { pages.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        val bytes = pages.getOrNull(index) ?: return@withContext null
        decodeBitmapFromByteArray(
            context = context,
            bytes = bytes,
            deviceProfile = deviceProfile,
            bitmapAllocator = bitmapAllocator,
            renderQuality = renderQuality
        )
    }

    override fun close() { /* all data is in-memory; nothing to release */ }

    private fun openStream(): InputStream? = try {
        if (path.startsWith("content://"))
            context.contentResolver.openInputStream(Uri.parse(path))
        else
            File(path).inputStream()
    } catch (e: Exception) {
        Log.e(TAG, "Cannot open TAR stream: $path", e)
        null
    }

    private fun isImage(name: String): Boolean =
        name.lowercase().substringAfterLast('.', "") in IMAGE_EXTS
}
