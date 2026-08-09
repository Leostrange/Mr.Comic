package io.leostrange.mrcomic.core.data.repository

import android.net.Uri
import io.leostrange.mrcomic.core.model.ComicFormat
import java.io.File
import java.io.InputStream
import java.net.URLDecoder
import java.util.zip.ZipInputStream

/**
 * Classifies an import before [ComicRepository] persists it. The detector is
 * deliberately agnostic to how archives reach it: the host wires two adapters
 * through [archiveAccessFor] — a stream source for ZIP/TAR scans and a
 * random-access materialiser for 7Z/RAR scans — and the detector does the
 * rest here so the classification logic stays testable without Android.
 */
internal class ComicFormatDetector(
    private val openInputStream: (Uri) -> InputStream?,
    private val archiveAccessFor: (Uri) -> ArchiveAccess?,
    private val onMagicDetectionFailure: (Uri, Exception) -> Unit = { _, _ -> }
) {

    fun detect(uri: Uri, name: String?, mimeType: String?): ComicFormat {
        detectByExtension(name).takeIf { it != ComicFormat.UNKNOWN }?.let { return it }
        val textArchive = if (mimeType.isArchiveMimeType()) {
            archiveContentForUri(uri) != null
        } else {
            false
        }
        detectByMime(mimeType, textArchive).takeIf { it != ComicFormat.UNKNOWN }?.let { return it }
        return detectByMagic(uri)
    }

    /**
     * Routes a URI through the configured adapters: ZIP and TAR scan via
     * [ArchiveStreamSource], 7Z and RAR scan via a temp file produced by
     * [RandomAccessArchiveMaterialiser] (which the detector deletes after use).
     */
    internal fun archiveContentForUri(uri: Uri): ComicFormat? {
        val access = archiveAccessFor(uri) ?: return null
        val header = ByteArray(MAGIC_HEADER_SIZE)
        val read = runCatching { access.stream.openStream()?.use { it.read(header) } }.getOrNull() ?: -1
        return when {
            read >= 4 && header.startsWithMagic(SEVENZ_MAGIC) ->
                detectArchiveContentFormat(access.randomAccess, "7z")
            read >= 4 && (header.startsWithMagic(RAR4_MAGIC) || header.startsWithMagic(RAR5_MAGIC)) ->
                detectArchiveContentFormat(access.randomAccess, "rar")
            else -> detectArchiveContentFormat { access.stream.openStream() }
        }
    }

    fun detectByExtension(name: String?): ComicFormat = when (
        name?.substringAfterLast('.', missingDelimiterValue = "")?.lowercase()
    ) {
        "cbz" -> ComicFormat.CBZ
        "zip" -> ComicFormat.ZIP
        "cbr" -> ComicFormat.RAR
        "rar" -> ComicFormat.RAR
        "cb7", "7z" -> ComicFormat.SEVENZ
        "cbt", "tar" -> ComicFormat.TAR
        "pdf" -> ComicFormat.PDF
        "epub" -> ComicFormat.EPUB
        "fb2" -> ComicFormat.FB2
        "txt", "text" -> ComicFormat.TXT
        "htm", "html", "xhtml" -> ComicFormat.HTML
        "md", "markdown" -> ComicFormat.MARKDOWN
        "rtf" -> ComicFormat.RTF
        "mobi", "prc" -> ComicFormat.MOBI
        "azw", "azw3", "kf8" -> ComicFormat.AZW3
        "docx" -> ComicFormat.DOCX
        "odt" -> ComicFormat.ODT
        "djvu", "djv" -> ComicFormat.DJVU
        else -> ComicFormat.UNKNOWN
    }

    internal fun detectByMime(mimeType: String?, containsTextArchive: Boolean): ComicFormat = when (mimeType) {
        "application/pdf" -> ComicFormat.PDF
        "application/epub+zip" -> ComicFormat.EPUB
        "application/zip", "application/x-cbz" ->
            if (containsTextArchive) ComicFormat.ZIP else ComicFormat.CBZ
        "application/x-cbr", "application/vnd.comicbook-rar", "application/x-rar-compressed",
        "application/x-rar", "application/vnd.rar" ->
            if (containsTextArchive) ComicFormat.RAR else ComicFormat.CBR
        "application/x-fictionbook+xml", "text/xml" -> ComicFormat.FB2
        "text/plain" -> ComicFormat.TXT
        "text/html", "application/xhtml+xml" -> ComicFormat.HTML
        "text/markdown" -> ComicFormat.MARKDOWN
        "application/rtf", "text/rtf" -> ComicFormat.RTF
        "application/x-mobipocket-ebook", "application/vnd.amazon.ebook",
        "application/vnd.amazon.mobi8-ebook" -> ComicFormat.MOBI
        "image/vnd.djvu", "image/x-djvu", "image/vnd.djvu+multipage", "application/x-djvu" -> ComicFormat.DJVU
        "application/vnd.openxmlformats-officedocument.wordprocessingml.document" -> ComicFormat.DOCX
        "application/vnd.oasis.opendocument.text" -> ComicFormat.ODT
        else -> ComicFormat.UNKNOWN
    }

    private fun detectByMagic(uri: Uri): ComicFormat {
        return try {
            val header = ByteArray(MAGIC_HEADER_SIZE)
            val read = openInputStream(uri)?.use { it.read(header) } ?: -1
            if (read < 4) return ComicFormat.UNKNOWN
            if (header.startsWithMagic(ZIP_MAGIC)) detectZipContainerFormat(uri) else detectByMagicBytes(header)
        } catch (exception: Exception) {
            onMagicDetectionFailure(uri, exception)
            ComicFormat.UNKNOWN
        }
    }

    internal fun detectByMagicBytes(header: ByteArray): ComicFormat = when {
        header.startsWithMagic(RAR4_MAGIC) || header.startsWithMagic(RAR5_MAGIC) -> ComicFormat.CBR
        header.startsWithMagic(PDF_MAGIC) -> ComicFormat.PDF
        header.startsWithMagic(SEVENZ_MAGIC) -> ComicFormat.SEVENZ
        header.hasSliceAt(60, MOBI_MAGIC) -> ComicFormat.MOBI
        header.isDjvuDocument() -> ComicFormat.DJVU
        else -> ComicFormat.UNKNOWN
    }

    private fun detectZipContainerFormat(uri: Uri): ComicFormat {
        val containerFormat = runCatching {
            openInputStream(uri)?.use { input ->
                ZipInputStream(input.buffered()).use { zip ->
                    generateSequence { zip.nextEntry }
                        .take(12)
                        .map { it.name.lowercase() }
                        .firstNotNullOfOrNull { entryName ->
                            when {
                                entryName == "word/document.xml" -> ComicFormat.DOCX
                                entryName == "mimetype" -> {
                                    val mime = zip.readBytes().toString(Charsets.UTF_8).trim()
                                    if (mime == "application/vnd.oasis.opendocument.text") ComicFormat.ODT else null
                                }
                                entryName == "content.xml" -> ComicFormat.ODT
                                else -> null
                            }
                        }
                }
            }
        }.getOrNull()
        return containerFormat ?: ComicFormat.CBZ
    }

    internal companion object {
        const val MAGIC_HEADER_SIZE = 80
        val ZIP_MAGIC = byteArrayOf(0x50, 0x4B, 0x03, 0x04)
        val RAR4_MAGIC = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00)
        val RAR5_MAGIC = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x01, 0x00)
        val PDF_MAGIC = byteArrayOf(0x25, 0x50, 0x44, 0x46)
        val SEVENZ_MAGIC = byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C)
        val MOBI_MAGIC = "BOOKMOBI".encodeToByteArray()
        val DJVU_CONTAINER_MAGIC = "AT&TFORM".encodeToByteArray()
        val DJVU_SINGLE_MAGIC = "DJVU".encodeToByteArray()
        val DJVU_MULTI_MAGIC = "DJVM".encodeToByteArray()
    }
}

internal fun deriveComicTitleFromPath(path: String): String {
    val parsed = runCatching { Uri.parse(path) }.getOrNull()
    val rawName = parsed?.lastPathSegment ?: path.substringAfterLast('/').substringAfterLast('\\')
    return runCatching { URLDecoder.decode(rawName, "UTF-8") }
        .getOrDefault(rawName)
        .substringBeforeLast('.')
        .ifBlank { "Untitled" }
}

internal fun ByteArray.startsWithMagic(other: ByteArray): Boolean =
    size >= other.size && other.indices.all { this[it] == other[it] }

internal fun ByteArray.hasSliceAt(offset: Int, other: ByteArray): Boolean =
    offset >= 0 && size >= offset + other.size && other.indices.all { this[offset + it] == other[it] }

internal fun ByteArray.isDjvuDocument(): Boolean =
    startsWithMagic(ComicFormatDetector.DJVU_CONTAINER_MAGIC) &&
        (hasSliceAt(12, ComicFormatDetector.DJVU_SINGLE_MAGIC) || hasSliceAt(12, ComicFormatDetector.DJVU_MULTI_MAGIC))

private fun String?.isArchiveMimeType(): Boolean = this in setOf(
    "application/zip",
    "application/x-cbz",
    "application/x-cbr",
    "application/vnd.comicbook-rar",
    "application/x-rar-compressed",
    "application/x-rar",
    "application/vnd.rar"
)

/**
 * Scans the contents of an archive to detect the format of the book inside.
 * Returns the detected format, or null if the archive contains only images (comic)
 * or cannot be parsed.
 *
 * Handles ZIP and TAR which can be read through a plain [InputStream].
 * 7z and RAR require random file access — use [detectArchiveContentFormat] (File).
 *
 * @param openStream a supplier that returns an InputStream for the archive.
 *   The caller is responsible for closing the stream.
 */
internal fun detectArchiveContentFormat(openStream: () -> InputStream?): ComicFormat? {
    return runCatching {
        // ZIP
        openStream()?.use { input ->
            runCatching {
                ZipInputStream(input.buffered()).use { zip ->
                    val entries = generateSequence { zip.nextEntry }
                        .map { it.name to it.isDirectory }
                    classifyArchiveEntries(entries)
                }
            }.getOrNull()?.let { return@runCatching it }
        }

        // TAR
        openStream()?.use { input ->
            runCatching {
                org.apache.commons.compress.archivers.tar.TarArchiveInputStream(input.buffered()).use { tis ->
                    val entries = generateSequence { tis.nextEntry }
                        .map { it.name to it.isDirectory }
                    classifyArchiveEntries(entries)
                }
            }.getOrNull()?.let { return@runCatching it }
        }

        null
    }.getOrNull()
}

/**
 * Scans a local archive file to detect the format of the book inside.
 *
 * Handles 7Z (commons-compress [SevenZFile]) and RAR4 (junrar [Archive]) which need
 * random file access and cannot be scanned through a plain InputStream.
 * Returns null for image-only archives, RAR5 (not supported by junrar), or unreadable files.
 */
internal fun detectArchiveContentFormat(file: File): ComicFormat? {
    if (!file.isFile) return null
    return runCatching {
        val header = ByteArray(8)
        file.inputStream().use { input ->
            if (input.read(header) < 4) return@runCatching null
        }
        when {
            header.startsWithMagic(ComicFormatDetector.SEVENZ_MAGIC) ->
                org.apache.commons.compress.archivers.sevenz.SevenZFile(file).use { sz ->
                    val entries = sz.entries.asSequence()
                        .map { (it.name ?: "") to it.isDirectory }
                    classifyArchiveEntries(entries)
                }
            header.startsWithMagic(ComicFormatDetector.RAR4_MAGIC) ->
                com.github.junrar.Archive(file).use { archive ->
                    val entries = archive.fileHeaders.asSequence()
                        .map { (it.fileNameString ?: "") to it.isDirectory }
                    classifyArchiveEntries(entries)
                }
            else -> null
        }
    }.getOrNull()
}

/**
 * Scans an archive through a temp file produced by [randomAccess]. Used for
 * 7Z and RAR4 which cannot read from a plain [java.io.InputStream]. The
 * detector always deletes the temp file in a `finally` block, even when the
 * underlying scanner throws, so the materialiser caller does not have to
 * track lifecycle.
 */
internal fun detectArchiveContentFormat(
    randomAccess: RandomAccessArchiveMaterialiser,
    scanExtension: String
): ComicFormat? {
    val tempFile = runCatching { randomAccess.materialise(scanExtension) }.getOrNull() ?: return null
    return try {
        detectArchiveContentFormat(tempFile)
    } finally {
        runCatching { tempFile.delete() }
    }
}

/**
 * Classifies archive entries by their file extension, up to [limit] scanned entries.
 * Returns the first text-book format found, or null if the archive is image-only.
 */
private fun classifyArchiveEntries(
    entries: Sequence<Pair<String, Boolean>>,
    limit: Int = 100
): ComicFormat? {
    var textFormat: ComicFormat? = null
    var textCount = 0
    var scanned = 0
    for ((name, isDirectory) in entries) {
        if (isDirectory) continue
        if (scanned >= limit) break
        scanned++
        val entryExt = name.lowercase().substringAfterLast('.', "")
        val fmt = archiveTextFormatFromExtension(entryExt)
        if (fmt != null) {
            textFormat = fmt
            textCount++
        }
    }
    return if (textCount > 0) textFormat else null
}

private fun archiveTextFormatFromExtension(e: String): ComicFormat? = when (e) {
    "epub" -> ComicFormat.EPUB
    "fb2" -> ComicFormat.FB2
    "txt", "text" -> ComicFormat.TXT
    "htm", "html", "xhtml" -> ComicFormat.HTML
    "md", "markdown" -> ComicFormat.MARKDOWN
    "rtf" -> ComicFormat.RTF
    "mobi", "prc" -> ComicFormat.MOBI
    "docx" -> ComicFormat.DOCX
    "odt" -> ComicFormat.ODT
    else -> null
}
