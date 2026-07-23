package io.leostrange.mrcomic.core.data.repository

import android.net.Uri
import io.leostrange.mrcomic.core.model.ComicFormat
import java.io.File
import java.io.InputStream
import java.net.URLDecoder
import java.util.zip.ZipInputStream

/**
 * Classifies an import before [ComicRepository] persists it. Archive-content
 * inspection stays injectable because it needs the repository's temporary-file
 * lifecycle for RAR and 7Z sources.
 */
internal class ComicFormatDetector(
    private val openInputStream: (Uri) -> InputStream?,
    private val detectArchiveContentFormat: (Uri) -> ComicFormat?,
    private val onMagicDetectionFailure: (Uri, Exception) -> Unit = { _, _ -> }
) {

    fun detect(uri: Uri, name: String?, mimeType: String?): ComicFormat {
        detectByExtension(name).takeIf { it != ComicFormat.UNKNOWN }?.let { return it }
        val textArchive = if (mimeType.isArchiveMimeType()) detectArchiveContentFormat(uri) != null else false
        detectByMime(mimeType, textArchive).takeIf { it != ComicFormat.UNKNOWN }?.let { return it }
        return detectByMagic(uri)
    }

    fun detectByExtension(name: String?): ComicFormat = when (
        name?.substringAfterLast('.', missingDelimiterValue = "")?.lowercase()
    ) {
        "cbz" -> ComicFormat.CBZ
        "zip" -> ComicFormat.ZIP
        "cbr" -> ComicFormat.CBR
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

private fun ByteArray.startsWithMagic(other: ByteArray): Boolean =
    size >= other.size && other.indices.all { this[it] == other[it] }

private fun ByteArray.hasSliceAt(offset: Int, other: ByteArray): Boolean =
    offset >= 0 && size >= offset + other.size && other.indices.all { this[offset + it] == other[it] }

private fun ByteArray.isDjvuDocument(): Boolean =
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
 * @param openStream a supplier that returns an InputStream for the archive.
 *   The caller is responsible for closing the stream.
 */
internal fun detectArchiveContentFormat(openStream: () -> java.io.InputStream?): io.leostrange.mrcomic.core.model.ComicFormat? {
    val ext = runCatching {
        var imageCount = 0
        var textFormat: io.leostrange.mrcomic.core.model.ComicFormat? = null
        var textCount = 0

        fun getFormatFromExt(e: String): io.leostrange.mrcomic.core.model.ComicFormat? = when (e) {
            "epub" -> io.leostrange.mrcomic.core.model.ComicFormat.EPUB
            "fb2" -> io.leostrange.mrcomic.core.model.ComicFormat.FB2
            "txt", "text" -> io.leostrange.mrcomic.core.model.ComicFormat.TXT
            "htm", "html", "xhtml" -> io.leostrange.mrcomic.core.model.ComicFormat.HTML
            "md", "markdown" -> io.leostrange.mrcomic.core.model.ComicFormat.MARKDOWN
            "rtf" -> io.leostrange.mrcomic.core.model.ComicFormat.RTF
            "mobi", "prc" -> io.leostrange.mrcomic.core.model.ComicFormat.MOBI
            "docx" -> io.leostrange.mrcomic.core.model.ComicFormat.DOCX
            "odt" -> io.leostrange.mrcomic.core.model.ComicFormat.ODT
            else -> null
        }

        fun isImageExt(e: String): Boolean =
            e in setOf("jpg", "jpeg", "png", "webp", "gif", "bmp", "heic", "heif")

        // ZIP
        var processed = false
        runCatching {
            openStream()?.use { input ->
                java.util.zip.ZipInputStream(input.buffered()).use { zip ->
                    var entry = zip.nextEntry
                    var scanned = 0
                    while (entry != null && scanned < 100) {
                        if (!entry.isDirectory) {
                            scanned++
                            val entryExt = entry.name.lowercase().substringAfterLast('.', "")
                            val fmt = getFormatFromExt(entryExt)
                            if (fmt != null) {
                                textFormat = fmt
                                textCount++
                            } else if (isImageExt(entryExt)) {
                                imageCount++
                            }
                        }
                        entry = zip.nextEntry
                    }
                }
            }
            processed = true
        }

        // TAR
        if (textFormat == null) {
            runCatching {
                openStream()?.use { input ->
                    org.apache.commons.compress.archivers.tar.TarArchiveInputStream(input.buffered()).use { tis ->
                        var entry = tis.nextEntry
                        var scanned = 0
                        while (entry != null && scanned < 100) {
                            if (!entry.isDirectory) {
                                scanned++
                                val entryExt = entry.name.lowercase().substringAfterLast('.', "")
                                val fmt = getFormatFromExt(entryExt)
                                if (fmt != null) {
                                    textFormat = fmt
                                    textCount++
                                } else if (isImageExt(entryExt)) {
                                    imageCount++
                                }
                            }
                            entry = tis.nextEntry
                        }
                    }
                }
                if (!processed) processed = true
            }
        }

        // 7z and RAR require File-based access (not InputStream).
        // These formats are handled by ComicRepository.detectArchiveContentFormat()
        // which can copy the content URI to a temp file before scanning.

        if (textCount > 0 && textFormat != null) textFormat
        else null
    }.getOrNull()

    return ext
}
