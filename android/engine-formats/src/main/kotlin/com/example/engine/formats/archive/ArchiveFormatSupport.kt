package com.example.engine.formats.archive

import com.example.core.model.ComicFormat
import java.math.BigInteger
import java.util.Locale

enum class ArchiveContentKind {
    IMAGE_SEQUENCE,
    SINGLE_BOOK,
    MIXED,
    UNSUPPORTED
}

object ArchiveFormatSupport {
    val imageExtensions: Set<String> = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
    val textExtensions: Set<String> = setOf(
        "epub", "fb2", "txt", "text", "html", "htm", "xhtml", "md", "markdown",
        "rtf", "mobi", "prc", "azw", "azw3", "kf8", "docx", "odt"
    )

    val naturalPathComparator: Comparator<String> = Comparator { left, right ->
        compareNatural(left, right)
    }

    fun classify(fileNames: List<String>): ArchiveContentKind {
        val textEntries = fileNames.filter(::isTextEntry)
        val imageEntries = fileNames.filter(::isImageEntry)
        return when {
            textEntries.isNotEmpty() && (imageEntries.isEmpty() || imageEntries.all(::isBookCoverImageEntry)) ->
                ArchiveContentKind.SINGLE_BOOK
            imageEntries.isNotEmpty() && textEntries.isEmpty() ->
                ArchiveContentKind.IMAGE_SEQUENCE
            textEntries.isNotEmpty() || imageEntries.isNotEmpty() ->
                ArchiveContentKind.MIXED
            else ->
                ArchiveContentKind.UNSUPPORTED
        }
    }

    fun isImageEntry(name: String): Boolean =
        extensionOf(name) in imageExtensions

    fun isTextEntry(name: String): Boolean =
        extensionOf(name) in textExtensions

    fun isBookCoverImageEntry(name: String): Boolean {
        val normalized = name.substringAfterLast('/').substringAfterLast('\\')
            .substringBeforeLast('.')
            .lowercase(Locale.US)
        return normalized in setOf("cover", "folder", "front", "обложка") ||
            normalized.contains("cover") ||
            normalized.contains("облож")
    }

    fun textFormatForExtension(extension: String): ComicFormat? = when (extension.lowercase(Locale.US)) {
        "epub" -> ComicFormat.EPUB
        "fb2" -> ComicFormat.FB2
        "txt", "text" -> ComicFormat.TXT
        "html", "htm", "xhtml" -> ComicFormat.HTML
        "md", "markdown" -> ComicFormat.MARKDOWN
        "rtf" -> ComicFormat.RTF
        "mobi", "prc" -> ComicFormat.MOBI
        "azw", "azw3", "kf8" -> ComicFormat.AZW3
        "docx" -> ComicFormat.DOCX
        "odt" -> ComicFormat.ODT
        else -> null
    }

    fun extensionOf(name: String): String =
        name.lowercase(Locale.US).substringAfterLast('.', "")

    fun safeArchiveName(name: String, extension: String): String =
        name.substringAfterLast('/').substringAfterLast('\\')
            .replace(Regex("[^A-Za-z0-9._-]"), "_")
            .ifBlank { "archived_text.$extension" }

    private fun compareNatural(left: String, right: String): Int {
        val leftTokens = tokenize(left)
        val rightTokens = tokenize(right)
        val max = minOf(leftTokens.size, rightTokens.size)
        for (index in 0 until max) {
            val comparison = compareToken(leftTokens[index], rightTokens[index])
            if (comparison != 0) return comparison
        }
        return leftTokens.size.compareTo(rightTokens.size)
    }

    private fun tokenize(value: String): List<String> =
        NATURAL_TOKEN_REGEX.findAll(value.lowercase(Locale.getDefault()))
            .map { it.value }
            .toList()
            .ifEmpty { listOf(value.lowercase(Locale.getDefault())) }

    private fun compareToken(left: String, right: String): Int {
        val leftNumber = left.takeIf { it.all(Char::isDigit) }?.let(::BigInteger)
        val rightNumber = right.takeIf { it.all(Char::isDigit) }?.let(::BigInteger)
        return when {
            leftNumber != null && rightNumber != null -> leftNumber.compareTo(rightNumber)
                .takeIf { it != 0 }
                ?: left.length.compareTo(right.length)
            leftNumber != null -> -1
            rightNumber != null -> 1
            else -> left.compareTo(right)
        }
    }

    private val NATURAL_TOKEN_REGEX = Regex("""\d+|\D+""")
}
