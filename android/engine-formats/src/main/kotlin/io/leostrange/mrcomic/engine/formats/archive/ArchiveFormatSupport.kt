package io.leostrange.mrcomic.engine.formats.archive

import io.leostrange.mrcomic.core.model.ComicFormat
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

    /**
     * "Real" e-book formats that own an archive's content — distinct from auxiliary plain-text
     * files (txt/html/md) that may merely accompany a comic page sequence (readme, about, notes).
     * A comic page sequence yields to these but not to auxiliary text.
     */
    private val bookPrimaryFormats: Set<String> =
        setOf("epub", "fb2", "mobi", "prc", "azw", "azw3", "kf8", "docx", "odt", "rtf")

    val naturalPathComparator: Comparator<String> = Comparator { left, right ->
        compareNatural(left, right)
    }

    /** Comparator that sorts primary book formats (epub, fb2, mobi, etc.) before plain text. */
    private val primaryBookFormatComparator = Comparator<String> { left, right ->
        val leftPrimary = extensionOf(left) in setOf("epub", "fb2", "mobi", "azw3", "docx", "odt", "rtf")
        val rightPrimary = extensionOf(right) in setOf("epub", "fb2", "mobi", "azw3", "docx", "odt", "rtf")
        when {
            leftPrimary && !rightPrimary -> -1
            !leftPrimary && rightPrimary -> 1
            else -> 0
        }
    }

    private val preferredTextEntryComparator = Comparator<String> { left, right ->
        val primaryOrder = primaryBookFormatComparator.compare(left, right)
        if (primaryOrder != 0) primaryOrder else naturalPathComparator.compare(left, right)
    }

    fun classify(fileNames: List<String>): ArchiveContentKind {
        val textEntries = fileNames.filter(::isTextEntry)
        val imageEntries = fileNames.filter(::isImageEntry)
        val hasOnlyTextEntries = textEntries.isNotEmpty() && imageEntries.isEmpty()
        val hasSingleTextEntry = textEntries.size == 1
        val hasOnlyCoverImages = imageEntries.isEmpty() || imageEntries.all(::isBookCoverImageEntry)
        val hasComicPageImageSequence = imageEntries.size >= 2 && imageEntries.all(::isComicPageImageEntry)
        val hasDominantTextEntry = textEntries.isNotEmpty() &&
            textEntries.any { isDominantBookEntry(it, textEntries, imageEntries) }
        // A genuine comic page sequence (≥2 sequentially-numbered images) must not be reclassified
        // as a book just because an auxiliary text file (readme.txt, about.html, notes.md) sits
        // alongside it — otherwise every comic page is dropped and only the readme is rendered.
        // Real e-book formats (epub/fb2/mobi/…) still win, since numbered plates can belong to a book.
        val hasBookFormatTextEntry = textEntries.any { extensionOf(it) in bookPrimaryFormats }
        val comicSequenceDominates = hasComicPageImageSequence && !hasBookFormatTextEntry
        return when {
            comicSequenceDominates ->
                ArchiveContentKind.IMAGE_SEQUENCE
            hasOnlyTextEntries ||
                (hasSingleTextEntry && (hasOnlyCoverImages || !hasComicPageImageSequence)) ||
                (hasSingleTextEntry && textEntryOwnsImageAssets(textEntries.first(), imageEntries)) ||
                hasDominantTextEntry ->
                ArchiveContentKind.SINGLE_BOOK
            imageEntries.isNotEmpty() && textEntries.isEmpty() ->
                ArchiveContentKind.IMAGE_SEQUENCE
            textEntries.isNotEmpty() || imageEntries.isNotEmpty() ->
                ArchiveContentKind.MIXED
            else ->
                ArchiveContentKind.UNSUPPORTED
        }
    }

    /**
     * Returns true if this text entry is a dominant book file (e.g. a large .fb2 or .epub)
     * accompanied by minor files like readme.txt or images that belong to it.
     * This prevents MIXED fallback when a book has auxiliary files alongside it.
     */
    private fun isDominantBookEntry(
        entry: String,
        allTextEntries: List<String>,
        imageEntries: List<String>
    ): Boolean {
        val ext = extensionOf(entry)
        val primaryFormats = setOf("epub", "fb2", "mobi", "azw3", "docx", "odt", "rtf", "txt", "html", "htm", "xhtml", "md", "markdown")
        // Primary book formats that typically own all other content in the archive
        if (ext !in primaryFormats) return false
        // Non-book text files (readme, license, etc.) shouldn't prevent book detection
        val nonBookTextEntries = allTextEntries.filter {
            val e = extensionOf(it)
            e !in primaryFormats
        }
        // If there's only one primary book file, treat it as dominant even if
        // there are minor text files (readme, license) alongside it
        val primaryBookCount = allTextEntries.count {
            val e = extensionOf(it)
            e in primaryFormats
        }
        if (primaryBookCount == 1) return true
        return false
    }

    fun resolveSingleBookTextEntry(fileNames: List<String>): ArchiveResolvedEntry {
        val kind = classify(fileNames)
        if (kind != ArchiveContentKind.SINGLE_BOOK) {
            return ArchiveResolvedEntry(kind = kind)
        }
        // Prefer primary book formats (epub, fb2, mobi, etc.) over plain text (txt, html)
        // when multiple text entries exist. This avoids picking readme.txt over book.fb2.
        val textEntry = fileNames
            .asSequence()
            .filter(::isTextEntry)
            .sortedWith(preferredTextEntryComparator)
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
        // Same directory as the text entry
        if (textDir != null && imageEntries.all { it.replace('\\', '/').startsWith(textDir) }) {
            return true
        }
        // Shared root directory: if text is at root level and images are in subdirs,
        // or if text and images share a common parent directory
        val textRootDir = normalizedText.substringBefore('/', missingDelimiterValue = "")
        if (textRootDir.isNotBlank() && imageEntries.all { it.replace('\\', '/').startsWith("$textRootDir/") }) {
            return true
        }
        // Images in standard asset directories
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
        parts.joinToString(separator = "|") { part -> 
            "${part.length}:${part.replace("|", "%7C").replace(":", "%3A")}"
        }

    private val NATURAL_TOKEN_REGEX = Regex("""\d+|\D+""")
}
