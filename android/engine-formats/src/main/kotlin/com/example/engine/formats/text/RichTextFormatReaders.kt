package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.TocEntry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jsoup.Jsoup
import java.io.File
import java.io.InputStream
import java.nio.charset.Charset

private val RTF_DESTINATIONS_TO_SKIP = setOf(
    "fonttbl", "colortbl", "stylesheet", "info", "pict",
    "header", "footer", "headerl", "headerr", "headerf",
    "footerl", "footerr", "footerf", "revtbl", "rsidtbl",
    "listtable", "listoverridetable", "pgdsctbl", "latentstyles",
    "mmathPr", "fldinst"
)

private val ODT_BLOCK_READER_RE = Regex("""<text:(p|h)\b[^>]*>.*?</text:\1>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val ODT_OUTLINE_LEVEL_RE = Regex("""text:outline-level="(\d+)"""", RegexOption.IGNORE_CASE)
private val ODT_SPAN_CONTENT_RE = Regex("""<text:span\b([^>]*)>(.*?)</text:span>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val ODT_STYLE_NAME_ATTR_RE = Regex("""text:style-name="([^"]+)"""")
private val ODT_AUTO_STYLE_READER_RE = Regex("""<style:style\b[^>]*style:name="([^"]+)"[^>]*>.*?</style:style>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
private val ODT_BOLD_STYLE_RE = Regex("""fo:font-weight\s*=\s*["']bold["']""", RegexOption.IGNORE_CASE)
private val ODT_ITALIC_STYLE_RE = Regex("""fo:font-style\s*=\s*["']italic["']""", RegexOption.IGNORE_CASE)

internal abstract class DelegatingTextFormatReader(
    context: Context,
    path: String,
    private val format: ComicFormat,
    private val engineId: String
) : FormatReader {

    private val delegate = TextFormatReader(context, path, format)

    override suspend fun getPageCount(): Int = delegate.getPageCount()

    override suspend fun getPage(index: Int): Bitmap? = delegate.getPage(index)

    override suspend fun getHtmlPage(index: Int): String? = delegate.getHtmlPage(index)

    override suspend fun getMetadata(): Map<String, String> = buildMap {
        putAll(delegate.getMetadata())
        put("format", format.name)
        put("engine", engineId)
    }

    override fun getTableOfContents(): List<TocEntry> = delegate.getTableOfContents()

    override fun getFootnoteText(anchorId: String): String? = delegate.getFootnoteText(anchorId)

    override fun htmlBaseUrl(): String? = delegate.htmlBaseUrl()

    override fun htmlAssetBasePath(index: Int): String? = delegate.htmlAssetBasePath(index)

    override fun openHtmlAsset(path: String): FormatReaderWebResource? = delegate.openHtmlAsset(path)

    override fun resolveHrefToPage(href: String): Int? = delegate.resolveHrefToPage(href)

    override fun close() = delegate.close()
}

internal class RtfFormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    private val document: ReflowableDocument by lazy { readRtfReflowableDocument(context, path) }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { document.pageCount }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override suspend fun getMetadata(): Map<String, String> = mapOf(
        "format" to ComicFormat.RTF.name,
        "engine" to "rtf-reflowable-v1"
    )

    override fun getTableOfContents(): List<TocEntry> = emptyList()

    override fun close() = Unit
}

internal class DocxFormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    private val document: ReflowableDocument by lazy { readDocxReflowableDocument(context, path) }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { document.pageCount }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override suspend fun getMetadata(): Map<String, String> = mapOf(
        "format" to ComicFormat.DOCX.name,
        "engine" to "docx-reflowable-v1"
    )

    override fun getTableOfContents(): List<TocEntry> = document.toc

    override fun close() = Unit
}

internal class OdtFormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    private val document: ReflowableDocument by lazy { readOdtReflowableDocument(context, path) }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { document.pageCount }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override suspend fun getMetadata(): Map<String, String> = mapOf(
        "format" to ComicFormat.ODT.name,
        "engine" to "odt-reflowable-v1"
    )

    override fun getTableOfContents(): List<TocEntry> = emptyList()

    override fun close() = Unit
}

internal fun readRtfReflowableDocument(context: Context, path: String): ReflowableDocument {
    val rawBytes = openRichTextStream(context, path)?.use(InputStream::readBytes)
        ?: return ReflowableDocumentBuilder.error("Unable to read file.")
    val rawRtf = rawBytes.toString(Charsets.ISO_8859_1)
    val blocks = RtfTextSupport.renderHtmlBlocks(rawRtf)
    val renderedText = Jsoup.parse(blocks.joinToString("\n")).text().replace(Regex("\\s+"), " ").trim()
    val legacyText = RtfTextSupport.extractLegacyPlainText(rawRtf)
    val shouldFallbackToLegacy = shouldFallbackRtfToLegacyPlainText(
        rawRtf = rawRtf,
        renderedText = renderedText,
        legacyText = legacyText
    ) ||
        renderedText.isBlank() ||
        (legacyText.isNotBlank() && legacyText.length > renderedText.length * 3 / 2)

    return if (shouldFallbackToLegacy && legacyText.isNotBlank()) {
        ReflowableDocumentBuilder.fromPlainText(legacyText)
    } else if (blocks.isEmpty() || blocks.all { Jsoup.parse(it).text().isBlank() }) {
        ReflowableDocumentBuilder.error("Unable to extract readable text from RTF.")
    } else {
        ReflowableDocumentBuilder.fromHtmlBlocks(blocks)
    }
}

private fun shouldFallbackRtfToLegacyPlainText(
    rawRtf: String,
    renderedText: String,
    legacyText: String
): Boolean {
    if (legacyText.isBlank()) return false
    if (!Regex("""\\ansicpg1251\b""").containsMatchIn(rawRtf)) return false
    if (renderedText.isBlank()) return true

    val renderedCyrillic = renderedText.count { it in '\u0400'..'\u04FF' }
    val legacyCyrillic = legacyText.count { it in '\u0400'..'\u04FF' }
    val renderedHasMojibake = Regex("""[РС][\p{L}\p{M}]""").containsMatchIn(renderedText)
    val legacyHasMojibake = Regex("""[РС][\p{L}\p{M}]""").containsMatchIn(legacyText)

    if (renderedHasMojibake && !legacyHasMojibake) return true
    if (legacyCyrillic >= 12 && renderedCyrillic < legacyCyrillic / 2) return true
    return false
}

internal fun readOdtReflowableDocument(context: Context, path: String): ReflowableDocument {
    val bytes = openRichTextStream(context, path)?.use(InputStream::readBytes)
        ?: return ReflowableDocumentBuilder.error("Unable to read file.")
    val blocks = OdtTextSupport.extractBlocks(bytes)
    return ReflowableDocumentBuilder.fromHtmlBlocks(blocks)
}

internal fun readDocxReflowableDocument(context: Context, path: String): ReflowableDocument {
    val bytes = openRichTextStream(context, path)?.use(InputStream::readBytes)
        ?: return ReflowableDocumentBuilder.error("Unable to read file.")
    return DocxTextSupport.render(
        bytes = bytes,
        baseUrl = richTextBaseUrl(path)
    )
}

private fun openRichTextStream(context: Context, path: String): InputStream? = try {
    if (path.startsWith("content://")) {
        context.contentResolver.openInputStream(Uri.parse(path))
    } else {
        File(path).inputStream()
    }
} catch (_: Exception) {
    null
}

private fun richTextBaseUrl(path: String): String? {
    if (path.startsWith("content://")) return null
    return runCatching { File(path).parentFile?.toURI()?.toString() }.getOrNull()
}

internal object RtfTextSupport {
    fun renderHtmlBlocks(raw: String): List<String> = RtfHtmlSupport.renderHtmlBlocks(raw)

    fun extractPlainText(raw: String): String {
        val rendered = RtfHtmlSupport.extractPlainText(raw)
        val legacy = extractLegacyPlainText(raw)
        return when {
            rendered.isBlank() -> legacy
            legacy.isNotBlank() && legacy.length > rendered.length * 3 / 2 -> legacy
            else -> rendered
        }
    }

    internal fun extractLegacyPlainText(raw: String): String {
        val codepage = Regex("""\\ansicpg(\d+)""").find(raw)
            ?.groupValues?.get(1)?.toIntOrNull() ?: 1252
        val charset = runCatching { Charset.forName("cp$codepage") }
            .getOrElse { Charsets.ISO_8859_1 }

        val out = StringBuilder(raw.length / 4)
        var i = 0
        val groupSkipStack = ArrayDeque<Boolean>()
        var skipping = false

        while (i < raw.length) {
            when (raw[i]) {
                '{' -> {
                    groupSkipStack.addLast(skipping)
                    i++
                    if (!skipping) {
                        val peek = raw.substring(i, minOf(i + 60, raw.length))
                        val destMatch = Regex("""^\s*\\(\*\s*\\[a-z]+|[a-z]+)""").find(peek)
                        if (destMatch != null) {
                            val firstWord = destMatch.groupValues[1]
                                .trimStart().removePrefix("*").trimStart().removePrefix("\\")
                            if (firstWord.startsWith("*") || firstWord in RTF_DESTINATIONS_TO_SKIP) {
                                skipping = true
                            }
                        }
                    }
                }
                '}' -> {
                    skipping = groupSkipStack.removeLastOrNull() ?: false
                    i++
                }
                '\\' -> {
                    i++
                    if (i >= raw.length) break
                    val nc = raw[i]
                    when {
                        nc == '\'' -> {
                            if (!skipping && i + 2 < raw.length) {
                                val hex = raw.substring(i + 1, i + 3)
                                val b = hex.toIntOrNull(16)?.and(0xFF)?.toByte()
                                if (b != null) out.append(byteArrayOf(b).toString(charset))
                            }
                            i += 3
                        }
                        nc == '*' -> {
                            skipping = true
                            i++
                        }
                        nc == '-' -> i++
                        nc == '_' -> { if (!skipping) out.append('\u2011'); i++ }
                        nc == '~' -> { if (!skipping) out.append('\u00A0'); i++ }
                        nc == '{' || nc == '}' || nc == '\\' -> { if (!skipping) out.append(nc); i++ }
                        nc == '\r' || nc == '\n' -> { if (!skipping) out.append("\n\n"); i++ }
                        nc.isLetter() -> {
                            val wordStart = i
                            while (i < raw.length && raw[i].isLetter()) i++
                            val word = raw.substring(wordStart, i)
                            val paramStart = i
                            if (i < raw.length && (raw[i] == '-' || raw[i] == '+')) i++
                            while (i < raw.length && raw[i].isDigit()) i++
                            val param = if (i > paramStart) raw.substring(paramStart, i).toIntOrNull() else null
                            if (i < raw.length && raw[i] == ' ') i++

                            if (!skipping && word in RTF_DESTINATIONS_TO_SKIP) {
                                skipping = true
                            }

                            if (!skipping) {
                                when (word) {
                                    "u" -> {
                                        val codePoint = param?.let { if (it < 0) it + 65536 else it } ?: 63
                                        out.append(runCatching { Character.toChars(codePoint).concatToString() }.getOrDefault("?"))
                                        if (i < raw.length) {
                                            if (raw[i] == '\\' && i + 1 < raw.length && raw[i + 1] == '\'') {
                                                i += 4
                                            } else if (raw[i] != '{' && raw[i] != '}' && raw[i] != '\\') {
                                                i++
                                            }
                                        }
                                    }
                                    "par", "pard" -> out.append("\n\n")
                                    "line" -> out.append('\n')
                                    "tab" -> out.append('\t')
                                    "page", "sect", "column" -> out.append("\n\n")
                                    "cell", "nestcell" -> out.append('\t')
                                    "row", "nestrow" -> out.append('\n')
                                    "bullet" -> out.append('\u2022')
                                    "endash" -> out.append('\u2013')
                                    "emdash" -> out.append('\u2014')
                                    "lquote" -> out.append('\u2018')
                                    "rquote" -> out.append('\u2019')
                                    "ldblquote" -> out.append('\u201C')
                                    "rdblquote" -> out.append('\u201D')
                                    "enspace", "emspace", "qmspace" -> out.append(' ')
                                }
                            }
                        }
                        else -> i++
                    }
                }
                '\r', '\n' -> i++
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
}

internal object OdtTextSupport {
    fun extractBlocks(bytes: ByteArray): List<String> {
        val xml = readZipEntryText(bytes, "content.xml")
            ?: return listOf("<p>Unable to read ODT document.</p>")

        val styleFormats = parseAutoStyles(xml)
        val blocks = ODT_BLOCK_READER_RE.findAll(xml).mapNotNull { match ->
            val blockXml = match.value
            val type = match.groupValues[1].lowercase()
            val inlineHtml = buildInlineHtml(blockXml, styleFormats)

            if (inlineHtml.isBlank()) {
                null
            } else if (type == "h") {
                val level = ODT_OUTLINE_LEVEL_RE.find(blockXml)
                    ?.groupValues?.getOrNull(1)?.toIntOrNull()?.coerceIn(1, 6) ?: 2
                "<h$level>$inlineHtml</h$level>"
            } else {
                "<p>$inlineHtml</p>"
            }
        }.toList()

        return blocks.ifEmpty {
            listOf("<p>${escapeHtml(xmlTextToPlain(xml))}</p>")
        }
    }

    private fun parseAutoStyles(xml: String): Map<String, Pair<Boolean, Boolean>> {
        val result = mutableMapOf<String, Pair<Boolean, Boolean>>()
        ODT_AUTO_STYLE_READER_RE.findAll(xml).forEach { match ->
            val name = match.groupValues[1]
            val bold = ODT_BOLD_STYLE_RE.containsMatchIn(match.value)
            val italic = ODT_ITALIC_STYLE_RE.containsMatchIn(match.value)
            if (bold || italic) result[name] = bold to italic
        }
        return result
    }

    private fun buildInlineHtml(
        blockXml: String,
        styleFormats: Map<String, Pair<Boolean, Boolean>>
    ): String {
        var processed = blockXml
        processed = ODT_SPAN_CONTENT_RE.replace(processed) { spanMatch ->
            val attrs = spanMatch.groupValues[1]
            val content = spanMatch.groupValues[2]
            val styleName = ODT_STYLE_NAME_ATTR_RE.find(attrs)?.groupValues?.get(1)
            val (bold, italic) = styleFormats[styleName] ?: (false to false)
            val innerText = xmlTextToPlain(content)
            if (innerText.isBlank()) {
                ""
            } else {
                var html = escapeHtml(innerText).replace("\n", "<br/>")
                if (italic) html = "<em>$html</em>"
                if (bold) html = "<strong>$html</strong>"
                html
            }
        }
        val tagStripRe = Regex("""<(?!/?(?:em|strong|br)\b)[^>]+>""")
        return decodeXmlEntities(
            tagStripRe.replace(processed, "").replace('\u00A0', ' ')
        ).replace(Regex("""\n{3,}"""), "\n\n").trim()
    }

    private fun readZipEntryText(bytes: ByteArray, entryName: String): String? {
        return runCatching {
            java.util.zip.ZipInputStream(java.io.ByteArrayInputStream(bytes)).use { zip ->
                generateSequence { zip.nextEntry }
                    .firstOrNull { it.name.equals(entryName, ignoreCase = true) }
                    ?.let { zip.readBytes().toString(Charsets.UTF_8) }
            }
        }.getOrNull()
    }

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
}
