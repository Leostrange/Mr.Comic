package com.example.engine.formats.epub

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.provider.OpenableColumns
import android.util.Log
import com.example.core.data.db.EpubManifestCacheDao
import com.example.core.data.db.EpubManifestCacheEntity
import com.example.core.data.db.EpubStructureCacheDao
import com.example.core.data.db.EpubStructureCacheEntity
import com.google.gson.Gson
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.text.ReflowableTextFormatReader
import com.example.engine.formats.text.TextDocumentSection
import com.example.engine.formats.text.withSequentialIndices
import com.example.engine.formats.base.EPUB_READER_DOCUMENT_CSS
import com.example.engine.formats.base.buildReaderDocumentHead
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.runBlocking
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.nodes.TextNode
import org.jsoup.parser.Parser as JsoupXmlParser
import java.io.File
import java.io.InputStream
import java.net.URLDecoder
import java.nio.charset.Charset
import java.util.Base64

private fun safeLogW(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.w(tag, message, throwable) }
}

private fun safeLogE(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.e(tag, message, throwable) }
}

internal fun decodeEpubText(bytes: ByteArray): String =
    bytes.toString(detectEpubTextCharset(bytes)).removePrefix("\uFEFF")

internal fun detectEpubTextCharset(bytes: ByteArray): Charset {
    detectEpubBomCharset(bytes)?.let { return it }

    val declared = declaredEpubCharset(bytes) ?: Charsets.UTF_8
    if (declared != Charsets.UTF_8) {
        return declared
    }

    val payload = if (hasUtf8Bom(bytes)) bytes.copyOfRange(3, bytes.size) else bytes
    if (isStrictUtf8(payload)) {
        return Charsets.UTF_8
    }

    return chooseReadableEpubFallbackCharset(bytes)
}

private fun hasUtf8Bom(bytes: ByteArray): Boolean =
    bytes.size >= 3 &&
        bytes[0] == 0xEF.toByte() &&
        bytes[1] == 0xBB.toByte() &&
        bytes[2] == 0xBF.toByte()

private fun detectEpubBomCharset(bytes: ByteArray): Charset? {
    if (hasUtf8Bom(bytes)) return Charsets.UTF_8
    if (bytes.size >= 2) {
        if (bytes[0] == 0xFF.toByte() && bytes[1] == 0xFE.toByte()) return Charsets.UTF_16LE
        if (bytes[0] == 0xFE.toByte() && bytes[1] == 0xFF.toByte()) return Charsets.UTF_16BE
    }
    return null
}

private fun declaredEpubCharset(bytes: ByteArray): Charset? {
    val peekLength = bytes.size.coerceAtMost(2048)
    if (peekLength <= 0) return null
    val peek = bytes.copyOfRange(0, peekLength).toString(Charsets.ISO_8859_1)
    val name = Regex(
        """(?:encoding|charset)\s*=\s*["']?([A-Za-z0-9._:-]+)""",
        RegexOption.IGNORE_CASE
    ).find(peek)?.groupValues?.getOrNull(1)?.trim()?.trim('"', '\'')
        ?.takeIf { it.isNotBlank() }
        ?: return null
    return runCatching { Charset.forName(name) }.getOrNull()
}

private fun chooseReadableEpubFallbackCharset(bytes: ByteArray): Charset {
    val candidates = listOfNotNull(
        charsetOrNull("windows-1251"),
        charsetOrNull("windows-1252"),
        Charsets.ISO_8859_1,
        charsetOrNull("KOI8-R"),
        charsetOrNull("IBM866"),
        charsetOrNull("Shift_JIS"),
        charsetOrNull("GB18030"),
        charsetOrNull("Big5"),
        charsetOrNull("EUC-KR")
    ).distinctBy { it.name() }

    return candidates
        .map { charset -> charset to scoreEpubDecodedText(bytes.toString(charset), charset) }
        .maxByOrNull { it.second }
        ?.first
        ?: charsetOrNull("windows-1252")
        ?: Charsets.ISO_8859_1
}

private fun charsetOrNull(name: String): Charset? =
    runCatching { Charset.forName(name) }.getOrNull()

private fun isStrictUtf8(bytes: ByteArray): Boolean {
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

private fun scoreEpubDecodedText(text: String, charset: Charset): Int {
    var score = 0
    var basicLatinLetters = 0
    var extendedLatinLetters = 0
    var cyrillicLetters = 0
    var cjkLetters = 0
    var kanaLetters = 0
    var hangulLetters = 0
    var controls = 0
    var replacement = 0

    text.forEach { ch ->
        when {
            ch == '\uFFFD' -> {
                replacement++
                score -= 160
            }
            ch == '\n' || ch == '\r' || ch == '\t' -> score += 1
            ch.isISOControl() -> {
                controls++
                score -= 48
            }
            ch.isLetter() -> {
                score += 7
                when (ch) {
                    in '\u0041'..'\u007A' -> basicLatinLetters++
                    in '\u00C0'..'\u024F' -> extendedLatinLetters++
                    in '\u0400'..'\u04FF' -> cyrillicLetters++
                    in '\u3040'..'\u30FF' -> kanaLetters++
                    in '\u3400'..'\u9FFF' -> cjkLetters++
                    in '\uAC00'..'\uD7AF' -> hangulLetters++
                }
            }
            ch.isDigit() -> score += 3
            ch.isWhitespace() -> score += 1
            ch in listOf('<', '>', '/', '=', '"', '\'', '-', '_', '.', ',', ':', ';', '&') -> score += 2
            else -> score += 1
        }
    }

    if (text.contains("<html", ignoreCase = true) || text.contains("<package", ignoreCase = true)) score += 60
    if (text.contains("<body", ignoreCase = true) || text.contains("<manifest", ignoreCase = true)) score += 40

    val visibleText = Regex("<[^>]+>").replace(text, " ")
    val visibleBasicLatinLetters = visibleText.count { it in '\u0041'..'\u007A' }
    val visibleExtendedLatinLetters = visibleText.count { it in '\u00C0'..'\u024F' }
    val visibleCyrillicLetters = visibleText.count { it in '\u0400'..'\u04FF' }
    val visibleCjkLetters = visibleText.count { it in '\u3400'..'\u9FFF' }
    val visibleKanaLetters = visibleText.count { it in '\u3040'..'\u30FF' }
    val visibleHangulLetters = visibleText.count { it in '\uAC00'..'\uD7AF' }
    val visibleLatinLetters = visibleBasicLatinLetters + visibleExtendedLatinLetters

    if (
        visibleCyrillicLetters >= 4 &&
        (visibleCyrillicLetters >= visibleLatinLetters * 2 || visibleCyrillicLetters > visibleBasicLatinLetters)
    ) {
        score += visibleCyrillicLetters * 4
        if (charset.name().equals("windows-1251", ignoreCase = true)) score += 80
        if (charset.name().equals("KOI8-R", ignoreCase = true)) score += 35
        if (charset.name().equals("IBM866", ignoreCase = true)) score += 20
    }
    if (
        visibleExtendedLatinLetters >= 2 &&
        visibleExtendedLatinLetters <= visibleBasicLatinLetters &&
        visibleCyrillicLetters == 0 &&
        charset.name().equals("windows-1252", ignoreCase = true)
    ) {
        score += visibleExtendedLatinLetters * 5 + 45
    }
    if (
        visibleExtendedLatinLetters > visibleBasicLatinLetters &&
        charset.name().equals("windows-1252", ignoreCase = true)
    ) {
        score -= visibleExtendedLatinLetters * 8
    }
    if (
        visibleCyrillicLetters in 1..visibleLatinLetters &&
        charset.name().equals("windows-1251", ignoreCase = true)
    ) {
        score -= visibleCyrillicLetters * 14
    }
    if (visibleCjkLetters + visibleKanaLetters + visibleHangulLetters >= 2) {
        score += (visibleCjkLetters + visibleKanaLetters + visibleHangulLetters) * 6
        val charsetName = charset.name().lowercase()
        if (charsetName.contains("jis") || charsetName.contains("gb") ||
            charsetName.contains("big5") || charsetName.contains("euc")
        ) {
            score += 70
        }
    }

    score -= controls * 12
    score -= replacement * 25
    return score
}

internal fun sanitizeInlineEpubCss(css: String): String {
    return sanitizeEpubCss(css, stripFontFace = true)
}

internal fun sanitizeAssetBackedEpubCss(
    css: String,
    cssEntryPath: String? = null,
    assetExists: (String) -> Boolean = { true }
): String {
    val sanitized = sanitizeEpubCss(css, stripFontFace = false)
    return sanitizeAssetBackedFontFaces(sanitized, cssEntryPath, assetExists)
}

private fun sanitizeEpubCss(css: String, stripFontFace: Boolean): String {
    var result = css.trim()
    if (stripFontFace) {
        val fontFaceRegex = Regex(
            """@font-face\s*[{][\s\S]*?[}]""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        result = fontFaceRegex.replace(result, "").trim()
    }

    // Strip dominant #id scope prefix (e.g. O'Reilly "#sbo-rt-content").
    // When CSS scopes all rules under a single wrapper ID that we remove during chunking,
    // the styles stop applying. If one #id appears ≥ 10 times as a leading selector
    // token, it's almost certainly an intentional document-level scope — remove it so
    // the rules apply globally within our isolated reader WebView.
    val idScopeRegex = Regex("""#([\w-]+)\s+""")
    val counts = idScopeRegex.findAll(result).groupingBy { it.groupValues[1] }.eachCount()
    val dominant = counts.maxByOrNull { it.value }
    if (dominant != null && dominant.value >= 10) {
        result = result.replace(Regex("""#${Regex.escape(dominant.key)}\s+"""), "")
    }

    // Clamp dangerously small line-height values (e.g. 0.1 from FB2EPUB footnote styles).
    // Values below 1.0 cause lines to overlap visually. Replace with a readable minimum.
    result = result.replace(
        Regex("""line-height\s*:\s*0\.\d+""", RegexOption.IGNORE_CASE),
        "line-height: 1.2"
    )

    return result
}

private val CSS_URL_REGEX = Regex("""url\(\s*(['"]?)([^'")]+)\1\s*\)""", RegexOption.IGNORE_CASE)
private val FONT_FACE_BLOCK_REGEX = Regex(
    """@font-face\s*[{][\s\S]*?[}]""",
    setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
)

private fun normalizeEpubAssetPath(path: String): String {
    val stack = ArrayDeque<String>()
    for (part in path.split('/')) when (part) {
        ".." -> if (stack.isNotEmpty()) stack.removeLast()
        ".", "" -> {}
        else -> stack.addLast(part)
    }
    return stack.joinToString("/")
}

private fun sanitizeAssetBackedFontFaces(
    css: String,
    cssEntryPath: String?,
    assetExists: (String) -> Boolean
): String {
    return FONT_FACE_BLOCK_REGEX.replace(css) { match ->
        val block = match.value
        var keptUrls = 0
        val cleanedBlock = CSS_URL_REGEX.replace(block) { urlMatch ->
            val rawUrl = urlMatch.groupValues[2].trim()
            if (isSafeAssetBackedCssUrl(rawUrl, cssEntryPath, assetExists)) {
                keptUrls += 1
                urlMatch.value
            } else {
                "/* mrcomic-stripped-font-url */"
            }
        }
            .replace(Regex("""\s*,\s*/\* mrcomic-stripped-font-url \*/"""), "")
            .replace(Regex("""/\* mrcomic-stripped-font-url \*/\s*,\s*"""), "")
            .replace("/* mrcomic-stripped-font-url */", "")
        if (keptUrls <= 0) "" else cleanedBlock
    }
}

private fun isSafeAssetBackedCssUrl(
    rawUrl: String,
    cssEntryPath: String?,
    assetExists: (String) -> Boolean
): Boolean {
    if (rawUrl.isBlank()) return false
    val decoded = try { URLDecoder.decode(rawUrl, "UTF-8") } catch (_: Exception) { rawUrl }
    val lower = decoded.lowercase()
    if (lower.startsWith("javascript:")) return false
    if (lower.startsWith("file:")) return false
    if (lower.startsWith("content:")) return false
    if (lower.startsWith("android_asset:")) return false
    if (lower.startsWith("res:")) return false
    if (lower.startsWith("data:")) return true
    if (lower.startsWith("http://") || lower.startsWith("https://")) return true
    val baseDir = cssEntryPath
        ?.substringBeforeLast('/', "")
        .orEmpty()
    val normalized = normalizeEpubAssetPath(
        if (decoded.startsWith("/")) decoded.trimStart('/')
        else if (baseDir.isEmpty()) decoded else "$baseDir/$decoded"
    )
    return assetExists(normalized)
}

internal fun simplifySingleImageSvgContent(html: String): String {
    val svgBlockRegex = Regex(
        """<svg\b[^>]*>.*?</svg>""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    val imageHrefRegex = Regex(
        """<image\b[^>]*?\b(?:xlink:)?href\s*=\s*["']([^"']+)["'][^>]*(?:/?>|>.*?</image>)""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    return svgBlockRegex.replace(html) { match ->
        val svgBlock = match.value
        val hrefMatches = imageHrefRegex.findAll(svgBlock).toList()
        if (hrefMatches.size != 1) {
            svgBlock
        } else {
            val imageSrc = hrefMatches.first().groupValues[1]
            """<div class="epub-inline-cover"><img src="$imageSrc" alt="" style="max-width:100%;height:auto;display:block;margin:0 auto;"/></div>"""
        }
    }
}

internal fun normalizeInlinedEpubMarkup(html: String): String = runCatching {
    val document = Jsoup.parse(html)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val rawBodyInnerHtml = extractEpubBodyInnerHtmlByTag(html)
    val blockTags = setOf(
        "div", "p", "h1", "h2", "h3", "h4", "h5", "h6",
        "blockquote", "ul", "ol", "li", "table", "thead", "tbody",
        "tfoot", "tr", "td", "th", "section", "article", "aside",
        "figure", "figcaption"
    )
    var changed = true
    while (changed) {
        changed = false
        document.select("span, font").forEach { wrapper ->
            val hasBlockChild = wrapper.children().any { child -> child.normalName() in blockTags }
            if (hasBlockChild && wrapper.ownText().isBlank()) {
                wrapper.unwrap()
                changed = true
            }
        }
    }
    val normalized = document.outerHtml()
    if (document.body().html().isBlank() && rawBodyInnerHtml != null) {
        html
    } else {
        normalized
    }
}.getOrDefault(html)

private fun extractEpubBodyInnerHtmlByTag(html: String): String? {
    val open = Regex("""<body\b[^>]*>""", RegexOption.IGNORE_CASE).find(html) ?: return null
    val close = html.lastIndexOf("</body>", ignoreCase = true)
    val end = if (close > open.range.last) close else html.length
    return html.substring(open.range.last + 1, end)
        .trim()
        .takeIf { it.isNotBlank() }
}

private fun extractEpubBodyAttributesByTag(html: String): Map<String, String> {
    val bodyOpen = Regex("""<body\b[^>]*>""", RegexOption.IGNORE_CASE).find(html)?.value ?: return emptyMap()
    return Regex("""([:\w-]+)\s*=\s*(["'])(.*?)\2""")
        .findAll(bodyOpen)
        .associate { match -> match.groupValues[1] to match.groupValues[3] }
}

internal fun rebuildNormalizedInlinedEpubDocument(html: String, readerCss: String): String = runCatching {
    val fallbackBodyInnerHtml = extractEpubBodyInnerHtmlByTag(html)
    val fallbackBodyAttributes = extractEpubBodyAttributesByTag(html)
    val source = Jsoup.parse(html)
    source.outputSettings(Document.OutputSettings().prettyPrint(false))

    val rebuilt = Document("")
    rebuilt.outputSettings(Document.OutputSettings().prettyPrint(false))

    val htmlElement = rebuilt.appendElement("html")
    source.selectFirst("html")?.attributes()?.forEach { attr ->
        htmlElement.attr(attr.key, attr.value)
    }

    val headElement = htmlElement.appendElement("head")
    headElement.appendElement("meta").attr("charset", "UTF-8")
    headElement.append(readerCss)
    source.head().children().forEach { child ->
        val tag = child.normalName()
        if (tag == "style" || tag == "title" || tag == "meta" || tag == "link") {
            headElement.appendChild(child.clone())
        }
    }

    val bodyElement = htmlElement.appendElement("body")
    source.body().attributes().forEach { attr ->
        bodyElement.attr(attr.key, attr.value)
    }
    fallbackBodyAttributes.forEach { (key, value) ->
        if (!bodyElement.hasAttr(key)) bodyElement.attr(key, value)
    }
    val sourceBodyHtml = source.body().html().trim()
    if (sourceBodyHtml.isBlank() && fallbackBodyInnerHtml != null) {
        bodyElement.html(fallbackBodyInnerHtml)
    } else {
        source.body().childNodes().forEach { child ->
            bodyElement.appendChild(child.clone())
        }
    }

    rebuilt.outerHtml()
}.getOrDefault(
    when {
        Regex("<head[^>]*>", RegexOption.IGNORE_CASE).containsMatchIn(html) ->
            html.replaceFirst(Regex("<head([^>]*)>", RegexOption.IGNORE_CASE), "<head$1>$readerCss")
        html.contains("<body", ignoreCase = true) ->
            html.replaceFirst(Regex("<body[^>]*>", RegexOption.IGNORE_CASE), "$0$readerCss")
        else -> "<html><head>$readerCss</head><body>$html</body></html>"
    }
)

internal fun prepareAssetBackedEpubDocument(
    html: String,
    readerCss: String,
    xhtmlEntryPath: String? = null,
    assetExists: (String) -> Boolean = { true }
): String = runCatching {
    val strippedHtml = html
        .replaceFirst(Regex("""^\s*<\?xml[^>]*\?>\s*""", RegexOption.IGNORE_CASE), "")
        .replace(
            Regex(
                """<nav\b[^>]*\bepub:type\s*=\s*["']page-list["'][^>]*>.*?</nav>""",
                setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
            ),
            ""
        )
    val normalized = normalizeInlinedEpubMarkup(simplifySingleImageSvgContent(strippedHtml))
    val document = Jsoup.parse(normalized)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    document.select("style").forEach { styleElement ->
        styleElement.html(
            sanitizeAssetBackedEpubCss(
                css = styleElement.data(),
                cssEntryPath = xhtmlEntryPath,
                assetExists = assetExists
            )
        )
    }
    val sourceForRebuild = if (
        document.body().html().isBlank() &&
        extractEpubBodyInnerHtmlByTag(normalized) != null
    ) {
        normalized
    } else {
        document.outerHtml()
    }
    rebuildNormalizedInlinedEpubDocument(sourceForRebuild, readerCss)
}.getOrDefault(
    rebuildNormalizedInlinedEpubDocument(html, readerCss)
)

internal data class EpubContentEstimate(
    val textCharCount: Int,
    val imageTagCount: Int,
    val chunkCount: Int,
    val keepWholeBody: Boolean = false
)

private data class EpubHtmlChunkBlock(
    val html: String,
    val visibleCharCount: Int
)

private data class EpubEstimatedChunkBlock(
    val visibleCharCount: Int,
    val canSplitOversized: Boolean
)

internal fun resolveEpubHtmlChunkCount(
    blockCharCounts: List<Int>,
    charsPerPage: Int = 2000
): Int {
    if (blockCharCounts.isEmpty()) return 1
    val structuralChunkBudget = (charsPerPage * 2).coerceAtLeast(charsPerPage)
    var chunks = 0
    var accumulated = 0
    var hasCurrentChunk = false
    for (blockChars in blockCharCounts) {
        val normalizedChars = blockChars.coerceAtLeast(1)
        if (hasCurrentChunk && accumulated + normalizedChars > structuralChunkBudget) {
            chunks++
            accumulated = 0
            hasCurrentChunk = false
        }
        accumulated += normalizedChars
        hasCurrentChunk = true
    }
    if (hasCurrentChunk) chunks++
    return chunks.coerceAtLeast(1)
}

internal fun shouldKeepWholeEpubHtmlBody(bodyHtml: String): Boolean {
    val trimmedBody = bodyHtml.trimStart()
    // Quick path: body starts with an inline wrapper — classic FB2EPUB pattern.
    if (trimmedBody.startsWith("<span", ignoreCase = true) ||
        trimmedBody.startsWith("<font", ignoreCase = true)
    ) {
        return true
    }

    // Tail-based detection: if the body ENDS with a closing inline wrapper
    // (</span> or </font>) that sits outside (after) the last block-level close,
    // it means block content is wrapped in an inline element — unsafe to chunk.
    val trailingCloseRegex = Regex(
        """</(?:span|font)\s*>\s*(?:</(?:div|section|article|aside)\s*>\s*)*$""",
        RegexOption.IGNORE_CASE
    )
    if (trailingCloseRegex.containsMatchIn(bodyHtml.trimEnd())) {
        val hasBlockContent = Regex(
            """<(?:p|h[1-6]|blockquote|ul|ol|table)\b""",
            RegexOption.IGNORE_CASE
        ).containsMatchIn(bodyHtml)
        if (hasBlockContent) return true
    }

    // General detection: look for orphaned closing wrapper tags among
    // first 6 AND last 6 regex blocks (previous .take(12) missed long chapters).
    val htmlTagRegex = Regex("<[^>]+>")
    val htmlBlockRegex = Regex(
        """(.+?</(?:p|div|h1|h2|h3|h4|h5|h6|blockquote|li|tr|section|article|aside|ul|ol)>|.+$)""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    val closingWrapperRegex = Regex(
        """^</(?:span|font)\b""",
        setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
    )
    val allBlocks = htmlBlockRegex.findAll(bodyHtml)
        .map { it.value.trim() }
        .filter { it.isNotEmpty() }
        .toList()
    val toCheck = if (allBlocks.size <= 12) allBlocks
                  else allBlocks.take(6) + allBlocks.takeLast(6)
    return toCheck.any { block ->
        val hasVisibleContent = htmlTagRegex.replace(block, "")
            .any { !it.isWhitespace() }
        !hasVisibleContent && closingWrapperRegex.containsMatchIn(block)
    }
}

/**
 * EPUB reader — handles both image-based (manga) and text-based (novel) EPUBs.
 *
 * Image page  → getPage()     returns Bitmap decoded from ZIP entry
 * XHTML page  → getHtmlPage() returns self-contained HTML with CSS + images inlined as
 *               base64 data URIs. One XHTML spine item = one reader page.
 *
 * Spine order from OPF is respected; fallback to sorted image/xhtml listing.
 * TOC is extracted from the NCX (EPUB2) or nav.xhtml (EPUB3) file.
 */
class EpubFormatReader(
    private val context: Context,
    private val path: String,
    private val structureCacheDao: EpubStructureCacheDao? = null,
    private val manifestCacheDao: EpubManifestCacheDao? = null
) : FormatReader, ReflowableTextFormatReader {

    override fun rendersHtmlContent(): Boolean = true

    companion object {
        private const val TAG = "EpubFormatReader"
        private const val EPUB_STRUCTURE_CACHE_VERSION = 10
        private val CHAPTER_TITLE_RE = Regex(
            """(?i)^(chapter|ch\.?|part|book|section|глава)\s+[IVXLCDM\d]+(?:[.:]\s*|$)"""
        )
        private const val EPUB_MANIFEST_CACHE_VERSION = 3
        private const val EPUB_STRUCTURE_CACHE_MAX_AGE_MS = 30L * 24L * 60L * 60L * 1000L
        private const val EPUB_FLAVOR_STANDARD = "standard"
        private const val EPUB_FLAVOR_FB2 = "fb2"
        private const val EPUB_FLAVOR_CALIBRE = "calibre"
        private const val EPUB_FLAVOR_PUBLISHER = "publisher"
        private const val MAX_CACHED_TEXT_ENTRY_CHARS = 512_000
        private val CACHE_GSON = Gson()
        /**
         * Backend chunks are structural sections. Screen-sized pages are measured by
         * the reader WebView so PAGE mode can fill each viewport without clipping.
         */
        private const val CHARS_PER_PAGE = 4000
        /** Regex for stripping HTML tags when counting content characters. */
        private val HTML_TAG_RE = Regex("<[^>]+>")
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
        private val XHTML_EXTENSIONS = setOf("xhtml", "html", "htm")
        private val EPUB_CHUNK_BOUNDARY_TAGS = setOf(
            "p", "h1", "h2", "h3", "h4", "h5", "h6",
            "blockquote", "li", "dt", "dd", "tr",
            "figure", "figcaption", "pre", "hr",
            "img", "image", "svg"
        )
        private val EPUB_CHUNK_CONTAINER_TAGS = setOf(
            "body", "main", "div", "section", "article", "aside",
            "nav", "ul", "ol", "dl", "table", "thead", "tbody", "tfoot"
        )
        private val EPUB_ATOMIC_CHUNK_TAGS = setOf(
            "table", "pre", "code", "svg", "math", "figure", "img", "image"
        )
        private val IMG_SRC_RE    = Regex("""(<img\b[^>]*?\bsrc\s*=\s*["'])([^"']+)(["'][^>]*?>)""", RegexOption.IGNORE_CASE)
        private val XLINK_HREF_RE = Regex("""(<image\b[^>]*?\b(?:xlink:)?href\s*=\s*["'])([^"']+)(["'][^>]*?/?>)""", RegexOption.IGNORE_CASE)
        private val CSS_LINK_RE   = Regex(
            """<link\b(?=[^>]*\brel\s*=\s*["'][^"']*stylesheet[^"']*["'])[^>]*\bhref\s*=\s*["']([^"']+)["'][^>]*?/?>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        /**
         * Viewport meta + minimal reader CSS injected at the end of <head>.
         * Low-specificity selectors ensure publisher CSS wins for custom elements;
         * we only provide mobile-friendly defaults with dark mode support.
         */
        private val CSS_INJECT = buildReaderDocumentHead(
            baseCss = EPUB_READER_DOCUMENT_CSS
        )
    }

    // ── ZipFile lifecycle ─────────────────────────────────────────────────────

    private val lock = Any()
    private var tempFile: File? = null
    private var zipFile: ZipFile? = null

    /**
     * LRU cache: (entry path → inlined HTML).
     * 8 entries cover forward and backward navigation across several chapters
     * without re-reading and re-inlining large XHTML files on every navigation.
     */
    private val htmlCache = object : LinkedHashMap<String, String>(12, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, String>?) = size > 8
    }
    private val textEntryCache = object : LinkedHashMap<String, String>(20, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, String>?) = size > 16
    }
    private val pageHtmlCache = object : LinkedHashMap<Int, String>(16, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Int, String>?) = size > 12
    }

    private sealed class EpubPage {
        data class Image(val entry: String) : EpubPage()
        /**
         * One XHTML spine item may be split into several chunks when its text content
         * exceeds CHARS_PER_PAGE characters. chunkIndex/totalChunks track position within the item.
         *
         * [extraEntries] — additional XHTML entries whose body content is appended to this page.
         * Used to merge consecutive tiny spine items (e.g. individual footnote files) into one page.
         */
        data class Html(
            val entry: String,
            val opfDir: String,
            val chunkIndex: Int = 0,
            val totalChunks: Int = 1,
            val extraEntries: List<String> = emptyList()
        ) : EpubPage()
        data class SyntheticHtml(
            val entry: String,
            val html: String,
            val chunkIndex: Int = 0,
            val totalChunks: Int = 1,
            val sourceEntries: List<String> = emptyList()
        ) : EpubPage()
    }

    /** Holds both the page list and the extracted TOC from one OPF pass. */
    private data class ParsedEpub(
        val pages: List<EpubPage>
    )

    private data class ManifestBlueprint(
        val manifest: Map<String, String>,
        val spine: List<String>,
        val ncxId: String?,
        val opfDir: String,
        val flavor: String,
        val repairFrontMatter: Boolean
    )

    private data class EpubCacheKey(
        val filePath: String,
        val fileSize: Long,
        val lastModified: Long
    )

    private data class CachedParsedEpubPayload(
        val version: Int,
        val pages: List<CachedPage>
    )

    private data class CachedPage(
        val type: String,
        val entry: String,
        val opfDir: String? = null,
        val chunkIndex: Int = 0,
        val totalChunks: Int = 1,
        val extraEntries: List<String> = emptyList(),
        val html: String? = null,
        val sourceEntries: List<String> = emptyList()
    )

    private data class CachedManifestPayload(
        val version: Int,
        val manifest: Map<String, String>,
        val spine: List<String>,
        val ncxId: String?,
        val opfDir: String,
        val flavor: String,
        val repairFrontMatter: Boolean
    )

    private val manifestBlueprint: ManifestBlueprint? by lazy {
        try {
            val cacheKey = currentCacheKey()
            loadManifestFromCache(cacheKey)?.let { return@lazy it }
            val zip = ensureZip() ?: return@lazy null
            val opfEntry = findOpfEntry(zip)
            if (opfEntry != null) {
                val opfDir = opfEntry.substringBeforeLast('/', "")
                val header = zip.getFileHeader(opfEntry)
                    ?: return@lazy null
                val opfBytes = zip.getInputStream(header).use { it.readBytes() }
                val opfText = decodeEpubText(opfBytes)
                val isFb2Epub = opfText.contains("FB2EPUB.", ignoreCase = true) ||
                    opfText.contains("FB2EPUB.version", ignoreCase = true)
                val isCalibreEpub = opfText.contains("calibre ", ignoreCase = true) ||
                    opfText.contains("<meta name=\"calibre:", ignoreCase = true) ||
                    opfText.contains("calibre-ebook.com", ignoreCase = true)
                val (manifest, spine, ncxId) = runCatching {
                    parseOpfRegexFallback(opfText)
                }.recoverCatching {
                    parseOpf(opfBytes.inputStream())
                }.getOrElse { error ->
                    safeLogW(TAG, "Failed to parse OPF for manifest cache", error)
                    return@lazy null
                }
                if (manifest.isEmpty() || spine.isEmpty()) {
                    return@lazy null
                }
                val isPublisherEpub = detectPublisherEpub(opfText, manifest, spine)
                val repairFrontMatter = shouldRepairFrontMatter(opfText, manifest, spine)
                val blueprint = ManifestBlueprint(
                    manifest = manifest,
                    spine = spine,
                    ncxId = ncxId,
                    opfDir = opfDir,
                    flavor = when {
                        isFb2Epub -> EPUB_FLAVOR_FB2
                        isCalibreEpub -> EPUB_FLAVOR_CALIBRE
                        isPublisherEpub -> EPUB_FLAVOR_PUBLISHER
                        else -> EPUB_FLAVOR_STANDARD
                    },
                    repairFrontMatter = repairFrontMatter
                )
                storeManifestInCache(cacheKey, blueprint)
                blueprint
            } else {
                null
            }
        } catch (e: Exception) {
            safeLogE(TAG, "Failed to build EPUB manifest cache blueprint", e)
            null
        }
    }

    private val parsed: ParsedEpub by lazy {
        try {
            val cacheKey = currentCacheKey()
            loadParsedFromCache(cacheKey)?.let { return@lazy it }
            val zip = ensureZip() ?: return@lazy ParsedEpub(emptyList())
            val fallbackPages by lazy(LazyThreadSafetyMode.NONE) { fallbackContentPages(zip) }
            val blueprint = manifestBlueprint
            if (blueprint == null) {
                return@lazy ParsedEpub(fallbackPages)
            }
            val pages = runCatching {
                buildPagesFromBlueprint(blueprint, zip).ifEmpty { fallbackPages }
            }.getOrElse { error ->
                safeLogW(TAG, "Failed to build EPUB pages from manifest cache", error)
                fallbackPages
            }
            val parsed = ParsedEpub(pages = pages)
            storeParsedInCache(cacheKey, parsed)
            parsed
        } catch (e: Exception) {
            safeLogE(TAG, "Failed to build EPUB page list", e)
            val zip = runCatching { ensureZip() }.getOrNull()
            if (zip != null) {
                ParsedEpub(fallbackContentPages(zip))
            } else {
                ParsedEpub(emptyList())
            }
        }
    }

    private val pages: List<EpubPage> get() = parsed.pages
    private val lazyTocEntries: List<TocEntry> by lazy {
        val blueprint = manifestBlueprint ?: return@lazy emptyList()
        runCatching {
            val zip = ensureZip() ?: return@runCatching emptyList()
            buildTocFromBlueprint(blueprint, pages, zip)
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to build EPUB TOC from manifest cache", error)
            emptyList()
        }
    }
    private val footnoteMap: Map<String, String> by lazy {
        val blueprint = manifestBlueprint ?: return@lazy emptyMap()
        runCatching {
            val zip = ensureZip() ?: return@runCatching emptyMap()
            buildFootnoteMap(blueprint.manifest, blueprint.spine, blueprint.opfDir, zip)
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to parse EPUB footnotes", error)
            emptyMap()
        }
    }

    // ── FormatReader ──────────────────────────────────────────────────────────

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        val sectionCount = textDocumentSections.size
        if (sectionCount > 0) sectionCount else pages.size
    }

    override suspend fun getPage(index: Int): Bitmap? = withContext(Dispatchers.IO) {
        val page = pages.getOrNull(index) as? EpubPage.Image ?: return@withContext null
        try {
            val zip = ensureZip() ?: return@withContext null
            val header = findHeader(zip, page.entry) ?: return@withContext null
            zip.getInputStream(header).use { stream ->
                BitmapFactory.decodeStream(stream, null, BitmapFactory.Options().apply {
                    inPreferredConfig = Bitmap.Config.ARGB_8888
                })
            }
        } catch (e: Exception) {
            safeLogW(TAG, "Bitmap decode failed for ${page.entry}", e); null
        }
    }

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        synchronized(pageHtmlCache) { pageHtmlCache[index] }?.let { return@withContext it }
        val sections = textDocumentSections
        if (sections.isNotEmpty()) {
            val sectionHtml = sections.getOrNull(index)?.html ?: return@withContext null
            synchronized(pageHtmlCache) { pageHtmlCache[index] = sectionHtml }
            return@withContext sectionHtml
        }
        when (val page = pages.getOrNull(index)) {
            is EpubPage.Image -> {
                val zip = ensureZip() ?: return@withContext null
                val html = renderImageSpineItemHtml(page.entry, zip) ?: return@withContext null
                synchronized(pageHtmlCache) { pageHtmlCache[index] = html }
                return@withContext html
            }
            is EpubPage.SyntheticHtml -> {
                synchronized(pageHtmlCache) { pageHtmlCache[index] = page.html }
                return@withContext page.html
            }
            !is EpubPage.Html -> return@withContext null
            else -> Unit
        }
        val page = pages.getOrNull(index) as EpubPage.Html
        try {
            val zip = ensureZip() ?: return@withContext null

            fun buildRawHtml(entry: String): String? {
                val header = findHeader(zip, entry) ?: return null
                return zip.getInputStream(header).use { stream ->
                    val bytes = stream.readBytes()
                    detectCharset(bytes).let { bytes.toString(it) }
                }
            }

            // Build (or retrieve from cache) the full inlined HTML for this entry.
            fun buildHtml(entry: String): String? {
                synchronized(htmlCache) { htmlCache[entry] }?.let { return it }
                val raw = buildRawHtml(entry) ?: return null
                val html = prepareAssetBackedEpubDocument(
                    html = raw,
                    readerCss = CSS_INJECT,
                    xhtmlEntryPath = entry,
                    assetExists = { candidate -> findHeader(zip, candidate) != null }
                )
                synchronized(htmlCache) { htmlCache[entry] = html }
                return html
            }

            val firstHtml = buildHtml(page.entry) ?: return@withContext null

            if (page.extraEntries.isEmpty()) {
                // Normal path: single entry, optionally chunked.
                val pageHtml = if (page.totalChunks == 1) {
                    firstHtml
                } else {
                    val rawHtml = buildRawHtml(page.entry) ?: firstHtml
                    val rawChunk = extractChunk(rawHtml, page.chunkIndex, page.totalChunks)
                    prepareAssetBackedEpubDocument(
                        html = rawChunk,
                        readerCss = CSS_INJECT,
                        xhtmlEntryPath = page.entry,
                        assetExists = { candidate -> findHeader(zip, candidate) != null }
                    )
                }
                synchronized(pageHtmlCache) { pageHtmlCache[index] = pageHtml }
                return@withContext pageHtml
            }

            // Merged path: append body content from extra entries before </body>.
            val extraBodies = page.extraEntries.mapNotNull { entry ->
                buildHtml(entry)?.let { extractWrappedBodyContent(it) }
            }.filter { it.isNotBlank() }   // skip empty bodies
            val pageHtml = firstHtml.replace("</body>", extraBodies.joinToString("") + "</body>", ignoreCase = true)
            synchronized(pageHtmlCache) { pageHtmlCache[index] = pageHtml }
            pageHtml
        } catch (e: Exception) {
            safeLogW(TAG, "HTML read failed for ${page.entry}", e); null
        }
    }

    override fun htmlAssetBasePath(index: Int): String? {
        textDocumentSections.getOrNull(index)?.id?.let { return it }
        return when (val page = pages.getOrNull(index)) {
            is EpubPage.Html -> page.entry
            is EpubPage.Image -> page.entry
            is EpubPage.SyntheticHtml -> page.entry
            else -> null
        }
    }

    private val textDocumentSections: List<TextDocumentSection> by lazy { buildTextDocumentSections() }

    override suspend fun getTextDocumentSections(): List<TextDocumentSection> = withContext(Dispatchers.IO) {
        textDocumentSections
    }

    /**
     * Spine-level sections for TEXT PAGE/WEBTOON: one section per XHTML spine item without
     * the legacy [CHARS_PER_PAGE] chunk split. Viewport pagination happens in feature-reader.
     */
    private fun buildTextDocumentSections(): List<TextDocumentSection> {
        if (pages.isEmpty()) return emptyList()
        val zip = ensureZip() ?: return emptyList()
        val sections = mutableListOf<TextDocumentSection>()
        val seenSpineKeys = mutableSetOf<String>()
        pages.forEach { page ->
            when (page) {
                is EpubPage.Image -> {
                    if (!seenSpineKeys.add(page.entry)) return@forEach
                    val html = renderImageSpineItemHtml(page.entry, zip) ?: return@forEach
                    sections += TextDocumentSection(
                        index = sections.size,
                        id = page.entry,
                        html = html
                    )
                }
                is EpubPage.Html -> {
                    if (page.chunkIndex != 0) return@forEach
                    if (!seenSpineKeys.add(page.entry)) return@forEach
                    val html = renderSpineSectionHtml(page, zip) ?: return@forEach
                    sections += TextDocumentSection(
                        index = sections.size,
                        id = page.entry,
                        html = html
                    )
                }
                is EpubPage.SyntheticHtml -> {
                    if (page.chunkIndex != 0) return@forEach
                    val key = "syn:${page.entry}"
                    if (!seenSpineKeys.add(key)) return@forEach
                    val html = if (page.totalChunks <= 1) {
                        page.html
                    } else {
                        pages.asSequence()
                            .filterIsInstance<EpubPage.SyntheticHtml>()
                            .filter { it.entry == page.entry }
                            .sortedBy { it.chunkIndex }
                            .joinToString(separator = "") { synthetic ->
                                extractBodyContent(synthetic.html)
                            }
                            .let { body ->
                                buildSyntheticHtml(body, includeTitle = true)
                            }
                    }
                    sections += TextDocumentSection(
                        index = sections.size,
                        id = page.entry,
                        html = html
                    )
                }
            }
        }
        return sections.withSequentialIndices()
    }

    private fun renderImageSpineItemHtml(entry: String, zip: ZipFile): String? {
        synchronized(htmlCache) { htmlCache["img:$entry"] }?.let { return it }
        if (findHeader(zip, entry) == null) return null
        val fileName = entry.substringAfterLast('/')
        val body = buildSyntheticHtml(
            content = """<div class="mrcomic-image-page"><img src="$fileName" alt="" /></div>""",
            includeTitle = false
        )
        val html = prepareAssetBackedEpubDocument(
            html = body,
            readerCss = CSS_INJECT + """
                body[data-mrcomic-preserve-layout='true']{margin:0;padding:0;display:flex;align-items:center;justify-content:center;min-height:var(--mrcomic-page-visible-height,100vh);}
                .mrcomic-image-page{display:flex;align-items:center;justify-content:center;width:100%;min-height:var(--mrcomic-page-visible-height,100vh);}
                .mrcomic-image-page img{max-width:100%;max-height:var(--mrcomic-page-visible-height,100vh);width:auto;height:auto;object-fit:contain;}
            """.trimIndent(),
            xhtmlEntryPath = entry,
            assetExists = { candidate -> findHeader(zip, candidate) != null }
        )
        synchronized(htmlCache) { htmlCache["img:$entry"] = html }
        return html
    }

    private fun renderFullSpineItemHtml(page: EpubPage.Html, zip: ZipFile): String? {
        synchronized(htmlCache) { htmlCache[page.entry] }?.let { return it }
        val header = findHeader(zip, page.entry) ?: return null
        val raw = try {
            zip.getInputStream(header).use { stream ->
                val bytes = stream.readBytes()
                detectCharset(bytes).let { charset -> bytes.toString(charset) }
            }
        } catch (e: Exception) {
            safeLogW(TAG, "Failed to read spine item ${page.entry}", e)
            return null
        }
        val html = prepareAssetBackedEpubDocument(
            html = raw,
            readerCss = CSS_INJECT,
            xhtmlEntryPath = page.entry,
            assetExists = { candidate -> findHeader(zip, candidate) != null }
        )
        synchronized(htmlCache) { htmlCache[page.entry] = html }
        return html
    }

    /** Full spine section HTML including merged [EpubPage.Html.extraEntries] bodies. */
    private fun renderSpineSectionHtml(page: EpubPage.Html, zip: ZipFile): String? {
        val cacheKey = buildString {
            append(page.entry)
            if (page.extraEntries.isNotEmpty()) {
                append("|merged:")
                append(page.extraEntries.joinToString(","))
            }
        }
        synchronized(htmlCache) { htmlCache[cacheKey] }?.let { return it }
        val firstHtml = renderFullSpineItemHtml(page, zip) ?: return null
        if (page.extraEntries.isEmpty()) return firstHtml
        val extraBodies = page.extraEntries.mapNotNull { entry ->
            renderFullSpineItemHtml(
                page.copy(entry = entry, extraEntries = emptyList()),
                zip
            )?.let { extractWrappedBodyContent(it) }
        }.filter { it.isNotBlank() }
        if (extraBodies.isEmpty()) return firstHtml
        val merged = firstHtml.replace(
            "</body>",
            extraBodies.joinToString("") + "</body>",
            ignoreCase = true
        )
        synchronized(htmlCache) { htmlCache[cacheKey] = merged }
        return merged
    }

    override fun openHtmlAsset(path: String): FormatReaderWebResource? {
        return try {
            val zip = ensureZip() ?: return null
            val normalizedPath = normalizePath(
                try {
                    URLDecoder.decode(path.substringBefore('#').substringBefore('?'), "UTF-8")
                } catch (_: Exception) {
                    path.substringBefore('#').substringBefore('?')
                }
            )
            val header = findHeader(zip, normalizedPath) ?: return null
            val bytes = zip.getInputStream(header).use(InputStream::readBytes)
            val extension = header.fileName.substringAfterLast('.', "").lowercase()
            when (extension) {
                "css" -> {
                    val sanitizedCss = sanitizeAssetBackedEpubCss(
                        css = bytes.toString(detectCharset(bytes)),
                        cssEntryPath = header.fileName,
                        assetExists = { candidate -> findHeader(zip, candidate) != null }
                    )
                    FormatReaderWebResource(
                        mimeType = "text/css",
                        bytes = sanitizedCss.toByteArray(Charsets.UTF_8),
                        encoding = "UTF-8"
                    )
                }
                else -> {
                    val textEncoding = if (epubTextEncodingFor(extension) != null) {
                        detectCharset(bytes).name()
                    } else {
                        null
                    }
                    FormatReaderWebResource(
                        mimeType = epubMimeTypeFor(extension),
                        bytes = bytes,
                        encoding = textEncoding
                    )
                }
            }
        } catch (e: Exception) {
            safeLogW(TAG, "Failed to open EPUB asset: $path", e)
            null
        }
    }

    /** Extracts the content between <body> and </body> tags. */
    private fun extractBodyContent(html: String): String {
        val bodyStart = Regex("<body[^>]*>", RegexOption.IGNORE_CASE).find(html)
            ?.let { it.range.last + 1 } ?: 0
        val bodyEnd = html.lastIndexOf("</body>").let { if (it < 0) html.length else it }
        return html.substring(bodyStart, bodyEnd)
    }

    private fun extractWrappedBodyContent(html: String): String = runCatching {
        val document = Jsoup.parse(html)
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val body = document.body()
        val content = body.html()
        if (content.isBlank()) {
            ""
        } else {
            val wrapper = Document("").createElement("section")
            listOf("class", "style", "lang", "dir", "id").forEach { attr ->
                body.attr(attr).trim().takeIf { it.isNotBlank() }?.let { wrapper.attr(attr, it) }
            }
            wrapper.addClass("epub-merged-section")
            wrapper.html(content)
            wrapper.outerHtml()
        }
    }.getOrElse { extractBodyContent(html) }

    override fun getTableOfContents(): List<TocEntry> = lazyTocEntries

    override fun getFootnoteText(anchorId: String): String? {
        if (footnoteMap.isEmpty()) return null
        return epubFootnoteLookupCandidates(anchorId).firstNotNullOfOrNull { candidate ->
            footnoteMap[candidate]
        }
    }

    /**
     * Resolves a relative EPUB href like `chapter2.xhtml` or `chapter2.xhtml#anchor`
     * to the 0-based reader page index. When a fragment is present, prefer the
     * chunk that actually contains the target anchor instead of the first chunk
     * of the XHTML entry; otherwise TOC jumps can land with the heading far down
     * the page or on a previous reader page.
     */
    override fun resolveHrefToPage(href: String): Int? {
        val normalizedHref = href.trim()
        if (normalizedHref.isBlank()) return null
        val hrefWithoutQuery = normalizedHref.substringBefore('?')
        val filePart = hrefWithoutQuery.substringBefore('#').trim().trimStart('/')
        val fragment = hrefWithoutQuery.substringAfter('#', "").trim()

        if (fragment.isNotBlank()) {
            resolveAnchorHrefToPage(filePart, fragment)?.let { return mapLegacyPageIndexToSectionIndex(it) }
        }

        if (filePart.isBlank()) return null
        return resolveFileNameToPageIndex(filePart, parsed.pages)
            ?.let { mapLegacyPageIndexToSectionIndex(it) }
    }

    /** Maps legacy char-chunk page indices to spine-level section indices (Moon+ model). */
    private fun mapLegacyPageIndexToSectionIndex(legacyPageIndex: Int): Int {
        val sections = textDocumentSections
        if (sections.isEmpty()) return legacyPageIndex
        val page = pages.getOrNull(legacyPageIndex)
            ?: return legacyPageIndex.coerceIn(0, sections.lastIndex)
        val entry = when (page) {
            is EpubPage.Html -> page.entry
            is EpubPage.SyntheticHtml -> page.entry
            is EpubPage.Image -> page.entry
            else -> return legacyPageIndex.coerceIn(0, sections.lastIndex)
        }
        return sections.indexOfFirst { section ->
            val sectionId = section.id ?: return@indexOfFirst false
            sectionId.equals(entry, ignoreCase = true) ||
                sectionId.endsWith(entry, ignoreCase = true) ||
                entry.endsWith(sectionId, ignoreCase = true)
        }.takeIf { it >= 0 } ?: legacyPageIndex.coerceIn(0, sections.lastIndex)
    }

    override fun close() {
        synchronized(lock) {
            try { zipFile?.close() } catch (_: Exception) {}
            zipFile = null
            synchronized(htmlCache) { htmlCache.clear() }
            synchronized(textEntryCache) { textEntryCache.clear() }
            synchronized(pageHtmlCache) { pageHtmlCache.clear() }
            tempFile?.let { runCatching { it.delete() } }
            tempFile = null
        }
    }

    private fun buildPagesFromBlueprint(blueprint: ManifestBlueprint, zip: ZipFile): List<EpubPage> {
        val builtPages = buildPagesFromOpf(
            manifest = blueprint.manifest,
            spine = blueprint.spine,
            opfDir = blueprint.opfDir,
            zip = zip,
            forceWholeHtmlEntries = false,
            flavor = blueprint.flavor
        )
        return if (blueprint.repairFrontMatter) {
            buildPagesFromOpf(
                manifest = blueprint.manifest,
                spine = blueprint.spine,
                opfDir = blueprint.opfDir,
                zip = zip,
                forceWholeHtmlEntries = false,
                flavor = EPUB_FLAVOR_FB2,
                allowFallback = false
            ).ifEmpty { builtPages }
        } else {
            builtPages
        }
    }

    private fun buildTocFromBlueprint(
        blueprint: ManifestBlueprint,
        pages: List<EpubPage>,
        zip: ZipFile
    ): List<TocEntry> {
        val ncxId = blueprint.ncxId ?: return emptyList()
        val ncxHref = blueprint.manifest[ncxId] ?: return emptyList()
        return parseToc(zip, blueprint.opfDir, ncxHref, pages)
    }

    private fun currentCacheKey(): EpubCacheKey? {
        if (path.startsWith("content://")) return null
        val file = runCatching { File(path).canonicalFile }.getOrElse { File(path).absoluteFile }
        if (!file.isFile) return null
        return EpubCacheKey(
            filePath = file.path,
            fileSize = file.length(),
            lastModified = file.lastModified()
        )
    }

    private fun loadManifestFromCache(cacheKey: EpubCacheKey?): ManifestBlueprint? {
        if (cacheKey == null) return null
        val cacheDao = manifestCacheDao ?: return null
        val cachedEntry = runCatching {
            runBlocking { cacheDao.getByPath(cacheKey.filePath) }
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to load EPUB manifest cache", error)
            null
        } ?: return null
        if (cachedEntry.fileSize != cacheKey.fileSize || cachedEntry.lastModified != cacheKey.lastModified) {
            return null
        }
        return deserializeManifestBlueprint(cachedEntry.payloadJson)
    }

    private fun storeManifestInCache(cacheKey: EpubCacheKey?, blueprint: ManifestBlueprint) {
        if (cacheKey == null || blueprint.manifest.isEmpty() || blueprint.spine.isEmpty()) return
        val cacheDao = manifestCacheDao ?: return
        val payloadJson = runCatching { serializeManifestBlueprint(blueprint) }.getOrElse { error ->
            safeLogW(TAG, "Failed to serialize EPUB manifest cache", error)
            return
        }
        runCatching {
            runBlocking {
                cacheDao.upsert(
                    EpubManifestCacheEntity(
                        filePath = cacheKey.filePath,
                        fileSize = cacheKey.fileSize,
                        lastModified = cacheKey.lastModified,
                        payloadJson = payloadJson,
                        updatedAt = System.currentTimeMillis()
                    )
                )
                cacheDao.deleteOlderThan(System.currentTimeMillis() - EPUB_STRUCTURE_CACHE_MAX_AGE_MS)
            }
        }.onFailure { error ->
            safeLogW(TAG, "Failed to persist EPUB manifest cache", error)
        }
    }

    private fun loadParsedFromCache(cacheKey: EpubCacheKey?): ParsedEpub? {
        if (cacheKey == null) return null
        val cacheDao = structureCacheDao ?: return null
        val cachedEntry = runCatching {
            runBlocking { cacheDao.getByPath(cacheKey.filePath) }
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to load EPUB structure cache", error)
            null
        } ?: return null
        if (cachedEntry.fileSize != cacheKey.fileSize || cachedEntry.lastModified != cacheKey.lastModified) {
            return null
        }
        return deserializeParsedEpub(cachedEntry.payloadJson)
    }

    private fun storeParsedInCache(cacheKey: EpubCacheKey?, parsed: ParsedEpub) {
        if (cacheKey == null || parsed.pages.isEmpty()) return
        val cacheDao = structureCacheDao ?: return
        val payloadJson = runCatching { serializeParsedEpub(parsed) }.getOrElse { error ->
            safeLogW(TAG, "Failed to serialize EPUB structure cache", error)
            return
        }
        runCatching {
            runBlocking {
                cacheDao.upsert(
                    EpubStructureCacheEntity(
                        filePath = cacheKey.filePath,
                        fileSize = cacheKey.fileSize,
                        lastModified = cacheKey.lastModified,
                        payloadJson = payloadJson,
                        updatedAt = System.currentTimeMillis()
                    )
                )
                cacheDao.deleteOlderThan(System.currentTimeMillis() - EPUB_STRUCTURE_CACHE_MAX_AGE_MS)
            }
        }.onFailure { error ->
            safeLogW(TAG, "Failed to persist EPUB structure cache", error)
        }
    }

    private fun serializeManifestBlueprint(blueprint: ManifestBlueprint): String = CACHE_GSON.toJson(
        CachedManifestPayload(
            version = EPUB_MANIFEST_CACHE_VERSION,
            manifest = blueprint.manifest,
            spine = blueprint.spine,
            ncxId = blueprint.ncxId,
            opfDir = blueprint.opfDir,
            flavor = blueprint.flavor,
            repairFrontMatter = blueprint.repairFrontMatter
        )
    )

    private fun deserializeManifestBlueprint(payloadJson: String): ManifestBlueprint? = runCatching {
        val payload = CACHE_GSON.fromJson(payloadJson, CachedManifestPayload::class.java)
        if (payload.version != EPUB_MANIFEST_CACHE_VERSION) return@runCatching null
        if (payload.manifest.isEmpty() || payload.spine.isEmpty()) return@runCatching null
        ManifestBlueprint(
            manifest = payload.manifest,
            spine = payload.spine,
            ncxId = payload.ncxId,
            opfDir = payload.opfDir,
            flavor = payload.flavor.ifBlank { EPUB_FLAVOR_STANDARD },
            repairFrontMatter = payload.repairFrontMatter
        )
    }.getOrElse { error ->
        safeLogW(TAG, "Failed to deserialize EPUB manifest cache", error)
        null
    }

    private fun serializeParsedEpub(parsed: ParsedEpub): String = CACHE_GSON.toJson(
        CachedParsedEpubPayload(
            version = EPUB_STRUCTURE_CACHE_VERSION,
            pages = parsed.pages.map { it.toCachedPage() }
        )
    )

    private fun deserializeParsedEpub(payloadJson: String): ParsedEpub? = runCatching {
        val payload = CACHE_GSON.fromJson(payloadJson, CachedParsedEpubPayload::class.java)
        if (payload.version != EPUB_STRUCTURE_CACHE_VERSION) return@runCatching null
        val pages = payload.pages.mapNotNull { it.toEpubPage() }
        if (pages.isEmpty()) return@runCatching null

        ParsedEpub(pages = pages)
    }.getOrElse { error ->
        safeLogW(TAG, "Failed to deserialize EPUB structure cache", error)
        null
    }

    private fun EpubPage.toCachedPage(): CachedPage = when (this) {
        is EpubPage.Image -> CachedPage(
            type = "image",
            entry = entry
        )
        is EpubPage.Html -> CachedPage(
            type = "html",
            entry = entry,
            opfDir = opfDir,
            chunkIndex = chunkIndex,
            totalChunks = totalChunks,
            extraEntries = extraEntries
        )
        is EpubPage.SyntheticHtml -> CachedPage(
            type = "synthetic",
            entry = entry,
            html = html,
            chunkIndex = chunkIndex,
            totalChunks = totalChunks,
            sourceEntries = sourceEntries
        )
    }

    private fun CachedPage.toEpubPage(): EpubPage? = when (type) {
        "image" -> entry.trim().takeIf { it.isNotBlank() }?.let(EpubPage::Image)
        "html" -> entry.trim().takeIf { it.isNotBlank() }?.let {
            EpubPage.Html(
                entry = it,
                opfDir = opfDir.orEmpty(),
                chunkIndex = chunkIndex,
                totalChunks = totalChunks.coerceAtLeast(1),
                extraEntries = extraEntries
            )
        }
        "synthetic" -> {
            val normalizedEntry = entry.trim()
            val normalizedHtml = html.orEmpty()
            if (normalizedEntry.isBlank() || normalizedHtml.isBlank()) null else {
                EpubPage.SyntheticHtml(
                    entry = normalizedEntry,
                    html = normalizedHtml,
                    chunkIndex = chunkIndex,
                    totalChunks = totalChunks.coerceAtLeast(1),
                    sourceEntries = sourceEntries
                )
            }
        }
        else -> null
    }

    // ── Page list construction ────────────────────────────────────────────────

    private fun buildPagesFromOpf(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile,
        forceWholeHtmlEntries: Boolean = false,
        flavor: String = EPUB_FLAVOR_STANDARD,
        allowFallback: Boolean = true
    ): List<EpubPage> {
        // ── First pass: build one EpubPage per spine item ────────────────────────
        val rawResult = mutableListOf<EpubPage>()
        val htmlVisibleChars = mutableMapOf<String, Int>()
        val imageOnlyHtmlEntries = mutableSetOf<String>()
        val keepWholeBodyEntries = mutableSetOf<String>()
        val protectedFrontMatterEntries = mutableSetOf<String>()

        val isSpecialFlavor = flavor in setOf(EPUB_FLAVOR_FB2, EPUB_FLAVOR_CALIBRE, EPUB_FLAVOR_PUBLISHER)

        spineLoop@ for (idref in spine) {
            val rawHref = manifest[idref] ?: continue
            val hrefDecoded = try { URLDecoder.decode(rawHref, "UTF-8") } catch (_: Exception) { rawHref }
            val href = hrefDecoded.substringBefore('#')
            val entry = normalizePath(if (opfDir.isEmpty()) href else "$opfDir/$href")
            val ext   = entry.substringAfterLast('.', "").lowercase()
            val header = findHeader(zip, entry) ?: continue
            when {
                ext in IMAGE_EXTENSIONS ->
                    rawResult.add(EpubPage.Image(entry))
                ext in XHTML_EXTENSIONS -> {
                    val isProtectedFrontMatter = isProtectedFrontMatterEntry(entry)
                    if (isProtectedFrontMatter) {
                        protectedFrontMatterEntries += entry
                    }
                    val estimate = if (forceWholeHtmlEntries || isProtectedFrontMatter) {
                        EpubContentEstimate(
                            textCharCount = 1,
                            imageTagCount = 0,
                            chunkCount = 1,
                            keepWholeBody = true
                        )
                    } else {
                        // Always inspect the XHTML body, even for tiny files. Some EPUBs keep
                        // frontispiece/title/illustration wrappers very small (often just an
                        // <svg>, <img>, <object> or a short redirect-like body). Treating files
                        // <=150 bytes as empty dropped valid visual pages from the spine.
                        estimateContent(zip, entry)
                    }
                    val charCount = estimate.textCharCount
                    val imgCount = estimate.imageTagCount
                    htmlVisibleChars[entry] = charCount.coerceAtLeast(if (imgCount > 0) 1 else 0)
                    if (charCount == 0 && imgCount > 0) {
                        imageOnlyHtmlEntries += entry
                    }
                    if (estimate.keepWholeBody) {
                        keepWholeBodyEntries += entry
                    }
                    // Skip structurally-empty pages: no text AND no images.
                    // Image-only wrapper pages (charCount=0, imgCount>0) are kept as a single page.
                    if (charCount == 0 && imgCount == 0) {
                        if (isSpecialFlavor && header.uncompressedSize > 0) {
                             // Fallback for special flavors: always include if it has content
                             rawResult.add(EpubPage.Html(entry, opfDir, 0, 1))
                        }
                        continue@spineLoop
                    }
                    val chunks = estimate.chunkCount
                    repeat(chunks) { i -> rawResult.add(EpubPage.Html(entry, opfDir, i, chunks)) }
                }
            }
        }

        if (isSpecialFlavor) {
            return if (rawResult.isNotEmpty()) rawResult else if (allowFallback) fallbackContentPages(zip) else emptyList()
        }

        // ── Second pass: normalize note sections and only then merge tiny leftovers ──
        val normalized = mutableListOf<EpubPage>()
        var i = 0
        while (i < rawResult.size) {
            val pg = rawResult[i]
            if (pg is EpubPage.Html && pg.totalChunks == 1 && isNotesTitlePage(zip, pg.entry)) {
                val noteEntries = mutableListOf<String>()
                var j = i + 1
                while (j < rawResult.size) {
                    val nxt = rawResult[j] as? EpubPage.Html ?: break
                    if (nxt.totalChunks != 1 || !isFootnotePage(zip, nxt.entry)) break
                    noteEntries.add(nxt.entry)
                    j++
                }
                if (noteEntries.isNotEmpty()) {
                    normalized.addAll(buildSyntheticNotePages(pg.entry, noteEntries, zip))
                    i = j
                    continue
                }
            }
            normalized.add(pg)
            i++
        }

        val merged = mutableListOf<EpubPage>()
        val mergeVisibleCharsLimit = CHARS_PER_PAGE.coerceAtMost(1_900)

        fun isMergeSafePage(page: EpubPage.Html): Boolean {
            if (page.totalChunks != 1) return false
            if (isNotesTitlePage(zip, page.entry) || isFootnotePage(zip, page.entry)) return false
            if (page.entry in imageOnlyHtmlEntries) return false
            if (isTitleOnlySpinePage(zip, page.entry)) return true
            if (page.entry in keepWholeBodyEntries) return false
            if (page.entry in protectedFrontMatterEntries) return false
            return true
        }

        fun mergeWeight(page: EpubPage.Html): Int =
            htmlVisibleChars[page.entry]?.coerceAtLeast(if (page.entry in imageOnlyHtmlEntries) 1 else 0)
                ?: if (page.entry in imageOnlyHtmlEntries) 1 else 0

        i = 0
        while (i < normalized.size) {
            val pg = normalized[i]
            if (pg is EpubPage.Html && isMergeSafePage(pg)) {
                val startWeight = mergeWeight(pg)
                val startIsImageOnly = pg.entry in imageOnlyHtmlEntries
                val startIsTitleOnly = isTitleOnlySpinePage(zip, pg.entry)
                val startIsTinyText = startWeight in 1 until mergeVisibleCharsLimit
                if (!startIsImageOnly && !startIsTinyText && !startIsTitleOnly) {
                    merged.add(pg)
                    i++
                    continue
                }
                val mergeLimit = when {
                    startIsImageOnly -> 420
                    startIsTitleOnly -> CHARS_PER_PAGE * 2
                    pg.entry in keepWholeBodyEntries -> 420
                    else -> mergeVisibleCharsLimit
                }
                val extras = mutableListOf<String>()
                var combinedWeight = startWeight.coerceAtLeast(1)
                var mergedBodyFollowUp = false
                var j = i + 1
                while (j < normalized.size) {
                    val nxt = normalized[j]
                    if (nxt !is EpubPage.Html || !isMergeSafePage(nxt)) break
                    val nxtWeight = mergeWeight(nxt)
                    val nxtIsImageOnly = nxt.entry in imageOnlyHtmlEntries
                    val nxtIsTinyText = nxtWeight in 1 until mergeVisibleCharsLimit
                    val needsBodyFollowUp = startIsTitleOnly && !mergedBodyFollowUp
                    if (!nxtIsImageOnly && !nxtIsTinyText) {
                        if (!needsBodyFollowUp) break
                        if (combinedWeight + nxtWeight > mergeLimit) break
                        extras.add(nxt.entry)
                        combinedWeight += nxtWeight
                        mergedBodyFollowUp = true
                        j++
                        break
                    }
                    if (combinedWeight + nxtWeight > mergeLimit) break
                    if (extras.size >= 4) break
                    extras.add(nxt.entry)
                    combinedWeight += nxtWeight
                    j++
                }
                merged.add(pg.copy(extraEntries = extras))
                i = j
                continue
            }
            merged.add(pg)
            i++
        }

        val filtered = merged.filterNot { page ->
            when (page) {
                is EpubPage.Html -> {
                    if (page.entry in imageOnlyHtmlEntries) return@filterNot false
                    val primaryWeight = htmlVisibleChars[page.entry] ?: 0
                    val extraWeight = page.extraEntries.sumOf { htmlVisibleChars[it] ?: 0 }
                    primaryWeight + extraWeight <= 0
                }
                else -> false
            }
        }

        return if (filtered.isNotEmpty()) filtered else if (allowFallback) fallbackContentPages(zip) else emptyList()
    }


    private fun hasExpectedFb2FrontMatter(pages: List<EpubPage>): Boolean {
        val coverIndex = resolveFileNameToPageIndex("cover.xhtml", pages)
        val titleIndex = resolveFileNameToPageIndex("ch1.xhtml", pages)
        return coverIndex == 0 && titleIndex == 1
    }

    private fun shouldRepairFrontMatter(
        opfText: String,
        manifest: Map<String, String>,
        spine: List<String>
    ): Boolean {
        if (!opfText.contains("cover.xhtml", ignoreCase = true)) return false
        if (!opfText.contains("ch1.xhtml", ignoreCase = true)) return false
        val normalizedEntries = spine.mapNotNull { idRef ->
            manifest[idRef]
                ?.substringBefore('#')
                ?.let { rawHref ->
                    val decoded = try { URLDecoder.decode(rawHref, "UTF-8") } catch (_: Exception) { rawHref }
                    normalizePath(decoded)
                }
        }
        val coverIndex = normalizedEntries.indexOfFirst { it.endsWith("cover.xhtml", ignoreCase = true) }
        val titleIndex = normalizedEntries.indexOfFirst { it.endsWith("ch1.xhtml", ignoreCase = true) }
        if (coverIndex < 0 || titleIndex < 0) return false
        return coverIndex != 0 || titleIndex != 1
    }

    private fun detectPublisherEpub(
        opfText: String,
        manifest: Map<String, String>,
        spine: List<String>
    ): Boolean {
        val lowerOpf = opfText.lowercase()
        if ("oreilly" in lowerOpf || "early release" in lowerOpf) return true
        if (manifest.values.any { href ->
                href.contains("titlepage", ignoreCase = true) ||
                    href.contains("copyright-page", ignoreCase = true) ||
                    href.contains("toc01.html", ignoreCase = true)
            }) {
            return true
        }
        return spine.size >= 4 && manifest.values.any { it.contains("cover.xhtml", ignoreCase = true) }
    }

    private fun findOpfEntry(zip: ZipFile): String? {
        val containerHeader = zip.getFileHeader("META-INF/container.xml")
        val fromContainer = containerHeader?.let { header ->
            zip.getInputStream(header).use { stream ->
                val containerXml = decodeEpubText(stream.readBytes())
                Regex("""full-path\s*=\s*["']([^"']+\.opf)["']""", RegexOption.IGNORE_CASE)
                    .find(containerXml)
                    ?.groupValues
                    ?.getOrNull(1)
                    ?.let { rawPath ->
                        try { URLDecoder.decode(rawPath, "UTF-8") } catch (_: Exception) { rawPath }
                    }
            }
        }
        if (!fromContainer.isNullOrBlank()) return fromContainer
        return zip.fileHeaders
            .firstOrNull { !it.isDirectory && it.fileName.endsWith(".opf", ignoreCase = true) }
            ?.fileName
    }

    /**
     * Parses an OPF file and returns (manifest, spine, ncxId).
     * ncxId is the manifest id of the NCX toc document, or null if not found.
     */
    private fun parseOpf(stream: InputStream): Triple<Map<String, String>, List<String>, String?> {
        val bytes = stream.readBytes()
        val rawOpf = bytes.toString(detectCharset(bytes))
        return parseOpfFallback(rawOpf)
    }

    private fun parseOpfFallback(rawOpf: String): Triple<Map<String, String>, List<String>, String?> {

        val manifest = linkedMapOf<String, String>()
        val spine = mutableListOf<String>()
        val document = Jsoup.parse(rawOpf, "", JsoupXmlParser.xmlParser())
        val spineElement = document.selectFirst("spine")
        var ncxId = spineElement?.attr("toc")?.trim().takeUnless { it.isNullOrBlank() }

        document.select("manifest > item").forEach { item ->
            val id = item.attr("id").trim()
            val href = item.attr("href").trim()
            if (id.isNotBlank() && href.isNotBlank()) {
                manifest[id] = href
                val mediaType = item.attr("media-type").trim()
                val properties = item.attr("properties").trim()
                if (mediaType.equals("application/x-dtbncx+xml", ignoreCase = true)) {
                    ncxId = id
                }
                if (properties.contains("nav", ignoreCase = true)) {
                    ncxId = id
                }
            }
        }

        spineElement?.select("itemref")?.forEach { itemRef ->
            val idRef = itemRef.attr("idref").trim()
            val linear = itemRef.attr("linear").trim().ifBlank { "yes" }
            if (idRef.isNotBlank() && !linear.equals("no", ignoreCase = true)) {
                spine += idRef
            }
        }

        if (manifest.isNotEmpty() && spine.isNotEmpty()) {
            return Triple(manifest, spine, ncxId)
        }
        return parseOpfRegexFallback(rawOpf, ncxId)
    }

    private fun parseOpfRegexFallback(
        rawOpf: String,
        existingNcxId: String? = null
    ): Triple<Map<String, String>, List<String>, String?> {
        val manifest = linkedMapOf<String, String>()
        val spine = mutableListOf<String>()
        var ncxId = existingNcxId

        val itemRegex = Regex("""<item\b([^>]*)/?>""", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
        val itemRefRegex = Regex("""<itemref\b([^>]*)/?>""", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
        val spineRegex = Regex("""<spine\b([^>]*)>""", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))

        fun attrValue(attrs: String, name: String): String? =
            Regex("""\b$name\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
                .find(attrs)
                ?.groupValues
                ?.getOrNull(1)
                ?.trim()
                ?.takeIf { it.isNotEmpty() }

        spineRegex.find(rawOpf)?.groupValues?.getOrNull(1)?.let { attrs ->
            ncxId = ncxId ?: attrValue(attrs, "toc")
        }

        itemRegex.findAll(rawOpf).forEach { match ->
            val attrs = match.groupValues[1]
            val id = attrValue(attrs, "id") ?: return@forEach
            val href = attrValue(attrs, "href") ?: return@forEach
            manifest[id] = href
            val mediaType = attrValue(attrs, "media-type").orEmpty()
            val properties = attrValue(attrs, "properties").orEmpty()
            if (ncxId == null && mediaType.equals("application/x-dtbncx+xml", ignoreCase = true)) {
                ncxId = id
            }
            if (ncxId == null && properties.contains("nav", ignoreCase = true)) {
                ncxId = id
            }
        }

        itemRefRegex.findAll(rawOpf).forEach { match ->
            val attrs = match.groupValues[1]
            val idRef = attrValue(attrs, "idref") ?: return@forEach
            val linear = attrValue(attrs, "linear").orEmpty()
            if (!linear.equals("no", ignoreCase = true)) {
                spine += idRef
            }
        }

        return Triple(manifest, spine, ncxId)
    }

    /**
     * Parses the NCX (EPUB2) or nav.xhtml (EPUB3) document to build a chapter TOC.
     * Maps each navPoint's content src to a page index in [pages].
     */
    private fun parseToc(
        zip: ZipFile,
        opfDir: String,
        ncxHref: String,
        pages: List<EpubPage>
    ): List<TocEntry> {
        val decoded = try { URLDecoder.decode(ncxHref, "UTF-8") } catch (_: Exception) { ncxHref }
        val ncxEntry = normalizePath(if (opfDir.isEmpty()) decoded else "$opfDir/$decoded")
        val header = findHeader(zip, ncxEntry) ?: run {
            safeLogW(TAG, "TOC file not found: $ncxEntry")
            return emptyList()
        }

        return try {
            val ext = ncxEntry.substringAfterLast('.', "").lowercase()
            if (ext == "ncx") parseNcx(zip, header, ncxEntry, opfDir, pages)
            else parseNavXhtml(zip, header, ncxEntry, opfDir, pages)
        } catch (e: Exception) {
            safeLogW(TAG, "TOC parse failed for $ncxEntry", e)
            emptyList()
        }
    }

    /** Parse EPUB2 NCX file. */
    private fun parseNcx(
        zip: ZipFile,
        header: FileHeader,
        ncxEntry: String,
        opfDir: String,
        pages: List<EpubPage>
    ): List<TocEntry> {
        data class RawNav(val title: String, val src: String, val order: Int)

        val raw = zip.getInputStream(header).use { stream ->
            val bytes = stream.readBytes()
            bytes.toString(detectCharset(bytes))
        }
        val document = Jsoup.parse(raw, "", JsoupXmlParser.xmlParser())
        document.outputSettings(Document.OutputSettings().prettyPrint(false))

        val result = document.getElementsByTag("navPoint")
            .mapNotNull { navPoint ->
                val title = navPoint.getElementsByTag("text").firstOrNull()
                    ?.text()
                    ?.trim()
                    .orEmpty()
                val src = navPoint.getElementsByTag("content").firstOrNull()
                    ?.attr("src")
                    ?.trim()
                    .orEmpty()
                val order = navPoint.attr("playOrder").toIntOrNull() ?: 0
                if (title.isBlank() || src.isBlank()) null else RawNav(title, src, order)
            }
        val ncxDir = ncxEntry.substringBeforeLast('/', "")
        return result.sortedBy { it.order }.mapNotNull { nav ->
            // Filter out footnote/note entries from NCX
            if (isFootnoteTocEntry(nav.src, nav.title)) return@mapNotNull null
            val href = try { URLDecoder.decode(nav.src, "UTF-8") } catch (_: Exception) { nav.src }
            srcToPageIndex(href, ncxDir, pages, fallbackBaseDir = opfDir)?.let { TocEntry(nav.title, it) }
        }
    }

    /** Parse EPUB3 nav.xhtml file (looks for <nav epub:type="toc"> or first <nav>). */
    private fun parseNavXhtml(
        zip: ZipFile,
        header: FileHeader,
        navEntry: String,
        opfDir: String,
        pages: List<EpubPage>
    ): List<TocEntry> {
        val raw = zip.getInputStream(header).use { decodeEpubText(it.readBytes()) }
        val navDir = navEntry.substringBeforeLast('/', "")

        // Extract all <a href="...">text</a> from the nav document, in order.
        val linkRe = Regex("""<a\b[^>]+\bhref\s*=\s*["']([^"'#][^"']*)["'][^>]*>(.*?)</a>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
        val result = mutableListOf<TocEntry>()
        for (match in linkRe.findAll(raw)) {
            val href  = try { URLDecoder.decode(match.groupValues[1], "UTF-8") } catch (_: Exception) { match.groupValues[1] }
            val title = HTML_TAG_RE.replace(match.groupValues[2], "").trim()
            if (title.isEmpty()) continue
            // Filter out footnote/note links that should not appear as chapters
            if (isFootnoteTocEntry(href, title)) continue
            val pageIdx = srcToPageIndex(href, navDir, pages, fallbackBaseDir = opfDir) ?: continue
            result.add(TocEntry(title, pageIdx))
        }
        return result
    }

    /**
     * Returns true if this TOC entry is a footnote/note reference that should
     * be filtered out of the chapter list. Common patterns from FB2EPUB and
     * other converters: FbAutId_*, #fn*, #note*, numeric-only titles, etc.
     */
    private fun isFootnoteTocEntry(href: String, title: String): Boolean {
        val lowerHref = href.lowercase()
        // FB2EPUB footnote anchors
        if (lowerHref.contains("fbautid_")) return true
        // Common footnote ID patterns
        if (lowerHref.contains("#fn") || lowerHref.contains("#footnote") ||
            lowerHref.contains("#note") || lowerHref.contains("#endnote") ||
            lowerHref.contains("#rearnote") || lowerHref.contains("#noteref")) return true
        // fbanchor:// scheme
        if (lowerHref.startsWith("fbanchor://") || lowerHref.startsWith("fbanchor:")) return true
        // Pure numeric titles (1, 2, 3...) from footnote lists
        if (title.matches(Regex("^\\d{1,4}$"))) return true
        // Known footnote section names
        val lowerTitle = title.lowercase().trim()
        if (lowerTitle in setOf("notes", "note", "footnotes", "endnotes", "endnote",
                "примечания", "примечание", "сноски", "сноска",
                "annotations", "annotation")) return true
        return false
    }

    /**
     * Resolves an href (relative to [baseDir]) to the 0-based reader page index
     * of the first chunk of the matching spine item, or null if not found.
     */
    private fun srcToPageIndex(
        href: String,
        baseDir: String,
        pages: List<EpubPage>,
        fallbackBaseDir: String? = null
    ): Int? {
        val filePart = href.substringBefore('#').trim().trimStart('/')
        if (filePart.isBlank()) return null
        val legacyIndex = findPageIndexByEntryCandidates(
            pages = pages,
            candidates = buildEntryCandidates(filePart, baseDir, fallbackBaseDir)
        ) ?: return null
        return mapLegacyPageIndexToSectionIndex(legacyIndex)
    }

    private fun pageContainsEntry(
        page: EpubPage,
        entry: String,
        suffixMatch: Boolean = false
    ): Boolean {
        val htmlPage = page as? EpubPage.Html ?: return false
        val candidates = buildList {
            add(htmlPage.entry)
            addAll(htmlPage.extraEntries)
        }
        return candidates.any { candidate ->
            if (suffixMatch) {
                candidate.endsWith(entry, ignoreCase = true)
            } else {
                candidate.equals(entry, ignoreCase = true)
            }
        }
    }

    private fun resolveFileNameToPageIndex(filePart: String, pages: List<EpubPage>): Int? {
        return findPageIndexByEntryCandidates(
            pages = pages,
            candidates = buildEntryCandidates(filePart)
        )
    }

    private fun resolveAnchorHrefToPage(filePart: String, fragment: String): Int? {
        val decodedFragment = try {
            URLDecoder.decode(fragment, "UTF-8")
        } catch (_: Exception) {
            fragment
        }.trim()
        val anchorCandidates = listOf(fragment, decodedFragment)
            .map { it.trim() }
            .filter { it.isNotBlank() }
            .distinct()
        if (anchorCandidates.isEmpty()) return null

        val entryCandidates = if (filePart.isBlank()) {
            emptyList()
        } else {
            buildEntryCandidates(filePart)
        }

        return parsed.pages.indices.firstOrNull { index ->
            val page = parsed.pages[index]
            (entryCandidates.isEmpty() || pageMatchesEntryCandidates(page, entryCandidates)) &&
                pageContainsAnyAnchor(page, anchorCandidates)
        }
    }

    private fun pageMatchesEntryCandidates(page: EpubPage, candidates: List<String>): Boolean {
        return candidates.any { candidate ->
            when (page) {
                is EpubPage.Html -> pageContainsEntry(page, candidate) ||
                    pageContainsEntry(page, candidate, suffixMatch = true)
                is EpubPage.SyntheticHtml ->
                    page.entry.equals(candidate, ignoreCase = true) ||
                        page.entry.endsWith(candidate, ignoreCase = true) ||
                        page.sourceEntries.any { it.equals(candidate, ignoreCase = true) } ||
                        page.sourceEntries.any { it.endsWith(candidate, ignoreCase = true) }
                else -> false
            }
        }
    }

    private fun pageContainsAnyAnchor(page: EpubPage, anchors: List<String>): Boolean {
        return when (page) {
            is EpubPage.Html -> {
                val primaryHtml = readTextEntryForPageChunk(page.entry, page.chunkIndex, page.totalChunks)
                if (primaryHtml != null && htmlContainsAnyAnchor(primaryHtml, anchors)) {
                    return true
                }
                page.extraEntries.any { entry ->
                    readTextEntry(ensureZip() ?: return@any false, entry)
                        ?.let { htmlContainsAnyAnchor(it, anchors) }
                        ?: false
                }
            }
            is EpubPage.SyntheticHtml -> htmlContainsAnyAnchor(page.html, anchors)
            else -> false
        }
    }

    private fun readTextEntryForPageChunk(entry: String, chunkIndex: Int, totalChunks: Int): String? {
        val zip = ensureZip() ?: return null
        val raw = readTextEntry(zip, entry) ?: return null
        return if (totalChunks <= 1) {
            raw
        } else {
            extractChunk(raw, chunkIndex, totalChunks)
        }
    }

    private fun htmlContainsAnyAnchor(html: String, anchors: List<String>): Boolean = runCatching {
        val document = Jsoup.parse(html)
        document.select("[id], a[name]").any { element ->
            val id = element.id().trim()
            val name = element.attr("name").trim()
            anchors.any { anchor ->
                id.equals(anchor, ignoreCase = true) || name.equals(anchor, ignoreCase = true)
            }
        }
    }.getOrDefault(false)

    private fun buildEntryCandidates(
        filePart: String,
        vararg baseDirs: String?
    ): List<String> {
        val normalizedFilePart = normalizePath(filePart.trimStart('/'))
        val fileNameOnly = normalizedFilePart.substringAfterLast('/')
        return buildSet {
            add(normalizedFilePart)
            if (fileNameOnly.isNotBlank()) add(fileNameOnly)
            baseDirs.forEach { rawBaseDir ->
                val trimmedBaseDir = rawBaseDir
                    ?.trim()
                    ?.trim('/')
                    .orEmpty()
                if (trimmedBaseDir.isNotBlank()) {
                    add(normalizePath("$trimmedBaseDir/$normalizedFilePart"))
                    if (fileNameOnly.isNotBlank()) {
                        add(normalizePath("$trimmedBaseDir/$fileNameOnly"))
                    }
                }
            }
        }.toList()
    }

    private fun findPageIndexByEntryCandidates(
        pages: List<EpubPage>,
        candidates: List<String>
    ): Int? {
        candidates.forEach { candidate ->
            val exactIdx = pages.indexOfFirst { page ->
                when (page) {
                    is EpubPage.Html -> page.chunkIndex == 0 && pageContainsEntry(page, candidate)
                    is EpubPage.SyntheticHtml -> page.chunkIndex == 0 && (
                        page.entry.equals(candidate, ignoreCase = true) ||
                            page.sourceEntries.any { it.equals(candidate, ignoreCase = true) }
                        )
                    else -> false
                }
            }
            if (exactIdx >= 0) return exactIdx
        }
        candidates.forEach { candidate ->
            val suffixIdx = pages.indexOfFirst { page ->
                when (page) {
                    is EpubPage.Html -> page.chunkIndex == 0 && pageContainsEntry(page, candidate, suffixMatch = true)
                    is EpubPage.SyntheticHtml -> page.chunkIndex == 0 && (
                        page.entry.endsWith(candidate, ignoreCase = true) ||
                            page.sourceEntries.any { it.endsWith(candidate, ignoreCase = true) }
                        )
                    else -> false
                }
            }
            if (suffixIdx >= 0) return suffixIdx
        }
        return null
    }

    private val NAV_FILE_RE = Regex("""(?:toc|nav|navigation|ncx|contents?)""", RegexOption.IGNORE_CASE)
    private val FRONT_MATTER_ENTRY_RE = Regex(
        """(?:^|[/._-])(?:cover|titlepage|title-page|frontispiece|frontis|half[-_ ]?title|copyright|toc\d*|contents?|preface|foreword|introduction|dedication|epigraph|colophon)(?:[/._-]|$)""",
        RegexOption.IGNORE_CASE
    )

    private fun fallbackContentPages(zip: ZipFile): List<EpubPage> =
        zip.fileHeaders
            .filter { !it.isDirectory }
            .sortedBy { it.fileName }
            .mapNotNull { header ->
                val name = header.fileName.substringAfterLast('/')
                val ext  = name.substringAfterLast('.', "").lowercase()
                val base = name.substringBeforeLast('.')
                when {
                    ext in IMAGE_EXTENSIONS -> EpubPage.Image(header.fileName)
                    ext in XHTML_EXTENSIONS &&
                        !NAV_FILE_RE.containsMatchIn(base) &&
                        shouldIncludeFallbackHtml(zip, header) ->
                        EpubPage.Html(header.fileName, header.fileName.substringBeforeLast('/', ""))
                    else -> null
                }
            }

    private fun isProtectedFrontMatterEntry(entry: String): Boolean {
        val normalized = entry.replace('\\', '/')
        val fileName = normalized.substringAfterLast('/')
        val pathLike = normalized.substringBeforeLast('.', normalized)
        val nameLike = fileName.substringBeforeLast('.', fileName)
        return FRONT_MATTER_ENTRY_RE.containsMatchIn(pathLike) ||
            FRONT_MATTER_ENTRY_RE.containsMatchIn(nameLike)
    }

    private fun shouldIncludeFallbackHtml(zip: ZipFile, header: FileHeader): Boolean {
        if (header.isDirectory) return false
        val raw = readTextEntry(zip, header.fileName) ?: return false
        val document = Jsoup.parse(raw)
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val body = document.body()
        val visibleText = body.text()
            .replace('\u00A0', ' ')
            .trim()
        val hasMedia = body.select("img,svg,image,object[type^=image],figure img").isNotEmpty() ||
            raw.contains("<svg", ignoreCase = true)
        val hasContent = visibleText.isNotBlank() || hasMedia
        if (!hasContent) return false
        if (header.uncompressedSize in 1..500L && visibleText.isBlank() && !hasMedia) {
            return false
        }
        return true
    }

    private fun readTextEntry(zip: ZipFile, entry: String): String? {
        synchronized(textEntryCache) { textEntryCache[entry] }?.let { return it }
        val header = findHeader(zip, entry) ?: return null
        return try {
            val text = zip.getInputStream(header).use { stream ->
                val bytes = stream.readBytes()
                detectCharset(bytes).let { bytes.toString(it) }
            }
            if (text.length <= MAX_CACHED_TEXT_ENTRY_CHARS) {
                synchronized(textEntryCache) { textEntryCache[entry] = text }
            }
            text
        } catch (_: Exception) {
            null
        }
    }

    private fun isHeadingOnlySpinePage(zip: ZipFile, entry: String): Boolean {
        val raw = readTextEntry(zip, entry) ?: return false
        val document = Jsoup.parse(raw)
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val body = document.body() ?: return false
        val visibleText = body.text()
            .replace('\u00A0', ' ')
            .trim()
        if (visibleText.length > 160) return false
        if (body.select("img,svg,image,figure").isNotEmpty()) return false
        val hasHeading = body.select("h1,h2,h3,h4").isNotEmpty()
        val hasBodyText = body.select("p,li,blockquote,pre,td").any { element ->
            element.text().replace('\u00A0', ' ').trim().isNotBlank()
        }
        return hasHeading && !hasBodyText
    }

    private fun isTitleOnlySpinePage(zip: ZipFile, entry: String): Boolean {
        if (isHeadingOnlySpinePage(zip, entry)) return true
        val raw = readTextEntry(zip, entry) ?: return false
        val document = Jsoup.parse(raw)
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val body = document.body() ?: return false
        val visibleText = body.text()
            .replace('\u00A0', ' ')
            .trim()
        if (visibleText.length > 160) return false
        if (body.select("img,svg,image,figure").isNotEmpty()) return false
        val titleLike = CHAPTER_TITLE_RE.containsMatchIn(visibleText) ||
            (visibleText.length <= 80 && body.select("p,div,h1,h2,h3,h4").size <= 2)
        if (!titleLike) return false
        return !body.select("p,li,blockquote,pre,td").any { element ->
            val text = element.text().replace('\u00A0', ' ').trim()
            text.isNotBlank() && text.length > 48 && !CHAPTER_TITLE_RE.containsMatchIn(text)
        }
    }

    private fun isNotesTitlePage(zip: ZipFile, entry: String): Boolean {
        val raw = readTextEntry(zip, entry) ?: return false
        return EpubFootnoteParser.hasNotesTitle(raw)
    }

    private fun isFootnotePage(zip: ZipFile, entry: String): Boolean =
        extractFootnoteItems(zip, entry).isNotEmpty()

    private fun buildFootnoteMap(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile
    ): Map<String, String> {
        val result = linkedMapOf<String, String>()
        for (idref in spine) {
            val rawHref = manifest[idref] ?: continue
            val hrefDecoded = try { URLDecoder.decode(rawHref, "UTF-8") } catch (_: Exception) { rawHref }
            val href = hrefDecoded.substringBefore('#')
            val entry = normalizePath(if (opfDir.isEmpty()) href else "$opfDir/$href")
            val ext = entry.substringAfterLast('.', "").lowercase()
            if (ext !in XHTML_EXTENSIONS) continue
            extractFootnoteItems(zip, entry).forEach { note ->
                result.putIfAbsent(note.anchorId, note.text)
            }
        }
        return result
    }

    private fun epubFootnoteLookupCandidates(anchorId: String): List<String> {
        val raw = anchorId.trim()
        if (raw.isBlank()) return emptyList()
        val withoutScheme = raw
            .removePrefix("noteref://")
            .removePrefix("noteref:")
            .removePrefix("fbanchor://")
        val decoded = runCatching { URLDecoder.decode(withoutScheme, "UTF-8") }
            .getOrDefault(withoutScheme)
            .trim()
        val fragment = decoded.substringAfter('#', decoded)
            .substringAfterLast('/')
            .trim()
            .trimStart('#')
        val fileAndFragment = decoded.trimStart('/')
        return listOf(
            raw,
            decoded,
            fileAndFragment,
            fragment,
            "#$fragment"
        ).map { it.trim() }
            .filter { it.isNotEmpty() && it != "#" }
            .distinct()
    }

    private fun extractFootnoteItems(zip: ZipFile, entry: String): List<EpubFootnoteItem> {
        val raw = readTextEntry(zip, entry) ?: return emptyList()
        return EpubFootnoteParser.extractItems(raw)
    }

    private fun buildSyntheticNotePages(titleEntry: String, noteEntries: List<String>, zip: ZipFile): List<EpubPage> {
        val noteItems = noteEntries.flatMap { sourceEntry ->
            extractFootnoteItems(zip, sourceEntry).map { item -> sourceEntry to item }
        }
        if (noteItems.isEmpty()) {
            return listOf(
                EpubPage.SyntheticHtml(
                    entry = titleEntry,
                    html = buildSyntheticHtml("", includeTitle = true),
                    chunkIndex = 0,
                    totalChunks = 1,
                    sourceEntries = noteEntries
                )
            )
        }

        val bodyChunks = mutableListOf<String>()
        val chunkSourceEntries = mutableListOf<List<String>>()
        val current = StringBuilder()
        val currentSourceEntries = linkedSetOf<String>()
        var currentChars = 0
        var firstChunk = true

        fun flush() {
            if (current.isEmpty()) return
            bodyChunks += buildSyntheticHtml(current.toString(), includeTitle = firstChunk)
            chunkSourceEntries += currentSourceEntries.toList()
            current.clear()
            currentSourceEntries.clear()
            currentChars = 0
            firstChunk = false
        }

        for ((sourceEntry, item) in noteItems) {
            val escapedId = escapeHtml(item.anchorId)
            val escapedNum = escapeHtml(item.number)
            val escapedText = escapeHtml(item.text)
            val html = """<p class="note-item" id="$escapedId"><span class="note-num">$escapedNum</span>$escapedText</p>"""
            val chars = item.number.length + item.text.length
            if (currentChars + chars > CHARS_PER_PAGE && currentChars > 0) flush()
            current.append(html)
            currentSourceEntries += sourceEntry
            currentChars += chars
        }
        flush()

        if (bodyChunks.isEmpty()) {
            bodyChunks += buildSyntheticHtml("", includeTitle = true)
            chunkSourceEntries += noteEntries
        }

        return bodyChunks.mapIndexed { index, html ->
            EpubPage.SyntheticHtml(
                entry = titleEntry,
                html = html,
                chunkIndex = index,
                totalChunks = bodyChunks.size,
                sourceEntries = chunkSourceEntries.getOrElse(index) { noteEntries }
            )
        }
    }

    private fun buildSyntheticHtml(content: String, includeTitle: Boolean): String {
        val title = if (includeTitle) "<h1>Notes</h1>" else ""
        return "<html><head>$CSS_INJECT</head><body>$title$content</body></html>"
    }

    private fun escapeHtml(text: String): String = buildString(text.length) {
        for (ch in text) {
            append(
                when (ch) {
                    '&' -> "&amp;"
                    '<' -> "&lt;"
                    '>' -> "&gt;"
                    '"' -> "&quot;"
                    '\'' -> "&#39;"
                    else -> ch.toString()
                }
            )
        }
    }

    // ── HTML image + CSS inlining ─────────────────────────────────────────────

    private fun inlineImages(html: String, xhtmlEntry: String, opfDir: String, zip: ZipFile): String {
        val xhtmlDir = xhtmlEntry.substringBeforeLast('/', "")
        val strippedHtml = html
            .replaceFirst(Regex("""^\s*<\?xml[^>]*\?>\s*""", RegexOption.IGNORE_CASE), "")
            // Strip EPUB nav page-list sections (contain page number anchors like 1, 2, … 65).
            // These appear in nav.xhtml spine items and render as a raw list of numbers.
            .replace(
                Regex("""<nav\b[^>]*\bepub:type\s*=\s*["']page-list["'][^>]*>.*?</nav>""",
                    setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)),
                ""
            )

        fun resolveHeader(src: String, baseDir: String = xhtmlDir): FileHeader? {
            if (src.startsWith("data:") || src.startsWith("http")) return null
            val decoded = try { URLDecoder.decode(src, "UTF-8") } catch (_: Exception) { src }
            val entry = normalizePath(
                if (decoded.startsWith("/")) decoded.trimStart('/')
                else if (baseDir.isEmpty()) decoded else "$baseDir/$decoded"
            )
            return findHeader(zip, entry)
        }

        fun resolveAndEncode(src: String, baseDir: String = xhtmlDir): String? {
            val header = resolveHeader(src, baseDir) ?: return null
            val ext  = header.fileName.substringAfterLast('.', "jpeg").lowercase()
            val mime = when (ext) {
                "png"  -> "image/png"; "gif" -> "image/gif"; "webp" -> "image/webp"
                "svg"  -> "image/svg+xml"
                "otf"  -> "font/otf"
                "ttf"  -> "font/ttf"
                "woff" -> "font/woff"
                "woff2" -> "font/woff2"
                else   -> "image/jpeg"
            }
            return try {
                val bytes = zip.getInputStream(header).use { it.readBytes() }
                "data:$mime;base64,${Base64.getEncoder().encodeToString(bytes)}"
            } catch (_: Exception) { null }
        }

        // Step 1: Inline linked CSS stylesheets as <style> blocks
        val inlinedCssEntries = mutableSetOf<String>()
        var result = CSS_LINK_RE.replace(strippedHtml) { mr ->
            val header = resolveHeader(mr.groupValues[1]) ?: return@replace ""
            if (!inlinedCssEntries.add(header.fileName.lowercase())) return@replace ""
            try {
                val cssBytes = zip.getInputStream(header).use { it.readBytes() }
                val cssDir = header.fileName.substringBeforeLast('/', "")
                val css = cssBytes.toString(detectCharset(cssBytes))
                val sanitizedCss = sanitizeInlineEpubCss(css).replace(
                    Regex("""url\((['"]?)([^'")]+)\1\)""", RegexOption.IGNORE_CASE)
                ) { urlMatch ->
                    val rawUrl = urlMatch.groupValues[2].trim()
                    resolveAndEncode(rawUrl, cssDir)?.let { encoded -> "url('$encoded')" } ?: urlMatch.value
                }
                "<style>$sanitizedCss</style>"
            } catch (_: Exception) { "" }
        }

        // Step 2: Inline <img src> and <image xlink:href> as base64 data URIs
        result = IMG_SRC_RE.replace(result) { m ->
            val dataUri = resolveAndEncode(m.groupValues[2]) ?: return@replace m.value
            "${m.groupValues[1]}$dataUri${m.groupValues[3]}"
        }
        result = XLINK_HREF_RE.replace(result) { m ->
            val dataUri = resolveAndEncode(m.groupValues[2]) ?: return@replace m.value
            "${m.groupValues[1]}$dataUri${m.groupValues[3]}"
        }
        result = simplifySingleImageSvgContent(result)
        result = normalizeInlinedEpubMarkup(result)

        // Step 3: rebuild into a normalized HTML5 document with preserved publisher
        // styles/body attributes. This avoids WebView edge-cases on malformed FB2EPUB XHTML.
        return rebuildNormalizedInlinedEpubDocument(result, CSS_INJECT)
    }

    // ── helpers ───────────────────────────────────────────────────────────────

    /**
     * Estimates how richly an XHTML entry can be paginated.
     * Returns:
     *   textCharCount — non-whitespace characters outside HTML tags (measures readable content)
     *   imgTagCount   — number of <img / <image tags (detects image-only pages)
     *   blockCount    — number of chunk-safe body blocks we can split on without yielding
     *                   guaranteed blank trailing pages.
     * Used to decide how many reader pages a spine item should occupy and whether to skip it.
     */
    private fun estimateContent(zip: ZipFile, entry: String): EpubContentEstimate {
        val header = findHeader(zip, entry) ?: return EpubContentEstimate(0, 0, 1)
        return try {
            val html = readTextEntry(zip, entry) ?: return EpubContentEstimate(0, 0, 1)
            val body = extractBodyContent(html)
            val textCount = HTML_TAG_RE.replace(body, "").count { !it.isWhitespace() }
            val keepWholeBody = shouldKeepWholeEpubHtmlBody(body) && textCount <= CHARS_PER_PAGE * 2
            val imgCount = Regex("""<\s*(?:img|image)\b""", RegexOption.IGNORE_CASE)
                .findAll(body)
                .count()
            // Count SVG blocks, <figure> wrappers, and <object> embeds as visual content.
            // Without this, frontispiece/cover pages that use only inline SVG (no <img> tag)
            // have imgCount == 0 && textCount == 0 and are incorrectly skipped as empty.
            val hasSvgOrEmbeddedMedia =
                body.contains("<svg", ignoreCase = true) ||
                body.contains("<figure", ignoreCase = true) ||
                Regex("""<object\b""", RegexOption.IGNORE_CASE).containsMatchIn(body)
            val effectiveImgCount = if (hasSvgOrEmbeddedMedia) maxOf(imgCount, 1) else imgCount
            // Files ≤ 8 KB have at most ~2 000 visible chars at 25 % text density — always 1 chunk.
            // Skip the expensive extractChunkBlocks pass for these small spine items.
            val chunkCount = if (keepWholeBody || header.uncompressedSize <= 8_000L) 1
            else estimateChunkCount(body, textCount, CHARS_PER_PAGE)
            EpubContentEstimate(
                textCharCount = textCount,
                imageTagCount = effectiveImgCount,
                chunkCount = chunkCount,
                keepWholeBody = keepWholeBody
            )
        } catch (_: Exception) { EpubContentEstimate(0, 0, 1, keepWholeBody = false) }
    }

    private fun estimateChunkCount(
        bodyHtml: String,
        visibleCharCount: Int,
        charsPerPage: Int
    ): Int {
        if (visibleCharCount <= charsPerPage) return 1
        val exactChunkCount = partitionChunkBlocks(extractChunkBlocks(bodyHtml), charsPerPage).size
        if (exactChunkCount > 0) return exactChunkCount
        val estimatedBlocks = extractEstimatedChunkBlocks(bodyHtml)
        val blockCounts = estimatedBlocks.flatMap { block ->
            if (block.canSplitOversized && block.visibleCharCount > charsPerPage) {
                splitEstimatedCharCount(block.visibleCharCount, charsPerPage)
            } else {
                listOf(block.visibleCharCount.coerceAtLeast(1))
            }
        }
        return if (blockCounts.isEmpty()) {
            splitEstimatedCharCount(visibleCharCount, charsPerPage).size.coerceAtLeast(1)
        } else {
            resolveEpubHtmlChunkCount(blockCounts, charsPerPage)
        }
    }

    private fun splitEstimatedCharCount(charCount: Int, charsPerPage: Int): List<Int> {
        val chunks = mutableListOf<Int>()
        var remaining = charCount.coerceAtLeast(1)
        while (remaining > 0) {
            val next = remaining.coerceAtMost(charsPerPage)
            chunks += next
            remaining -= next
        }
        return chunks
    }

    /**
     * Extracts one chunk from a fully-inlined HTML string using character-based boundaries.
     * Splits at </p> boundaries; a new chunk starts when the accumulated non-tag character
     * count reaches [totalChars / totalChunks].  Preserves <head> (with CSS) in every chunk.
     */
    private fun extractChunk(html: String, chunkIndex: Int, totalChunks: Int): String {
        val headEndIdx = html.indexOf("</head>", ignoreCase = true)
        val head = if (headEndIdx >= 0) html.substring(0, headEndIdx + "</head>".length) else ""

        val bodyOpenMatch = Regex("<body[^>]*>", RegexOption.IGNORE_CASE)
            .find(html, startIndex = (headEndIdx + 1).coerceAtLeast(0))
        val bodyStart = if (bodyOpenMatch != null) bodyOpenMatch.range.last + 1
                        else (headEndIdx + "</head>".length).coerceAtLeast(0)
        val bodyEnd = html.lastIndexOf("</body>", ignoreCase = true)
            .let { if (it < 0) html.length else it }
        val bodyOpen = bodyOpenMatch?.value ?: "<body>"
        val bodyHtml = html.substring(bodyStart, bodyEnd)
        val blocks = extractChunkBlocks(bodyHtml)
        if (blocks.isEmpty()) return "${head}${bodyOpen}</body></html>"
        var chunkedBlocks = partitionChunkBlocks(blocks, CHARS_PER_PAGE)
        if (totalChunks > 1 && chunkedBlocks.size == 1) {
            val paragraphFallbackBlocks = extractParagraphFallbackChunkBlocks(bodyHtml)
            if (paragraphFallbackBlocks.size > 1) {
                chunkedBlocks = partitionChunkBlocks(paragraphFallbackBlocks, CHARS_PER_PAGE)
            }
        }
        val normalizedChunkIndex = chunkIndex.coerceIn(0, (chunkedBlocks.lastIndex).coerceAtLeast(0))
        val chunkHtml = chunkedBlocks
            .getOrElse(normalizedChunkIndex) { listOf(blocks.last()) }
            .joinToString(separator = "") { it.html }

        return "${head}${bodyOpen}${chunkHtml}</body></html>"
    }

    private fun extractChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> {
        val visibleCharCount = HTML_TAG_RE.replace(bodyHtml, "").count { !it.isWhitespace() }
        if (shouldKeepWholeEpubHtmlBody(bodyHtml) && visibleCharCount <= CHARS_PER_PAGE * 2) {
            val hasRenderableMedia = Regex(
                """<\s*(?:img|image|svg)\b""",
                RegexOption.IGNORE_CASE
            ).containsMatchIn(bodyHtml)
            return when {
                visibleCharCount > 0 -> listOf(
                    EpubHtmlChunkBlock(
                        html = bodyHtml,
                        visibleCharCount = visibleCharCount
                    )
                )
                hasRenderableMedia -> listOf(
                    EpubHtmlChunkBlock(
                        html = bodyHtml,
                        visibleCharCount = 1
                    )
                )
                else -> emptyList()
            }
        }
        return extractDomChunkBlocks(bodyHtml)
            .flatMap { block -> splitOversizedEpubBlock(block, CHARS_PER_PAGE) }
    }

    private fun extractEstimatedChunkBlocks(bodyHtml: String): List<EpubEstimatedChunkBlock> = runCatching {
        val document = Jsoup.parseBodyFragment(bodyHtml)
        val blocks = mutableListOf<EpubEstimatedChunkBlock>()

        fun appendBlock(node: Element) {
            val visibleCharCount = visibleTextCharCount(node)
            val hasRenderableMedia = hasRenderableMedia(node)
            when {
                visibleCharCount > 0 -> blocks += EpubEstimatedChunkBlock(
                    visibleCharCount = visibleCharCount,
                    canSplitOversized = canSplitEstimatedBlock(node)
                )
                hasRenderableMedia -> blocks += EpubEstimatedChunkBlock(
                    visibleCharCount = 1,
                    canSplitOversized = false
                )
            }
        }

        fun collect(parent: Element) {
            var inlineChars = 0
            var inlineHasMedia = false

            fun flushInlineNodes() {
                if (inlineChars <= 0 && !inlineHasMedia) return
                blocks += EpubEstimatedChunkBlock(
                    visibleCharCount = inlineChars.coerceAtLeast(1),
                    canSplitOversized = true
                )
                inlineChars = 0
                inlineHasMedia = false
            }

            parent.childNodes().forEach { node ->
                when (node) {
                    is TextNode -> {
                        inlineChars += node.text().count { !it.isWhitespace() }
                    }
                    is Element -> {
                        when {
                            node.normalName() in EPUB_ATOMIC_CHUNK_TAGS -> {
                                flushInlineNodes()
                                appendBlock(node)
                            }
                            shouldRecurseIntoEpubChunkContainer(node) -> {
                                flushInlineNodes()
                                collect(node)
                            }
                            isEpubChunkBoundaryElement(node) -> {
                                flushInlineNodes()
                                appendBlock(node)
                            }
                            else -> {
                                inlineChars += visibleTextCharCount(node)
                                inlineHasMedia = inlineHasMedia || hasRenderableMedia(node)
                            }
                        }
                    }
                }
            }

            flushInlineNodes()
        }

        collect(document.body())
        blocks
    }.getOrDefault(emptyList())

    private fun visibleTextCharCount(node: Node): Int = when (node) {
        is TextNode -> node.text().count { !it.isWhitespace() }
        is Element -> {
            when (node.normalName()) {
                "script", "style", "head", "title" -> 0
                else -> node.childNodes().sumOf { child -> visibleTextCharCount(child) }
            }
        }
        else -> 0
    }

    private fun hasRenderableMedia(node: Node): Boolean = when (node) {
        is Element -> {
            node.normalName() in setOf("img", "image", "svg") ||
                node.childNodes().any { child -> hasRenderableMedia(child) }
        }
        else -> false
    }

    private fun canSplitEstimatedBlock(element: Element): Boolean {
        if (element.normalName() in EPUB_ATOMIC_CHUNK_TAGS) return false
        return !element.childNodes().any { child ->
            child is Element && (
                child.normalName() in EPUB_ATOMIC_CHUNK_TAGS ||
                    !canSplitEstimatedBlock(child)
                )
        }
    }

    private fun extractDomChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> = runCatching {
        val document = Jsoup.parseBodyFragment(bodyHtml)
        document.outputSettings(Document.OutputSettings().prettyPrint(false))
        val blocks = mutableListOf<EpubHtmlChunkBlock>()

        fun appendBlock(html: String, ancestorWrappers: List<Element>) {
            val wrappedHtml = wrapInChunkAncestors(html, ancestorWrappers).trim()
            if (wrappedHtml.isBlank()) return

            val visibleCharCount = HTML_TAG_RE.replace(wrappedHtml, "").count { !it.isWhitespace() }
            val hasRenderableMedia = Regex(
                """<\s*(?:img|image|svg)\b""",
                RegexOption.IGNORE_CASE
            ).containsMatchIn(wrappedHtml)
            when {
                visibleCharCount > 0 -> blocks += EpubHtmlChunkBlock(
                    html = wrappedHtml,
                    visibleCharCount = visibleCharCount
                )
                hasRenderableMedia -> blocks += EpubHtmlChunkBlock(
                    html = wrappedHtml,
                    visibleCharCount = 1
                )
            }
        }

        fun collect(parent: Element, ancestorWrappers: List<Element>) {
            val inlineNodes = mutableListOf<Node>()

            fun flushInlineNodes() {
                if (inlineNodes.isEmpty()) return
                val paragraph = Element("p")
                inlineNodes.forEach { paragraph.appendChild(it.clone()) }
                appendBlock(paragraph.outerHtml(), ancestorWrappers)
                inlineNodes.clear()
            }

            parent.childNodes().forEach { node ->
                when (node) {
                    is TextNode -> {
                        if (node.text().isNotBlank()) inlineNodes.add(node.clone())
                    }
                    is Element -> {
                        when {
                            node.normalName() in EPUB_ATOMIC_CHUNK_TAGS -> {
                                flushInlineNodes()
                                appendBlock(node.outerHtml(), ancestorWrappers)
                            }
                            shouldRecurseIntoEpubChunkContainer(node) -> {
                                flushInlineNodes()
                                collect(node, ancestorWrappers + node)
                            }
                            isEpubChunkBoundaryElement(node) -> {
                                flushInlineNodes()
                                appendBlock(node.outerHtml(), ancestorWrappers)
                            }
                            else -> {
                                inlineNodes.add(node.clone())
                            }
                        }
                    }
                }
            }

            flushInlineNodes()
        }

        collect(document.body(), emptyList())
        blocks
    }.getOrElse {
        emptyList()
    }

    private fun shouldRecurseIntoEpubChunkContainer(element: Element): Boolean {
        val tag = element.normalName()
        return tag in EPUB_CHUNK_CONTAINER_TAGS &&
            tag !in EPUB_ATOMIC_CHUNK_TAGS &&
            hasNestedEpubChunkBoundary(element)
    }

    private fun hasNestedEpubChunkBoundary(element: Element): Boolean {
        return element.children().any { child ->
            isEpubChunkBoundaryElement(child) || shouldRecurseIntoEpubChunkContainer(child)
        }
    }

    private fun isEpubChunkBoundaryElement(element: Element): Boolean {
        val tag = element.normalName()
        return tag in EPUB_CHUNK_BOUNDARY_TAGS ||
            (tag in EPUB_CHUNK_CONTAINER_TAGS && !hasNestedEpubChunkBoundary(element))
    }

    private fun wrapInChunkAncestors(html: String, ancestorWrappers: List<Element>): String {
        var result = html
        for (source in ancestorWrappers.asReversed()) {
            val wrapper = Element(source.normalName())
            source.attributes().forEach { attr ->
                if (attr.key != "id") wrapper.attr(attr.key, attr.value)
            }
            wrapper.html(result)
            result = wrapper.outerHtml()
        }
        return result
    }

    private fun extractParagraphFallbackChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> {
        val paragraphLikeBlocks = Regex(
            """<(p|h1|h2|h3|h4|h5|h6|blockquote|li|tr)\b[^>]*>.*?</\1>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        ).findAll(bodyHtml)
            .map { it.value }
            .filter { it.isNotBlank() }
            .toList()
        if (paragraphLikeBlocks.size <= 1) return emptyList()

        return paragraphLikeBlocks.flatMap { blockHtml ->
            val visible = HTML_TAG_RE.replace(blockHtml, "").count { !it.isWhitespace() }
            if (visible <= 0) {
                emptyList()
            } else {
                splitOversizedEpubBlock(
                    block = EpubHtmlChunkBlock(
                        html = blockHtml,
                        visibleCharCount = visible
                    ),
                    charsPerPage = CHARS_PER_PAGE
                )
            }
        }
    }

    private fun splitOversizedEpubBlock(
        block: EpubHtmlChunkBlock,
        charsPerPage: Int
    ): List<EpubHtmlChunkBlock> {
        if (block.visibleCharCount <= charsPerPage) return listOf(block)
        if (Regex("""<\s*(?:img|image|svg|table|pre|code)\b""", RegexOption.IGNORE_CASE).containsMatchIn(block.html)) {
            return listOf(block)
        }

        val body = Jsoup.parseBodyFragment(block.html).body()
        val text = body.text().trim()
        if (text.length <= charsPerPage) return listOf(block)

        val element = body.children().firstOrNull()
        val tag = element?.normalName()?.takeIf { it in setOf("p", "div", "section", "article", "blockquote", "li") }
            ?: "p"
        val attrs = element?.attributes()
            ?.asList()
            ?.filter { attr -> attr.key in setOf("class", "style", "lang", "dir") }
            ?.joinToString(separator = "") { attr -> " ${attr.key}=\"${attr.value.escapeHtmlAttr()}\"" }
            .orEmpty()
        val chunks = splitTextForEpubBlocks(text, charsPerPage)
        if (chunks.size <= 1) return listOf(block)

        return chunks.map { chunk ->
            EpubHtmlChunkBlock(
                html = "<$tag$attrs>${chunk.escapeHtmlText()}</$tag>",
                visibleCharCount = chunk.count { !it.isWhitespace() }.coerceAtLeast(1)
            )
        }
    }

    private fun splitTextForEpubBlocks(text: String, charsPerPage: Int): List<String> {
        val chunks = mutableListOf<String>()
        var start = 0
        while (start < text.length) {
            val targetEnd = (start + charsPerPage).coerceAtMost(text.length)
            if (targetEnd == text.length) {
                chunks += text.substring(start).trim()
                break
            }
            val searchStart = (targetEnd - charsPerPage / 3).coerceAtLeast(start)
            val boundary = text.lastIndexOfAny(charArrayOf('.', '!', '?', ';', ':', '…', '\n'), targetEnd)
                .takeIf { it >= searchStart }
                ?: text.lastIndexOf(' ', targetEnd).takeIf { it >= searchStart }
                ?: targetEnd
            chunks += text.substring(start, (boundary + 1).coerceAtMost(text.length)).trim()
            start = (boundary + 1).coerceAtMost(text.length)
            while (start < text.length && text[start].isWhitespace()) start++
        }
        return chunks.filter { it.isNotBlank() }
    }

    private fun partitionChunkBlocks(
        blocks: List<EpubHtmlChunkBlock>,
        charsPerPage: Int
    ): List<List<EpubHtmlChunkBlock>> {
        if (blocks.isEmpty()) return emptyList()
        val chunks = mutableListOf<MutableList<EpubHtmlChunkBlock>>()
        var currentChunk = mutableListOf<EpubHtmlChunkBlock>()
        var accumulatedChars = 0

        for (block in blocks) {
            if (
                currentChunk.isNotEmpty() &&
                (block.isEpubSectionStartBlock() || accumulatedChars + block.visibleCharCount > charsPerPage)
            ) {
                chunks += currentChunk
                currentChunk = mutableListOf()
                accumulatedChars = 0
            }
            currentChunk += block
            accumulatedChars += block.visibleCharCount
        }

        if (currentChunk.isNotEmpty()) {
            chunks += currentChunk
        }

        return rebalanceTrailingChunkPair(chunks, charsPerPage)
    }

    private fun rebalanceTrailingChunkPair(
        chunks: List<MutableList<EpubHtmlChunkBlock>>,
        charsPerPage: Int
    ): List<List<EpubHtmlChunkBlock>> {
        if (chunks.size < 2) return chunks
        val last = chunks.last()
        if (last.isEmpty()) return chunks
        if (last.firstOrNull()?.isEpubSectionStartBlock() == true) return chunks

        val lastWeight = last.sumOf { it.visibleCharCount }.coerceAtLeast(1)
        val minTailWeight = (charsPerPage * 0.35f).toInt().coerceAtLeast(280)
        if (lastWeight >= minTailWeight) return chunks

        val previous = chunks[chunks.lastIndex - 1]
        if (previous.isEmpty()) return chunks

        val mergedBlocks = (previous + last)
        val mergedWeight = mergedBlocks.sumOf { it.visibleCharCount }.coerceAtLeast(1)
        if (mergedWeight <= minTailWeight) return chunks

        val targetWeight = (mergedWeight / 2).coerceAtLeast(minTailWeight)
        val rebalanced = mutableListOf<MutableList<EpubHtmlChunkBlock>>(mutableListOf(), mutableListOf())
        var currentIndex = 0
        var currentWeight = 0

        for (block in mergedBlocks) {
            val blockWeight = block.visibleCharCount.coerceAtLeast(1)
            val shouldSplit = currentIndex == 0 &&
                rebalanced[0].isNotEmpty() &&
                !block.isEpubSectionStartBlock() &&
                currentWeight >= targetWeight
            if (shouldSplit) {
                currentIndex = 1
                currentWeight = 0
            }
            rebalanced[currentIndex] += block
            currentWeight += blockWeight
        }

        if (rebalanced[1].isEmpty()) return chunks

        val result = chunks.dropLast(2).map { it.toList() }.toMutableList()
        result += rebalanced[0].toList()
        result += rebalanced[1].toList()
        return result
    }

    private fun EpubHtmlChunkBlock.isEpubSectionStartBlock(): Boolean = runCatching {
        val first = Jsoup.parseBodyFragment(html).body().children().firstOrNull() ?: return@runCatching false
        val tag = first.normalName()
        tag in setOf("h1", "h2", "h3") ||
            first.hasClass("chapter") ||
            first.attr("data-mrcomic-section-start").equals("true", ignoreCase = true)
    }.getOrDefault(false)

    private fun String.escapeHtmlText(): String =
        replace("&", "&amp;")
            .replace("<", "&lt;")
            .replace(">", "&gt;")

    private fun String.escapeHtmlAttr(): String =
        escapeHtmlText()
            .replace("\"", "&quot;")

    private fun detectCharset(bytes: ByteArray): Charset = detectEpubTextCharset(bytes)

    private fun findHeader(zip: ZipFile, entry: String): FileHeader? {
        zip.getFileHeader(entry)?.let { return it }
        // Fallback: case-insensitive match by filename only.
        // Some EPUBs store "Image.JPG" in the ZIP but reference "image.jpg" in the OPF.
        val name = entry.substringAfterLast('/').lowercase()
        return zip.fileHeaders.find { it.fileName.substringAfterLast('/').lowercase() == name }
    }

    private fun epubMimeTypeFor(extension: String): String = when (extension) {
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

    private fun epubTextEncodingFor(extension: String): String? = when (extension) {
        "css", "htm", "html", "xhtml", "xml", "ncx", "js" -> "UTF-8"
        else -> null
    }

    private fun ensureReadableZipPath(rawPath: String): String? {
        val normalized = rawPath.removePrefix("file://")
        val source = File(normalized)
        if (source.exists() && source.canRead()) return source.absolutePath
        return ensureCachedExternalFile(source)
    }

    private fun ensureCachedExternalFile(source: File): String? {
        val cached = EpubReadablePath.cacheToAppDir(context, source) ?: return null
        tempFile = cached
        return cached.absolutePath
    }

    private fun ensureZip(): ZipFile? {
        synchronized(lock) {
            zipFile?.let { return it }
            return try {
                val filePath = when {
                    path.startsWith("content://") -> {
                        val uri = Uri.parse(path)
                        val tmp = ensureCachedContentUriFile(uri) ?: return null
                        tempFile = tmp
                        tmp.absolutePath
                    }
                    else -> ensureReadableZipPath(path) ?: return null
                }
                ZipFile(filePath).also { zipFile = it }
            } catch (e: Exception) {
                safeLogE(TAG, "Failed to open EPUB: $path", e)
                tempFile?.let { f ->
                    if (f.exists()) {
                        safeLogW(TAG, "Deleting potentially corrupt temp EPUB: ${f.absolutePath}")
                        f.delete()
                        tempFile = null
                    }
                }
                null
            }
        }
    }

    private fun ensureCachedContentUriFile(uri: Uri): File? {
        val dir = File(context.cacheDir, "epub_cache").apply { mkdirs() }
        val expectedSize = runCatching {
            context.contentResolver.openAssetFileDescriptor(uri, "r")
                ?.use { descriptor -> descriptor.length.takeIf { it > 0L } }
        }.getOrNull()
        val displayName = runCatching {
            context.contentResolver.query(uri, arrayOf(OpenableColumns.DISPLAY_NAME), null, null, null)
                ?.use { cursor ->
                    if (cursor.moveToFirst()) {
                        cursor.getString(cursor.getColumnIndexOrThrow(OpenableColumns.DISPLAY_NAME))
                    } else {
                        null
                    }
                }
        }.getOrNull()
        val extension = displayName
            ?.substringAfterLast('.', "epub")
            ?.lowercase()
            ?.takeIf { it.isNotBlank() }
            ?: "epub"
        val cacheFile = File(dir, "epub_${uri.hashCode()}_${expectedSize ?: 0L}.$extension")
        if (cacheFile.exists() &&
            cacheFile.length() > 0L &&
            (expectedSize == null || cacheFile.length() == expectedSize)
        ) {
            return cacheFile
        }
        val tempCopy = File(dir, "${cacheFile.name}.part")
        runCatching { if (tempCopy.exists()) tempCopy.delete() }
        val copied = context.contentResolver.openInputStream(uri)?.use { input ->
            tempCopy.outputStream().use { output -> input.copyTo(output) }
            true
        } ?: false
        if (!copied || tempCopy.length() == 0L || (expectedSize != null && tempCopy.length() != expectedSize)) {
            runCatching { tempCopy.delete() }
            return null
        }
        if (cacheFile.exists()) {
            runCatching { cacheFile.delete() }
        }
        val finalized = tempCopy.renameTo(cacheFile)
        if (!finalized) {
            runCatching { tempCopy.copyTo(cacheFile, overwrite = true) }.getOrNull() ?: return null
            runCatching { tempCopy.delete() }
        }
        return cacheFile
    }

    private fun normalizePath(p: String): String {
        val stack = ArrayDeque<String>()
        for (part in p.split('/')) when (part) {
            ".." -> if (stack.isNotEmpty()) stack.removeLast()
            ".", "" -> {}
            else -> stack.addLast(part)
        }
        return stack.joinToString("/")
    }
}
