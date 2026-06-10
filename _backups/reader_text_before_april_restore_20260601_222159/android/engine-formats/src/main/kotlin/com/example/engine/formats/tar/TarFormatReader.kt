package com.example.engine.formats.tar

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
    private val bitmapAllocator: BitmapAllocator,
    private val textReaderFactory: ((File, ComicFormat) -> FormatReader?)? = null
) : FormatReader {

    companion object {
        private const val TAG = "TarFormatReader"
        private val IMAGE_EXTS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private data class TarEntryBytes(
        val name: String,
        val bytes: ByteArray
    )

    private val archiveEntries: List<TarEntryBytes> by lazy {
        try {
            openStream()?.use { raw ->
                TarArchiveInputStream(raw).use { tis ->
                    val results = mutableListOf<TarEntryBytes>()
                    var entry = tis.nextEntry
                    while (entry != null) {
                        if (!entry.isDirectory) {
                            val name = entry.name ?: ""
                            results.add(TarEntryBytes(name = name, bytes = tis.readBytes()))
                        }
                        entry = tis.nextEntry
                    }
                    results.sortedWith { left, right ->
                        ArchiveFormatSupport.naturalPathComparator.compare(left.name, right.name)
                    }
                }
            } ?: emptyList()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to parse TAR: $path", e)
            emptyList()
        }
    }

    private val textDelegateLazy = lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        buildTextDelegate()
    }
    private val textDelegate: FormatReader?
        get() = textDelegateLazy.value

    // All image bytes extracted once, sorted by entry name (alphabetical = page order)
    private val pages: List<ByteArray> by lazy {
        try {
            if (textDelegate != null) return@lazy emptyList()
            val byExtension = archiveEntries.filter { isImage(it.name) }
            val bitmapEntries = if (byExtension.isNotEmpty()) {
                byExtension
            } else {
                archiveEntries.filter { it.bytes.isBitmapBytes() }
            }
            bitmapEntries.map { it.bytes }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list TAR image entries: $path", e)
            emptyList()
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        textDelegate?.getPageCount() ?: pages.size
    }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (textDelegate != null) return@withContext null
        val bytes = pages.getOrNull(index) ?: return@withContext null
        decodeBitmapFromByteArray(
            context = context,
            bytes = bytes,
            deviceProfile = deviceProfile,
            bitmapAllocator = bitmapAllocator,
            renderQuality = renderQuality
        )
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
        if (textDelegateLazy.isInitialized()) {
            runCatching { textDelegateLazy.value?.close() }
        }
    }

    private fun buildTextDelegate(): FormatReader? {
        val factory = textReaderFactory ?: return null
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(archiveEntries.map { it.name })
        val textEntry = resolved.entryName ?: return null
        val textFormat = resolved.format ?: return null
        val extracted = extractSingleBookArchive(textEntry) ?: return null
        return factory(extracted, textFormat)
    }

    private fun extractSingleBookArchive(textEntry: String): File? {
        val textArchiveEntry = archiveEntries.firstOrNull { it.name == textEntry } ?: return null
        val textExtension = ArchiveFormatSupport.extensionOf(textEntry)
        val rootName = ArchiveFormatSupport.textCacheFileName(
            prefix = "tar",
            archiveKey = path,
            entryName = textEntry,
            entrySize = textArchiveEntry.bytes.size.toLong(),
            extension = textExtension
        ).substringBeforeLast('.', missingDelimiterValue = "tar_book")
        val targetDir = File(context.cacheDir, "archive_text_cache/$rootName").apply { mkdirs() }
        val canonicalRoot = targetDir.canonicalFile

        for (entry in archiveEntries) {
            val target = File(targetDir, entry.name.replace('\\', '/')).canonicalFile
            if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true)) {
                continue
            }
            if (target.exists() && target.length() == entry.bytes.size.toLong()) {
                continue
            }
            target.parentFile?.mkdirs()
            target.writeBytes(entry.bytes)
        }
        return File(targetDir, textEntry.replace('\\', '/')).takeIf { it.isFile }
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

    private fun ByteArray.isBitmapBytes(): Boolean {
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(this, 0, size, options)
        return options.outWidth > 0 && options.outHeight > 0
    }
}
