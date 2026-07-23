package io.leostrange.mrcomic.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.FormatReaderWebResource
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import java.io.File
import java.io.InputStream
import io.leostrange.mrcomic.engine.formats.base.charset.bomLength
import io.leostrange.mrcomic.engine.formats.base.charset.detectBomCharset
import io.leostrange.mrcomic.engine.formats.base.charset.isStrictUtf8
import io.leostrange.mrcomic.engine.formats.base.charset.looksLikeUtf16
import java.nio.charset.Charset
import java.net.URLDecoder
import javax.inject.Inject

private const val CHARS_PER_PAGE = 4000
private const val MAX_TEXT_SOURCE_BYTES = 96 * 1024 * 1024
private const val MAX_SECTION_CHARS = 100_000
// SINGLE_BYTE_TEXT_CHARSETS extracted to TextCharsetUtils.kt
private val TXT_CHAPTER_PATTERNS = listOf(
    Regex("""(?iu)^(глава|часть|книга|том)\s+[0-9ivxlcdm]+(?:[\s\p{Pd}.:]+.+)?$"""),
    Regex("""(?iu)^(chapter|part|book|volume)\s+[0-9ivxlcdm]+(?:[\s\p{Pd}.:]+.+)?$"""),
    Regex("""(?iu)^(пролог|эпилог|предисловие|введение|заключение|послесловие|prologue|epilogue|preface|introduction|afterword|foreword)$""")
)

private data class TxtChapterAnchor(
    val id: String,
    val title: String
)

private data class TextDocumentData(
    val sections: List<TextDocumentSection>,
    val chapterAnchors: List<TxtChapterAnchor> = emptyList(),
    val footnoteMap: Map<String, String> = emptyMap()
) {
    val pages: List<String> get() = sections.map { it.html }
}

private data class MarkdownDocumentBlocks(
    val blocks: List<String>,
    val anchors: List<TxtChapterAnchor>
)

private data class HtmlPageAnchorResult(
    val pages: List<String>,
    val anchors: List<TxtChapterAnchor>
)

// ── RTF non-content destination groups ────────────────────────────────────────
private val RTF_SKIP_DESTINATIONS = setOf(
    "fonttbl", "colortbl", "stylesheet", "info", "pict",
    "header", "footer", "headerl", "headerr", "headerf",
    "footerl", "footerr", "footerf", "revtbl", "rsidtbl",
    "listtable", "listoverridetable", "pgdsctbl", "latentstyles",
    "mmathPr", "fldinst"
)

class TextFormatReader @Inject constructor(
    @ApplicationContext private val context: Context,
    private val path: String,
    private val format: ComicFormat
) : FormatReader, ReflowableTextFormatReader {

    private val mobiPayload: MobiReaderPayload? by lazy {
        when (format) {
            ComicFormat.MOBI, ComicFormat.AZW3 -> readMobiReflowablePayload(context, path)
            else -> null
        }
    }
    private val mobiDocument: ReflowableDocument? get() = mobiPayload?.document
    private val documentData: TextDocumentData by lazy { parseDocument() }
    private val htmlPages: List<String> get() = documentData.pages
    private val anchorPageIndex: Map<String, Int> by lazy { buildAnchorPageIndex() }
    private val tocEntries: List<TocEntry> by lazy { buildTableOfContents() }

    override fun rendersHtmlContent(): Boolean = true

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        htmlPages.size.coerceAtLeast(1)
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        htmlPages.getOrNull(index.coerceIn(0, (htmlPages.size - 1).coerceAtLeast(0)))
    }

    override suspend fun getTextDocumentSections(): List<TextDocumentSection> = withContext(Dispatchers.IO) {
        documentData.sections
    }

    override fun getTableOfContents(): List<TocEntry> = tocEntries

    override suspend fun getMetadata(): Map<String, String> = withContext(Dispatchers.IO) {
        when (format) {
            ComicFormat.MOBI, ComicFormat.AZW3 -> buildMap {
                put("format", format.name)
                put("engine", "mobi-reflowable-v1")
                put("parserVersion", "2")
                mobiPayload?.diagnostics?.let { diagnostics ->
                    put("declaredEncoding", diagnostics.declaredEncoding.toString())
                    put("resolvedEncoding", diagnostics.resolvedEncoding)
                    put("compression", diagnostics.compression.toString())
                    put("textRecordCount", diagnostics.textRecordCount.toString())
                    put("pageBreakCount", diagnostics.pageBreakCount.toString())
                    put("containsMarkup", diagnostics.containsMarkup.toString())
                }
                mobiPayload?.unsupportedDetails?.let { details ->
                    put("unsupportedReason", details.reason)
                    details.declaredEncoding?.let { put("declaredEncoding", it.toString()) }
                    details.compression?.let { put("compression", it.toString()) }
                    details.textRecordCount?.let { put("textRecordCount", it.toString()) }
                    details.encryptionType?.let { put("encryptionType", it.toString()) }
                    put("containsHuffCdicTables", details.containsHuffCdicTables.toString())
                }
            }
            ComicFormat.HTML -> mapOf(
                "format" to format.name,
                "engine" to "html-reflowable-v1",
                "anchorCount" to documentData.chapterAnchors.size.toString()
            )
            ComicFormat.MARKDOWN -> mapOf(
                "format" to format.name,
                "engine" to "markdown-reflowable-v1",
                "anchorCount" to documentData.chapterAnchors.size.toString()
            )
            ComicFormat.TXT -> mapOf(
                "format" to format.name,
                "engine" to "txt-reflowable-v1",
                "anchorCount" to documentData.chapterAnchors.size.toString()
            )
            else -> emptyMap()
        }
    }

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return parent.toURI().toString().trimEnd('/') + "/"
    }

    override fun htmlAssetBasePath(index: Int): String? {
        if (!supportsHtmlAssetLoading()) return null
        if (index !in htmlPages.indices) return null
        return File(path).name
    }

    override fun openHtmlAsset(path: String): FormatReaderWebResource? {
        if (!supportsHtmlAssetLoading()) return null
        val rootDir = File(this.path).parentFile ?: return null
        val requestedPath = URLDecoder.decode(path, Charsets.UTF_8.name())
            .substringBefore('#')
            .substringBefore('?')
            .trim()
            .trimStart('/')
            .orEmpty()
            .ifBlank { File(this.path).name }
        val target = runCatching {
            File(rootDir, requestedPath).canonicalFile
        }.getOrNull() ?: return null
        val canonicalRoot = runCatching { rootDir.canonicalFile }.getOrNull() ?: return null
        if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true) || !target.isFile) {
            return null
        }

        val extension = target.extension.lowercase()
        val textualResource = extension in setOf("html", "htm", "css", "js", "txt", "xml", "svg")
        val bytes = if (textualResource) {
            decodeTextBytes(target.readBytes()).toByteArray(Charsets.UTF_8)
        } else {
            target.readBytes()
        }
        return FormatReaderWebResource(
            mimeType = textReaderMimeTypeFor(extension),
            bytes = bytes,
            encoding = if (textualResource) "utf-8" else null
        )
    }

    override fun resolveHrefToPage(href: String): Int? {
        val normalizedHref = href.trim()
        if (normalizedHref.isBlank()) return null

        val hrefWithoutQuery = normalizedHref.substringBefore('?')
        val filePart = hrefWithoutQuery.substringBefore('#').trim().trimStart('/')
        val fragment = hrefWithoutQuery.substringAfter('#', "").trim()

        if (fragment.isNotBlank()) {
            anchorPageIndex[fragment]?.let { return it }
        }

        if (filePart.isBlank() || path.startsWith("content://")) return null

        val currentFile = File(path)
        val requestedName = filePart.substringAfterLast('/')
        val requestedStem = requestedName.substringBeforeLast('.', requestedName)
        return when {
            requestedName.equals(currentFile.name, ignoreCase = true) -> 0
            requestedStem.equals(currentFile.nameWithoutExtension, ignoreCase = true) -> 0
            else -> null
        }
    }

    override fun getFootnoteText(anchorId: String): String? {
        val map = documentData.footnoteMap
        if (map.isEmpty()) return null
        return textFootnoteLookupCandidates(anchorId).firstNotNullOfOrNull { candidate ->
            map[candidate]
        }
    }

    override fun close() = Unit

    private fun textFootnoteLookupCandidates(anchorId: String): List<String> {
        val raw = anchorId.trim()
        if (raw.isBlank()) return emptyList()
        val withoutScheme = raw
            .removePrefix("noteref://")
            .removePrefix("noteref:")
            .removePrefix("fbanchor://")
            .removePrefix("fbanchor:")
        val decoded = runCatching { URLDecoder.decode(withoutScheme, Charsets.UTF_8.name()) }
            .getOrDefault(withoutScheme)
            .trim()
        val fragment = decoded
            .substringAfter('#', decoded)
            .substringAfterLast('/')
            .trim()
            .trimStart('#')
        val fileAndFragment = decoded.trimStart('/')
        return listOf(
            raw,
            decoded,
            fileAndFragment,
            fragment,
            "#$fragment",
            "fn$fragment",
            "fnt$fragment",
            "note$fragment",
            "footnote$fragment",
            "back$fragment",
            "sup$fragment",
            "text-fn$fragment",
            "pn$fragment",
            "ann$fragment",
            "annotation$fragment",
            "docx-footnote-$fragment"
        ).map { it.trim() }
            .filter { it.isNotEmpty() && it != "#" }
            .distinct()
    }

    private fun parseDocument(): TextDocumentData {
        return when (format) {
            ComicFormat.MOBI,
            ComicFormat.AZW3 -> {
                val sections = mobiDocumentSections()
                TextDocumentData(
                    sections = sections,
                    footnoteMap = mobiPayload?.footnoteMap.orEmpty()
                )
            }
            ComicFormat.RTF -> {
                val document = readRtfReflowableDocument(context, path)
                TextDocumentData(
                    sections = reflowableDocumentSections(document),
                    footnoteMap = document.footnoteMap
                )
            }
            ComicFormat.DOCX -> {
                val document = readDocxReflowableDocument(context, path)
                TextDocumentData(
                    sections = reflowableDocumentSections(document),
                    footnoteMap = document.footnoteMap
                )
            }
            ComicFormat.ODT -> {
                val document = readOdtReflowableDocument(context, path)
                TextDocumentData(
                    sections = reflowableDocumentSections(document),
                    footnoteMap = document.footnoteMap
                )
            }
            else -> {
                val raw = readSourceText()
                    ?: return TextDocumentData(singleSection(wrapHtml("<p>Unable to read file.</p>")))
                when (format) {
                    ComicFormat.HTML -> sectionHtmlDocument(raw)
                    ComicFormat.MARKDOWN -> sectionMarkdownDocument(raw)
                    ComicFormat.TXT -> sectionTxtDocument(raw)
                    else -> TextDocumentData(
                        sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(textBlocks(raw))
                            .withSequentialIndices()
                    )
                }
            }
        }
    }

    private fun reflowableDocumentSections(document: ReflowableDocument): List<TextDocumentSection> {
        val baseUrl = htmlBaseUrl()
        return (0 until document.pageCount)
            .mapNotNull { index -> document.pageAt(index) }
            .mapIndexed { index, html ->
                TextDocumentSection(index = index, html = html, baseUrl = baseUrl)
            }
            .ifEmpty { singleSection(wrapHtml("<p>Unable to read file.</p>"), baseUrl) }
    }

    private fun mobiDocumentSections(): List<TextDocumentSection> =
        reflowableDocumentSections(mobiDocument ?: ReflowableDocumentBuilder.error("Unable to read file."))

    private fun singleSection(html: String, baseUrl: String? = htmlBaseUrl()): List<TextDocumentSection> =
        listOf(TextDocumentSection(index = 0, html = html, baseUrl = baseUrl))

    private fun sectionHtmlDocument(raw: String): TextDocumentData {
        val readerBaseUrl = htmlBaseUrl()
        val footnotes = extractReaderHtmlFootnotes(raw)
        val contentHtml = footnotes.contentHtml
        val preservePublisherLayout = shouldPreserveHtmlPublisherLayout(contentHtml)
        val pages = if (isGutenbergHtml(contentHtml)) {
            paginateHtmlDocument(
                raw = contentHtml,
                baseUrl = readerBaseUrl,
                preservePublisherLayout = true,
                baseCss = PRESERVE_LAYOUT_HTML_CSS,
                keepWholeDocument = true
            )
        } else {
            paginateHtmlDocument(
                raw = contentHtml,
                baseUrl = readerBaseUrl,
                preservePublisherLayout = preservePublisherLayout,
                baseCss = if (preservePublisherLayout) {
                    PRESERVE_LAYOUT_HTML_CSS
                } else {
                    DEFAULT_READER_HTML_CSS
                },
                keepWholeDocument = true
            )
        }
        val anchored = addHtmlHeadingAnchorsToPages(pages)
        val sections = if (preservePublisherLayout || isGutenbergHtml(contentHtml)) {
            anchored.pages.mapIndexed { index, html ->
                TextDocumentSection(index = index, html = html, baseUrl = readerBaseUrl)
            }
        } else {
            val reflowSections = ReflowableDocumentBuilder.sectionsFromMarkup(contentHtml, readerBaseUrl)
            injectHeadingIdsFromAnchoredPages(reflowSections, anchored.pages)
        }
        val splitSections = splitLargeSections(sections.withSequentialIndices())
        return TextDocumentData(
            sections = splitSections,
            chapterAnchors = anchored.anchors,
            footnoteMap = footnotes.footnoteMap
        )
    }

    private fun sectionMarkdownDocument(raw: String): TextDocumentData {
        val markdown = markdownDocumentBlocks(raw)
        return TextDocumentData(
            sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(markdown.blocks)
                .withSequentialIndices(),
            chapterAnchors = markdown.anchors
        )
    }

    private fun readSourceText(): String? {
        val bytes = readSourceBytes() ?: return null
        return decodeTextBytes(bytes)
    }

    private fun readSourceBytes(): ByteArray? =
        openStream()?.use { input -> input.readBytesBounded(MAX_TEXT_SOURCE_BYTES) }

    private fun InputStream.readBytesBounded(maxBytes: Int): ByteArray? {
        val output = java.io.ByteArrayOutputStream(minOf(maxBytes, 64 * 1024))
        val buffer = ByteArray(16 * 1024)
        var total = 0
        while (true) {
            val read = read(buffer)
            if (read < 0) break
            total += read
            if (total > maxBytes) return null
            output.write(buffer, 0, read)
        }
        return output.toByteArray()
    }

    private fun openStream(): InputStream? = try {
        if (path.startsWith("content://")) {
            context.contentResolver.openInputStream(Uri.parse(path))
        } else {
            File(path).inputStream()
        }
    } catch (_: Exception) {
        null
    }

    private fun textBlocks(raw: String): List<String> {
        return raw
            .replace("\r\n", "\n")
            .replace('\r', '\n')
            .split(Regex("\n\\s*\n"))
            .mapNotNull { part ->
                renderTxtParagraphBlock(part)
            }
            .ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
    }

    private fun sectionTxtDocument(raw: String): TextDocumentData {
        val (blocks, chapterAnchors) = textBlocksWithChapterAnchors(raw)
        return TextDocumentData(
            sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(blocks)
                .withSequentialIndices(),
            chapterAnchors = chapterAnchors
        )
    }

    private fun textBlocksWithChapterAnchors(raw: String): Pair<List<String>, List<TxtChapterAnchor>> {
        val normalized = raw.replace("\r\n", "\n").replace('\r', '\n')
        val paragraphs = normalized.split(Regex("\n\\s*\n"))
        val blocks = mutableListOf<String>()
        val chapterAnchors = mutableListOf<TxtChapterAnchor>()

        paragraphs.forEach { paragraph ->
            val trimmed = paragraph.trim()
            if (trimmed.isBlank()) return@forEach
            val chapterTitle = detectTxtChapterHeading(trimmed)
            if (chapterTitle != null) {
                val anchor = TxtChapterAnchor(
                    id = "txt-chapter-${chapterAnchors.size + 1}",
                    title = chapterTitle
                )
                chapterAnchors += anchor
                blocks += """<h2 id="${anchor.id}" class="chapter">${escapeHtml(anchor.title)}</h2>"""
            } else {
                renderTxtParagraphBlock(trimmed)?.let(blocks::add)
            }
        }

        val safeBlocks = blocks.ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
        return safeBlocks to chapterAnchors
    }

    private fun renderTxtParagraphBlock(paragraph: String): String? {
        val lines = paragraph.lines()
            .map { it.trim() }
            .filter { it.isNotBlank() }
        if (lines.isEmpty()) return null

        val body = if (shouldPreserveTxtLineBreaks(lines)) {
            lines.joinToString("<br/>") { renderPlainTextInlineMarkup(escapeHtml(it)) }
        } else {
            renderPlainTextInlineMarkup(escapeHtml(joinTxtProseLines(lines)))
        }
        return "<p>$body</p>"
    }

    private fun joinTxtProseLines(lines: List<String>): String {
        if (lines.isEmpty()) return ""
        val builder = StringBuilder(lines.first())
        // Strip soft hyphens (\u00AD) from the first line — they should not be visible
        while (builder.indexOf("\u00AD") >= 0) {
            builder.deleteCharAt(builder.indexOf("\u00AD"))
        }
        lines.drop(1).forEach { nextLine ->
            val previousLast = builder.lastOrNull()
            val nextFirst = nextLine.firstOrNull()
            // Handle multiple hyphen types: ASCII hyphen, soft hyphen, non-breaking hyphen, en-dash
            val isPrintedHyphenation =
                previousLast != null && isHyphenChar(previousLast) &&
                    nextFirst != null &&
                    nextFirst.isLetter() &&
                    !isEmDashContext(builder)
            if (isPrintedHyphenation) {
                builder.deleteCharAt(builder.lastIndex)
                builder.append(nextLine)
            } else {
                builder.append(' ')
                builder.append(nextLine)
            }
            // Strip soft hyphens from the joined line
            while (builder.indexOf("\u00AD") >= 0) {
                builder.deleteCharAt(builder.indexOf("\u00AD"))
            }
        }
        return builder.toString()
    }

    /** Checks if the character is a hyphen that should be rejoined at line breaks. */
    private fun isHyphenChar(ch: Char): Boolean =
        ch == '-' || ch == '\u00AD' || ch == '\u2011' || ch == '\u2013'

    /** Returns true if the last char is an em-dash (dialogue marker), not a hyphenation. */
    private fun isEmDashContext(builder: StringBuilder): Boolean {
        val lastTwo = builder.takeLast(2)
        // "—" (em-dash) used as dialogue marker — don't rejoin
        // " -" (space + hyphen) used as bullet — don't rejoin
        return lastTwo == " —" || lastTwo == " -" ||
            builder.lastOrNull() == '\u2014' ||
            (builder.length >= 2 && builder[builder.lastIndex - 1] == ' ' && builder[builder.lastIndex] == '-')
    }

    private fun renderPlainTextInlineMarkup(escaped: String): String {
        var rendered = escaped
        rendered = rendered.replace(Regex("""(?<!\w)\*\*(.+?)\*\*(?!\w)""")) {
            "<strong>${it.groupValues[1]}</strong>"
        }
        rendered = rendered.replace(Regex("""(?<!\w)__(.+?)__(?!\w)""")) {
            "<strong>${it.groupValues[1]}</strong>"
        }
        rendered = rendered.replace(Regex("""(?<![A-Za-z0-9])_([^_\n]+?)_(?![A-Za-z0-9])""")) {
            "<em>${it.groupValues[1]}</em>"
        }
        rendered = rendered.replace(Regex("""(?<!\w)\*([^*\n]+?)\*(?!\w)""")) {
            "<em>${it.groupValues[1]}</em>"
        }
        // Footnote markers: [1], [2], [12] etc. — wrap in clickable link
        rendered = rendered.replace(Regex("""\[(\d{1,4})]""")) {
            val num = it.groupValues[1]
            """<a class="fn" href="fbanchor://note_$num" data-footnote-id="$num"><sup>[$num]</sup></a>"""
        }
        // Unicode superscript footnote markers: ¹ ² ³ etc.
        rendered = rendered.replace(Regex("""([¹²³⁴⁵⁶⁷⁸⁹⁰]+)""")) {
            val marker = it.groupValues[1]
            """<a class="fn" href="fbanchor://note_$marker" data-footnote-id="$marker"><sup>$marker</sup></a>"""
        }
        return rendered
    }

    private fun shouldPreserveTxtLineBreaks(lines: List<String>): Boolean {
        if (lines.size <= 1) return false
        val proseLineCount = lines.count { line ->
            line.length >= 48 && !line.endsWithPunctuation()
        }
        if (proseLineCount >= lines.size / 2) return false

        val shortLineCount = lines.count { it.length <= 42 }
        val listLikeCount = lines.count { line ->
            line.matches(Regex("""(?:[-*•]|\d+[.)])\s+.+"""))
        }
        return shortLineCount >= lines.size / 2 || listLikeCount >= 2
    }

    private fun String.endsWithPunctuation(): Boolean =
        lastOrNull() in setOf('.', '!', '?', ':', ';', ',', '\u2026', '\u2014', '-')

    private fun detectTxtChapterHeading(text: String): String? {
        val singleLine = text.lines()
            .map { it.trim() }
            .filter { it.isNotBlank() }
            .joinToString(" ")
            .takeIf { it.isNotBlank() }
            ?: return null
        if (singleLine.length > 120) return null
        if (singleLine.count { it == ' ' } > 8) return null
        return singleLine.takeIf { candidate ->
            TXT_CHAPTER_PATTERNS.any { pattern -> pattern.matches(candidate) }
        }
    }

    private fun markdownBlocks(raw: String): List<String> {
        return renderMarkdownToHtmlBlocks(raw).ifEmpty { textBlocks(raw) }
    }

    private fun markdownDocumentBlocks(raw: String): MarkdownDocumentBlocks {
        val blocks = if (isTechnicalMarkdown(raw)) {
            processTechnicalMarkdown(raw)
        } else {
            markdownBlocks(raw)
        }
        return addHeadingAnchors(blocks)
    }

    private fun addHeadingAnchors(blocks: List<String>): MarkdownDocumentBlocks {
        val usedIds = linkedSetOf<String>()
        val anchors = mutableListOf<TxtChapterAnchor>()
        val anchoredBlocks = blocks.map { block ->
            runCatching {
                val document = Jsoup.parseBodyFragment(block)
                val heading = document.body().children().firstOrNull { child ->
                    child.normalName() in setOf("h1", "h2", "h3", "h4", "h5", "h6")
                } ?: return@runCatching block
                val title = heading.text().replace(Regex("\\s+"), " ").trim()
                if (title.isBlank()) return@runCatching block
                val existingId = heading.id().trim()
                val id = if (existingId.isNotBlank()) {
                    uniqueMarkdownAnchor(existingId, usedIds)
                } else {
                    uniqueMarkdownAnchor(markdownAnchorSlug(title), usedIds)
                }
                heading.attr("id", id)
                anchors += TxtChapterAnchor(id = id, title = title)
                document.body().html().trim().ifBlank { block }
            }.getOrElse { block }
        }
        return MarkdownDocumentBlocks(
            blocks = anchoredBlocks.ifEmpty { blocks },
            anchors = anchors
        )
    }

    private fun addHtmlHeadingAnchorsToPages(pages: List<String>): HtmlPageAnchorResult {
        val usedIds = linkedSetOf<String>()
        val anchors = mutableListOf<TxtChapterAnchor>()
        val updatedPages = pages.map { page ->
            runCatching {
                val document = Jsoup.parse(page)
                document.outputSettings(Document.OutputSettings().prettyPrint(false))
                document.select("h1, h2, h3, h4, h5, h6").forEach { heading ->
                    val title = heading.text().replace(Regex("\\s+"), " ").trim()
                    if (title.isBlank()) return@forEach
                    val existingId = heading.id().trim()
                    val id = if (existingId.isNotBlank()) {
                        uniqueMarkdownAnchor(existingId, usedIds)
                    } else {
                        uniqueMarkdownAnchor(markdownAnchorSlug(title), usedIds)
                    }
                    heading.attr("id", id)
                    anchors += TxtChapterAnchor(id = id, title = title)
                }
                document.select("[id], a[name], [name]").forEach { element ->
                    val id = element.id().trim()
                        .ifBlank { element.attr("name").trim() }
                    if (id.isBlank() || id in usedIds) return@forEach
                    usedIds += id
                    val title = element.text()
                        .replace(Regex("\\s+"), " ")
                        .trim()
                        .ifBlank { id }
                    anchors += TxtChapterAnchor(id = id, title = title)
                }
                document.outerHtml()
            }.getOrElse { page }
        }
        return HtmlPageAnchorResult(
            pages = updatedPages.ifEmpty { pages },
            anchors = anchors
        )
    }

    private fun uniqueMarkdownAnchor(base: String, usedIds: MutableSet<String>): String {
        val safeBase = base.ifBlank { "section" }
        var candidate = safeBase
        var index = 2
        while (!usedIds.add(candidate)) {
            candidate = "$safeBase-$index"
            index += 1
        }
        return candidate
    }

    private fun injectHeadingIdsFromAnchoredPages(
        sections: List<TextDocumentSection>,
        anchoredPages: List<String>
    ): List<TextDocumentSection> {
        val headingIdMap = linkedMapOf<String, String>()
        for (page in anchoredPages) {
            runCatching {
                val doc = Jsoup.parse(page)
                doc.select("h1, h2, h3, h4, h5, h6").forEach { heading ->
                    val id = heading.id().trim()
                    if (id.isNotBlank()) {
                        val title = heading.text().replace(Regex("\\s+"), " ").trim()
                        if (title.isNotBlank()) headingIdMap[title] = id
                    }
                }
            }
        }
        if (headingIdMap.isEmpty()) return sections
        return sections.map { section ->
            runCatching {
                val doc = Jsoup.parse(section.html)
                doc.select("h1, h2, h3, h4, h5, h6").forEach { heading ->
                    if (heading.id().isBlank()) {
                        val title = heading.text().replace(Regex("\\s+"), " ").trim()
                        headingIdMap[title]?.let { heading.attr("id", it) }
                    }
                }
                section.copy(html = doc.outerHtml())
            }.getOrElse { section }
        }
    }

    private fun splitLargeSections(sections: List<TextDocumentSection>): List<TextDocumentSection> {
        val maxChars = MAX_SECTION_CHARS
        val result = mutableListOf<TextDocumentSection>()
        var globalIndex = 0
        for (section in sections) {
            if (section.html.length <= maxChars) {
                result.add(section.copy(index = globalIndex++))
                continue
            }
            val splits = splitHtmlAtBoundaries(section.html, maxChars)
            for (splitHtml in splits) {
                result.add(TextDocumentSection(
                    index = globalIndex++,
                    id = section.id,
                    title = section.title,
                    html = splitHtml,
                    baseUrl = section.baseUrl,
                    isFrontMatter = section.isFrontMatter
                ))
            }
        }
        return result
    }

    private fun splitHtmlAtBoundaries(html: String, maxChars: Int): List<String> {
        if (html.length <= maxChars) return listOf(html)
        val chunks = mutableListOf<String>()
        var start = 0
        while (start < html.length) {
            var end = (start + maxChars).coerceAtMost(html.length)
            if (end < html.length) {
                val lastBlockClose = html.lastIndexOf("</p>", end)
                    .coerceAtLeast(html.lastIndexOf("</div>", end))
                    .coerceAtLeast(html.lastIndexOf("</h", end))
                    .coerceAtLeast(html.lastIndexOf("</li>", end))
                if (lastBlockClose > start + maxChars / 2) end = lastBlockClose + 4
            }
            chunks.add(html.substring(start, end))
            start = end
        }
        return chunks
    }

    private fun markdownAnchorSlug(title: String): String {
        val asciiSlug = title
            .lowercase()
            .replace(Regex("""[^\p{L}\p{N}]+"""), "-")
            .trim('-')
        return asciiSlug.ifBlank { "section" }
    }

    /**
     * State-machine RTF → plain-text converter.
     *
     * Handles:
     *  • \'XX  hex-encoded bytes decoded via the document codepage (\ansicpgN, default cp1252)
     *  • \uN   Unicode escapes (signed short, negative → +65536)
     *  • Group depth tracking — non-content destinations (\fonttbl, \pict, \fldinst, …) are skipped
     *  • \*    ignorable-destination marker
     *  • Smart quotes, dashes, bullets mapped to Unicode
     */
    private fun rtfToPlainText(raw: String): String {
        val codepage = Regex("""\\ansicpg(\d+)""").find(raw)
            ?.groupValues?.get(1)?.toIntOrNull() ?: 1252
        val charset = runCatching { Charset.forName("cp$codepage") }
            .getOrElse { Charsets.ISO_8859_1 }

        val out = StringBuilder(raw.length / 4)
        var i = 0
        var depth = 0
        // Stack: stores the `skipping` flag that was active when each '{' was entered,
        // so we can restore it correctly on '}'.
        val groupSkipStack = ArrayDeque<Boolean>()
        var skipping = false

        while (i < raw.length) {
            when (raw[i]) {
                '{' -> {
                    groupSkipStack.addLast(skipping)
                    depth++
                    i++
                    // Peek at the first control word in this group to detect destinations.
                    if (!skipping) {
                        val peek = raw.substring(i, minOf(i + 60, raw.length))
                        val destMatch = Regex("""^\s*\\(\*\s*\\[a-z]+|[a-z]+)""").find(peek)
                        if (destMatch != null) {
                            val firstWord = destMatch.groupValues[1]
                                .trimStart().removePrefix("*").trimStart().removePrefix("\\")
                            if (firstWord.startsWith("*") || firstWord in RTF_SKIP_DESTINATIONS) {
                                skipping = true
                            }
                        }
                    }
                }
                '}' -> {
                    skipping = groupSkipStack.removeLastOrNull() ?: false
                    depth--
                    i++
                }
                '\\' -> {
                    i++
                    if (i >= raw.length) break
                    val nc = raw[i]
                    when {
                        nc == '\'' -> {
                            // \'XX — single byte encoded in current codepage
                            if (!skipping && i + 2 < raw.length) {
                                val hex = raw.substring(i + 1, i + 3)
                                val b = hex.toIntOrNull(16)?.and(0xFF)?.toByte()
                                if (b != null) out.append(byteArrayOf(b).toString(charset))
                            }
                            i += 3
                        }
                        nc == '*' -> {
                            // \* — mark current group as ignorable destination
                            skipping = true
                            i++
                        }
                        nc == '-' -> i++   // optional hyphen — discard
                        nc == '_' -> { if (!skipping) out.append('\u2011'); i++ }  // non-breaking hyphen
                        nc == '~' -> { if (!skipping) out.append('\u00A0'); i++ }  // non-breaking space
                        nc == '{' || nc == '}' || nc == '\\' -> { if (!skipping) out.append(nc); i++ }
                        nc == '\r' || nc == '\n' -> { if (!skipping) out.append("\n\n"); i++ }
                        nc.isLetter() -> {
                            val wStart = i
                            while (i < raw.length && raw[i].isLetter()) i++
                            val word = raw.substring(wStart, i)
                            // Parse optional signed integer parameter
                            val pStart = i
                            if (i < raw.length && (raw[i] == '-' || raw[i] == '+')) i++
                            while (i < raw.length && raw[i].isDigit()) i++
                            val param = if (i > pStart) raw.substring(pStart, i).toIntOrNull() else null
                            if (i < raw.length && raw[i] == ' ') i++   // consume space delimiter

                            // Check non-content destinations that appear without being in a group header
                            if (!skipping && word in RTF_SKIP_DESTINATIONS) {
                                skipping = true
                            }

                            if (!skipping) {
                                when (word) {
                                    "u" -> {
                                        // Unicode escape: signed short (negative → +65536)
                                        val cp = param?.let { if (it < 0) it + 65536 else it } ?: 63
                                        out.append(runCatching { Character.toChars(cp).concatToString() }.getOrDefault("?"))
                                        // Skip the replacement character(s) that follow
                                        if (i < raw.length) {
                                            if (raw[i] == '\\' && i + 1 < raw.length && raw[i + 1] == '\'') {
                                                i += 4  // skip \'XX replacement
                                            } else if (raw[i] != '{' && raw[i] != '}' && raw[i] != '\\') {
                                                i++     // skip single-char replacement
                                            }
                                        }
                                    }
                                    "par", "pard"      -> out.append("\n\n")
                                    "line"             -> out.append('\n')
                                    "tab"              -> out.append('\t')
                                    "page", "sect",
                                    "column"           -> out.append("\n\n")
                                    "cell", "nestcell" -> out.append('\t')
                                    "row", "nestrow"   -> out.append('\n')
                                    "bullet"           -> out.append('\u2022')
                                    "endash"           -> out.append('\u2013')
                                    "emdash"           -> out.append('\u2014')
                                    "lquote"           -> out.append('\u2018')
                                    "rquote"           -> out.append('\u2019')
                                    "ldblquote"        -> out.append('\u201C')
                                    "rdblquote"        -> out.append('\u201D')
                                    "enspace",
                                    "emspace",
                                    "qmspace"          -> out.append(' ')
                                }
                            }
                        }
                        else -> i++
                    }
                }
                '\r', '\n' -> i++   // bare newlines are not content in RTF
                else -> {
                    if (!skipping) out.append(raw[i])
                    i++
                }
            }
        }

        return out.toString()
            .replace(Regex("""[ \t]+(?=\n)"""), "")
            .replace(Regex("""\n{3,}"""), "\n\n")
            .replace('\u00A0', ' ')
            .trim()
    }

    private fun paginateBlocks(
        blocks: List<String>,
        extraCss: String = "",
        baseCss: String = DEFAULT_READER_HTML_CSS,
        preservePublisherLayout: Boolean = false
    ): List<String> {
        if (blocks.isEmpty()) return listOf(wrapHtml("<p></p>", extraCss, baseCss, preservePublisherLayout))
        val pages = mutableListOf<String>()
        val buffer = StringBuilder()
        var chars = 0

        fun flush() {
            if (buffer.isNotEmpty()) {
                pages += wrapHtml(
                    body = buffer.toString(),
                    extraCss = extraCss,
                    baseCss = baseCss,
                    preservePublisherLayout = preservePublisherLayout
                )
                buffer.clear()
                chars = 0
            }
        }

        blocks.flatMap(::splitOversizedReaderHtmlBlock).forEach { block ->
            val visibleChars = block.replace(Regex("<[^>]+>"), "").length.coerceAtLeast(1)
            if (
                chars > 0 &&
                (block.isReaderSectionStartBlock() || chars + visibleChars > CHARS_PER_PAGE)
            ) {
                flush()
            }
            buffer.append(block)
            chars += visibleChars
        }
        flush()
        return pages.ifEmpty { listOf(wrapHtml("<p></p>", extraCss, baseCss, preservePublisherLayout)) }
    }

    private fun normalizeHtmlDocument(raw: String): String {
        val trimmed = raw.trim()
        return if (trimmed.contains("<html", ignoreCase = true)) {
            trimmed
        } else {
            wrapHtml(trimmed)
        }
    }

    private fun markupPages(
        raw: String,
        baseUrl: String?,
        preservePublisherLayout: Boolean = false,
        baseCss: String = DEFAULT_READER_HTML_CSS,
        keepWholeDocument: Boolean = false
    ): List<String> {
        val splitPages = splitMarkupPages(raw)
        if (splitPages.size > 1) {
            return splitPages.flatMap {
                paginateHtmlDocument(
                    raw = it,
                    baseUrl = baseUrl,
                    preservePublisherLayout = preservePublisherLayout,
                    baseCss = baseCss,
                    keepWholeDocument = keepWholeDocument
                )
            }
        }
        return paginateHtmlDocument(
            raw = raw,
            baseUrl = baseUrl,
            preservePublisherLayout = preservePublisherLayout,
            baseCss = baseCss,
            keepWholeDocument = keepWholeDocument
        )
    }

    private fun splitMarkupPages(raw: String): List<String> {
        val delimiter = Regex(
            """<(?:mbp:pagebreak|pagebreak|hr)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak|hr)>)""",
            setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)
        )
        return raw.split(delimiter)
            .map(String::trim)
            .filter(String::isNotBlank)
    }

    private fun htmlBlocks(raw: String): List<String> {
        val cleaned = raw
            .replace(
                Regex("""<(script|style|head)\b[^>]*>.*?</\1>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)),
                ""
            )
            .replace(Regex("""<br\s*/?>""", RegexOption.IGNORE_CASE), "\n")
        val blockRegex = Regex(
            """<(h[1-6]|p|blockquote|pre|li|div)\b[^>]*>(.*?)</\1>""",
            setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)
        )
        val blocks = blockRegex.findAll(cleaned).mapNotNull { match ->
            val tag = match.groupValues[1].lowercase()
            val plain = htmlToPlain(match.groupValues[2])
            if (plain.isBlank()) {
                null
            } else {
                val escaped = escapeHtml(plain).replace("\n", "<br/>")
                when {
                    tag.startsWith("h") -> "<$tag>$escaped</$tag>"
                    tag == "blockquote" -> "<blockquote>$escaped</blockquote>"
                    tag == "pre" -> "<pre>$escaped</pre>"
                    tag == "li" -> "<p>• $escaped</p>"
                    else -> "<p>$escaped</p>"
                }
            }
        }.toList()
        return blocks.ifEmpty { textBlocks(htmlToPlain(cleaned)) }
    }

    private fun htmlToPlain(raw: String): String {
        val lineBreaksRestored = raw
            .replace(Regex("""<br\s*/?>""", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("""</p>""", RegexOption.IGNORE_CASE), "\n\n")
            .replace(Regex("""</div>""", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("""</li>""", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("""</blockquote>""", RegexOption.IGNORE_CASE), "\n\n")
            .replace(Regex("""</h[1-6]>""", RegexOption.IGNORE_CASE), "\n\n")
        return decodeXmlEntities(
            lineBreaksRestored
                .replace(Regex("""<[^>]+>"""), "")
                .replace('\u00A0', ' ')
        )
            .replace(Regex("""[ \t]+\n"""), "\n")
            .replace(Regex("""\n{3,}"""), "\n\n")
            .trim()
    }

    /**
     * Parses an HTML file with jsoup, cleans it, then paginates block-level children
     * using the same CHARS_PER_PAGE budget as other text formats.
     * The base URL is injected into every page's <head> so relative image/link paths resolve.
     */
    private fun paginateHtmlDocument(
        raw: String,
        baseUrl: String?,
        preservePublisherLayout: Boolean = false,
        baseCss: String = DEFAULT_READER_HTML_CSS,
        keepWholeDocument: Boolean = false
    ): List<String> {
        val normalizedBase = baseUrl.orEmpty()
        val document = if (raw.contains("<html", ignoreCase = true) ||
                           raw.contains("<body", ignoreCase = true) ||
                           raw.contains("<!DOCTYPE", ignoreCase = true)
        ) {
            Jsoup.parse(raw, normalizedBase)
        } else {
            Jsoup.parseBodyFragment(raw, normalizedBase)
        }
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        // Extract <style> content before removing elements so it can be forwarded to each page.
        val extractedCss = document.select("style").joinToString("\n") { it.data() }
        val linkedStylesheets = document.select("link[rel~=(?i)stylesheet][href], link[href$=.css i][href]")
            .joinToString("\n") { it.outerHtml() }
        document.select(
            "script, style, noscript, template, iframe, object, embed, canvas, form, " +
            "input, button, select, textarea"
        ).remove()
        document.select("meta, link").remove()

        val title = document.title().trim()
        val body  = document.body()

        val childBlocks = extractReaderHtmlBlocks(body, normalizedBase).toMutableList()

        if (!preservePublisherLayout &&
            title.isNotBlank() &&
            childBlocks.none { it.contains(title, ignoreCase = true) }
        ) {
            childBlocks.add(0, "<h1>${htmlEscapeText(title)}</h1>")
        }

        if (childBlocks.isEmpty()) {
            val fallback = body.text().trim()
            return listOf(buildReaderHtmlDocument(
                body = if (fallback.isNotBlank()) "<p>${htmlEscapeText(fallback)}</p>" else "<p></p>",
                baseUrl = baseUrl,
                extraCss = extractedCss,
                extraHeadHtml = linkedStylesheets,
                baseCss = baseCss,
                preservePublisherLayout = preservePublisherLayout
            ))
        }

        if (keepWholeDocument) {
            return listOf(
                buildReaderHtmlDocument(
                    body = childBlocks.joinToString(separator = ""),
                    baseUrl = baseUrl,
                    extraCss = extractedCss,
                    extraHeadHtml = linkedStylesheets,
                    baseCss = baseCss,
                    preservePublisherLayout = preservePublisherLayout
                )
            )
        }

        // Paginate using the shared budget, but produce pages with baseUrl injected.
        val pages  = mutableListOf<String>()
        val buffer = StringBuilder()
        var chars  = 0

        fun flush() {
            if (buffer.isNotEmpty()) {
                pages += buildReaderHtmlDocument(
                    body = buffer.toString(),
                    baseUrl = baseUrl,
                    extraCss = extractedCss,
                    extraHeadHtml = linkedStylesheets,
                    baseCss = baseCss,
                    preservePublisherLayout = preservePublisherLayout
                )
                buffer.clear()
                chars = 0
            }
        }

        childBlocks.forEach { block ->
            val visible = block.replace(Regex("<[^>]+>"), "").length.coerceAtLeast(1)
            if (
                chars > 0 &&
                (block.isReaderSectionStartBlock() || chars + visible > CHARS_PER_PAGE)
            ) {
                flush()
            }
            buffer.append(block)
            chars += visible
        }
        flush()

        return pages.ifEmpty {
            listOf(
                buildReaderHtmlDocument(
                    body = "<p></p>",
                    baseUrl = baseUrl,
                    extraHeadHtml = linkedStylesheets,
                    baseCss = baseCss,
                    preservePublisherLayout = preservePublisherLayout
                )
            )
        }
    }

    private fun extractReaderHtmlBlocks(body: Element, baseUrl: String): List<String> {
        val blockSelector = listOf(
            "h1", "h2", "h3", "h4", "h5", "h6",
            "p", "blockquote", "pre", "li", "figure", "figcaption",
            "table", "hr", "img"
        ).joinToString(",")

        val candidates = body.select(blockSelector)
            .filterNot { element -> element.parents().any { it.normalName() in setOf("table", "figure") } }
            .ifEmpty { body.children().toList() }

        return candidates
            .flatMap { element ->
                val cleaned = normalizeReaderHtmlFragment(
                    Jsoup.clean(
                        element.outerHtml(),
                        baseUrl,
                        HTML_READER_SAFE_LIST,
                        Document.OutputSettings().prettyPrint(false)
                    ).trim()
                )
                if (cleaned.isBlank() || !hasReaderVisibleContent(cleaned)) {
                    emptyList()
                } else {
                    splitOversizedReaderHtmlBlock(cleaned)
                }
            }
    }

    private fun hasReaderVisibleContent(html: String): Boolean {
        if (visibleReaderText(html).isNotBlank()) return true
        val document = Jsoup.parseBodyFragment(html)
        return document.select("img[src], svg, table, hr").isNotEmpty()
    }

    private fun splitOversizedReaderHtmlBlock(block: String): List<String> {
        val visible = visibleReaderText(block)
        if (visible.length <= CHARS_PER_PAGE) return listOf(block)
        val document = Jsoup.parseBodyFragment(block)
        val tag = document.body().children().firstOrNull()?.normalName()
            ?.takeIf { it in setOf("p", "blockquote", "li") }
            ?: "p"
        return splitReaderTextIntoChunks(visible, CHARS_PER_PAGE)
            .map { chunk -> "<$tag>${htmlEscapeText(chunk.trim())}</$tag>" }
            .filter { visibleReaderText(it).isNotBlank() }
            .ifEmpty { listOf(block) }
    }

    private fun String.isReaderSectionStartBlock(): Boolean = runCatching {
        val first = Jsoup.parseBodyFragment(this).body().children().firstOrNull() ?: return@runCatching false
        val tag = first.normalName()
        tag in setOf("h1", "h2", "h3") ||
            first.hasClass("chapter") ||
            first.attr("data-mrcomic-section-start").equals("true", ignoreCase = true)
    }.getOrDefault(false)

    private fun splitReaderTextIntoChunks(text: String, charsPerChunk: Int): List<String> {
        if (text.length <= charsPerChunk) return listOf(text)
        val chunks = mutableListOf<String>()
        var start = 0
        while (start < text.length) {
            val targetEnd = (start + charsPerChunk).coerceAtMost(text.length)
            var boundary = targetEnd
            if (targetEnd < text.length) {
                val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd)
                    .takeIf { it >= start + charsPerChunk / 3 } ?: -1
                if (whitespaceBoundary >= 0) {
                    boundary = whitespaceBoundary
                }
            }
            val chunk = text.substring(start, boundary).trim()
            if (chunk.isNotBlank()) chunks += chunk
            start = boundary.coerceAtLeast(start + 1)
        }
        return chunks
    }

    private fun supportsHtmlAssetLoading(): Boolean =
        format == ComicFormat.HTML && !path.startsWith("content://")

    private fun buildAnchorPageIndex(): Map<String, Int> {
        val result = linkedMapOf<String, Int>()
        htmlPages.forEachIndexed { index, html ->
            runCatching {
                val document = Jsoup.parse(html)
                document.select("[id]").forEach { element ->
                    val id = element.id().trim()
                    if (id.isNotBlank()) {
                        result.putIfAbsent(id, index)
                    }
                }
                document.select("a[name]").forEach { element ->
                    val name = element.attr("name").trim()
                    if (name.isNotBlank()) {
                        result.putIfAbsent(name, index)
                    }
                }
            }
        }
        return result
    }

    private fun buildTableOfContents(): List<TocEntry> {
        // Primary: use detected chapter anchors (h1-h6 headings).
        val fromAnchors = documentData.chapterAnchors.mapNotNull { anchor ->
            val pageIndex = anchorPageIndex[anchor.id] ?: return@mapNotNull null
            val charOffset = findAnchorCharOffset(htmlPages.getOrNull(pageIndex), anchor.id)
            TocEntry(
                title = anchor.title,
                pageIndex = pageIndex,
                anchorId = anchor.id,
                sectionIndex = pageIndex,
                charOffset = charOffset
            )
        }
        if (fromAnchors.isNotEmpty()) return fromAnchors

        // Fallback: when no heading-based anchors were detected (e.g. plain HTML
        // documents without h1-h6), build TOC from all named/id anchors found in
        // the HTML pages. This matches how Moon+ Reader shows TOC for any document
        // that has anchor targets.
        return anchorPageIndex.entries.mapNotNull { (id, pageIndex) ->
            val title = findAnchorTitle(htmlPages.getOrNull(pageIndex), id)
                ?: return@mapNotNull null
            TocEntry(
                title = title,
                pageIndex = pageIndex,
                anchorId = id,
                sectionIndex = pageIndex,
                charOffset = -1
            )
        }
    }

    private fun findAnchorTitle(html: String?, anchorId: String): String? {
        if (html.isNullOrBlank() || anchorId.isBlank()) return null
        return runCatching {
            val doc = Jsoup.parse(html)
            val el = doc.select("#${anchorId}, [name=$anchorId]").firstOrNull() ?: return@runCatching null
            // Use the element's own text if it looks like a heading or meaningful label;
            // skip generic anchors with empty or very short text.
            val text = el.text().trim()
            text.takeIf { it.length in 2..120 }
        }.getOrNull()
    }

    private fun findAnchorCharOffset(html: String?, anchorId: String): Int {
        if (html.isNullOrBlank() || anchorId.isBlank()) return -1
        return runCatching {
            val doc = Jsoup.parse(html)
            val element = doc.select("#${anchorId}, [name=$anchorId]").firstOrNull()
            element?.let { html.indexOf("<${it.tagName()}") } ?: -1
        }.getOrDefault(-1)
    }

    /**
     * Pre-process MOBI markup: convert <font size="N"><b>text</b></font> inside
     * centered paragraphs into proper heading tags, and unwrap structural blockquotes.
     */

    private fun isTechnicalMarkdown(raw: String): Boolean {
        val lines = raw.lines()
        if (lines.size < 3 || lines[0].trim() != "---") return false
        // Look for closing --- within first 30 lines (typical YAML front matter)
        // and require at least one YAML key-value pair between the markers.
        for (i in 1 until minOf(30, lines.size)) {
            if (lines[i].trim() == "---") {
                // Check that at least one line between markers contains ':'
                val hasYamlKey = (1 until i).any { lines[it].contains(':') }
                return hasYamlKey
            }
        }
        return false
    }

    private fun extractYamlFrontMatter(raw: String): Pair<Map<String, String>, String> {
        val lines = raw.lines()
        if (lines.size < 3 || lines[0].trim() != "---") {
            return emptyMap<String, String>() to raw
        }

        val metadata = mutableMapOf<String, String>()
        var contentStart = -1
        var inFrontMatter = true

        for (i in 1 until lines.size) {
            val line = lines[i].trim()
            if (line == "---" && inFrontMatter) {
                contentStart = i + 1
                break
            }

            if (inFrontMatter) {
                val colonIndex = line.indexOf(':')
                if (colonIndex > 0) {
                    val key = line.substring(0, colonIndex).trim()
                    val value = line.substring(colonIndex + 1).trim().removeSurrounding("\"", "\"").removeSurrounding("'", "'")
                    if (key.isNotEmpty()) {
                        metadata[key] = value
                    }
                }
            }
        }

        if (contentStart <= 0 || contentStart >= lines.size) {
            return emptyMap<String, String>() to raw
        }

        val content = lines.drop(contentStart).joinToString("\n")
        return metadata to content
    }

    private fun htmlEscapeText(text: String): String {
        return text
            .replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")
            .replace("\"", "&quot;")
            .replace("'", "&#39;")
    }

    private fun processTechnicalMarkdown(raw: String): List<String> {
        // Extract YAML front matter if present
        val (metadata, content) = extractYamlFrontMatter(raw)

        // Process the main content with CommonMark
        val contentBlocks = renderMarkdownToHtmlBlocks(content)

        // Create front matter header if metadata exists
        val frontMatterBlocks = mutableListOf<String>()
        if (metadata.isNotEmpty()) {
            val title = metadata["title"] ?: metadata.getOrDefault("Title", "")
            val author = metadata["author"] ?: metadata.getOrDefault("Author", "")
            val version = metadata["version"] ?: metadata.getOrDefault("Version", "")
            val date = metadata["date"] ?: metadata.getOrDefault("Date", "")
            val license = metadata["license"] ?: metadata.getOrDefault("License", "")

            val headerHtml = buildString {
                if (title.isNotBlank()) {
                    append("<h1>${htmlEscapeText(title)}</h1>")
                }
                if (author.isNotBlank()) {
                    append("<p><strong>Author:</strong> ${htmlEscapeText(author)}</p>")
                }
                if (version.isNotBlank()) {
                    append("<p><strong>Version:</strong> ${htmlEscapeText(version)}</p>")
                }
                if (date.isNotBlank()) {
                    append("<p><strong>Date:</strong> ${htmlEscapeText(date)}</p>")
                }
                if (license.isNotBlank()) {
                    append("<p><strong>License:</strong> ${htmlEscapeText(license)}</p>")
                }
                if (title.isNotBlank() || author.isNotBlank() || version.isNotBlank() || date.isNotBlank() || license.isNotBlank()) {
                    append("<hr/>")
                }
            }

            if (headerHtml.isNotBlank()) {
                frontMatterBlocks.add(headerHtml)
            }
        }

        return frontMatterBlocks + contentBlocks
    }

    private fun wrapHtml(
        body: String,
        extraCss: String = "",
        baseCss: String = DEFAULT_READER_HTML_CSS,
        preservePublisherLayout: Boolean = false
    ): String = buildReaderHtmlDocument(
        body = body,
        extraCss = extraCss,
        baseCss = baseCss,
        preservePublisherLayout = preservePublisherLayout
    )
    private fun escapeHtml(text: String): String = htmlEscapeText(text)
}
