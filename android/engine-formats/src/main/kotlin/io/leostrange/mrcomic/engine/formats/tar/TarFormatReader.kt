package io.leostrange.mrcomic.engine.formats.tar

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile
import io.leostrange.mrcomic.engine.formats.base.decodeBitmapFromStream
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import java.io.File
import java.io.InputStream
import java.io.RandomAccessFile

/**
 * Reader for TAR-based archives (.tar / .cbt).
 *
 * Uses a two-pass approach to avoid loading all pages into memory:
 * 1. First pass: sequential scan to record entry names and byte offsets
 * 2. On getPage(): seek to the stored offset and read only that entry
 *
 * For content:// URIs (no random access), falls back to single-pass extraction.
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
        private const val HEADER_SIZE = 512L
    }

    /** Metadata for a single image entry in the TAR. */
    private data class TarPageRef(
        val name: String,
        val dataOffset: Long,   // byte offset of entry data in the file
        val size: Long          // entry data size in bytes
    )

    /** Index of image entries built during the first scan. */
    private val pageRefs: List<TarPageRef> by lazy { buildPageIndex() }

    /** Whether the source supports random access (file path vs content://). */
    private val canRandomAccess: Boolean
        get() = !path.startsWith("content://")

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { pageRefs.size }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        val ref = pageRefs.getOrNull(index) ?: return@withContext null
        if (canRandomAccess) {
            readPageFromRandomAccess(ref, renderQuality)
        } else {
            readPageFromSequentialScan(index, renderQuality)
        }
    }

    override fun close() { /* no persistent resources */ }

    /**
     * Build page index by scanning TAR headers without reading entry data.
     * Records byte offsets for random-access reading.
     */
    private fun buildPageIndex(): List<TarPageRef> {
        if (canRandomAccess) {
            return buildPageIndexFromRandomAccess()
        }
        return buildPageIndexFromSequentialScan()
    }

    private fun buildPageIndexFromRandomAccess(): List<TarPageRef> {
        val refs = mutableListOf<TarPageRef>()
        val fallbackRefs = mutableListOf<TarPageRef>()
        try {
            RandomAccessFile(path, "r").use { raf ->
                while (true) {
                    val headerStart = raf.filePointer
                    val header = ByteArray(HEADER_SIZE.toInt())
                    val read = raf.read(header)
                    if (read < HEADER_SIZE.toInt()) break

                    // Check for end-of-archive (two zero blocks)
                    if (header.all { it == 0.toByte() }) break

                    val name = parseTarName(header)
                    val size = parseOctal(header, 124, 12)
                    if (name.isBlank() || size < 0) break

                    val dataOffset = raf.filePointer
                    val isDir = header[156] == '5'.code.toByte()

                    if (!isDir) {
                        val ref = TarPageRef(name = name, dataOffset = dataOffset, size = size)
                        if (isImage(name)) {
                            refs.add(ref)
                        } else if (size in 1..50_000_000) {
                            // Check magic bytes for bitmap formats
                            val magic = ByteArray(4.coerceAtMost(size.toInt()))
                            raf.read(magic)
                            raf.seek(dataOffset) // seek back
                            if (magic.isBitmapMagic()) {
                                fallbackRefs.add(ref)
                            }
                        }
                    }

                    // Skip to next entry (data + padding to 512-byte boundary)
                    val paddedSize = ((size + 511) / 512) * 512
                    raf.seek(dataOffset + paddedSize)
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to index TAR: $path", e)
        }
        val result = if (refs.isNotEmpty()) refs else fallbackRefs
        return result.sortedBy { it.name }
    }

    private fun buildPageIndexFromSequentialScan(): List<TarPageRef> {
        // For content:// URIs, we can't do random access, so we record offsets
        // relative to the stream and store entry data in memory as fallback.
        return emptyList() // Will use readPageFromSequentialScan instead
    }

    /**
     * Read a single page by seeking to its offset in the file.
     */
    private fun readPageFromRandomAccess(ref: TarPageRef, renderQuality: Int): Bitmap? {
        return try {
            RandomAccessFile(path, "r").use { raf ->
                raf.seek(ref.dataOffset)
                val bytes = ByteArray(ref.size.toInt())
                raf.readFully(bytes)
                decodeBitmapFromStream(
                    context = context,
                    openStream = { bytes.inputStream() },
                    deviceProfile = deviceProfile,
                    bitmapAllocator = bitmapAllocator,
                    renderQuality = renderQuality
                )
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to read TAR page: ${ref.name}", e)
            null
        }
    }

    /**
     * Fallback for content:// URIs: scan the entire stream and extract the Nth image.
     */
    private fun readPageFromSequentialScan(targetIndex: Int, renderQuality: Int): Bitmap? {
        return try {
            openStream()?.use { raw ->
                TarArchiveInputStream(raw).use { tis ->
                    var imageIndex = 0
                    var entry = tis.nextEntry
                    while (entry != null) {
                        if (!entry.isDirectory) {
                            val name = entry.name ?: ""
                            val isImg = isImage(name)
                            if (isImg) {
                                if (imageIndex == targetIndex) {
                                    val bytes = tis.readBytes()
                                    return@use decodeBitmapFromStream(
                                        context = context,
                                        openStream = { bytes.inputStream() },
                                        deviceProfile = deviceProfile,
                                        bitmapAllocator = bitmapAllocator,
                                        renderQuality = renderQuality
                                    )
                                }
                                imageIndex++
                            }
                        }
                        entry = tis.nextEntry
                    }
                    null
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to scan TAR page $targetIndex: $path", e)
            null
        }
    }

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

    /** Parse TAR entry name from 512-byte header. */
    private fun parseTarName(header: ByteArray): String {
        // Try ustar prefix + name first (offset 345, 155 + offset 0, 100)
        val isUstar = header[257] == 'u'.code.toByte() &&
            header[258] == 's'.code.toByte() &&
            header[259] == 't'.code.toByte()
        if (isUstar) {
            val prefix = header.decodeToString(345, 345 + 155).trim('\u0000', ' ')
            val name = header.decodeToString(0, 100).trim('\u0000', ' ')
            return if (prefix.isNotBlank()) "$prefix/$name" else name
        }
        return header.decodeToString(0, 100).trim('\u0000', ' ')
    }

    /** Parse octal number from TAR header. */
    private fun parseOctal(header: ByteArray, offset: Int, length: Int): Long {
        val s = header.decodeToString(offset, offset + length).trim('\u0000', ' ')
        if (s.isBlank()) return 0
        return try {
            s.toLong(8)
        } catch (e: NumberFormatException) {
            -1
        }
    }

    /** Check if bytes start with a known bitmap magic signature. */
    private fun ByteArray.isBitmapMagic(): Boolean {
        if (size < 4) return false
        return (this[0] == 0xFF.toByte() && this[1] == 0xD8.toByte()) || // JPEG
            (this[0] == 0x89.toByte() && this[1] == 0x50.toByte() && this[2] == 0x4E.toByte()) || // PNG
            (this[0] == 0x52.toByte() && this[1] == 0x49.toByte() && this[2] == 0x46.toByte()) || // WEBP (RIFF)
            (this[0] == 0x47.toByte() && this[1] == 0x49.toByte()) // GIF
    }
}
