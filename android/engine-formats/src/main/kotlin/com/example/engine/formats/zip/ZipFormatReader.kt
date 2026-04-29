package com.example.engine.formats.zip

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.example.core.model.ComicFormat
import com.example.core.data.db.EpubManifestCacheDao
import com.example.core.data.db.EpubStructureCacheDao
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.decodeBitmapFromStream
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.archive.ArchiveContentKind
import com.example.engine.formats.archive.ArchiveFormatSupport
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.text.HtmlFormatReader
import com.example.engine.formats.text.MarkdownFormatReader
import com.example.engine.formats.text.MobiFormatReader
import com.example.engine.formats.text.PlainTextFormatReader
import com.example.engine.formats.text.TextFormatReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import java.io.File
import java.util.Locale

private fun safeLogW(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.w(tag, message, throwable) }
}

class ZipFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator,
    private val epubStructureCacheDao: EpubStructureCacheDao? = null,
    private val epubManifestCacheDao: EpubManifestCacheDao? = null
) : FormatReader {

    companion object {
        private const val TAG = "ZipFormatReader"
    }

    private val lock = Any()
    private var tempFile: File? = null
    private var tempTextFile: File? = null
    private var zipFile: ZipFile? = null
    private val textDelegate: FormatReader? by lazy { createTextDelegateIfPresent() }

    private val imageEntries: List<String> by lazy {
        try {
            val zip = ensureZipFile() ?: return@lazy emptyList()
            val candidates = zip.fileHeaders
                .filter { !it.isDirectory }
                .map { it.fileName }
                .sortedWith(ArchiveFormatSupport.naturalPathComparator)

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

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        textDelegate?.getPageCount() ?: imageEntries.size
    }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        textDelegate?.let { return@withContext it.getPage(index, renderQuality) }
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

    override fun close() {
        synchronized(lock) {
            try { zipFile?.close() } catch (_: Exception) {}
            try { textDelegate?.close() } catch (_: Exception) {}
            zipFile = null
            tempFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp CBZ: ${file.absolutePath}", it) }
            }
            tempFile = null
            tempTextFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp archived text: ${file.absolutePath}", it) }
            }
            tempTextFile = null
        }
    }

    private fun createTextDelegateIfPresent(): FormatReader? {
        return try {
            val zip = ensureZipFile() ?: return null
            val fileNames = zip.fileHeaders
                .asSequence()
                .filter { !it.isDirectory }
                .map { it.fileName }
                .toList()
            if (ArchiveFormatSupport.classify(fileNames) != ArchiveContentKind.SINGLE_BOOK) return null
            val textEntries = fileNames.filter(::isTextEntry)
            if (textEntries.isEmpty()) return null
            val textEntry = fileNames
                .asSequence()
                .filter(::isTextEntry)
                .sortedWith(ArchiveFormatSupport.naturalPathComparator)
                .firstOrNull()
                ?: return null
            val header = zip.getFileHeader(textEntry) ?: return null
            val extension = textEntry.substringAfterLast('.', "").lowercase(Locale.US)
            val textFormat = textFormatForExtension(extension) ?: return null
            val cacheDir = archiveCacheDir("archive_text_cache")
            val safeName = ArchiveFormatSupport.safeArchiveName(textEntry, extension)
            val extracted = File(cacheDir, "zip_${path.hashCode()}_${System.currentTimeMillis()}_$safeName")
            zip.getInputStream(header).use { input ->
                extracted.outputStream().use { output -> input.copyTo(output) }
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
                else -> TextFormatReader(context, extracted.absolutePath, textFormat)
            }
        } catch (e: Exception) {
            safeLogW(TAG, "Failed to prepare archived text entry", e)
            null
        }
    }

    private fun ensureZipFile(): ZipFile? {
        synchronized(lock) {
            zipFile?.let { return it }
            return try {
                val resolvedPath = if (path.startsWith("content://")) {
                    val uri = Uri.parse(path)
                    val cacheDir = archiveCacheDir("cbz_cache")
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
        return ArchiveFormatSupport.isImageEntry(name)
    }

    private fun isTextEntry(name: String): Boolean {
        return ArchiveFormatSupport.isTextEntry(name)
    }

    private fun textFormatForExtension(extension: String): ComicFormat? =
        ArchiveFormatSupport.textFormatForExtension(extension)

    private fun archiveCacheDir(name: String): File {
        val base = runCatching { context.cacheDir }.getOrNull()
            ?: File(System.getProperty("java.io.tmpdir"), "mrcomic_engine_formats")
        return File(base, name).apply { mkdirs() }
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
