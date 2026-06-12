package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.parser.Parser
import java.io.File
import java.io.ByteArrayOutputStream
import java.io.InputStream

private const val MAX_MOBI_SOURCE_BYTES = 128 * 1024 * 1024

class MobiFormatReader(
    private val context: Context,
    private val path: String,
    private val format: ComicFormat
) : FormatReader, ReflowableTextFormatReader {

    private val payload: MobiReaderPayload by lazy { readMobiReflowablePayload(context, path) }
    private val document: ReflowableDocument get() = payload.document

    override fun rendersHtmlContent(): Boolean = true

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        document.pageCount
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override suspend fun getTextDocumentSections(): List<TextDocumentSection> = withContext(Dispatchers.IO) {
        document.pages.mapIndexed { index, html ->
            TextDocumentSection(index = index, html = html, baseUrl = htmlBaseUrl())
        }
    }

    override fun getTableOfContents(): List<TocEntry> = document.toc

    override fun getFootnoteText(anchorId: String): String? {
        val normalized = anchorId.trim()
            .removePrefix("#")
            .substringAfterLast('#')
            .trim()
        if (normalized.isBlank()) return null
        return payload.footnoteMap[normalized]
            ?: payload.footnoteMap["#$normalized"]
    }

    override fun resolveHrefToPage(href: String): Int? {
        val normalized = href.trim()
        if (normalized.isBlank()) return null
        return payload.hrefToPage[normalized]
            ?: payload.hrefToPage[normalized.removePrefix("#")]
            ?: normalized.substringAfter('#', "").takeIf { it.isNotBlank() }?.let { payload.anchorPageIndex[it] }
    }

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return parent.toURI().toString().trimEnd('/') + "/"
    }

    override suspend fun getMetadata(): Map<String, String> {
        return buildMap {
            put("format", format.name)
            put("engine", "mobi-reflowable-v1")
            payload.diagnostics?.let { diagnostics ->
                put("parserVersion", "2")
                put("declaredEncoding", diagnostics.declaredEncoding.toString())
                put("resolvedEncoding", diagnostics.resolvedEncoding)
                put("compression", diagnostics.compression.toString())
                put("textRecordCount", diagnostics.textRecordCount.toString())
                put("pageBreakCount", diagnostics.pageBreakCount.toString())
                put("containsMarkup", diagnostics.containsMarkup.toString())
            }
            payload.unsupportedDetails?.let { details ->
                put("parserVersion", "2")
                put("unsupportedReason", details.reason)
                details.declaredEncoding?.let { put("declaredEncoding", it.toString()) }
                details.compression?.let { put("compression", it.toString()) }
                details.textRecordCount?.let { put("textRecordCount", it.toString()) }
                details.encryptionType?.let { put("encryptionType", it.toString()) }
                put("containsHuffCdicTables", details.containsHuffCdicTables.toString())
            }
        }
    }

    override fun close() = Unit
}

internal fun readMobiReflowableDocument(context: Context, path: String): ReflowableDocument {
    return readMobiReflowablePayload(context, path).document
}

internal data class MobiReaderPayload(
    val document: ReflowableDocument,
    val diagnostics: MobiDiagnostics? = null,
    val unsupportedDetails: MobiUnsupportedDetails? = null,
    val anchorPageIndex: Map<String, Int> = emptyMap(),
    val hrefToPage: Map<String, Int> = emptyMap(),
    val footnoteMap: Map<String, String> = emptyMap()
)

internal fun readMobiReflowablePayload(context: Context, path: String): MobiReaderPayload {
    val bytes = openMobiStream(context, path)?.use { input ->
        input.readMobiBytesBounded(MAX_MOBI_SOURCE_BYTES)
    }
        ?: return MobiReaderPayload(ReflowableDocumentBuilder.error("Unable to read file."))
    val baseUrl = if (path.startsWith("content://")) {
        null
    } else {
        val parent = File(path).parentFile
        parent?.toURI()?.toString()?.trimEnd('/') + "/"
    }
    return when (val extracted = MobiTextSupport.extract(bytes)) {
        is MobiExtractionResult.Success -> {
            val sections = if (extracted.isMarkup) {
                buildMobiSections(
                    markup = extracted.content,
                    baseUrl = baseUrl
                )
            } else {
                ReflowableDocumentBuilder.sectionsFromPlainText(extracted.content)
                    .withSequentialIndices()
            }
            val document = enrichMobiDocument(
                ReflowableDocument(pages = sections.map { it.html }),
                if (extracted.isMarkup) extracted.content else ""
            )
            MobiReaderPayload(
                document = document,
                diagnostics = extracted.diagnostics,
                anchorPageIndex = document.anchorPageIndex,
                hrefToPage = document.hrefToPage,
                footnoteMap = document.footnoteMap
            )
        }
        is MobiExtractionResult.Unsupported ->
            MobiReaderPayload(
                document = ReflowableDocumentBuilder.error(extracted.message),
                unsupportedDetails = extracted.details
            )
    }
}

private fun InputStream.readMobiBytesBounded(maxBytes: Int): ByteArray? {
    val output = ByteArrayOutputStream(minOf(maxBytes, 64 * 1024))
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

private fun buildMobiSections(markup: String, baseUrl: String?): List<TextDocumentSection> {
    if (!MOBI_HEAVY_MARKUP_RE.containsMatchIn(markup)) {
        buildMobiFastBlockDocument(markup)?.pages?.mapIndexed { index, html ->
            TextDocumentSection(index = index, html = html, baseUrl = baseUrl)
        }?.let { return it.withSequentialIndices() }
    }

    val normalized = normalizeMobiMarkup(markup)
    val segments = splitMobiMarkupSegments(normalized).let { segments ->
        if (segments.size <= 2) segments else listOf(stripMobiSoftPageBreaks(normalized))
    }
    if (segments.size <= 1) {
        return ReflowableDocumentBuilder.sectionsFromMarkup(
            markup = segments.firstOrNull() ?: normalized,
            baseUrl = baseUrl
        ).withSequentialIndices()
    }

    return segments
        .flatMap { segment ->
            ReflowableDocumentBuilder.sectionsFromMarkup(segment, baseUrl)
        }
        .filter { section ->
            section.html.replace(Regex("<[^>]+>"), " ")
                .replace(Regex("\\s+"), " ")
                .trim()
                .isNotBlank()
        }
        .withSequentialIndices()
        .ifEmpty {
            ReflowableDocumentBuilder.sectionsFromMarkup(normalized, baseUrl).withSequentialIndices()
        }
}

private fun buildMobiMarkupDocument(markup: String, baseUrl: String?): ReflowableDocument {
    val sections = buildMobiSections(markup, baseUrl)
    return enrichMobiDocument(
        ReflowableDocument(pages = sections.map { it.html }),
        normalizeMobiMarkup(markup)
    )
}

private fun enrichMobiDocument(document: ReflowableDocument, normalizedMarkup: String): ReflowableDocument {
    val anchorPageIndex = buildMobiAnchorPageIndex(document.pages)
    val hrefToPage = buildMobiHrefToPageIndex(anchorPageIndex)
    val footnoteMap = extractMobiFootnoteMap(normalizedMarkup)
    return document.copy(
        anchorPageIndex = anchorPageIndex,
        hrefToPage = hrefToPage,
        footnoteMap = footnoteMap
    )
}

private fun buildMobiAnchorPageIndex(pages: List<String>): Map<String, Int> {
    val result = linkedMapOf<String, Int>()
    pages.forEachIndexed { index, html ->
        runCatching {
            val document = Jsoup.parse(html)
            document.select("[id]").forEach { element ->
                element.id().trim().takeIf { it.isNotBlank() }?.let { result.putIfAbsent(it, index) }
            }
            document.select("a[name], [name]").forEach { element ->
                element.attr("name").trim().takeIf { it.isNotBlank() }?.let { result.putIfAbsent(it, index) }
            }
        }
    }
    return result
}

private fun buildMobiHrefToPageIndex(anchorPageIndex: Map<String, Int>): Map<String, Int> =
    buildMap {
        anchorPageIndex.forEach { (anchor, page) ->
            put(anchor, page)
            put("#$anchor", page)
        }
    }

private fun extractMobiFootnoteMap(markup: String): Map<String, String> = runCatching {
    val document = Jsoup.parse(markup)
    val targetIds = linkedSetOf<String>()
    document.select("a[href]").forEach { link ->
        val href = link.attr("href").trim()
        val cls = link.className()
        val title = link.attr("title").trim()
        val text = link.text().trim()
        val isFootnoteLink =
            cls.contains("fn", ignoreCase = true) ||
                cls.contains("note", ignoreCase = true) ||
                title.isNotBlank() ||
                Regex("""^[\[\(]?\d+[\]\)]?$""").matches(text) ||
                href.contains("mobi-filepos-", ignoreCase = true)
        if (isFootnoteLink) {
            href.substringAfter('#', "")
                .trim()
                .takeIf { it.isNotBlank() }
                ?.let(targetIds::add)
        }
    }
    targetIds.associateWithNotNull { targetId ->
        val target = document.getElementById(targetId)
            ?: document.selectFirst("""[name="$targetId"]""")
            ?: return@associateWithNotNull null
        resolveMobiFootnoteElement(target)
            ?.html()
            ?.trim()
            ?.takeIf { it.isNotBlank() }
    }
}.getOrElse { emptyMap() }

private fun resolveMobiFootnoteElement(target: Element): Element? {
    var current: Element? = target
    while (current != null && current.parent() != null) {
        val marker = listOf(
            current.id(),
            current.className(),
            current.attr("epub:type"),
            current.attr("type"),
            current.tagName()
        ).joinToString(" ")
        if (
            Regex("""\b(footnote|note|notebody|rearnote|endnote|fn|mobi-filepos)\b""", RegexOption.IGNORE_CASE)
                .containsMatchIn(marker)
        ) {
            return current
        }
        if (current.tagName() in setOf("p", "div", "li", "aside", "section", "blockquote")) {
            return current
        }
        current = current.parent()
    }
    return target
}

private inline fun <K, V : Any> Iterable<K>.associateWithNotNull(valueTransform: (K) -> V?): Map<K, V> {
    val result = linkedMapOf<K, V>()
    for (key in this) {
        val value = valueTransform(key) ?: continue
        result[key] = value
    }
    return result
}

private val MOBI_HEAVY_MARKUP_RE = Regex(
    """(?is)<\s*(img|image|svg|table|ol|ul)\b"""
)

private val MOBI_FILEPOS_ATTR_RE = Regex(
    """(?is)\bfilepos\s*=\s*["']?(\d+)["']?"""
)

private val MOBI_INLINE_ATTR_RE = Regex(
    """(?is)\b(href|title|id|name|class|type|epub:type)\s*=\s*(?:"([^"]*)"|'([^']*)'|([^\s>]+))"""
)

private fun buildMobiFastBlockDocument(markup: String): ReflowableDocument? {
    val blocks = extractMobiTextBlocksFast(markup).map { block ->
        val tag = if (block.centered) {
            """<p style="text-align:center">"""
        } else {
            "<p>"
        }
        "$tag${block.html}</p>"
    }
    return blocks.takeIf { it.isNotEmpty() }?.let(ReflowableDocumentBuilder::fromHtmlBlocks)
}

private data class MobiTextBlock(
    val html: String,
    val centered: Boolean
)

private fun extractMobiTextBlocksFast(markup: String): List<MobiTextBlock> {
    val blocks = mutableListOf<MobiTextBlock>()
    val current = StringBuilder()
    val inlineStack = ArrayDeque<String>()
    val fileposTargets = MOBI_FILEPOS_ATTR_RE.findAll(markup)
        .mapNotNull { it.groupValues.getOrNull(1)?.toIntOrNull() }
        .distinct()
        .sorted()
        .iterator()
    var nextFileposTarget: Int? = if (fileposTargets.hasNext()) fileposTargets.next() else null
    var index = 0
    var currentCentered = false
    var centerDepth = 0

    fun appendRaw(html: String) {
        current.append(html)
    }

    fun appendSpace() {
        if (current.isNotEmpty() && current.last() != ' ') {
            current.append(' ')
        }
    }

    fun appendText(text: String) {
        text.forEach { char ->
            when {
                char == '\u00A0' || char.isWhitespace() -> appendSpace()
                else -> current.append(escapeMobiHtml(char.toString()))
            }
        }
    }

    fun appendPendingFileposAnchors() {
        while (nextFileposTarget != null && nextFileposTarget!! <= index) {
            appendRaw("""<span id="mobi-filepos-${nextFileposTarget}"></span>""")
            nextFileposTarget = if (fileposTargets.hasNext()) fileposTargets.next() else null
        }
    }

    fun closeInlineStack() {
        while (inlineStack.isNotEmpty()) {
            current.append("</").append(inlineStack.removeLast()).append(">")
        }
    }

    fun flushBlock() {
        closeInlineStack()
        val html = current.toString().trim()
        val text = html.replace(Regex("<[^>]+>"), " ").replace(Regex("\\s+"), " ").trim()
        if (text.isNotBlank()) {
            blocks += MobiTextBlock(
                html = html,
                centered = currentCentered || centerDepth > 0
            )
        }
        current.clear()
        currentCentered = centerDepth > 0
    }

    fun skipUntilClosingTag(tagName: String, from: Int): Int {
        val close = "</$tagName"
        val closeIndex = markup.indexOf(close, startIndex = from, ignoreCase = true)
        if (closeIndex < 0) return markup.length
        val closeEnd = markup.indexOf('>', startIndex = closeIndex)
        return if (closeEnd < 0) markup.length else closeEnd + 1
    }

    while (index < markup.length) {
        appendPendingFileposAnchors()
        when (val char = markup[index]) {
            '<' -> {
                val tagEnd = markup.indexOf('>', startIndex = index + 1)
                if (tagEnd < 0) break
                val rawTag = markup.substring(index + 1, tagEnd).trim()
                val lowerTag = rawTag.lowercase()
                val closing = lowerTag.startsWith("/")
                val tagName = lowerTag
                    .removePrefix("/")
                    .takeWhile { it.isLetterOrDigit() || it == ':' }

                when {
                    tagName == "script" || tagName == "style" -> {
                        index = skipUntilClosingTag(tagName, tagEnd + 1)
                        continue
                    }
                    tagName == "br" -> appendRaw("<br/>")
                    tagName in MOBI_FAST_INLINE_TAGS -> {
                        if (closing) {
                            if (tagName in inlineStack) {
                                while (inlineStack.isNotEmpty()) {
                                    val closed = inlineStack.removeLast()
                                    appendRaw("</$closed>")
                                    if (closed == tagName) break
                                }
                            }
                        } else {
                            sanitizeMobiInlineOpeningTag(tagName, rawTag)?.let { safeTag ->
                                appendRaw(safeTag)
                                inlineStack.addLast(tagName)
                            }
                        }
                    }
                    tagName == "mbp:pagebreak" || tagName == "pagebreak" -> appendSpace()
                    tagName == "center" && !closing -> {
                        flushBlock()
                        centerDepth++
                        currentCentered = true
                    }
                    tagName == "center" && closing -> {
                        flushBlock()
                        centerDepth = (centerDepth - 1).coerceAtLeast(0)
                        currentCentered = centerDepth > 0
                    }
                    tagName in MOBI_FAST_BLOCK_TAGS -> {
                        if (!closing) {
                            flushBlock()
                            currentCentered = centerDepth > 0 || lowerTag.contains("align=\"center\"") ||
                                lowerTag.contains("align='center'") ||
                                lowerTag.contains("text-align:center")
                        } else {
                            flushBlock()
                        }
                    }
                }
                index = tagEnd + 1
            }
            '&' -> {
                val entityEnd = markup.indexOf(';', startIndex = index + 1).takeIf { it in (index + 2)..(index + 16) }
                if (entityEnd != null) {
                    appendText(Parser.unescapeEntities(markup.substring(index, entityEnd + 1), false))
                    index = entityEnd + 1
                } else {
                    current.append(char)
                    index++
                }
            }
            else -> {
                appendText(char.toString())
                index++
            }
        }
    }

    appendPendingFileposAnchors()
    flushBlock()
    return blocks
}

private val MOBI_FAST_INLINE_TAGS = setOf(
    "a", "sup", "sub", "em", "i", "b", "strong", "span"
)

private val MOBI_FAST_BLOCK_TAGS = setOf(
    "p", "div", "section", "article", "blockquote",
    "li", "tr", "td", "th", "table",
    "h1", "h2", "h3", "h4", "h5", "h6"
)

private fun escapeMobiHtml(text: String): String =
    text.replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace("\"", "&quot;")

private fun sanitizeMobiInlineOpeningTag(tagName: String, rawTag: String): String? {
    if (tagName !in MOBI_FAST_INLINE_TAGS) return null
    if (tagName != "a") {
        return "<$tagName>"
    }

    val attrs = linkedMapOf<String, String>()
    MOBI_INLINE_ATTR_RE.findAll(rawTag).forEach { match ->
        val name = match.groupValues[1].lowercase()
        val value = match.groupValues.drop(2).firstOrNull { it.isNotBlank() }?.trim().orEmpty()
        if (value.isNotBlank()) attrs[name] = value
    }
    val filepos = MOBI_FILEPOS_ATTR_RE.find(rawTag)
        ?.groupValues
        ?.getOrNull(1)
        ?.trim()
        .orEmpty()
    if (!attrs.containsKey("href")) {
        if (filepos.isNotBlank()) {
            attrs["href"] = "#mobi-filepos-$filepos"
            attrs["data-mrcomic-filepos"] = filepos
        } else {
            val namedAnchor = attrs["id"] ?: attrs["name"] ?: return null
            attrs["href"] = "#$namedAnchor"
        }
    }
    if (filepos.isNotBlank()) {
        attrs["class"] = listOf(attrs["class"], "fn")
            .filter { it?.isNotBlank() == true }
            .joinToString(" ")
    }
    val serialized = attrs.entries.joinToString(separator = "") { (name, value) ->
        """ $name="${escapeMobiHtml(value)}""""
    }
    return "<a$serialized>"
}


private fun normalizeMobiMarkup(markup: String): String {
    var normalized = markup
        .replace("\u0000", "")
        .replace(Regex("(?is)<guide\\b[^>]*>.*?</guide>"), "")
        .replace(Regex("(?is)</?(metadata|reference|mbp:frameset)\\b[^>]*>"), "")
        .trim()

    val hasBody = Regex("<body\\b", RegexOption.IGNORE_CASE).containsMatchIn(normalized)
    if (!hasBody) {
        val contentStart = listOf("<div", "<p", "<h1", "<h2", "<center", "<span", "<blockquote")
            .mapNotNull { marker ->
                normalized.indexOf(marker, ignoreCase = true).takeIf { it >= 0 }
            }
            .minOrNull()
        if (contentStart != null) {
            normalized = "<html><body>${normalized.substring(contentStart)}</body></html>"
        }
    }

    return normalized
}

private fun splitMobiMarkupSegments(markup: String): List<String> {
    val pagebreakRegex = Regex(
        """(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""
    )
    return pagebreakRegex.split(markup)
        .map(String::trim)
        .filter { it.isNotBlank() }
}

private fun stripMobiSoftPageBreaks(markup: String): String =
    markup.replace(
        Regex("""(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""),
        """<div class="mrcomic-mobi-soft-break"></div>"""
    )

private fun openMobiStream(context: Context, path: String): InputStream? = try {
    if (path.startsWith("content://")) {
        context.contentResolver.openInputStream(Uri.parse(path))
    } else {
        File(path).inputStream()
    }
} catch (_: Exception) {
    null
}
