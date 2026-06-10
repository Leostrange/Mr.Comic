package com.example.engine.formats.archive

import com.example.core.model.ComicFormat
import java.math.BigInteger
import java.nio.charset.StandardCharsets
import java.security.MessageDigest
import java.util.Locale

enum class ArchiveContentKind {
    IMAGE_SEQUENCE,
    SINGLE_BOOK,
    MIXED,
    UNSUPPORTED
}

data class ArchiveResolvedEntry(
    val kind: ArchiveContentKind,
    val entryName: String? = null,
    val format: ComicFormat? = null,
    val cacheHit: Boolean = false
)

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
        val hasOnlyTextEntries = textEntries.isNotEmpty() && imageEntries.isEmpty()
        val hasSingleTextEntry = textEntries.size == 1
        val hasOnlyCoverImages = imageEntries.isEmpty() || imageEntries.all(::isBookCoverImageEntry)
        val hasComicPageImageSequence = imageEntries.size >= 2 && imageEntries.all(::isComicPageImageEntry)
        return when {
            hasOnlyTextEntries ||
                (hasSingleTextEntry && (hasOnlyCoverImages || !hasComicPageImageSequence)) ||
                (hasSingleTextEntry && textEntryOwnsImageAssets(textEntries.first(), imageEntries)) ->
                ArchiveContentKind.SINGLE_BOOK
            imageEntries.isNotEmpty() && textEntries.isEmpty() ->
                ArchiveContentKind.IMAGE_SEQUENCE
            textEntries.isNotEmpty() || imageEntries.isNotEmpty() ->
                ArchiveContentKind.MIXED
            else ->
                ArchiveContentKind.UNSUPPORTED
        }
    }

    fun resolveSingleBookTextEntry(fileNames: List<String>): ArchiveResolvedEntry {
        val kind = classify(fileNames)
        if (kind != ArchiveContentKind.SINGLE_BOOK) {
            return ArchiveResolvedEntry(kind = kind)
        }
        val textEntry = fileNames
            .asSequence()
            .filter(::isTextEntry)
            .sortedWith(naturalPathComparator)
            .firstOrNull()
            ?: return ArchiveResolvedEntry(kind = kind)
        val format = textFormatForExtension(extensionOf(textEntry))
            ?: return ArchiveResolvedEntry(kind = kind, entryName = textEntry)
        return ArchiveResolvedEntry(
            kind = kind,
            entryName = textEntry,
            format = format
        )
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

    private fun isComicPageImageEntry(name: String): Boolean {
        val normalized = name.substringAfterLast('/').substringAfterLast('\\')
            .substringBeforeLast('.')
            .lowercase(Locale.US)
        return normalized.matches(Regex("""(?:page|p|img|image|scan|скан|страница)?[_\-\s]*\d{1,5}""")) ||
            normalized.matches(Regex("""\d{1,5}"""))
    }

    private fun textEntryOwnsImageAssets(textEntry: String, imageEntries: List<String>): Boolean {
        if (imageEntries.isEmpty()) return true
        val normalizedText = textEntry.replace('\\', '/')
        val textDir = normalizedText.substringBeforeLast('/', missingDelimiterValue = "")
            .takeIf { it.isNotBlank() }
            ?.let { "$it/" }
        if (textDir != null && imageEntries.all { it.replace('\\', '/').startsWith(textDir) }) {
            return true
        }
        val assetDirMarkers = listOf("/images/", "/image/", "/img/", "/assets/", "/media/", "/res/")
        return imageEntries.all { entry ->
            val normalized = "/${entry.replace('\\', '/').lowercase(Locale.US)}"
            assetDirMarkers.any { marker -> marker in normalized }
        }
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

    /**
     * Creates a deterministic cache filename for one text entry extracted from an archive.
     *
     * @param prefix short archive-type prefix, for example `zip`, `rar`, `7z`, or `tar`.
     * @param archiveKey stable identity for the source archive, usually its path or URI.
     * @param entryName path/name of the text entry inside the archive.
     * @param entrySize size of the entry in bytes; must be non-negative.
     * @param extension extension used when [entryName] must be sanitized into a fallback name.
     * @return `{prefix}_{digest}_{sanitizedName}`, where `digest` is derived from length-prefixed
     * archive identity parts and `sanitizedName` comes from [safeArchiveName].
     */
    fun textCacheFileName(
        prefix: String,
        archiveKey: String,
        entryName: String,
        entrySize: Long,
        extension: String
    ): String {
        require(entrySize >= 0) {
            "Archive entry size must be non-negative: archiveKey=$archiveKey, entryName=$entryName, entrySize=$entrySize"
        }
        val digest = stableDigest(stableDigestInput(archiveKey, entryName, entrySize.toString()))
        return "${prefix}_${digest}_${safeArchiveName(entryName, extension)}"
    }

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

    private fun stableDigest(value: String): String =
        MessageDigest.getInstance("SHA-256")
            .digest(value.toByteArray(StandardCharsets.UTF_8))
            .take(12)
            .joinToString(separator = "") { byte ->
                (byte.toInt() and 0xFF).toString(16).padStart(2, '0')
            }

    private fun stableDigestInput(vararg parts: String): String =
        parts.joinToString(separator = "") { part -> "${part.length}:$part;" }

    private val NATURAL_TOKEN_REGEX = Regex("""\d+|\D+""")
}
