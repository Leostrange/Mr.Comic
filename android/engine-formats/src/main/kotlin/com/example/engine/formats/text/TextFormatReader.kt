package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.FormatReader
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import java.io.ByteArrayInputStream
import java.io.File
import java.io.InputStream
import java.util.zip.ZipInputStream
import javax.inject.Inject

private const val CHARS_PER_PAGE = 2200

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
                paginateBlocks(docxBlocks(bytes))
            }
            ComicFormat.ODT -> {
                val bytes = readSourceBytes() ?: return listOf(wrapHtml("<p>Unable to read file.</p>"))
                paginateBlocks(odtBlocks(bytes))
            }
            else -> {
                val raw = readSourceText() ?: return listOf(wrapHtml("<p>Unable to read file.</p>"))
                when (format) {
                    ComicFormat.HTML -> listOf(normalizeHtmlDocument(raw))
                    ComicFormat.MARKDOWN -> paginateBlocks(markdownBlocks(raw))
                    ComicFormat.RTF -> paginateBlocks(textBlocks(rtfToPlainText(raw)))
                    else -> paginateBlocks(textBlocks(raw))
                }
            }
        }
    }

    private fun readSourceText(): String? {
        val bytes = readSourceBytes() ?: return null
        return decodeText(bytes)
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

    private fun decodeText(bytes: ByteArray): String {
        return when {
            bytes.size >= 3 &&
                bytes[0] == 0xEF.toByte() &&
                bytes[1] == 0xBB.toByte() &&
                bytes[2] == 0xBF.toByte() -> bytes.copyOfRange(3, bytes.size).toString(Charsets.UTF_8)
            bytes.size >= 2 &&
                bytes[0] == 0xFF.toByte() &&
                bytes[1] == 0xFE.toByte() -> bytes.copyOfRange(2, bytes.size).toString(Charsets.UTF_16LE)
            bytes.size >= 2 &&
                bytes[0] == 0xFE.toByte() &&
                bytes[1] == 0xFF.toByte() -> bytes.copyOfRange(2, bytes.size).toString(Charsets.UTF_16BE)
            else -> bytes.toString(Charsets.UTF_8)
        }
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
        val blocks = mutableListOf<String>()
        val paragraph = mutableListOf<String>()
        val listItems = mutableListOf<String>()

        fun flushParagraph() {
            if (paragraph.isNotEmpty()) {
                blocks += "<p>${paragraph.joinToString(" ") { inlineMarkdown(it.trim()) }}</p>"
                paragraph.clear()
            }
        }

        fun flushList() {
            if (listItems.isNotEmpty()) {
                blocks += "<ul>${listItems.joinToString("")}</ul>"
                listItems.clear()
            }
        }

        raw.replace("\r\n", "\n").replace('\r', '\n').lines().forEach { line ->
            val trimmed = line.trim()
            when {
                trimmed.isBlank() -> {
                    flushParagraph()
                    flushList()
                }
                trimmed.startsWith("#") -> {
                    flushParagraph()
                    flushList()
                    val level = trimmed.takeWhile { it == '#' }.length.coerceIn(1, 6)
                    val text = trimmed.drop(level).trim()
                    blocks += "<h$level>${inlineMarkdown(text)}</h$level>"
                }
                trimmed.startsWith("- ") || trimmed.startsWith("* ") -> {
                    flushParagraph()
                    listItems += "<li>${inlineMarkdown(trimmed.drop(2).trim())}</li>"
                }
                trimmed.startsWith("> ") -> {
                    flushParagraph()
                    flushList()
                    blocks += "<blockquote>${inlineMarkdown(trimmed.drop(2).trim())}</blockquote>"
                }
                else -> paragraph += trimmed
            }
        }

        flushParagraph()
        flushList()
        return blocks.ifEmpty { textBlocks(raw) }
    }

    private fun rtfToPlainText(raw: String): String {
        return raw
            .replace(Regex("""\\u(-?\d+)\??""")) { match ->
                val code = match.groupValues[1].toIntOrNull() ?: return@replace ""
                runCatching { Character.toChars(if (code < 0) 65536 + code else code).concatToString() }
                    .getOrDefault("")
            }
            .replace("\\par", "\n\n")
            .replace("\\line", "\n")
            .replace("\\tab", "\t")
            .replace(Regex("""\\'[0-9a-fA-F]{2}"""), "")
            .replace(Regex("""\\[a-zA-Z]+-?\d* ?"""), "")
            .replace("{", "")
            .replace("}", "")
            .trim()
    }

    private fun docxBlocks(bytes: ByteArray): List<String> {
        val xml = readZipEntryText(bytes, "word/document.xml") ?: return listOf("<p>Unable to read DOCX document.</p>")
        val paragraphRegex = Regex("""<w:p\b[^>]*>.*?</w:p>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
        val headingRegex = Regex("""<w:pStyle\b[^>]*w:val="(?:Heading|heading)(\d+)"""", RegexOption.IGNORE_CASE)
        val blocks = paragraphRegex.findAll(xml).mapNotNull { match ->
            val paragraphXml = match.value
            val plain = xmlTextToPlain(paragraphXml)
            if (plain.isBlank()) {
                null
            } else {
                val level = headingRegex.find(paragraphXml)?.groupValues?.getOrNull(1)?.toIntOrNull()?.coerceIn(1, 6)
                val escaped = escapeHtml(plain).replace("\n", "<br/>")
                if (level != null) "<h$level>$escaped</h$level>" else "<p>$escaped</p>"
            }
        }.toList()
        return blocks.ifEmpty { textBlocks(xmlTextToPlain(xml)) }
    }

    private fun odtBlocks(bytes: ByteArray): List<String> {
        val xml = readZipEntryText(bytes, "content.xml") ?: return listOf("<p>Unable to read ODT document.</p>")
        val blockRegex = Regex("""<text:(p|h)\b[^>]*>.*?</text:\1>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE))
        val outlineRegex = Regex("""text:outline-level="(\d+)"""", RegexOption.IGNORE_CASE)
        val blocks = blockRegex.findAll(xml).mapNotNull { match ->
            val blockXml = match.value
            val type = match.groupValues[1].lowercase()
            val plain = xmlTextToPlain(blockXml)
            if (plain.isBlank()) {
                null
            } else {
                val escaped = escapeHtml(plain).replace("\n", "<br/>")
                if (type == "h") {
                    val level = outlineRegex.find(blockXml)?.groupValues?.getOrNull(1)?.toIntOrNull()?.coerceIn(1, 6) ?: 2
                    "<h$level>$escaped</h$level>"
                } else {
                    "<p>$escaped</p>"
                }
            }
        }.toList()
        return blocks.ifEmpty { textBlocks(xmlTextToPlain(xml)) }
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

    private fun wrapHtml(body: String): String {
        return """
            <!DOCTYPE html>
            <html>
            <head>
              <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width,initial-scale=1">
              <style>
                body { margin: 0; padding: 0 0 24px; }
                img { max-width: 100%; height: auto; display: block; margin: 0 auto 1rem; }
                pre, code { white-space: pre-wrap; word-break: break-word; }
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

    private fun inlineMarkdown(text: String): String {
        var html = escapeHtml(text)
        html = html.replace(Regex("""`([^`]+)`"""), "<code>$1</code>")
        html = html.replace(Regex("""\*\*([^*]+)\*\*"""), "<strong>$1</strong>")
        html = html.replace(Regex("""\*([^*]+)\*"""), "<em>$1</em>")
        html = html.replace(Regex("""\[([^\]]+)]\(([^)]+)\)""")) { match ->
            val label = match.groupValues[1]
            val href = match.groupValues[2].replace("\"", "%22")
            "<a href=\"$href\">$label</a>"
        }
        return html
    }

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
}
