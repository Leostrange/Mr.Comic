package com.example.engine.formats.zip

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import com.example.core.model.ComicFormat
import com.example.engine.formats.archive.ArchiveContentKind
import com.example.engine.formats.archive.ArchiveFormatSupport
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.decodeBitmapFromStream
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.TocEntry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import java.io.File
import java.util.Locale

class ZipFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator,
    private val textReaderFactory: ((File, ComicFormat) -> FormatReader?)? = null
) : FormatReader {

    companion object {
        private const val TAG = "ZipFormatReader"
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private val lock = Any()
    private var tempFile: File? = null
    private var zipFile: ZipFile? = null

    private val archiveEntryNames: List<String> by lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        try {
            val zip = ensureZipFile() ?: return@lazy emptyList()
            zip.fileHeaders
                .filter { !it.isDirectory }
                .map { it.fileName }
                .sortedWith(ArchiveFormatSupport.naturalPathComparator)
        } catch (e: Exception) {
            Log.e(TAG, "Failed to list zip entries", e)
            emptyList()
        }
    }

    private val textDelegateLazy = lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        buildTextDelegate()
    }
    private val textDelegate: FormatReader?
        get() = textDelegateLazy.value

    private val imageEntries: List<String> by lazy {
        try {
            if (textDelegate != null) return@lazy emptyList()
            val zip = ensureZipFile() ?: return@lazy emptyList()
            val candidates = archiveEntryNames

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
        if (textDelegate != null) return@withContext null
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
            try { zipFile?.close() } catch (_: Exception) {}
            zipFile = null
            tempFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp CBZ: ${file.absolutePath}", it) }
            }
            tempFile = null
        }
    }

    private fun buildTextDelegate(): FormatReader? {
        val factory = textReaderFactory ?: return null
        val entries = archiveEntryNames
        if (entries.isEmpty()) return null
        if (ArchiveFormatSupport.classify(entries) != ArchiveContentKind.SINGLE_BOOK) return null
        val textEntry = entries
            .asSequence()
            .filter(ArchiveFormatSupport::isTextEntry)
            .sortedWith(ArchiveFormatSupport.naturalPathComparator)
            .firstOrNull()
            ?: return null
        val textFormat = ArchiveFormatSupport.textFormatForExtension(
            textEntry.substringAfterLast('.', "").lowercase(Locale.US)
        ) ?: return null
        val extracted = extractSingleBookArchive(textEntry) ?: return null
        return factory(extracted, textFormat)
    }

    private fun extractSingleBookArchive(textEntry: String): File? {
        val zip = ensureZipFile() ?: return null
        val textHeader = zip.getFileHeader(textEntry) ?: return null
        val textExtension = ArchiveFormatSupport.extensionOf(textEntry)
        val rootName = ArchiveFormatSupport.textCacheFileName(
            prefix = "zip",
            archiveKey = path,
            entryName = textEntry,
            entrySize = textHeader.uncompressedSize,
            extension = textExtension
        ).substringBeforeLast('.', missingDelimiterValue = "zip_book")
        val targetDir = File(context.cacheDir, "archive_text_cache/$rootName").apply { mkdirs() }

        for (header in zip.fileHeaders) {
            if (header.isDirectory) continue
            val normalizedName = header.fileName.replace('\\', '/')
            val target = File(targetDir, normalizedName).canonicalFile
            val canonicalRoot = targetDir.canonicalFile
            if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true)) {
                continue
            }
            if (target.exists() && target.length() == header.uncompressedSize) {
                continue
            }
            target.parentFile?.mkdirs()
            zip.getInputStream(header).use { input ->
                target.outputStream().use { output -> input.copyTo(output) }
            }
        }
        return File(targetDir, textEntry.replace('\\', '/')).takeIf { it.isFile }
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
