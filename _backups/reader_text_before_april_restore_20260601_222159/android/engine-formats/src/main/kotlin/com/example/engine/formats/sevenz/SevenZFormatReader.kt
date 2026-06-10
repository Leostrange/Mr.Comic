package com.example.engine.formats.sevenz

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.example.core.model.ComicFormat
import com.example.engine.formats.archive.ArchiveFormatSupport
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.decodeBitmapFromByteArray
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
    private val bitmapAllocator: BitmapAllocator,
    private val textReaderFactory: ((File, ComicFormat) -> FormatReader?)? = null
) : FormatReader {

    companion object {
        private const val TAG = "SevenZFormatReader"
        private val IMAGE_EXTS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private val lock = Any()
    private var szFile: SevenZFile? = null
    private var tempFile: File? = null

    private val archiveEntries: List<SevenZArchiveEntry> by lazy {
        try {
            openSevenZFile()?.entries?.toList()
                ?.filter { !it.isDirectory }
                ?.sortedWith { left, right ->
                    ArchiveFormatSupport.naturalPathComparator.compare(left.name.orEmpty(), right.name.orEmpty())
                }
                ?: emptyList()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list 7z entries: $path", e)
            emptyList()
        }
    }

    private val textDelegateLazy = lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        buildTextDelegate()
    }
    private val textDelegate: FormatReader?
        get() = textDelegateLazy.value

    // Sorted list of image entries — built once via getEntries() (no sequential scan needed)
    private val imageEntries: List<SevenZArchiveEntry> by lazy {
        try {
            if (textDelegate != null) return@lazy emptyList()
            val candidates = archiveEntries

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

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        textDelegate?.getPageCount() ?: imageEntries.size
    }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (textDelegate != null) return@withContext null
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

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        textDelegate?.getHtmlPage(index)
    }

    override fun rendersHtmlContent(): Boolean = textDelegate != null

    override fun htmlBaseUrl(): String? = textDelegate?.htmlBaseUrl()

    override fun htmlAssetBasePath(index: Int): String? = textDelegate?.htmlAssetBasePath(index)

    override fun openHtmlAsset(path: String): FormatReaderWebResource? =
        textDelegate?.openHtmlAsset(path)

    override fun getTableOfContents(): List<TocEntry> =
        textDelegate?.getTableOfContents().orEmpty()

    override fun getFootnoteText(anchorId: String): String? =
        textDelegate?.getFootnoteText(anchorId)

    override fun resolveHrefToPage(href: String): Int? =
        textDelegate?.resolveHrefToPage(href)

    override fun close() {
        synchronized(lock) {
            if (textDelegateLazy.isInitialized()) {
                runCatching { textDelegateLazy.value?.close() }
            }
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

    private fun buildTextDelegate(): FormatReader? {
        val factory = textReaderFactory ?: return null
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
            archiveEntries.mapNotNull { it.name }
        )
        val textEntry = resolved.entryName ?: return null
        val textFormat = resolved.format ?: return null
        val extracted = extractSingleBookArchive(textEntry) ?: return null
        return factory(extracted, textFormat)
    }

    private fun extractSingleBookArchive(textEntry: String): File? {
        val textArchiveEntry = archiveEntries.firstOrNull { it.name == textEntry } ?: return null
        val textExtension = ArchiveFormatSupport.extensionOf(textEntry)
        val rootName = ArchiveFormatSupport.textCacheFileName(
            prefix = "7z",
            archiveKey = path,
            entryName = textEntry,
            entrySize = textArchiveEntry.size.coerceAtLeast(0),
            extension = textExtension
        ).substringBeforeLast('.', missingDelimiterValue = "7z_book")
        val targetDir = File(context.cacheDir, "archive_text_cache/$rootName").apply { mkdirs() }
        val canonicalRoot = targetDir.canonicalFile
        val sz = openSevenZFile() ?: return null

        for (entry in archiveEntries) {
            val name = entry.name ?: continue
            val target = File(targetDir, name.replace('\\', '/')).canonicalFile
            if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true)) {
                continue
            }
            if (target.exists() && target.length() == entry.size) {
                continue
            }
            target.parentFile?.mkdirs()
            sz.getInputStream(entry).use { input ->
                target.outputStream().use { output -> input.copyTo(output) }
            }
        }
        return File(targetDir, textEntry.replace('\\', '/')).takeIf { it.isFile }
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
