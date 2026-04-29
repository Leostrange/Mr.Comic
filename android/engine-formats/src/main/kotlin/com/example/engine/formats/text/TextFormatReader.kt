package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.READER_BASE_DOCUMENT_CSS
import com.example.engine.formats.base.READER_PRESERVE_LAYOUT_DOCUMENT_CSS
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.buildUnifiedReaderHtmlDocument
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.commonmark.Extension
import org.commonmark.ext.autolink.AutolinkExtension
import org.commonmark.ext.footnotes.FootnotesExtension
import org.commonmark.ext.gfm.strikethrough.StrikethroughExtension
import org.commonmark.ext.gfm.tables.TablesExtension
import org.commonmark.node.Node
import org.commonmark.parser.Parser
import org.commonmark.renderer.html.HtmlRenderer
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.safety.Safelist
import java.io.File
import java.io.InputStream
import java.nio.charset.Charset
import java.net.URLDecoder
import javax.inject.Inject

private const val CHARS_PER_PAGE = 2200
private val UTF8_BOM = byteArrayOf(0xEF.toByte(), 0xBB.toByte(), 0xBF.toByte())
private val MARKDOWN_EXTENSIONS: List<Extension> = listOf(
    AutolinkExtension.create(),
    TablesExtension.create(),
    StrikethroughExtension.create(),
    FootnotesExtension.create()
)
private val MARKDOWN_PARSER: Parser = Parser.builder()
    .extensions(MARKDOWN_EXTENSIONS)
    .build()
private val MARKDOWN_RENDERER: HtmlRenderer = HtmlRenderer.builder()
    .extensions(MARKDOWN_EXTENSIONS)
    .escapeHtml(true)
    .sanitizeUrls(true)
    .build()
private val HTML_READER_SAFE_LIST: Safelist = Safelist.relaxed()
    .addTags(
        "html", "head", "body", "main", "article", "section", "aside", "header", "footer",
        "figure", "figcaption", "hr", "table", "thead", "tbody", "tfoot", "tr", "th", "td",
        "caption", "colgroup", "col", "sup", "sub", "center", "font", "big", "small"
    )
    .addAttributes(":all", "id", "class", "title", "lang", "dir", "style", "align")
    .addAttributes("img", "src", "alt", "title", "width", "height", "loading", "align")
    .addAttributes("a", "href", "name", "target")
    .addAttributes("font", "size", "face", "color")
    .addAttributes("th", "colspan", "rowspan")
    .addAttributes("td", "colspan", "rowspan")
    .addAttributes("table", "width", "border", "cellpadding", "cellspacing", "align")
    .addAttributes("col", "span")
    .addProtocols("a", "href", "http", "https", "mailto", "tel", "file", "content")
    .addProtocols("img", "src", "http", "https", "file", "content", "data")
    .preserveRelativeLinks(true)
private val SINGLE_BYTE_TEXT_CHARSETS = listOf(
    Charset.forName("windows-1252"),
    Charset.forName("windows-1251"),
    Charset.forName("KOI8-R"),
    Charset.forName("IBM866"),
    Charsets.ISO_8859_1
)
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
    val pages: List<String>,
    val chapterAnchors: List<TxtChapterAnchor> = emptyList()
)

// ── RTF non-content destination groups ────────────────────────────────────────
private val RTF_SKIP_DESTINATIONS = setOf(
    "fonttbl", "colortbl", "stylesheet", "info", "pict",
    "header", "footer", "headerl", "headerr", "headerf",
    "footerl", "footerr", "footerf", "revtbl", "rsidtbl",
    "listtable", "listoverridetable", "pgdsctbl", "latentstyles",
    "mmathPr", "fldinst"
)

private fun isGutenbergHtml(raw: String): Boolean {
    val lowerRaw = raw.lowercase()
    // Check for Gutenberg-specific indicators
    return (
        // XHTML 1.0 Strict DOCTYPE (common in Gutenberg)
        lowerRaw.contains("<!doctype html public \"-//w3c//dtd xhtml 1.0 strict//en\"") ||
        // Direct mention of Gutenberg project
        lowerRaw.contains("gutenberg") ||
        // Cover page link (common in Gutenberg)
        lowerRaw.contains("rel=\"coverpage\"") ||
        // Typical Gutenberg structure with centered headings and internal anchors
        (lowerRaw.contains("<h1") && lowerRaw.contains("href=\"#") &&
         (lowerRaw.contains("text-align:center") || lowerRaw.contains("align=\"center\"")))
    )
}

private fun htmlEscapeText(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")

private fun preserveGutenbergHtmlDocument(raw: String, baseUrl: String?): String {
    // For Gutenberg HTML, preserve the complete document structure including head and original styles
    val normalizedBase = baseUrl.orEmpty()

    // Parse the document while preserving all elements
    val document = Jsoup.parse(raw, normalizedBase)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))

    // Clean only dangerous elements, preserve everything else including styles and links
    document.select(
        "script, noscript, template, iframe, object, embed, canvas, form, " +
        "input, button, select, textarea"
    ).remove()

    // Rebuild the <base> tag from the reader pipeline so file:// and stale external bases
    // do not override the asset-backed document URL.
    document.select("head base").remove()
    if (normalizedBase.isNotEmpty()) {
        document.head().prependElement("base").attr("href", normalizedBase)
    }

    // Add minimal reader CSS for mobile optimization without overriding publisher styles
    val readerCss = """
        <style>
        @media screen {
            html {
                width: 100%;
                max-width: 100%;
                margin: 0;
                padding: 0;
                overflow-x: hidden;
                box-sizing: border-box;
            }
            *, *::before, *::after { box-sizing: inherit; }
            body {
                margin: 0;
                padding: 16px 16px 44px;
                width: 100%;
                max-width: none;
                box-sizing: border-box;
                overflow-wrap: break-word;
            }
            img { max-width: 100%; height: auto; display: block; margin: 8px auto; }
            a:link, a:visited, a:hover, a:active {
                color: #1a6f9a;
                text-decoration: underline;
                text-underline-offset: 0.14em;
                text-decoration-thickness: 0.08em;
            }
        }
        </style>
    """.trimIndent()

    // Insert reader CSS after existing head content
    document.head().append(readerCss)

    return document.outerHtml()
}

internal fun shouldPreserveHtmlPublisherLayout(raw: String): Boolean {
    if (isGutenbergHtml(raw)) return true
    val lowerRaw = raw.lowercase()
    if (Regex("""<(table|thead|tbody|tfoot|tr|td|th|frameset|frame|svg|canvas)\b""", RegexOption.IGNORE_CASE)
            .containsMatchIn(raw)
    ) {
        return true
    }
    if (Regex(
            """style\s*=\s*["'][^"']*(?:position\s*:|left\s*:|top\s*:|right\s*:|bottom\s*:|float\s*:|display\s*:\s*(?:grid|flex|inline-block|table)|width\s*:\s*\d|height\s*:\s*\d)""",
            RegexOption.IGNORE_CASE
        ).containsMatchIn(raw)
    ) {
        return true
    }
    if ("<body" in lowerRaw && "data-mrcomic-preserve-layout" in lowerRaw) {
        return true
    }
    return false
}

private fun normalizeReaderHtmlFragment(html: String): String = runCatching {
    val trimmed = html.trim()
    if (trimmed.isBlank()) return@runCatching trimmed
    if (!trimmed.contains("<body", ignoreCase = true) && !trimmed.contains("<html", ignoreCase = true)) {
        return@runCatching trimmed
    }
    val document = Jsoup.parse(trimmed)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    document.select("body body").forEach { it.unwrap() }
    document.select("body html").forEach { it.unwrap() }
    document.body().html().trim().ifBlank { trimmed }
}.getOrElse { html }

private const val DEFAULT_READER_HTML_CSS = READER_BASE_DOCUMENT_CSS
private const val PRESERVE_LAYOUT_HTML_CSS = READER_PRESERVE_LAYOUT_DOCUMENT_CSS

private fun buildReaderHtmlDocument(
    body: String,
    baseUrl: String? = null,
    extraCss: String = "",
    extraHeadHtml: String = "",
    baseCss: String = DEFAULT_READER_HTML_CSS,
    preservePublisherLayout: Boolean = false
): String {
    val normalizedBody = normalizeReaderHtmlFragment(body)
    return buildUnifiedReaderHtmlDocument(
        body = normalizedBody,
        baseUrl = baseUrl,
        extraCss = extraCss,
        extraHeadHtml = extraHeadHtml,
        baseCss = baseCss,
        preservePublisherLayout = preservePublisherLayout
    )
}

private fun textReaderMimeTypeFor(extension: String): String = when (extension.lowercase()) {
    "html", "htm" -> "text/html"
    "css" -> "text/css"
    "js" -> "application/javascript"
    "txt" -> "text/plain"
    "xml" -> "application/xml"
    "svg" -> "image/svg+xml"
    "jpg", "jpeg" -> "image/jpeg"
    "png" -> "image/png"
    "gif" -> "image/gif"
    "webp" -> "image/webp"
    "avif" -> "image/avif"
    "bmp" -> "image/bmp"
    "ico" -> "image/x-icon"
    "ttf" -> "font/ttf"
    "otf" -> "font/otf"
    "woff" -> "font/woff"
    "woff2" -> "font/woff2"
    else -> "application/octet-stream"
}

internal fun decodeTextBytes(bytes: ByteArray): String {
    if (bytes.isEmpty()) return ""
    if (bytes.startsWith(UTF8_BOM)) return bytes.copyOfRange(3, bytes.size).toString(Charsets.UTF_8)
    if (bytes.startsWith(byteArrayOf(0xFF.toByte(), 0xFE.toByte()))) {
        return bytes.copyOfRange(2, bytes.size).toString(Charsets.UTF_16LE)
    }
    if (bytes.startsWith(byteArrayOf(0xFE.toByte(), 0xFF.toByte()))) {
        return bytes.copyOfRange(2, bytes.size).toString(Charsets.UTF_16BE)
    }

    if (looksLikeUtf16(bytes, littleEndian = true)) return bytes.toString(Charsets.UTF_16LE)
    if (looksLikeUtf16(bytes, littleEndian = false)) return bytes.toString(Charsets.UTF_16BE)
    if (isValidUtf8(bytes)) return bytes.toString(Charsets.UTF_8)

    return SINGLE_BYTE_TEXT_CHARSETS
        .maxByOrNull { scoreDecodedText(bytes.toString(it), it) }
        ?.let(bytes::toString)
        ?: bytes.toString(Charsets.UTF_8)
}

private fun ByteArray.startsWith(prefix: ByteArray): Boolean {
    if (size < prefix.size) return false
    return prefix.indices.all { this[it] == prefix[it] }
}

private fun looksLikeUtf16(bytes: ByteArray, littleEndian: Boolean): Boolean {
    if (bytes.size < 4) return false
    val sampleSize = bytes.size.coerceAtMost(512)
    var zeroEven = 0
    var zeroOdd = 0
    var pairs = 0
    var index = 0
    while (index + 1 < sampleSize) {
        if (bytes[index] == 0.toByte()) zeroEven++
        if (bytes[index + 1] == 0.toByte()) zeroOdd++
        pairs++
        index += 2
    }
    if (pairs == 0) return false
    val dominantZeros = if (littleEndian) zeroOdd else zeroEven
    val nonDominantZeros = if (littleEndian) zeroEven else zeroOdd
    return dominantZeros * 1.0 / pairs >= 0.3 && nonDominantZeros * 1.0 / pairs <= 0.1
}

private fun isValidUtf8(bytes: ByteArray): Boolean {
    var index = 0
    while (index < bytes.size) {
        val value = bytes[index].toInt() and 0xFF
        when {
            value <= 0x7F -> index++
            value in 0xC2..0xDF -> {
                if (!hasUtf8Continuation(bytes, index, 1)) return false
                index += 2
            }
            value in 0xE0..0xEF -> {
                if (!hasUtf8Continuation(bytes, index, 2)) return false
                val b1 = bytes[index + 1].toInt() and 0xFF
                if ((value == 0xE0 && b1 < 0xA0) || (value == 0xED && b1 >= 0xA0)) return false
                index += 3
            }
            value in 0xF0..0xF4 -> {
                if (!hasUtf8Continuation(bytes, index, 3)) return false
                val b1 = bytes[index + 1].toInt() and 0xFF
                if ((value == 0xF0 && b1 < 0x90) || (value == 0xF4 && b1 >= 0x90)) return false
                index += 4
            }
            else -> return false
        }
    }
    return true
}

private fun hasUtf8Continuation(bytes: ByteArray, start: Int, count: Int): Boolean {
    if (start + count >= bytes.size) return false
    for (offset in 1..count) {
        val next = bytes[start + offset].toInt() and 0xFF
        if (next !in 0x80..0xBF) return false
    }
    return true
}

private fun scoreDecodedText(text: String, charset: Charset): Int {
    var score = 0
    var latinLetters = 0
    var cyrillicLetters = 0
    var printable = 0
    var suspicious = 0
    var controls = 0

    text.forEach { ch ->
        when {
            ch == '\uFFFD' -> score -= 120
            ch == '\n' || ch == '\r' || ch == '\t' -> score += 1
            ch.isLetter() -> {
                printable++
                score += 6
                if (ch in '\u0041'..'\u024F') latinLetters++
                if (ch in '\u0400'..'\u04FF') cyrillicLetters++
            }
            ch.isDigit() -> {
                printable++
                score += 3
            }
            ch.isWhitespace() -> score += 1
            ch.isISOControl() -> {
                controls++
                score -= 40
            }
            ch in setOf('?', '�', '¤', '¦', '¨', '¬', '¯') -> {
                suspicious++
                score -= 8
            }
            else -> {
                printable++
                score += 2
            }
        }
    }

    if (cyrillicLetters > latinLetters * 2) {
        score += cyrillicLetters * 3
        if (charset.name().equals("windows-1251", ignoreCase = true)) score += 40
        if (charset.name().equals("KOI8-R", ignoreCase = true)) score += 10
        if (charset.name().equals("IBM866", ignoreCase = true)) score += 10
    } else if (latinLetters >= cyrillicLetters) {
        if (charset.name().equals("windows-1252", ignoreCase = true)) score += 20
        if (charset == Charsets.ISO_8859_1) score += 10
    }

    score += printable
    score -= suspicious * 6
    score -= controls * 10
    return score
}

internal fun renderMarkdownToHtmlBlocks(raw: String): List<String> {
    val normalized = raw.replace("\r\n", "\n").replace('\r', '\n')
    val document = MARKDOWN_PARSER.parse(normalized)
    val blocks = mutableListOf<String>()
    var node: Node? = document.firstChild
    while (node != null) {
        val rendered = MARKDOWN_RENDERER.render(node).trim()
        if (rendered.isNotBlank()) {
            blocks += rendered
        }
        node = node.next
    }
    return blocks
}

internal fun renderHtmlToReaderDocument(raw: String, baseUrl: String? = null): String {
    val normalizedRaw = raw.replace(
        Regex(
            """(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""
        ),
        """<hr class="mrcomic-pagebreak" data-mrcomic-pagebreak="true"/>"""
    )
    val preservePublisherLayout = shouldPreserveHtmlPublisherLayout(normalizedRaw)
    val baseCss = if (preservePublisherLayout) PRESERVE_LAYOUT_HTML_CSS else DEFAULT_READER_HTML_CSS
    val normalizedBaseUrl = baseUrl.orEmpty()
    val document = if (normalizedRaw.contains("<html", ignoreCase = true) ||
        normalizedRaw.contains("<body", ignoreCase = true) ||
        normalizedRaw.contains("<head", ignoreCase = true) ||
        normalizedRaw.contains("<!DOCTYPE", ignoreCase = true)
    ) {
        Jsoup.parse(normalizedRaw, normalizedBaseUrl)
    } else {
        Jsoup.parseBodyFragment(normalizedRaw, normalizedBaseUrl)
    }
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val extractedCss = document.select("style").joinToString("\n") { it.data() }
    val linkedStylesheets = document.select("link[rel~=(?i)stylesheet][href], link[href$=.css i][href]")
        .joinToString("\n") { it.outerHtml() }
    document.select(
        "script, style, noscript, template, iframe, object, embed, canvas, form, input, button, select, textarea"
    ).remove()
    document.select("meta, link").remove()

    val body = document.body()
    val title = document.title().trim()
    val cleanedBody = Jsoup.clean(
        body.html(),
        normalizedBaseUrl,
        HTML_READER_SAFE_LIST,
        Document.OutputSettings().prettyPrint(false)
    ).trim()

    val titleBlock = title.takeIf {
        it.isNotBlank() &&
            !cleanedBody.contains(title, ignoreCase = true) &&
            !document.body().hasAttr("data-mrcomic-preserve-layout")
    }
        ?.let { "<h1>${htmlEscapeText(it)}</h1>" }
        .orEmpty()

    val content = when {
        cleanedBody.isNotBlank() -> titleBlock + normalizeReaderHtmlFragment(cleanedBody)
        body.text().isNotBlank() -> titleBlock + "<p>${htmlEscapeText(body.text())}</p>"
        title.isNotBlank() -> "<h1>${htmlEscapeText(title)}</h1>"
        else -> "<p></p>"
    }

    return buildReaderHtmlDocument(
        body = content,
        baseUrl = baseUrl,
        extraCss = extractedCss,
        extraHeadHtml = linkedStylesheets,
        baseCss = baseCss,
        preservePublisherLayout = preservePublisherLayout
    )
}

class TextFormatReader @Inject constructor(
    @ApplicationContext private val context: Context,
    private val path: String,
    private val format: ComicFormat
) : FormatReader {

    private val mobiDocument: ReflowableDocument? by lazy {
        when (format) {
            ComicFormat.MOBI, ComicFormat.AZW3 -> readMobiReflowableDocument(context, path)
            else -> null
        }
    }
    private val documentData: TextDocumentData by lazy { parseDocument() }
    private val htmlPages: List<String> get() = documentData.pages
    private val anchorPageIndex: Map<String, Int> by lazy { buildAnchorPageIndex() }
    private val tocEntries: List<TocEntry> by lazy { buildTableOfContents() }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        htmlPages.size.coerceAtLeast(1)
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        htmlPages.getOrNull(index.coerceIn(0, (htmlPages.size - 1).coerceAtLeast(0)))
    }

    override fun getTableOfContents(): List<TocEntry> = tocEntries

    override suspend fun getMetadata(): Map<String, String> = withContext(Dispatchers.IO) {
        when (format) {
            ComicFormat.MOBI, ComicFormat.AZW3 -> mapOf(
                "format" to format.name,
                "engine" to "mobi-reflowable-v1"
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

    override fun close() = Unit

    private fun parseDocument(): TextDocumentData {
        return when (format) {
            ComicFormat.MOBI,
            ComicFormat.AZW3 -> {
                val document = mobiDocument ?: ReflowableDocumentBuilder.error("Unable to read file.")
                TextDocumentData(
                    pages = (0 until document.pageCount).mapNotNull(document::pageAt)
                        .ifEmpty { listOf(wrapHtml("<p>Unable to read file.</p>")) }
                )
            }
            ComicFormat.RTF -> {
                val document = readRtfReflowableDocument(context, path)
                TextDocumentData(
                    pages = (0 until document.pageCount).mapNotNull(document::pageAt)
                        .ifEmpty { listOf(wrapHtml("<p>Unable to read file.</p>")) }
                )
            }
            ComicFormat.DOCX -> {
                val document = readDocxReflowableDocument(context, path)
                TextDocumentData(
                    pages = (0 until document.pageCount).mapNotNull(document::pageAt)
                        .ifEmpty { listOf(wrapHtml("<p>Unable to read file.</p>")) }
                )
            }
            ComicFormat.ODT -> {
                val document = readOdtReflowableDocument(context, path)
                TextDocumentData(
                    pages = (0 until document.pageCount).mapNotNull(document::pageAt)
                        .ifEmpty { listOf(wrapHtml("<p>Unable to read file.</p>")) }
                )
            }
            else -> {
                val raw = readSourceText() ?: return TextDocumentData(listOf(wrapHtml("<p>Unable to read file.</p>")))
                when (format) {
                    ComicFormat.HTML -> {
                        val readerBaseUrl = if (supportsHtmlAssetLoading()) null else htmlBaseUrl()
                        if (isGutenbergHtml(raw)) {
                            // For Gutenberg HTML, preserve complete document structure with working internal links
                            TextDocumentData(listOf(preserveGutenbergHtmlDocument(raw, readerBaseUrl)))
                        } else {
                            val preservePublisherLayout = shouldPreserveHtmlPublisherLayout(raw)
                            TextDocumentData(paginateHtmlDocument(
                                raw = raw,
                                baseUrl = readerBaseUrl,
                                preservePublisherLayout = preservePublisherLayout,
                            baseCss = if (preservePublisherLayout) {
                                PRESERVE_LAYOUT_HTML_CSS
                            } else {
                                DEFAULT_READER_HTML_CSS
                            },
                            keepWholeDocument = false
                        ))
                    }
                    }
                    ComicFormat.MARKDOWN -> {
                        if (isTechnicalMarkdown(raw)) {
                            // For technical Markdown documents (specs, documentation),
                            // process YAML front matter and ensure proper technical rendering
                            TextDocumentData(paginateBlocks(processTechnicalMarkdown(raw)))
                        } else {
                            // For regular Markdown, use standard processing
                            TextDocumentData(paginateBlocks(markdownBlocks(raw)))
                        }
                    }
                    ComicFormat.TXT -> paginateTxtDocument(raw)
                    else -> TextDocumentData(paginateBlocks(textBlocks(raw)))
                }
            }
        }
    }

    private fun readSourceText(): String? {
        val bytes = readSourceBytes() ?: return null
        return decodeTextBytes(bytes)
    }

    private fun readSourceBytes(): ByteArray? = openStream()?.use(InputStream::readBytes)

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
                val trimmed = part.trim()
                if (trimmed.isBlank()) null
                else "<p>${escapeHtml(trimmed).replace("\n", "<br/>")}</p>"
            }
            .ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
    }

    private fun paginateTxtDocument(raw: String): TextDocumentData {
        val (blocks, chapterAnchors) = textBlocksWithChapterAnchors(raw)
        return TextDocumentData(
            pages = paginateBlocks(blocks),
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
                blocks += "<p>${escapeHtml(trimmed).replace("\n", "<br/>")}</p>"
            }
        }

        val safeBlocks = blocks.ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
        return safeBlocks to chapterAnchors
    }

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
            if (chars + visibleChars > CHARS_PER_PAGE && chars > 0) flush()
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
            if (chars + visible > CHARS_PER_PAGE && chars > 0) flush()
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
            "table", "hr"
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
                if (cleaned.isBlank() || visibleReaderText(cleaned).isBlank()) {
                    emptyList()
                } else {
                    splitOversizedReaderHtmlBlock(cleaned)
                }
            }
    }

    private fun splitOversizedReaderHtmlBlock(block: String): List<String> {
        val visible = visibleReaderText(block)
        if (visible.length <= CHARS_PER_PAGE * 2) return listOf(block)
        val document = Jsoup.parseBodyFragment(block)
        val tag = document.body().children().firstOrNull()?.normalName()
            ?.takeIf { it in setOf("p", "blockquote", "li") }
            ?: "p"
        return visible
            .chunked(CHARS_PER_PAGE)
            .map { chunk -> "<$tag>${htmlEscapeText(chunk.trim())}</$tag>" }
            .filter { visibleReaderText(it).isNotBlank() }
            .ifEmpty { listOf(block) }
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
        return documentData.chapterAnchors.mapNotNull { anchor ->
            anchorPageIndex[anchor.id]?.let { pageIndex ->
                TocEntry(title = anchor.title, pageIndex = pageIndex)
            }
        }
    }

    /**
     * Pre-process MOBI markup: convert <font size="N"><b>text</b></font> inside
     * centered paragraphs into proper heading tags, and unwrap structural blockquotes.
     */

    private fun isTechnicalMarkdown(raw: String): Boolean {
        val lines = raw.lines()
        return lines.size >= 3 && lines[0].trim() == "---"
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
