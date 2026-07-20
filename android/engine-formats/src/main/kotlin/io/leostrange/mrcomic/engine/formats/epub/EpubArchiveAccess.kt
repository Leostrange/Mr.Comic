package io.leostrange.mrcomic.engine.formats.epub

import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader

/**
 * Pure archive access helpers for EPUB files.
 *
 * Extracted from EpubFormatReader so the MIME/encoding mappings and
 * path normalization can be tested without Android dependencies.
 * The ZIP lookup functions are thin wrappers around zip4j with
 * case-insensitive fallback.
 */
internal object EpubArchiveAccess {

    /**
     * Returns the MIME type for a file extension.
     */
    fun mimeTypeFor(extension: String): String = when (extension) {
        "jpg", "jpeg" -> "image/jpeg"
        "png" -> "image/png"
        "gif" -> "image/gif"
        "webp" -> "image/webp"
        "svg" -> "image/svg+xml"
        "css" -> "text/css"
        "htm", "html", "xhtml" -> "text/html"
        "ttf" -> "font/ttf"
        "otf" -> "font/otf"
        "woff" -> "font/woff"
        "woff2" -> "font/woff2"
        "js" -> "application/javascript"
        "xml", "ncx" -> "application/xml"
        else -> "application/octet-stream"
    }

    /**
     * Returns the expected text encoding for a file extension, or null for binary.
     */
    fun textEncodingFor(extension: String): String? = when (extension) {
        "css", "htm", "html", "xhtml", "xml", "ncx", "js" -> "UTF-8"
        else -> null
    }

    /**
     * Normalizes a relative path by resolving `..` and `.` components.
     * Strips leading slashes.
     */
    fun normalizePath(path: String): String {
        val stack = ArrayDeque<String>()
        for (part in path.split('/')) when (part) {
            ".." -> if (stack.isNotEmpty()) stack.removeLast()
            ".", "" -> {}
            else -> stack.addLast(part)
        }
        return stack.joinToString("/")
    }

    /**
     * Finds a ZIP entry by path, with case-insensitive filename fallback.
     *
     * Some EPUBs store "Image.JPG" in the ZIP but reference "image.jpg" in the OPF.
     * This function tries exact match first, then falls back to case-insensitive
     * filename-only comparison.
     */
    fun findHeader(zip: ZipFile, entry: String): FileHeader? {
        zip.getFileHeader(entry)?.let { return it }
        val name = entry.substringAfterLast('/').lowercase()
        return zip.fileHeaders.find { it.fileName.substringAfterLast('/').lowercase() == name }
    }
}
