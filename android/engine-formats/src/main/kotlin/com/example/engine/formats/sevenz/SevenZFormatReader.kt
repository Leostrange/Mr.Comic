package com.example.engine.formats.sevenz

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
import org.apache.commons.compress.archivers.sevenz.SevenZArchiveEntry
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import java.io.ByteArrayOutputStream
import java.io.File
import java.util.Locale

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
    private val epubStructureCacheDao: EpubStructureCacheDao? = null,
    private val epubManifestCacheDao: EpubManifestCacheDao? = null
) : FormatReader {

    companion object {
        private const val TAG = "SevenZFormatReader"
    }

    private val lock = Any()
    private var szFile: SevenZFile? = null
    private var tempFile: File? = null
    private var tempTextFile: File? = null

    // Lightweight classification — reads 7z headers only, no data extraction.
    private val archiveContentKind: ArchiveContentKind by lazy { classifyArchiveContent() }

    private fun classifyArchiveContent(): ArchiveContentKind = try {
        val sz = openSevenZFile() ?: return ArchiveContentKind.UNSUPPORTED
        val fileNames = sz.entries.toList()
            .filter { !it.isDirectory && it.name != null }
            .map { it.name!! }
        ArchiveFormatSupport.classify(fileNames)
    } catch (e: Exception) {
        Log.w(TAG, "Failed to classify archive content", e)
        ArchiveContentKind.UNSUPPORTED
    }

    private val textDelegate: FormatReader? by lazy {
        if (archiveContentKind != ArchiveContentKind.SINGLE_BOOK) null
        else createTextDelegateIfPresent()
    }

    // Sorted list of image entries — built once via getEntries() (no sequential scan needed)
    private val imageEntries: List<SevenZArchiveEntry> by lazy {
        try {
            val candidates = openSevenZFile()?.entries?.toList()
                ?.filter { !it.isDirectory }
                ?.sortedWith(compareBy(ArchiveFormatSupport.naturalPathComparator) { it.name.orEmpty() })
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

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        textDelegate?.getPageCount() ?: imageEntries.size
    }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        textDelegate?.let { return@withContext it.getPage(index, renderQuality) }
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
        synchronized(lock) {
            try { textDelegate?.close() } catch (_: Exception) {}
            try { szFile?.close() } catch (_: Exception) {}
            szFile = null
            tempFile?.let { runCatching { it.delete() } }
            tempFile = null
            tempTextFile = null
        }
    }

    private fun createTextDelegateIfPresent(): FormatReader? {
        synchronized(lock) {
            return try {
                val sz = openSevenZFile() ?: return null
                val candidates = sz.entries
                    .toList()
                    .filter { !it.isDirectory }
                    .sortedWith(compareBy(ArchiveFormatSupport.naturalPathComparator) { it.name.orEmpty() })
                if (ArchiveFormatSupport.classify(candidates.map { it.name.orEmpty() }) != ArchiveContentKind.SINGLE_BOOK) return null
                val textEntries = candidates.filter { isText(it.name.orEmpty()) }
                if (textEntries.isEmpty()) return null
                val textEntry = textEntries.first()
                val entryName = textEntry.name.orEmpty()
                val extension = entryName.substringAfterLast('.', "").lowercase(Locale.US)
                val textFormat = textFormatForExtension(extension) ?: return null
                val bytes = sz.getInputStream(textEntry).use { stream ->
                    ByteArrayOutputStream().use { output ->
                        stream.copyTo(output)
                        output.toByteArray()
                    }
                }
                val extracted = File(
                    archiveCacheDir("archive_text_cache"),
                    ArchiveFormatSupport.textCacheFileName(
                        prefix = "7z",
                        archiveKey = path,
                        entryName = entryName,
                        entrySize = bytes.size.toLong(),
                        extension = extension
                    )
                )
                if (!extracted.exists() || extracted.length() != bytes.size.toLong()) {
                    extracted.outputStream().use { it.write(bytes) }
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
