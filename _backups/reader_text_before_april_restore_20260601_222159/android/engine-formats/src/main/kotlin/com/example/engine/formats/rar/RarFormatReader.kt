package com.example.engine.formats.rar

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
import net.sf.sevenzipjbinding.ExtractOperationResult
import net.sf.sevenzipjbinding.IInArchive
import net.sf.sevenzipjbinding.ISequentialOutStream
import net.sf.sevenzipjbinding.PropID
import net.sf.sevenzipjbinding.SevenZip
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.RandomAccessFile

class RarFormatReader(
    private val context: Context,
    private val path: String,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator,
    private val textReaderFactory: ((File, ComicFormat) -> FormatReader?)? = null
) : FormatReader {

    companion object {
        private const val TAG = "RarFormatReader"
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    }

    private data class ArchivePage(
        val itemIndex: Int,
        val path: String,
        val size: Long
    )

    private val lock = Any()
    private var archive: IInArchive? = null
    private var randomAccessFile: RandomAccessFile? = null
    private var inputStream: RandomAccessFileInStream? = null
    private var tempFile: File? = null

    private val archiveItems: List<ArchivePage> by lazy { collectArchiveItems() }
    private val textDelegateLazy = lazy(LazyThreadSafetyMode.SYNCHRONIZED) {
        buildTextDelegate()
    }
    private val textDelegate: FormatReader?
        get() = textDelegateLazy.value
    private val pageItems: List<ArchivePage> by lazy { collectPageItems() }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        textDelegate?.getPageCount() ?: pageItems.size
    }

    override suspend fun getPage(index: Int): Bitmap? = getPage(index, 1)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (textDelegate != null) return@withContext null
        val page = pageItems.getOrNull(index) ?: return@withContext null
        synchronized(lock) {
            val bytes = extractEntryBytes(page.itemIndex) ?: return@withContext null
            decodeBitmapFromByteArray(
                context = context,
                bytes = bytes,
                deviceProfile = deviceProfile,
                bitmapAllocator = bitmapAllocator,
                renderQuality = renderQuality
            ) ?: BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
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
            try {
                archive?.close()
            } catch (_: Exception) {
            }
            try {
                inputStream?.close()
            } catch (_: Exception) {
            }
            try {
                randomAccessFile?.close()
            } catch (_: Exception) {
            }
            archive = null
            inputStream = null
            randomAccessFile = null
            tempFile?.let { file ->
                runCatching { file.delete() }
                    .onFailure { Log.w(TAG, "Failed to delete temp RAR: ${file.absolutePath}", it) }
            }
            tempFile = null
        }
    }

    private fun collectPageItems(): List<ArchivePage> {
        synchronized(lock) {
            return try {
                if (textDelegate != null) return emptyList()
                val candidates = archiveItems

                val byExtension = candidates.filter { isImagePath(it.path) }
                if (byExtension.isNotEmpty()) return byExtension

                // Fallback for archives whose page files have missing or non-standard extensions.
                candidates.filter { page -> extractEntryBytes(page.itemIndex)?.isBitmapBytes() == true }
            } catch (error: Throwable) {
                Log.e(TAG, "Failed to list RAR entries", error)
                emptyList()
            }
        }
    }

    private fun collectArchiveItems(): List<ArchivePage> {
        synchronized(lock) {
            return try {
                val inArchive = ensureArchive() ?: return emptyList()
                (0 until inArchive.numberOfItems)
                    .mapNotNull { itemIndex ->
                        val itemPath = inArchive.getStringProperty(itemIndex, PropID.PATH)?.trim().orEmpty()
                        if (itemPath.isBlank() || inArchive.getProperty(itemIndex, PropID.IS_FOLDER).asBooleanFlag()) {
                            null
                        } else {
                            ArchivePage(
                                itemIndex = itemIndex,
                                path = itemPath,
                                size = inArchive.getProperty(itemIndex, PropID.SIZE).asLongSize()
                            )
                        }
                    }
                    .sortedWith { left, right ->
                        ArchiveFormatSupport.naturalPathComparator.compare(left.path, right.path)
                    }
            } catch (error: Throwable) {
                Log.e(TAG, "Failed to list RAR entries", error)
                emptyList()
            }
        }
    }

    private fun buildTextDelegate(): FormatReader? {
        val factory = textReaderFactory ?: return null
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(archiveItems.map { it.path })
        val textEntry = resolved.entryName ?: return null
        val textFormat = resolved.format ?: return null
        val extracted = extractSingleBookArchive(textEntry) ?: return null
        return factory(extracted, textFormat)
    }

    private fun extractSingleBookArchive(textEntry: String): File? {
        val textItem = archiveItems.firstOrNull { it.path == textEntry } ?: return null
        val textExtension = ArchiveFormatSupport.extensionOf(textEntry)
        val rootName = ArchiveFormatSupport.textCacheFileName(
            prefix = "rar",
            archiveKey = path,
            entryName = textEntry,
            entrySize = textItem.size.coerceAtLeast(0),
            extension = textExtension
        ).substringBeforeLast('.', missingDelimiterValue = "rar_book")
        val targetDir = File(context.cacheDir, "archive_text_cache/$rootName").apply { mkdirs() }
        val canonicalRoot = targetDir.canonicalFile

        for (item in archiveItems) {
            val bytes = extractEntryBytes(item.itemIndex) ?: continue
            val target = File(targetDir, item.path.replace('\\', '/')).canonicalFile
            if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true)) {
                continue
            }
            if (target.exists() && target.length() == bytes.size.toLong()) {
                continue
            }
            target.parentFile?.mkdirs()
            target.writeBytes(bytes)
        }
        return File(targetDir, textEntry.replace('\\', '/')).takeIf { it.isFile }
    }

    private fun ensureArchive(): IInArchive? {
        synchronized(lock) {
            archive?.let { return it }
            return try {
                val archiveFile = if (path.startsWith("content://")) {
                    copyToTempRar(Uri.parse(path))
                } else {
                    File(path)
                } ?: return null

                randomAccessFile = RandomAccessFile(archiveFile, "r")
                inputStream = RandomAccessFileInStream(randomAccessFile)
                SevenZip.openInArchive(null, inputStream).also { archive = it }
            } catch (error: Throwable) {
                Log.e(TAG, "Failed to open RAR: $path", error)
                null
            }
        }
    }

    private fun extractEntryBytes(itemIndex: Int): ByteArray? {
        val inArchive = ensureArchive() ?: return null
        val bytes = ByteArrayOutputStream()
        val result = inArchive.extractSlow(itemIndex, object : ISequentialOutStream {
            override fun write(data: ByteArray?): Int {
                if (data == null || data.isEmpty()) return 0
                bytes.write(data)
                return data.size
            }
        })
        return if (result == ExtractOperationResult.OK) {
            bytes.toByteArray()
        } else {
            Log.w(TAG, "RAR extract failed for item $itemIndex with result $result")
            null
        }
    }

    private fun isImagePath(name: String): Boolean {
        val ext = name.lowercase().substringAfterLast('.', "")
        return ext in IMAGE_EXTENSIONS
    }

    private fun ByteArray.isBitmapBytes(): Boolean {
        val options = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        BitmapFactory.decodeByteArray(this, 0, size, options)
        return options.outWidth > 0 && options.outHeight > 0
    }

    private fun copyToTempRar(uri: Uri): File? {
        return try {
            val cacheDir = File(context.cacheDir, "rar_cache").apply { mkdirs() }
            val file = File(cacheDir, "cbr_${uri.hashCode()}_${System.currentTimeMillis()}.rar")
            context.contentResolver.openInputStream(uri)?.use { input ->
                file.outputStream().use { output -> input.copyTo(output) }
            } ?: return null
            tempFile = file
            file
        } catch (error: Exception) {
            Log.e(TAG, "Failed to copy content RAR to temp", error)
            null
        }
    }
}

private fun Any?.asBooleanFlag(): Boolean = when (this) {
    is Boolean -> this
    is Number -> toInt() != 0
    is String -> equals("true", ignoreCase = true) || equals("1")
    else -> false
}

private fun Any?.asLongSize(): Long = when (this) {
    is Number -> toLong()
    is String -> toLongOrNull() ?: 0L
    else -> 0L
}
