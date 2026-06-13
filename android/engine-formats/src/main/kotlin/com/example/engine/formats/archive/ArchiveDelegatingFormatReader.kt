package com.example.engine.formats.archive

import android.content.Context
import android.graphics.Bitmap
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
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.fb2.Fb2FormatReader
import com.example.engine.formats.rar.RarFormatReader
import com.example.engine.formats.sevenz.SevenZFormatReader
import com.example.engine.formats.tar.TarFormatReader
import com.example.engine.formats.text.TextFormatReader
import com.example.engine.formats.zip.ZipFormatReader
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import net.sf.sevenzipjbinding.ExtractOperationResult
import net.sf.sevenzipjbinding.IInArchive
import net.sf.sevenzipjbinding.ISequentialOutStream
import net.sf.sevenzipjbinding.PropID
import net.sf.sevenzipjbinding.SevenZip
import net.sf.sevenzipjbinding.impl.RandomAccessFileInStream
import org.apache.commons.compress.archivers.sevenz.SevenZFile
import org.apache.commons.compress.archivers.tar.TarArchiveInputStream
import java.io.File
import java.io.RandomAccessFile
import java.util.Locale

class ArchiveDelegatingFormatReader(
    private val context: Context,
    private val path: String,
    private val archiveFormat: ComicFormat,
    private val deviceProfile: RenderDeviceProfile,
    private val bitmapAllocator: BitmapAllocator,
    private val epubStructureCacheDao: EpubStructureCacheDao,
    private val epubManifestCacheDao: EpubManifestCacheDao
) : FormatReader {

    private val delegate: FormatReader by lazy { createDelegate() }
    private var resolvedEntry: ArchiveResolvedEntry? = null
    private var archiveCacheHit: Boolean = false

    override fun rendersHtmlContent(): Boolean = delegate.rendersHtmlContent()

    override suspend fun getPageCount(): Int = delegate.getPageCount()

    override suspend fun getPage(index: Int): Bitmap? = delegate.getPage(index)

    override suspend fun getPage(index: Int, renderQuality: Int): Bitmap? =
        delegate.getPage(index, renderQuality)

    override suspend fun getHtmlPage(index: Int): String? = delegate.getHtmlPage(index)

    override fun htmlBaseUrl(): String? = delegate.htmlBaseUrl()

    override fun htmlAssetBasePath(index: Int): String? = delegate.htmlAssetBasePath(index)

    override fun openHtmlAsset(path: String): FormatReaderWebResource? =
        delegate.openHtmlAsset(path)

    override suspend fun getMetadata(): Map<String, String> = buildMap {
        putAll(delegate.getMetadata())
        put("resolvedContainer", if (delegate.rendersHtmlContent()) "archive-text" else "archive-raster")
        resolvedEntry?.format?.let { put("innerArchiveFormat", it.name) }
        put("archiveCacheHit", archiveCacheHit.toString())
    }

    override fun getTableOfContents(): List<TocEntry> = delegate.getTableOfContents()

    override fun getFootnoteText(anchorId: String): String? = delegate.getFootnoteText(anchorId)

    override fun resolveHrefToPage(href: String): Int? = delegate.resolveHrefToPage(href)

    override fun close() = delegate.close()

    private fun createDelegate(): FormatReader {
        val entries = listArchiveEntries()
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(entries.map { it.name })
        resolvedEntry = resolved
        val textEntry = resolved.entryName
        val textFormat = resolved.format
        if (resolved.kind == ArchiveContentKind.SINGLE_BOOK && textEntry != null && textFormat != null) {
            val extracted = extractSingleBookArchive(textEntry)
            if (extracted != null) {
                return createTextDelegate(extracted, textFormat)
            }
            Log.w(TAG, "Failed to extract text entry '$textEntry' from archive: $path")
            return errorTextReader("Unable to extract archived book.")
        }
        return createRasterDelegate()
    }

    private fun createTextDelegate(file: File, format: ComicFormat): FormatReader = when (format) {
        ComicFormat.EPUB -> EpubFormatReader(context, file.absolutePath, epubStructureCacheDao, epubManifestCacheDao)
        ComicFormat.FB2 -> Fb2FormatReader(context, file.absolutePath)
        ComicFormat.TXT,
        ComicFormat.HTML,
        ComicFormat.MARKDOWN,
        ComicFormat.RTF,
        ComicFormat.MOBI,
        ComicFormat.AZW3,
        ComicFormat.DOCX,
        ComicFormat.ODT -> TextFormatReader(context, file.absolutePath, format)
        else -> errorTextReader("Unsupported archived text format: $format")
    }

    private fun createRasterDelegate(): FormatReader = when (archiveFormat) {
        ComicFormat.CBZ, ComicFormat.ZIP -> ZipFormatReader(context, path, deviceProfile, bitmapAllocator)
        ComicFormat.CBR, ComicFormat.RAR -> RarFormatReader(context, path, deviceProfile, bitmapAllocator)
        ComicFormat.SEVENZ -> SevenZFormatReader(context, path, deviceProfile, bitmapAllocator)
        ComicFormat.TAR -> TarFormatReader(context, path, deviceProfile, bitmapAllocator)
        else -> errorTextReader("Unsupported archive format: $archiveFormat")
    }

    private fun errorTextReader(message: String): FormatReader = object : FormatReader {
        override fun rendersHtmlContent(): Boolean = true
        override suspend fun getPageCount(): Int = 1
        override suspend fun getPage(index: Int): Bitmap? = null
        override suspend fun getHtmlPage(index: Int): String = "<p>${message.escapeHtml()}</p>"
        override fun close() = Unit
    }

    private fun extractSingleBookArchive(entryName: String): File? {
        val entryInfo = listArchiveEntries().firstOrNull { it.name == entryName } ?: return null
        val extension = ArchiveFormatSupport.extensionOf(entryName).ifBlank { "txt" }
        val cacheName = ArchiveFormatSupport.textCacheFileName(
            prefix = archivePrefix(),
            archiveKey = archiveCacheIdentity(),
            entryName = entryName,
            entrySize = entryInfo.size.coerceAtLeast(0L),
            extension = extension
        )
        val cacheRoot = File(context.cacheDir, "archive_text_cache/${cacheName.substringBeforeLast('.', cacheName)}")
        val target = safeEntryFile(cacheRoot, entryName) ?: return null
        if (target.isFile && target.length() > 0L) {
            archiveCacheHit = true
            return target
        }
        archiveCacheHit = false
        runCatching { cacheRoot.deleteRecursively() }
        cacheRoot.mkdirs()
        val extracted = when (archivePrefix()) {
            "zip" -> extractSingleZipEntry(cacheRoot, entryName)
            "rar" -> extractSingleRarEntry(cacheRoot, entryName)
            "7z" -> extractSingleSevenZEntry(cacheRoot, entryName)
            "tar" -> extractSingleTarEntry(cacheRoot, entryName)
            else -> false
        }
        return if (extracted && target.isFile && target.length() > 0L) target else null
    }

    private fun listArchiveEntries(): List<ArchiveEntryInfo> = when (archivePrefix()) {
        "zip" -> listZipEntries()
        "rar" -> listRarEntries()
        "7z" -> listSevenZEntries()
        "tar" -> listTarEntries()
        else -> emptyList()
    }

    private fun listZipEntries(): List<ArchiveEntryInfo> = runCatching {
        val sourceFile = archiveSourceFile()
        if (!sourceFile.canRead()) {
            Log.w(TAG, "ZIP file not readable: ${sourceFile.absolutePath}")
            return@runCatching emptyList()
        }
        ZipFile(sourceFile).fileHeaders
            .filter { !it.isDirectory }
            .map { ArchiveEntryInfo(it.fileName, it.uncompressedSize) }
    }.getOrElse {
        Log.w(TAG, "Failed to list ZIP entries: $path", it)
        emptyList()
    }

    private fun extractZipEntries(root: File): Boolean = runCatching {
        val sourceFile = archiveSourceFile()
        if (!sourceFile.canRead()) {
            Log.w(TAG, "ZIP file not readable for extraction: ${sourceFile.absolutePath}")
            return@runCatching false
        }
        val zip = ZipFile(sourceFile)
        zip.fileHeaders.filter { !it.isDirectory }.forEach { header ->
            val target = safeEntryFile(root, header.fileName) ?: return@forEach
            target.parentFile?.mkdirs()
            zip.getInputStream(header).use { input ->
                target.outputStream().use { output -> input.copyTo(output) }
            }
        }
        true
    }.getOrElse {
        Log.w(TAG, "Failed to extract ZIP text archive: $path", it)
        false
    }

    private fun listRarEntries(): List<ArchiveEntryInfo> = withRarArchive { archive ->
        (0 until archive.numberOfItems).mapNotNull { index ->
            val isFolder = archive.getProperty(index, PropID.IS_FOLDER).asBooleanFlag()
            val name = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
            if (isFolder || name.isBlank()) null else {
                ArchiveEntryInfo(name, (archive.getProperty(index, PropID.SIZE) as? Number)?.toLong() ?: 0L, index)
            }
        }
    } ?: emptyList()

    private fun extractRarEntries(root: File): Boolean = withRarArchive { archive ->
        var success = true
        (0 until archive.numberOfItems).forEach { index ->
            val isFolder = archive.getProperty(index, PropID.IS_FOLDER).asBooleanFlag()
            val name = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
            if (!isFolder && name.isNotBlank()) {
                val target = safeEntryFile(root, name) ?: return@forEach
                target.parentFile?.mkdirs()
                val result = target.outputStream().use { output ->
                    archive.extractSlow(index, object : ISequentialOutStream {
                        override fun write(data: ByteArray?): Int {
                            if (data == null || data.isEmpty()) return 0
                            output.write(data)
                            return data.size
                        }
                    })
                }
                if (result != ExtractOperationResult.OK) success = false
            }
        }
        success
    } ?: false

    private fun <T> withRarArchive(block: (IInArchive) -> T): T? = runCatching {
        RandomAccessFile(archiveSourceFile(), "r").use { raf ->
            RandomAccessFileInStream(raf).use { stream ->
                SevenZip.openInArchive(null, stream).use(block)
            }
        }
    }.getOrElse {
        Log.w(TAG, "Failed to read RAR archive: $path", it)
        null
    }

    private fun listSevenZEntries(): List<ArchiveEntryInfo> = runCatching {
        SevenZFile(archiveSourceFile()).use { sevenZ ->
            sevenZ.entries.asSequence()
                .filter { !it.isDirectory && !it.name.isNullOrBlank() }
                .map { ArchiveEntryInfo(it.name, it.size) }
                .toList()
        }
    }.getOrElse {
        Log.w(TAG, "Failed to list 7z entries: $path", it)
        emptyList()
    }

    private fun extractSevenZEntries(root: File): Boolean = runCatching {
        SevenZFile(archiveSourceFile()).use { sevenZ ->
            sevenZ.entries.asSequence()
                .filter { !it.isDirectory && !it.name.isNullOrBlank() }
                .forEach { entry ->
                    val target = safeEntryFile(root, entry.name) ?: return@forEach
                    target.parentFile?.mkdirs()
                    sevenZ.getInputStream(entry).use { input ->
                        target.outputStream().use { output -> input.copyTo(output) }
                    }
                }
        }
        true
    }.getOrElse {
        Log.w(TAG, "Failed to extract 7z text archive: $path", it)
        false
    }

    private fun listTarEntries(): List<ArchiveEntryInfo> = runCatching {
        openArchiveInput().use { input ->
            TarArchiveInputStream(input).use { tar ->
                val entries = mutableListOf<ArchiveEntryInfo>()
                var entry = tar.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        entries += ArchiveEntryInfo(entry.name.orEmpty(), entry.size)
                    }
                    entry = tar.nextEntry
                }
                entries
            }
        }
    }.getOrElse {
        Log.w(TAG, "Failed to list TAR entries: $path", it)
        emptyList()
    }

    private fun extractTarEntries(root: File): Boolean = runCatching {
        openArchiveInput().use { input ->
            TarArchiveInputStream(input).use { tar ->
                var entry = tar.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        val target = safeEntryFile(root, entry.name.orEmpty())
                        if (target != null) {
                            target.parentFile?.mkdirs()
                            target.outputStream().use { output ->
                                tar.copyTo(output, bufferSize = entry.size.toInt().coerceAtMost(8192))
                            }
                        }
                    }
                    entry = tar.nextEntry
                }
            }
        }
        true
    }.getOrElse {
        Log.w(TAG, "Failed to extract TAR text archive: $path", it)
        false
    }

    private fun extractSingleZipEntry(root: File, entryName: String): Boolean = runCatching {
        val sourceFile = archiveSourceFile()
        if (!sourceFile.canRead()) {
            Log.w(TAG, "ZIP file not readable for single extraction: ${sourceFile.absolutePath}")
            return@runCatching false
        }
        val zip = ZipFile(sourceFile)
        val header = zip.getFileHeader(entryName) ?: zip.fileHeaders
            .firstOrNull { it.fileName.equals(entryName, ignoreCase = true) }
            ?: return@runCatching false
        val target = safeEntryFile(root, header.fileName) ?: return@runCatching false
        target.parentFile?.mkdirs()
        zip.getInputStream(header).use { input ->
            target.outputStream().use { output -> input.copyTo(output) }
        }
        true
    }.getOrElse {
        Log.w(TAG, "Failed to extract single ZIP entry: $path ($entryName)", it)
        false
    }

    private fun extractSingleRarEntry(root: File, entryName: String): Boolean = withRarArchive { archive ->
        val index = findRarEntryIndex(archive, entryName) ?: return@withRarArchive false
        val target = safeEntryFile(root, entryName) ?: return@withRarArchive false
        target.parentFile?.mkdirs()
        val result = target.outputStream().use { output ->
            archive.extractSlow(index, object : ISequentialOutStream {
                override fun write(data: ByteArray?): Int {
                    if (data == null || data.isEmpty()) return 0
                    output.write(data)
                    return data.size
                }
            })
        }
        result == ExtractOperationResult.OK
    } ?: false

    private fun findRarEntryIndex(archive: IInArchive, entryName: String): Int? {
        (0 until archive.numberOfItems).forEach { index ->
            val name = archive.getStringProperty(index, PropID.PATH)?.trim().orEmpty()
            if (name.equals(entryName, ignoreCase = true) || name.replace('\\', '/').equals(entryName.replace('\\', '/'), ignoreCase = true)) {
                return index
            }
        }
        return null
    }

    private fun extractSingleSevenZEntry(root: File, entryName: String): Boolean = runCatching {
        SevenZFile(archiveSourceFile()).use { sevenZ ->
            val entry = sevenZ.entries.firstOrNull { e ->
                !e.isDirectory && (e.name.equals(entryName, ignoreCase = true) ||
                    e.name?.replace('\\', '/')?.equals(entryName.replace('\\', '/'), ignoreCase = true) == true)
            } ?: return@use false
            val target = safeEntryFile(root, entry.name ?: return@use false) ?: return@use false
            target.parentFile?.mkdirs()
            sevenZ.getInputStream(entry).use { input ->
                target.outputStream().use { output -> input.copyTo(output) }
            }
            true
        }
    }.getOrElse {
        Log.w(TAG, "Failed to extract single 7z entry: $path ($entryName)", it)
        false
    }

    private fun extractSingleTarEntry(root: File, entryName: String): Boolean = runCatching {
        openArchiveInput().use { input ->
            TarArchiveInputStream(input).use { tar ->
                var entry = tar.nextEntry
                while (entry != null) {
                    if (!entry.isDirectory) {
                        val name = entry.name.orEmpty()
                        if (name.equals(entryName, ignoreCase = true) || name.replace('\\', '/').equals(entryName.replace('\\', '/'), ignoreCase = true)) {
                            val target = safeEntryFile(root, name)
                            if (target != null) {
                                target.parentFile?.mkdirs()
                                target.outputStream().use { output ->
                                    tar.copyTo(output, bufferSize = entry.size.toInt().coerceAtMost(8192))
                                }
                                return@runCatching true
                            }
                        }
                    }
                    entry = tar.nextEntry
                }
            }
        }
        false
    }.getOrElse {
        Log.w(TAG, "Failed to extract single TAR entry: $path ($entryName)", it)
        false
    }

    private fun openArchiveInput() =
        if (path.startsWith("content://")) {
            context.contentResolver.openInputStream(Uri.parse(path))
                ?: error("Cannot open archive content URI: $path")
        } else {
            File(path).inputStream()
        }

    private fun archiveSourceFile(): File {
        if (!path.startsWith("content://")) {
            val file = File(path)
            if (!file.canRead()) {
                Log.w(TAG, "No read access for archive file: $path")
            }
            return file
        }
        val cacheDir = File(context.cacheDir, "archive_source_cache").apply { mkdirs() }
        val file = File(cacheDir, "${archivePrefix()}_${path.hashCode().toString(16)}.${archivePrefix()}")
        if (file.isFile && file.length() > 0L && file.canRead()) {
            return file
        }
        runCatching { file.delete() }
        context.contentResolver.openInputStream(Uri.parse(path)).use { input ->
            requireNotNull(input) { "Cannot open archive URI: $path" }
            file.outputStream().use { output -> input.copyTo(output) }
        }
        if (!file.canRead()) {
            Log.w(TAG, "Created archive file is not readable: ${file.absolutePath}")
        }
        return file
    }

    private fun archiveCacheIdentity(): String {
        if (path.startsWith("content://")) return path
        val file = File(path)
        return listOf(file.absolutePath, file.length(), file.lastModified()).joinToString("|")
    }

    private fun safeEntryFile(root: File, entryName: String): File? {
        val normalized = entryName.replace('\\', '/').trimStart('/').takeIf { it.isNotBlank() } ?: return null
        if (normalized.split('/').any { it == ".." }) return null
        val target = File(root, normalized).canonicalFile
        val canonicalRoot = root.canonicalFile
        val rootPath = canonicalRoot.path.trimEnd(File.separatorChar) + File.separator
        return target.takeIf { it.path == canonicalRoot.path || it.path.startsWith(rootPath, ignoreCase = true) }
    }

    private fun archivePrefix(): String = when (archiveFormat) {
        ComicFormat.CBZ, ComicFormat.ZIP -> "zip"
        ComicFormat.CBR, ComicFormat.RAR -> "rar"
        ComicFormat.SEVENZ -> "7z"
        ComicFormat.TAR -> "tar"
        else -> archiveFormat.name.lowercase(Locale.US)
    }

    private data class ArchiveEntryInfo(
        val name: String,
        val size: Long,
        val index: Int = -1
    )

    private fun String.escapeHtml(): String = replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")

    private companion object {
        const val TAG = "ArchiveDelegatingReader"
    }
}

private fun Any?.asBooleanFlag(): Boolean = when (this) {
    is Boolean -> this
    is Number -> toInt() != 0
    is String -> equals("true", ignoreCase = true) || equals("1")
    else -> false
}
