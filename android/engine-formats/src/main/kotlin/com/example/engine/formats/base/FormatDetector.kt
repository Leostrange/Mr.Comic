package com.example.engine.formats.base

import com.example.core.model.ComicFormat
import java.io.InputStream

object FormatDetector {
    // Magic bytes
    private val ZIP_MAGIC  = byteArrayOf(0x50, 0x4B, 0x03, 0x04)
    private val RAR4_MAGIC = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00)
    private val RAR5_MAGIC = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x01, 0x00)
    private val PDF_MAGIC  = byteArrayOf(0x25, 0x50, 0x44, 0x46) // %PDF
    private val SEVENZ_MAGIC = byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C)
    private val MOBI_MAGIC = "BOOKMOBI".encodeToByteArray()
    private val DJVU_CONTAINER_MAGIC = "AT&TFORM".encodeToByteArray()
    private val DJVU_SINGLE_MAGIC = "DJVU".encodeToByteArray()
    private val DJVU_MULTI_MAGIC = "DJVM".encodeToByteArray()

    /** Detect by content (magic bytes). Falls back to extension if stream fails. */
    fun detect(stream: InputStream, name: String): ComicFormat {
        return try {
            val header = ByteArray(80)
            stream.read(header)
            detectByBytes(header) ?: detectByExtension(name)
        } catch (_: Exception) {
            detectByExtension(name)
        }
    }

    fun detectByExtension(name: String): ComicFormat {
        return when (name.lowercase().substringAfterLast('.')) {
            "cbz", "zip" -> ComicFormat.CBZ
            "cbr", "rar" -> ComicFormat.CBR
            "cb7", "7z"  -> ComicFormat.SEVENZ
            "cbt", "tar" -> ComicFormat.TAR
            "pdf"        -> ComicFormat.PDF
            "epub"       -> ComicFormat.EPUB
            "fb2"        -> ComicFormat.FB2
            "txt", "text" -> ComicFormat.TXT
            "htm", "html", "xhtml" -> ComicFormat.HTML
            "md", "markdown" -> ComicFormat.MARKDOWN
            "rtf" -> ComicFormat.RTF
            "mobi", "prc" -> ComicFormat.MOBI
            "azw", "azw3", "kf8" -> ComicFormat.AZW3
            "docx" -> ComicFormat.DOCX
            "odt" -> ComicFormat.ODT
            "djvu", "djv" -> ComicFormat.DJVU
            else         -> ComicFormat.UNKNOWN
        }
    }

    private fun detectByBytes(header: ByteArray): ComicFormat? {
        return when {
            header.startsWith(ZIP_MAGIC)   -> ComicFormat.CBZ   // treat ZIP/CBZ same for magic
            header.startsWith(RAR4_MAGIC) || header.startsWith(RAR5_MAGIC) -> ComicFormat.CBR
            header.startsWith(PDF_MAGIC)  -> ComicFormat.PDF
            header.startsWith(SEVENZ_MAGIC) -> ComicFormat.SEVENZ
            header.hasSliceAt(60, MOBI_MAGIC) -> ComicFormat.MOBI
            header.isDjvuDocument() -> ComicFormat.DJVU
            else -> null
        }
    }

    private fun ByteArray.isDjvuDocument(): Boolean {
        return startsWith(DJVU_CONTAINER_MAGIC) &&
            (hasSliceAt(12, DJVU_SINGLE_MAGIC) || hasSliceAt(12, DJVU_MULTI_MAGIC))
    }

    private fun ByteArray.startsWith(other: ByteArray): Boolean {
        if (size < other.size) return false
        return other.indices.all { this[it] == other[it] }
    }

    private fun ByteArray.hasSliceAt(offset: Int, other: ByteArray): Boolean {
        if (offset < 0 || size < offset + other.size) return false
        return other.indices.all { this[offset + it] == other[it] }
    }
}
