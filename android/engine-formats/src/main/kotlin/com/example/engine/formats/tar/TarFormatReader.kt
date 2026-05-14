package com.example.engine.formats.tar

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.example.core.data.db.EpubManifestCacheDao
import com.example.core.data.db.EpubStructureCacheDao
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.decodeBitmapFromByteArray
import com.example.engine.formats.archive.ArchiveContentKind
import com.example.engine.formats.archive.ArchiveFormatSupport
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.fb2.Fb2FormatReader
import com.example.engine.formats.text.DocxFormatReader
import com.example.engine.formats.text.HtmlFormatReader
import com.example.engine.formats.text.MarkdownFormatReader
import com.example.engine.formats.text.MobiFormatReader
import com.example.engine.formats.text.OdtFormatReader
import com.example.engine.formats.text.PlainTextFormatReader
import com.example.engine.formats.text.RtfFormatReader
import com.example.engine.formats.text.TextFormatReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import java.io.File
import java.io.InputStream
import java.util.Locale

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
    private val epubStructureCacheDao: EpubStructureCacheDao? = null,
    private val epubManifestCacheDao: EpubManifestCacheDao? = null
) : FormatReader {

    companion object {
        private const val TAG = "TarFormatReader"
    }

    private var tempTextFile: File? = null

    // Lightweight classification — reads TAR headers only (sequential name scan, no data extraction).
    private val archiveContentKind: ArchiveContentKind by lazy { classifyArchiveContent() }

    private fun classifyArchiveContent(): ArchiveContentKind = try {
        ArchiveFormatSupport.classify(readEntryNames())
    } catch (e: Exception) {
        Log.w(TAG, "Failed to classify archive content", e)
        ArchiveContentKind.UNSUPPORTED
    }

    private val textDelegate: FormatReader? by lazy {
        if (archiveContentKind != ArchiveContentKind.SINGLE_BOOK) null
        else createTextDelegateIfPresent()
    }

    // All image bytes extracted once, sorted by entry name (alphabetical = page order)
    private val pages: List<ByteArray> by lazy {
        try {
            openStream()?.use { raw ->
                TarArchiveInputStream(raw).use { tis ->
                    val results = mutableListOf<Pair<String, ByteArray>>()
                    val fallbackResults = mutableListOf<Pair<String, ByteArray>>()
                    var entry = tis.nextEntry
                    while (entry != null) {
                        if (!entry.isDirectory) {
                            val name = entry.name ?: ""
                            val bytes = tis.readBytes()
                            if (isImage(name)) {
                                results.add(name to bytes)
                            } else if (bytes.isBitmapBytes()) {
                                fallbackResults.add(name to bytes)
                            }
                        }
                        entry = tis.nextEntry
                    }
                    (if (results.isNotEmpty()) results else fallbackResults)
                        .sortedWith(compareBy(ArchiveFormatSupport.naturalPathComparator) { it.first })
                        .map { it.second }
                }
            } ?: emptyList()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to parse TAR: $path", e)
            emptyList()
        }
    }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        textDelegate?.getPageCount() ?: pages.size
    }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        textDelegate?.let { return@withContext it.getPage(index, renderQuality) }
        val bytes = pages.getOrNull(index) ?: return@withContext null
        decodeBitmapFromByteArray(
            context = context,
            bytes = bytes,
            deviceProfile = deviceProfile,
            bitmapAllocator = bitmapAllocator,
            renderQuality = renderQuality
        )
    }

    override suspend fun getHtmlPage(index: Int): String? =
        textDelegate?.getHtmlPage(index)

    override fun htmlBaseUrl(): String? =
        textDelegate?.htmlBaseUrl()

    override fun htmlAssetBasePath(index: Int): String? =
        textDelegate?.htmlAssetBasePath(index)

    override fun openHtmlAsset(path: String): FormatReaderWebResource? =
        textDelegate?.openHtmlAsset(path)

    override fun getTableOfContents(): List<TocEntry> =
        textDelegate?.getTableOfContents().orEmpty()

    override fun rendersHtmlContent(): Boolean =
        archiveContentKind == ArchiveContentKind.SINGLE_BOOK

    override fun close() {
        runCatching { textDelegate?.close() }
        tempTextFile = null
    }

    private fun createTextDelegateIfPresent(): FormatReader? {
        return try {
            val entryNames = readEntryNames()
            if (ArchiveFormatSupport.classify(entryNames) != ArchiveContentKind.SINGLE_BOOK) return null
            val textEntries = entryNames.filter(::isText)
            if (textEntries.isEmpty()) return null
            val textEntry = textEntries
                .sortedWith(ArchiveFormatSupport.naturalPathComparator)
                .first()
            val extension = textEntry.substringAfterLast('.', "").lowercase(Locale.US)
            val textFormat = textFormatForExtension(extension) ?: return null
            val textBytes = readEntryBytes(textEntry) ?: return null
            val extracted = File(
                archiveCacheDir("archive_text_cache"),
                ArchiveFormatSupport.textCacheFileName(
                    prefix = "tar",
                    archiveKey = path,
                    entryName = textEntry,
                    entrySize = textBytes.size.toLong(),
                    extension = extension
                )
            )
            if (!extracted.exists() || extracted.length() != textBytes.size.toLong()) {
                extracted.outputStream().use { it.write(textBytes) }
            }
            tempTextFile = extracted
            when (textFormat) {
                ComicFormat.EPUB -> EpubFormatReader(
                    context = context,
                    path = extracted.absolutePath,
                    structureCacheDao = epubStructureCacheDao,
                    manifestCacheDao = epubManifestCacheDao
                )
                ComicFormat.MOBI,
                ComicFormat.AZW3 -> MobiFormatReader(context, extracted.absolutePath, textFormat)
                ComicFormat.TXT -> PlainTextFormatReader(context, extracted.absolutePath)
                ComicFormat.HTML -> HtmlFormatReader(context, extracted.absolutePath)
                ComicFormat.MARKDOWN -> MarkdownFormatReader(context, extracted.absolutePath)
                ComicFormat.FB2 -> Fb2FormatReader(context, extracted.absolutePath)
                ComicFormat.RTF -> RtfFormatReader(context, extracted.absolutePath)
                ComicFormat.DOCX -> DocxFormatReader(context, extracted.absolutePath)
                ComicFormat.ODT -> OdtFormatReader(context, extracted.absolutePath)
                else -> TextFormatReader(context, extracted.absolutePath, textFormat)
            }
        } catch (e: Exception) {
            Log.w(TAG, "Failed to prepare archived text entry", e)
            null
        }
    }

    private fun readEntryNames(): List<String> {
        return openStream()?.use { raw ->
            TarArchiveInputStream(raw).use { tis ->
                val names = mutableListOf<String>()
                var entry = tis.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        entry.name?.takeIf { it.isNotBlank() }?.let(names::add)
                    }
                    entry = tis.nextEntry
                }
                names
            }
        }.orEmpty()
    }

    private fun readEntryBytes(targetName: String): ByteArray? {
        var result: ByteArray? = null
        return openStream()?.use { raw ->
            TarArchiveInputStream(raw).use { tis ->
                var entry = tis.nextEntry
                while (entry != null && result == null) {
                    if (!entry.isDirectory && entry.name == targetName) {
                        result = tis.readBytes()
                    } else {
                        entry = tis.nextEntry
                    }
                }
                result
            }
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
        ArchiveFormatSupport.isImageEntry(name)

    private fun isText(name: String): Boolean =
        ArchiveFormatSupport.isTextEntry(name)

    private fun textFormatForExtension(extension: String): ComicFormat? =
        ArchiveFormatSupport.textFormatForExtension(extension)

    private fun archiveCacheDir(name: String): File {
        val base = runCatching { context.cacheDir }.getOrNull()
            ?: File(System.getProperty("java.io.tmpdir"), "mrcomic_engine_formats")
        return File(base, name).apply { mkdirs() }
    }

    private fun ByteArray.isBitmapBytes(): Boolean {
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(this, 0, size, options)
        return options.outWidth > 0 && options.outHeight > 0
    }
}
