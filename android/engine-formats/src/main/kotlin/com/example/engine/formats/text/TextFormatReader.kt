package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatReader
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
import org.jsoup.parser.Parser as JsoupXmlParser
import org.jsoup.safety.Safelist
import java.io.ByteArrayInputStream
import java.io.File
import java.io.InputStream
import java.nio.charset.Charset
import java.util.Base64
import java.util.zip.ZipInputStream
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
        "caption", "colgroup", "col", "sup", "sub"
    )
    .addAttributes(":all", "id", "class", "title", "lang", "dir", "style")
    .addAttributes("img", "src", "alt", "title", "width", "height", "loading")
    .addAttributes("a", "href", "name", "target")
    .addAttributes("th", "colspan", "rowspan")
    .addAttributes("td", "colspan", "rowspan")
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

// ── DOCX run-level formatting ─────────────────────────────────────────────────
private val DOCX_PARAGRAPH_RE = Regex("""<w:p\b[^>]*>.*?</w:p>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val DOCX_HEADING_RE   = Regex("""<w:pStyle\b[^>]*w:val="(?:Heading|heading)(\d+)"""", RegexOption.IGNORE_CASE)
private val DOCX_RUN_RE       = Regex("""<w:r\b[^>]*>.*?</w:r>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val DOCX_RPR_RE       = Regex("""<w:rPr\b[^>]*>.*?</w:rPr>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val DOCX_BOLD_ON_RE   = Regex("""<w:b(?!Cs)\b""", RegexOption.IGNORE_CASE)
private val DOCX_BOLD_OFF_RE  = Regex("""<w:b(?!Cs)\b[^>]*w:val\s*=\s*["'](?:0|false)["']""", RegexOption.IGNORE_CASE)
private val DOCX_ITALIC_ON_RE = Regex("""<w:i(?!Cs)\b""", RegexOption.IGNORE_CASE)
private val DOCX_ITALIC_OFF_RE= Regex("""<w:i(?!Cs)\b[^>]*w:val\s*=\s*["'](?:0|false)["']""", RegexOption.IGNORE_CASE)

// ── ODT inline style regexes ──────────────────────────────────────────────────
private val ODT_BLOCK_RE       = Regex("""<text:(p|h)\b[^>]*>.*?</text:\1>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val ODT_OUTLINE_RE     = Regex("""text:outline-level="(\d+)"""", RegexOption.IGNORE_CASE)
private val ODT_SPAN_RE        = Regex("""<text:span\b([^>]*)>(.*?)</text:span>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val ODT_STYLE_NAME_RE  = Regex("""text:style-name="([^"]+)"""")
private val ODT_AUTO_STYLE_RE  = Regex("""<style:style\b[^>]*style:name="([^"]+)"[^>]*>.*?</style:style>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val ODT_BOLD_RE        = Regex("""fo:font-weight\s*=\s*["']bold["']""", RegexOption.IGNORE_CASE)
private val ODT_ITALIC_RE      = Regex("""fo:font-style\s*=\s*["']italic["']""", RegexOption.IGNORE_CASE)

// ── RTF non-content destination groups ────────────────────────────────────────
private val RTF_SKIP_DESTINATIONS = setOf(
    "fonttbl", "colortbl", "stylesheet", "info", "pict",
    "header", "footer", "headerl", "headerr", "headerf",
    "footerl", "footerr", "footerf", "revtbl", "rsidtbl",
    "listtable", "listoverridetable", "pgdsctbl", "latentstyles",
    "mmathPr", "fldinst"
)

private fun htmlEscapeText(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")

private fun buildReaderHtmlDocument(body: String, baseUrl: String? = null, extraCss: String = ""): String {
    val baseTag = baseUrl?.let { """  <base href="${it.replace("\"", "%22")}">""" }.orEmpty()
    val extraStyleTag = if (extraCss.isNotBlank()) "<style>$extraCss</style>" else ""
    return """
        <!DOCTYPE html>
        <html>
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width,initial-scale=1">
          $baseTag
          $extraStyleTag
          <style>
            body { margin: 0; padding: 0 0 24px; }
            img { max-width: 100%; height: auto; display: block; margin: 0 auto 1rem; }
            figure { margin: 1rem 0; }
            figcaption { margin-top: 0.35rem; text-align: center; opacity: 0.78; font-size: 0.92em; }
            pre, code { white-space: pre-wrap; word-break: break-word; }
            pre {
              padding: 0.85rem 1rem;
              border-radius: 14px;
              background: rgba(120,120,120,0.10);
              overflow-x: auto;
            }
            code { font-family: "JetBrains Mono", "Cascadia Code", Consolas, monospace; }
            ul, ol { padding-left: 1.5rem; }
            li + li { margin-top: 0.25rem; }
            table { width: 100%; border-collapse: collapse; margin: 1rem 0; display: block; overflow-x: auto; }
            th, td { border: 1px solid rgba(120,120,120,0.35); padding: 0.5rem 0.65rem; text-align: left; }
            th { font-weight: 600; }
            hr { border: 0; border-top: 1px solid rgba(120,120,120,0.35); margin: 1rem 0; }
            del { opacity: 0.75; }
            a { text-decoration: underline; }
            .footnotes { margin-top: 1.25rem; font-size: 0.94em; }
            .footnotes ol { padding-left: 1.25rem; }
            blockquote {
              margin: 1rem 0;
              padding-left: 1rem;
              border-left: 3px solid rgba(120,120,120,0.35);
            }
          </style>
        </head>
        <body>$body</body>
        </html>
    """.trimIndent()
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
    val normalizedBaseUrl = baseUrl.orEmpty()
    val document = if (raw.contains("<html", ignoreCase = true) ||
        raw.contains("<body", ignoreCase = true) ||
        raw.contains("<head", ignoreCase = true) ||
        raw.contains("<!DOCTYPE", ignoreCase = true)
    ) {
        Jsoup.parse(raw, normalizedBaseUrl)
    } else {
        Jsoup.parseBodyFragment(raw, normalizedBaseUrl)
    }
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
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

    val titleBlock = title.takeIf { it.isNotBlank() && !cleanedBody.contains(title, ignoreCase = true) }
        ?.let { "<h1>${htmlEscapeText(it)}</h1>" }
        .orEmpty()

    val content = when {
        cleanedBody.isNotBlank() -> titleBlock + cleanedBody
        body.text().isNotBlank() -> titleBlock + "<p>${htmlEscapeText(body.text())}</p>"
        title.isNotBlank() -> "<h1>${htmlEscapeText(title)}</h1>"
        else -> "<p></p>"
    }

    return buildReaderHtmlDocument(content)
}

class TextFormatReader @Inject constructor(
    @ApplicationContext private val context: Context,
    private val path: String,
    private val format: ComicFormat
) : FormatReader {

    private val htmlPages: List<String> by lazy { parsePages() }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        htmlPages.size.coerceAtLeast(1)
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        htmlPages.getOrNull(index.coerceIn(0, (htmlPages.size - 1).coerceAtLeast(0)))
    }

    override fun htmlBaseUrl(): String? {
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return Uri.fromFile(parent).toString().trimEnd('/') + "/"
    }

    override fun close() = Unit

    private fun parsePages(): List<String> {
        return when (format) {
            ComicFormat.MOBI,
            ComicFormat.AZW3 -> {
                val bytes = readSourceBytes() ?: return listOf(wrapHtml("<p>Unable to read file.</p>"))
                when (val extracted = MobiTextSupport.extract(bytes)) {
                    is MobiExtractionResult.Success -> {
                        if (extracted.isMarkup) markupPages(extracted.content)
                        else paginateBlocks(textBlocks(extracted.content))
                    }
                    is MobiExtractionResult.Unsupported -> {
                        listOf(wrapHtml("<p>${escapeHtml(extracted.message)}</p>"))
                    }
                }
            }
            ComicFormat.DOCX -> {
                val bytes = readSourceBytes() ?: return listOf(wrapHtml("<p>Unable to read file.</p>"))
                paginateBlocks(extractDocxBlocks(bytes))
            }
            ComicFormat.ODT -> {
                val bytes = readSourceBytes() ?: return listOf(wrapHtml("<p>Unable to read file.</p>"))
                paginateBlocks(odtBlocks(bytes))
            }
            else -> {
                val raw = readSourceText() ?: return listOf(wrapHtml("<p>Unable to read file.</p>"))
                when (format) {
                    ComicFormat.HTML -> paginateHtmlDocument(raw, htmlBaseUrl())
                    ComicFormat.MARKDOWN -> paginateBlocks(markdownBlocks(raw))
                    ComicFormat.RTF -> paginateBlocks(textBlocks(rtfToPlainText(raw)))
                    else -> paginateBlocks(textBlocks(raw))
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

    private fun docxBlocks(bytes: ByteArray): List<String> = extractDocxBlocks(bytes)

    private data class DocxArchive(
        val entries: Map<String, ByteArray>,
        val relationships: Map<String, String>
    )

    private data class DocxRunStyle(
        val bold: Boolean = false,
        val italic: Boolean = false,
        val underline: Boolean = false,
        val strike: Boolean = false,
        val superscript: Boolean = false,
        val subscript: Boolean = false,
        val colorHex: String? = null,
        val highlight: String? = null
    )

    internal fun extractDocxBlocks(bytes: ByteArray): List<String> {
        val entries = readZipEntries(bytes)
        val xml = entries["word/document.xml"]?.toString(Charsets.UTF_8)
            ?: return listOf("<p>Unable to read DOCX document.</p>")
        val relationships = parseDocxRelationships(
            entries["word/_rels/document.xml.rels"]?.toString(Charsets.UTF_8)
        )
        val archive = DocxArchive(entries = entries, relationships = relationships)
        val document = Jsoup.parse(xml, "", JsoupXmlParser.xmlParser())
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val body = document.getElementsByTag("w:body").firstOrNull()
            ?: return textBlocks(xmlTextToPlain(xml))

        val blocks = body.children().mapNotNull { child ->
            when (child.tagName()) {
                "w:p" -> renderDocxParagraph(child, archive)
                "w:tbl" -> renderDocxTable(child, archive)
                else -> null
            }
        }
        return blocks.ifEmpty { textBlocks(xmlTextToPlain(xml)) }
    }

    private fun renderDocxParagraph(
        paragraph: Element,
        archive: DocxArchive
    ): String? {
        val headingLevel = docxHeadingLevel(paragraph)
        val alignment = docxParagraphAlignment(paragraph)
        val content = renderDocxInlineChildren(paragraph, archive).ifBlank {
            xmlTextToPlain(paragraph.outerHtml()).takeIf { it.isNotBlank() }
                ?.let { escapeHtml(it).replace("\n", "<br/>") }
                .orEmpty()
        }
        if (content.isBlank()) return null

        val style = alignment
            ?.takeIf { it != "start" && it != "left" }
            ?.let { "text-align:$it;" }
            .orEmpty()
        return when (headingLevel) {
            null -> if (style.isBlank()) "<p>$content</p>" else "<p style=\"$style\">$content</p>"
            else -> if (style.isBlank()) "<h$headingLevel>$content</h$headingLevel>"
                else "<h$headingLevel style=\"$style\">$content</h$headingLevel>"
        }
    }

    private fun renderDocxTable(table: Element, archive: DocxArchive): String? {
        val rows = table.getElementsByTag("w:tr").mapNotNull { row ->
            val cells = row.children()
                .filter { it.tagName() == "w:tc" }
                .mapNotNull { cell ->
                    val colspan = cell.getElementsByTag("w:gridSpan").firstOrNull()
                        ?.attr("w:val")
                        ?.takeIf { it.isNotBlank() && it != "1" }
                        ?.let { " colspan=\"$it\"" }
                        .orEmpty()
                    val cellBody = cell.children().mapNotNull { child ->
                        when (child.tagName()) {
                            "w:p" -> renderDocxParagraph(child, archive)
                            "w:tbl" -> renderDocxTable(child, archive)
                            else -> null
                        }
                    }.joinToString(separator = "")
                    if (cellBody.isBlank()) null else "<td$colspan>$cellBody</td>"
                }
            if (cells.isEmpty()) null else "<tr>${cells.joinToString(separator = "")}</tr>"
        }
        return rows.takeIf { it.isNotEmpty() }?.joinToString(
            prefix = "<table><tbody>",
            postfix = "</tbody></table>",
            separator = ""
        )
    }

    private fun renderDocxInlineChildren(
        container: Element,
        archive: DocxArchive
    ): String {
        val parts = mutableListOf<String>()
        container.children().forEach { child ->
            when (child.tagName()) {
                "w:r" -> {
                    val html = renderDocxRun(child, archive)
                    if (html.isNotBlank()) parts += html
                }
                "w:hyperlink" -> {
                    val html = renderDocxHyperlink(child, archive)
                    if (html.isNotBlank()) parts += html
                }
                "w:smartTag", "w:sdt", "w:ins", "w:del" -> {
                    val html = renderDocxInlineChildren(child, archive)
                    if (html.isNotBlank()) parts += html
                }
            }
        }
        return parts.joinToString(separator = "")
    }

    private fun renderDocxRun(run: Element, archive: DocxArchive): String {
        val style = docxRunStyle(run)
        val fragments = mutableListOf<String>()
        run.children().forEach { child ->
            when (child.tagName()) {
                "w:rPr" -> Unit
                "w:t" -> {
                    val raw = child.wholeText()
                    if (raw.isNotEmpty()) {
                        val escaped = if (child.attr("xml:space").equals("preserve", ignoreCase = true)) {
                            escapeHtml(raw)
                                .replace("  ", "&nbsp; ")
                                .replace("\t", "&emsp;")
                        } else {
                            escapeHtml(raw)
                        }
                        fragments += escaped
                    }
                }
                "w:tab" -> fragments += "&emsp;"
                "w:br", "w:cr" -> fragments += "<br/>"
                "w:drawing", "w:pict", "w:object" -> {
                    renderDocxImage(child, archive)?.let(fragments::add)
                }
            }
        }
        val content = fragments.joinToString(separator = "")
        if (content.isBlank()) return ""
        return applyDocxRunStyle(content, style)
    }

    private fun renderDocxHyperlink(link: Element, archive: DocxArchive): String {
        val content = renderDocxInlineChildren(link, archive)
        if (content.isBlank()) return ""
        val href = link.attr("r:id")
            .takeIf { it.isNotBlank() }
            ?.let { archive.relationships[it] }
            ?: link.attr("w:anchor")
                .takeIf { it.isNotBlank() }
                ?.let { "#$it" }
        return if (href.isNullOrBlank()) content else "<a href=\"${escapeHtml(href)}\">$content</a>"
    }

    private fun renderDocxImage(container: Element, archive: DocxArchive): String? {
        val blip = container.getElementsByTag("a:blip").firstOrNull() ?: return null
        val target = blip.attr("r:embed")
            .takeIf { it.isNotBlank() }
            ?.let { archive.relationships[it] }
            ?: blip.attr("r:link").takeIf { it.isNotBlank() }
            ?: return null
        val src = docxTargetToDataUri(target, archive) ?: return null
        val extent = container.getElementsByTag("wp:extent").firstOrNull()
        val widthPx = extent?.attr("cx")?.toLongOrNull()?.div(9_525L)?.toInt()
        val altText = container.getElementsByTag("wp:docPr").firstOrNull()
            ?.attr("descr")
            ?.ifBlank { container.getElementsByTag("wp:docPr").firstOrNull()?.attr("name").orEmpty() }
            .orEmpty()
        val widthStyle = widthPx?.takeIf { it > 0 }?.let { "width:${it}px;" }.orEmpty()
        return "<figure><img src=\"$src\" alt=\"${escapeHtml(altText)}\" style=\"$widthStyle max-width:100%;height:auto;\"/></figure>"
    }

    private fun docxRunStyle(run: Element): DocxRunStyle {
        val properties = run.getElementsByTag("w:rPr").firstOrNull()
        val underlineValue = properties?.getElementsByTag("w:u")?.firstOrNull()?.attr("w:val")
        val strikeValue = properties?.getElementsByTag("w:strike")?.firstOrNull()?.attr("w:val")
        val vertAlign = properties?.getElementsByTag("w:vertAlign")?.firstOrNull()?.attr("w:val")
        return DocxRunStyle(
            bold = properties?.getElementsByTag("w:b")?.firstOrNull()?.attr("w:val")
                ?.equals("false", ignoreCase = true) != true && properties?.getElementsByTag("w:b")?.isNotEmpty() == true,
            italic = properties?.getElementsByTag("w:i")?.firstOrNull()?.attr("w:val")
                ?.equals("false", ignoreCase = true) != true && properties?.getElementsByTag("w:i")?.isNotEmpty() == true,
            underline = underlineValue != null && !underlineValue.equals("none", ignoreCase = true),
            strike = strikeValue != null && !strikeValue.equals("false", ignoreCase = true),
            superscript = vertAlign.equals("superscript", ignoreCase = true),
            subscript = vertAlign.equals("subscript", ignoreCase = true),
            colorHex = properties?.getElementsByTag("w:color")?.firstOrNull()
                ?.attr("w:val")
                ?.takeIf { it.matches(Regex("[0-9A-Fa-f]{6}")) },
            highlight = properties?.getElementsByTag("w:highlight")?.firstOrNull()
                ?.attr("w:val")
                ?.takeIf { it.isNotBlank() }
        )
    }

    private fun applyDocxRunStyle(content: String, style: DocxRunStyle): String {
        var html = content
        if (style.bold) html = "<strong>$html</strong>"
        if (style.italic) html = "<em>$html</em>"
        if (style.underline) html = "<u>$html</u>"
        if (style.strike) html = "<del>$html</del>"
        if (style.superscript) html = "<sup>$html</sup>"
        if (style.subscript) html = "<sub>$html</sub>"

        val inlineStyle = buildString {
            style.colorHex?.let { append("color:#$it;") }
            style.highlight?.let { append("background-color:${docxHighlightColor(it)};") }
        }
        return if (inlineStyle.isBlank()) html else "<span style=\"$inlineStyle\">$html</span>"
    }

    private fun docxHeadingLevel(paragraph: Element): Int? {
        val styleValue = paragraph.getElementsByTag("w:pStyle").firstOrNull()
            ?.attr("w:val")
            ?.trim()
            .orEmpty()
        return Regex("""(?:Heading|heading)(\d+)""")
            .find(styleValue)
            ?.groupValues
            ?.getOrNull(1)
            ?.toIntOrNull()
            ?.coerceIn(1, 6)
    }

    private fun docxParagraphAlignment(paragraph: Element): String? {
        return paragraph.getElementsByTag("w:jc").firstOrNull()
            ?.attr("w:val")
            ?.takeIf { it.isNotBlank() }
            ?.let {
                when (it.lowercase()) {
                    "center", "right", "left", "justify", "start", "end" -> it.lowercase()
                    else -> null
                }
            }
    }

    private fun docxHighlightColor(value: String): String = when (value.lowercase()) {
        "yellow" -> "#fff3a5"
        "green" -> "#dff3c2"
        "cyan" -> "#d7f6ff"
        "magenta" -> "#ffd8f5"
        "blue" -> "#d9e8ff"
        "red" -> "#ffd9d9"
        "darkyellow" -> "#f0d28a"
        "darkgreen" -> "#b8d8b8"
        "darkcyan" -> "#b8d8d8"
        "darkmagenta" -> "#d8bfd8"
        "darkblue" -> "#b9c8e6"
        "darkred" -> "#e6b9b9"
        else -> "rgba(255, 235, 120, 0.45)"
    }

    private fun docxTargetToDataUri(target: String, archive: DocxArchive): String? {
        if (target.startsWith("http://") || target.startsWith("https://")) return target
        val normalizedTarget = when {
            target.startsWith("word/") -> target
            target.startsWith("media/") -> "word/$target"
            target.startsWith("../") -> target.removePrefix("../")
            else -> "word/$target"
        }
        val bytes = archive.entries[normalizedTarget] ?: return null
        val mimeType = docxMimeType(normalizedTarget)
        return "data:$mimeType;base64,${Base64.getEncoder().encodeToString(bytes)}"
    }

    private fun docxMimeType(path: String): String = when (path.substringAfterLast('.', "").lowercase()) {
        "png" -> "image/png"
        "jpg", "jpeg" -> "image/jpeg"
        "gif" -> "image/gif"
        "bmp" -> "image/bmp"
        "webp" -> "image/webp"
        "svg" -> "image/svg+xml"
        else -> "application/octet-stream"
    }

    private fun parseDocxRelationships(xml: String?): Map<String, String> {
        if (xml.isNullOrBlank()) return emptyMap()
        val document = Jsoup.parse(xml, "", JsoupXmlParser.xmlParser())
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val result = linkedMapOf<String, String>()
        document.getElementsByTag("Relationship").forEach { relationship ->
            val id = relationship.attr("Id").trim()
            val target = relationship.attr("Target").trim()
            if (id.isNotBlank() && target.isNotBlank()) {
                result[id] = target
            }
        }
        return result
    }

    private fun readZipEntries(bytes: ByteArray): Map<String, ByteArray> {
        val result = linkedMapOf<String, ByteArray>()
        runCatching {
            ZipInputStream(ByteArrayInputStream(bytes)).use { zip ->
                generateSequence { zip.nextEntry }.forEach { entry ->
                    if (!entry.isDirectory) {
                        result[entry.name] = zip.readBytes()
                    }
                }
            }
        }
        return result
    }

    private fun odtBlocks(bytes: ByteArray): List<String> {
        val xml = readZipEntryText(bytes, "content.xml")
            ?: return listOf("<p>Unable to read ODT document.</p>")

        // Build style-name → (bold, italic) map from automatic-styles section.
        val styleFormats = parseOdtAutoStyles(xml)

        val blocks = ODT_BLOCK_RE.findAll(xml).mapNotNull { match ->
            val blockXml = match.value
            val type = match.groupValues[1].lowercase()

            // Build inline HTML: replace text:span with <em>/<strong> where applicable.
            val inlineHtml = buildOdtInlineHtml(blockXml, styleFormats)

            if (inlineHtml.isBlank()) null
            else if (type == "h") {
                val level = ODT_OUTLINE_RE.find(blockXml)
                    ?.groupValues?.getOrNull(1)?.toIntOrNull()?.coerceIn(1, 6) ?: 2
                "<h$level>$inlineHtml</h$level>"
            } else {
                "<p>$inlineHtml</p>"
            }
        }.toList()

        return blocks.ifEmpty { textBlocks(xmlTextToPlain(xml)) }
    }

    /** Parses office:automatic-styles to produce a map of style-name → (bold, italic). */
    private fun parseOdtAutoStyles(xml: String): Map<String, Pair<Boolean, Boolean>> {
        val result = mutableMapOf<String, Pair<Boolean, Boolean>>()
        ODT_AUTO_STYLE_RE.findAll(xml).forEach { m ->
            val name = m.groupValues[1]
            val bold   = ODT_BOLD_RE.containsMatchIn(m.value)
            val italic = ODT_ITALIC_RE.containsMatchIn(m.value)
            if (bold || italic) result[name] = Pair(bold, italic)
        }
        return result
    }

    /**
     * Converts an ODT block's XML into HTML, wrapping text:span ranges with
     * <strong>/<em> when the referenced auto-style marks them bold/italic.
     * Falls back to plain-text extraction for spans with unknown styles.
     */
    private fun buildOdtInlineHtml(
        blockXml: String,
        styleFormats: Map<String, Pair<Boolean, Boolean>>
    ): String {
        // Replace each text:span with styled HTML, then strip remaining XML tags.
        var processed = blockXml
        processed = ODT_SPAN_RE.replace(processed) { spanMatch ->
            val attrs   = spanMatch.groupValues[1]
            val content = spanMatch.groupValues[2]
            val styleName = ODT_STYLE_NAME_RE.find(attrs)?.groupValues?.get(1)
            val (bold, italic) = styleFormats[styleName] ?: Pair(false, false)
            val innerText = xmlTextToPlain(content)
            if (innerText.isBlank()) ""
            else {
                var html = escapeHtml(innerText).replace("\n", "<br/>")
                if (italic) html = "<em>$html</em>"
                if (bold)   html = "<strong>$html</strong>"
                html
            }
        }
        // Strip remaining ODT tags; preserve our injected <em>/<strong>/<br/>.
        val tagStripRe = Regex("""<(?!/?(?:em|strong|br)\b)[^>]+>""")
        val plain = decodeXmlEntities(
            tagStripRe.replace(processed, "").replace('\u00A0', ' ')
        ).replace(Regex("""\n{3,}"""), "\n\n").trim()
        return plain
    }

    private fun readZipEntryText(bytes: ByteArray, entryName: String): String? {
        return runCatching {
            ZipInputStream(ByteArrayInputStream(bytes)).use { zip ->
                generateSequence { zip.nextEntry }
                    .firstOrNull { it.name.equals(entryName, ignoreCase = true) }
                    ?.let { zip.readBytes().toString(Charsets.UTF_8) }
            }
        }.getOrNull()
    }

    private fun xmlTextToPlain(xml: String): String {
        val lineBreaksRestored = xml
            .replace(Regex("""<w:(?:tab)\b[^>]*/>""", RegexOption.IGNORE_CASE), "\t")
            .replace(Regex("""<w:(?:br|cr)\b[^>]*/>""", RegexOption.IGNORE_CASE), "\n")
            .replace(Regex("""<text:tab\b[^>]*/>""", RegexOption.IGNORE_CASE), "\t")
            .replace(Regex("""<text:line-break\b[^>]*/>""", RegexOption.IGNORE_CASE), "\n")
        val stripped = lineBreaksRestored
            .replace(Regex("""<[^>]+>"""), "")
            .replace('\u00A0', ' ')
        return decodeXmlEntities(stripped)
            .replace(Regex("""[ \t]+\n"""), "\n")
            .replace(Regex("""\n{3,}"""), "\n\n")
            .trim()
    }

    private fun decodeXmlEntities(text: String): String {
        val numericDecoded = Regex("""&#(x?[0-9A-Fa-f]+);""").replace(text) { match ->
            val raw = match.groupValues[1]
            val codePoint = if (raw.startsWith("x", ignoreCase = true)) {
                raw.drop(1).toIntOrNull(16)
            } else {
                raw.toIntOrNull()
            }
            codePoint?.let { runCatching { Character.toChars(it).concatToString() }.getOrNull() } ?: match.value
        }
        return numericDecoded
            .replace("&amp;", "&")
            .replace("&lt;", "<")
            .replace("&gt;", ">")
            .replace("&quot;", "\"")
            .replace("&apos;", "'")
    }

    private fun paginateBlocks(blocks: List<String>): List<String> {
        if (blocks.isEmpty()) return listOf(wrapHtml("<p></p>"))
        val pages = mutableListOf<String>()
        val buffer = StringBuilder()
        var chars = 0

        fun flush() {
            if (buffer.isNotEmpty()) {
                pages += wrapHtml(buffer.toString())
                buffer.clear()
                chars = 0
            }
        }

        blocks.forEach { block ->
            val visibleChars = block.replace(Regex("<[^>]+>"), "").length.coerceAtLeast(1)
            if (chars + visibleChars > CHARS_PER_PAGE && chars > 0) flush()
            buffer.append(block)
            chars += visibleChars
        }
        flush()
        return pages.ifEmpty { listOf(wrapHtml("<p></p>")) }
    }

    private fun normalizeHtmlDocument(raw: String): String {
        val trimmed = raw.trim()
        return if (trimmed.contains("<html", ignoreCase = true)) {
            trimmed
        } else {
            wrapHtml(trimmed)
        }
    }

    private fun markupPages(raw: String): List<String> {
        val splitPages = splitMarkupPages(raw)
        if (splitPages.size > 1) {
            return splitPages.map(::normalizeHtmlDocument)
        }
        return paginateBlocks(htmlBlocks(raw))
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
    private fun paginateHtmlDocument(raw: String, baseUrl: String?): List<String> {
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
        document.select(
            "script, style, noscript, template, iframe, object, embed, canvas, form, " +
            "input, button, select, textarea"
        ).remove()
        document.select("meta, link").remove()

        val title = document.title().trim()
        val body  = document.body()

        // Extract block-level children as individual cleaned HTML snippets.
        val childBlocks = body.children()
            .map { el ->
                Jsoup.clean(
                    el.outerHtml(), normalizedBase, HTML_READER_SAFE_LIST,
                    Document.OutputSettings().prettyPrint(false)
                ).trim()
            }
            .filter { it.isNotBlank() }
            .toMutableList()

        if (title.isNotBlank() &&
            childBlocks.none { it.contains(title, ignoreCase = true) }
        ) {
            childBlocks.add(0, "<h1>${htmlEscapeText(title)}</h1>")
        }

        if (childBlocks.isEmpty()) {
            val fallback = body.text().trim()
            return listOf(buildReaderHtmlDocument(
                if (fallback.isNotBlank()) "<p>${htmlEscapeText(fallback)}</p>" else "<p></p>",
                baseUrl, extractedCss
            ))
        }

        // Paginate using the shared budget, but produce pages with baseUrl injected.
        val pages  = mutableListOf<String>()
        val buffer = StringBuilder()
        var chars  = 0

        fun flush() {
            if (buffer.isNotEmpty()) {
                pages += buildReaderHtmlDocument(buffer.toString(), baseUrl, extractedCss)
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

        return pages.ifEmpty { listOf(buildReaderHtmlDocument("<p></p>", baseUrl)) }
    }

    private fun wrapHtml(body: String): String = buildReaderHtmlDocument(body)
    private fun escapeHtml(text: String): String = htmlEscapeText(text)
}
