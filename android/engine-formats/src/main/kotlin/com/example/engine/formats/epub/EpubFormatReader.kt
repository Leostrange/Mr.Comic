package com.example.engine.formats.epub

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Log
import android.util.Xml
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.xmlpull.v1.XmlPullParser
import java.io.File
import java.io.InputStream
import java.net.URLDecoder
import java.util.Base64

private fun safeLogW(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.w(tag, message, throwable) }
}

private fun safeLogE(tag: String, message: String, throwable: Throwable? = null) {
    runCatching { Log.e(tag, message, throwable) }
}

internal fun sanitizeInlineEpubCss(css: String): String {
    val fontFaceRegex = Regex("""(?is)@font-face\s*\{.*?}""")
    var result = fontFaceRegex.replace(css, "").trim()

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

internal fun simplifySingleImageSvgContent(html: String): String {
    val simpleSvgImageRegex = Regex(
        """(?is)<svg\b[^>]*>\s*<image\b[^>]*?\b(?:xlink:)?href\s*=\s*["']([^"']+)["'][^>]*?/?>\s*</svg>"""
    )
    return simpleSvgImageRegex.replace(html) { match ->
        val imageSrc = match.groupValues[1]
        """<div class="epub-inline-cover"><img src="$imageSrc" alt="" style="max-width:100%;height:auto;display:block;margin:0 auto;"/></div>"""
    }
}

internal fun normalizeInlinedEpubMarkup(html: String): String = runCatching {
    val document = Jsoup.parse(html)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
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
    document.outerHtml()
}.getOrDefault(html)

internal fun rebuildNormalizedInlinedEpubDocument(html: String, readerCss: String): String = runCatching {
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
        if (tag == "style" || tag == "title" || tag == "meta") {
            headElement.appendChild(child.clone())
        }
    }

    val bodyElement = htmlElement.appendElement("body")
    source.body().attributes().forEach { attr ->
        bodyElement.attr(attr.key, attr.value)
    }
    source.body().childNodes().forEach { child ->
        bodyElement.appendChild(child.clone())
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

internal fun resolveEpubHtmlChunkCount(
    blockCharCounts: List<Int>,
    charsPerPage: Int = 2000
): Int {
    if (blockCharCounts.isEmpty()) return 1
    var chunks = 0
    var accumulated = 0
    var hasCurrentChunk = false
    for (blockChars in blockCharCounts) {
        val normalizedChars = blockChars.coerceAtLeast(1)
        if (hasCurrentChunk && accumulated >= charsPerPage) {
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
        """(?is)(.+?</(?:p|div|h1|h2|h3|h4|h5|h6|blockquote|li|tr|section|article|aside|ul|ol)>|.+$)"""
    )
    val closingWrapperRegex = Regex("""(?is)^</(?:span|font)\b""")
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
    private val path: String
) : FormatReader {

    companion object {
        private const val TAG = "EpubFormatReader"
        /**
         * Target non-whitespace character count per reader page.
         * ~2000 chars ≈ roughly one screenful at 18px/1.8lh on a typical phone.
         * Vertical scrolling is allowed within a page, so content is never clipped.
         */
        private const val CHARS_PER_PAGE = 2000
        /** Regex for stripping HTML tags when counting content characters. */
        private val HTML_TAG_RE = Regex("<[^>]+>")
        private val HTML_BLOCK_RE = Regex(
            """(?is)(.+?</(?:p|div|h1|h2|h3|h4|h5|h6|blockquote|li|tr|section|article|aside|ul|ol)>|.+$)"""
        )
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
        private val XHTML_EXTENSIONS = setOf("xhtml", "html", "htm")
        private val IMG_SRC_RE    = Regex("""(<img\b[^>]*?\bsrc\s*=\s*["'])([^"']+)(["'][^>]*?>)""", RegexOption.IGNORE_CASE)
        private val XLINK_HREF_RE = Regex("""(<image\b[^>]*?\b(?:xlink:)?href\s*=\s*["'])([^"']+)(["'][^>]*?/?>)""", RegexOption.IGNORE_CASE)
        private val CSS_LINK_RE   = Regex("""<link\b[^>]+\bhref\s*=\s*["']([^"']+\.css)["'][^>]*?/?>""", RegexOption.IGNORE_CASE)
        /**
         * Viewport meta + minimal reader CSS injected at the end of <head>.
         * Low-specificity selectors ensure publisher CSS wins for custom elements;
         * we only provide mobile-friendly defaults with dark mode support.
         */
        private val CSS_INJECT = """
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
            body{font-family:Georgia,'Times New Roman',serif;font-size:18px;line-height:1.6;
                 padding:16px 16px 24px;color:#1a1a1a;background:#fafafa;
                 max-width:720px;margin:0 auto;overflow-wrap:break-word;word-break:normal;
                 hyphens:auto;-webkit-hyphens:auto;text-align:justify}
            p,div.paragraph{margin:0.2em 0;text-indent:1.5em}
            p:first-child,div.paragraph:first-child,
            h1+p,h2+p,h3+p,h4+p,h5+p,h6+p,
            h1+div.paragraph,h2+div.paragraph,h3+div.paragraph,h4+div.paragraph,h5+div.paragraph,h6+div.paragraph{text-indent:0}
            h1,h2,h3,h4,h5,h6{text-align:center;text-indent:0;margin:1.2em 0 0.5em;
                               font-weight:bold;hyphens:none;-webkit-hyphens:none}
            img{max-width:100%;height:auto;display:block;margin:8px auto}
            a{color:inherit}
            blockquote,cite{margin:0.8em 1.5em;padding-left:1em;
                            border-left:3px solid #bbb;font-style:italic;color:#555;
                            hyphens:none;-webkit-hyphens:none}
            cite{display:block;margin-top:0.3em}
            table{width:100%;border-collapse:collapse}
            td,th{padding:4px 8px;border:1px solid #ccc}
            /* Alignment utility classes used by publishers */
            .center,.align-center,[align="center"]{text-align:center !important;text-indent:0}
            .right,.align-right,[align="right"]{text-align:right !important;text-indent:0}
            .left,.align-left,[align="left"]{text-align:left !important}
            /* Footnote inline link (superscript) */
            a.fn,a[epub\\:type~="noteref"],a[href*="FbAutId_"],a[href*="#FbAutId_"],a[href^="fbanchor://"],a[title][href*="#"]{
              font-size:0.75em;vertical-align:super;line-height:1;color:#1a6f9a;font-weight:bold;text-decoration:none}
            a.fn *,a[epub\\:type~="noteref"] *,a[href*="FbAutId_"] *,a[href*="#FbAutId_"] *,a[href^="fbanchor://"] *,a[title][href*="#"] *{
              color:#1a6f9a}
            /* Footnote entry on notes page — Readera style: bold blue number + hanging text */
            p.note-item,aside[epub\\:type~="footnote"],section[epub\\:type~="footnote"]>p:first-child
              {margin:0.6em 0;padding-left:2.8em;text-indent:-2.8em;text-align:left}
            .note-num,.footnote-label{color:#1a6f9a;font-weight:bold;
              display:inline-block;min-width:2.8em;text-indent:0}
            @media (prefers-color-scheme: dark) {
              body{color:#e8e8e8;background:#1a1a1a}
              h1,h2,h3,h4,h5,h6,.calibre5,.calibre12{color:#e8e8e8;background:#262626;border-color:#555}
              blockquote,cite{border-left-color:#555;color:#aaa}
              td,th{border-color:#444}
              a.fn,a[epub\\:type~="noteref"],a[href*="FbAutId_"],a[href*="#FbAutId_"],a[href^="fbanchor://"],a[title][href*="#"],.note-num,.footnote-label{color:#5ab4dc}
              a.fn *,a[epub\\:type~="noteref"] *,a[href*="FbAutId_"] *,a[href*="#FbAutId_"] *,a[href^="fbanchor://"] *,a[title][href*="#"] *{color:#5ab4dc}
            }
            </style>
        """.trimIndent()
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
            val totalChunks: Int = 1
        ) : EpubPage()
    }

    /** Holds both the page list and the extracted TOC from one OPF pass. */
    private data class ParsedEpub(
        val pages: List<EpubPage>,
        val tocEntries: List<TocEntry>,
        val footnoteMap: Map<String, String>
    )

    private val parsed: ParsedEpub by lazy {
        try {
            val zip = ensureZip() ?: return@lazy ParsedEpub(emptyList(), emptyList(), emptyMap())
            val fallbackPages = fallbackContentPages(zip)
            val opfEntry = findOpfEntry(zip)
            if (opfEntry != null) {
                val opfDir = opfEntry.substringBeforeLast('/', "")
                val header = zip.getFileHeader(opfEntry)
                    ?: return@lazy ParsedEpub(fallbackPages, emptyList(), emptyMap())
                val (manifest, spine, ncxId) = runCatching {
                    zip.getInputStream(header).use { parseOpf(it) }
                }.getOrElse { error ->
                    safeLogW(TAG, "Failed to parse OPF, using fallback listing", error)
                    return@lazy ParsedEpub(fallbackPages, emptyList(), emptyMap())
                }
                val pages = runCatching {
                    buildPagesFromOpf(manifest, spine, opfDir, zip)
                }.getOrElse { error ->
                    safeLogW(TAG, "Failed to build pages from OPF, using fallback listing", error)
                    fallbackPages
                }
                val tocEntries = runCatching {
                    if (ncxId != null) {
                        val ncxHref = manifest[ncxId]
                        if (ncxHref != null) parseToc(zip, opfDir, ncxHref, pages)
                        else emptyList()
                    } else emptyList()
                }.getOrElse { error ->
                    safeLogW(TAG, "Failed to parse EPUB TOC", error)
                    emptyList()
                }
                val footnoteMap = runCatching {
                    buildFootnoteMap(manifest, spine, opfDir, zip)
                }.getOrElse { error ->
                    safeLogW(TAG, "Failed to parse EPUB footnotes", error)
                    emptyMap()
                }
                ParsedEpub(pages, tocEntries, footnoteMap)
            } else {
                ParsedEpub(fallbackPages, emptyList(), emptyMap())
            }
        } catch (e: Exception) {
            safeLogE(TAG, "Failed to build EPUB page list", e)
            val zip = runCatching { ensureZip() }.getOrNull()
            if (zip != null) {
                ParsedEpub(fallbackContentPages(zip), emptyList(), emptyMap())
            } else {
                ParsedEpub(emptyList(), emptyList(), emptyMap())
            }
        }
    }

    private val pages: List<EpubPage> get() = parsed.pages

    // ── FormatReader ──────────────────────────────────────────────────────────

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) { pages.size }

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
        when (val page = pages.getOrNull(index)) {
            is EpubPage.SyntheticHtml -> return@withContext page.html
            !is EpubPage.Html -> return@withContext null
            else -> Unit
        }
        val page = pages.getOrNull(index) as EpubPage.Html
        try {
            val zip = ensureZip() ?: return@withContext null

            // Build (or retrieve from 2-entry LRU cache) the full inlined HTML for this entry.
            fun buildHtml(entry: String): String? {
                synchronized(htmlCache) { htmlCache[entry] }?.let { return it }
                val header = findHeader(zip, entry) ?: return null
                val raw = zip.getInputStream(header).use { stream ->
                    val bytes = stream.readBytes()
                    detectCharset(bytes).let { bytes.toString(it) }
                }
                val html = inlineImages(raw, header.fileName, page.opfDir, zip)
                synchronized(htmlCache) { htmlCache[entry] = html }
                return html
            }

            val firstHtml = buildHtml(page.entry) ?: return@withContext null

            if (page.extraEntries.isEmpty()) {
                // Normal path: single entry, optionally chunked.
                return@withContext if (page.totalChunks == 1) firstHtml
                                   else extractChunk(firstHtml, page.chunkIndex, page.totalChunks)
            }

            // Merged path: append body content from extra entries before </body>.
            val extraBodies = page.extraEntries.mapNotNull { entry ->
                buildHtml(entry)?.let { extractBodyContent(it) }
            }.filter { it.isNotBlank() }   // skip empty bodies
            firstHtml.replace("</body>", extraBodies.joinToString("") + "</body>", ignoreCase = true)
        } catch (e: Exception) {
            safeLogW(TAG, "HTML read failed for ${page.entry}", e); null
        }
    }

    /** Extracts the content between <body> and </body> tags. */
    private fun extractBodyContent(html: String): String {
        val bodyStart = Regex("<body[^>]*>", RegexOption.IGNORE_CASE).find(html)
            ?.let { it.range.last + 1 } ?: 0
        val bodyEnd = html.lastIndexOf("</body>").let { if (it < 0) html.length else it }
        return html.substring(bodyStart, bodyEnd)
    }

    override fun getTableOfContents(): List<TocEntry> = parsed.tocEntries

    override fun getFootnoteText(anchorId: String): String? = parsed.footnoteMap[anchorId]

    /**
     * Resolves a relative EPUB href like `chapter2.xhtml` or `chapter2.xhtml#anchor`
     * to the 0-based reader page index. Strips the fragment and matches by file name suffix.
     */
    override fun resolveHrefToPage(href: String): Int? {
        val filePart = href.substringBefore('#').trimStart('/')
        if (filePart.isBlank()) return null
        val pagesList = parsed.pages
        // Exact match first, then suffix match (handles opfDir prefix differences)
        val exactIdx = pagesList.indexOfFirst { pg ->
            (pg as? EpubPage.Html)?.entry == filePart
        }
        if (exactIdx >= 0) return exactIdx
        return pagesList.indexOfFirst { pg ->
            (pg as? EpubPage.Html)?.entry?.endsWith("/$filePart") == true ||
            (pg as? EpubPage.Html)?.entry == filePart
        }.takeIf { it >= 0 }
    }

    override fun close() {
        synchronized(lock) {
            try { zipFile?.close() } catch (_: Exception) {}
            zipFile = null
            synchronized(htmlCache) { htmlCache.clear() }
            tempFile?.let { runCatching { it.delete() } }
            tempFile = null
        }
    }

    // ── Page list construction ────────────────────────────────────────────────

    private fun buildPagesFromOpf(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile
    ): List<EpubPage> {
        // ── First pass: build one EpubPage per spine item ────────────────────────
        data class SpineItem(val page: EpubPage.Html, val uncompressedSize: Long)
        val rawResult = mutableListOf<EpubPage>()
        val htmlSizes = mutableMapOf<String, Long>()   // entry → uncompressed byte size
        val htmlVisibleChars = mutableMapOf<String, Int>()
        val imageOnlyHtmlEntries = mutableSetOf<String>()
        val keepWholeBodyEntries = mutableSetOf<String>()
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
                    htmlSizes[entry] = header.uncompressedSize
                    val estimate = if (header.uncompressedSize > 150L) {
                        estimateContent(zip, entry)
                    } else {
                        EpubContentEstimate(
                            textCharCount = 0,
                            imageTagCount = 0,
                            chunkCount = 1,
                            keepWholeBody = false
                        )
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
                        // Still add tiny stub pages (< 300 bytes) in case they are anchor targets,
                        // but skip larger markup-only pages (navigation, empty chapter breaks).
                        if (header.uncompressedSize > 300L) continue@spineLoop
                    }
                    val chunks = estimate.chunkCount
                    repeat(chunks) { i -> rawResult.add(EpubPage.Html(entry, opfDir, i, chunks)) }
                }
            }
        }

        // ── Second pass: normalize note sections and only then merge tiny leftovers ──
        val normalized = mutableListOf<EpubPage>()
        val TINY_BYTES = 2_000L
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
            return page.entry !in keepWholeBodyEntries
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
                val startIsTinyText = startWeight in 1 until mergeVisibleCharsLimit
                if (!startIsImageOnly && !startIsTinyText) {
                    merged.add(pg)
                    i++
                    continue
                }
                val extras = mutableListOf<String>()
                var combinedWeight = startWeight.coerceAtLeast(1)
                var j = i + 1
                while (j < normalized.size) {
                    val nxt = normalized[j]
                    if (nxt !is EpubPage.Html || !isMergeSafePage(nxt)) break
                    val nxtWeight = mergeWeight(nxt)
                    val nxtIsImageOnly = nxt.entry in imageOnlyHtmlEntries
                    val nxtIsTinyText = nxtWeight in 1 until mergeVisibleCharsLimit
                    if (!nxtIsImageOnly && !nxtIsTinyText) break
                    if (combinedWeight + nxtWeight > mergeVisibleCharsLimit) break
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

        return merged.ifEmpty { fallbackContentPages(zip) }
    }

    private fun findOpfEntry(zip: ZipFile): String? {
        val containerHeader = zip.getFileHeader("META-INF/container.xml") ?: return null
        return zip.getInputStream(containerHeader).use { stream ->
            val parser = Xml.newPullParser().apply {
                setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
                setInput(stream, null)
            }
            var ev = parser.eventType
            while (ev != XmlPullParser.END_DOCUMENT) {
                if (ev == XmlPullParser.START_TAG && parser.name == "rootfile") {
                    val rawPath = parser.getAttributeValue(null, "full-path")
                        ?: continue.also { ev = parser.next() }
                    return@use try { URLDecoder.decode(rawPath, "UTF-8") } catch (_: Exception) { rawPath }
                }
                ev = parser.next()
            }
            null
        }
    }

    /**
     * Parses an OPF file and returns (manifest, spine, ncxId).
     * ncxId is the manifest id of the NCX toc document, or null if not found.
     */
    private fun parseOpf(stream: InputStream): Triple<Map<String, String>, List<String>, String?> {
        val manifest = mutableMapOf<String, String>()
        val spine    = mutableListOf<String>()
        var ncxId: String? = null
        val parser = Xml.newPullParser().apply {
            setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
            setInput(stream, null)
        }
        var inManifest = false; var inSpine = false
        var ev = parser.eventType
        while (ev != XmlPullParser.END_DOCUMENT) {
            when (ev) {
                XmlPullParser.START_TAG -> when (parser.name.lowercase()) {
                    "manifest" -> inManifest = true
                    "spine"    -> {
                        inSpine = true
                        // EPUB2: toc="ncx-id" attribute on <spine>
                        val tocAttr = parser.getAttributeValue(null, "toc")
                        if (!tocAttr.isNullOrEmpty()) ncxId = tocAttr
                    }
                    "item"     -> if (inManifest) {
                        val id        = parser.getAttributeValue(null, "id")   ?: ""
                        val href      = parser.getAttributeValue(null, "href")  ?: ""
                        val mediaType = parser.getAttributeValue(null, "media-type") ?: ""
                        val props     = parser.getAttributeValue(null, "properties") ?: ""
                        if (id.isNotEmpty() && href.isNotEmpty()) {
                            manifest[id] = href
                            // EPUB2 NCX
                            if (mediaType == "application/x-dtbncx+xml") ncxId = id
                            // EPUB3 nav document
                            if (props.contains("nav")) ncxId = id
                        }
                    }
                    "itemref"  -> if (inSpine) {
                        val idref  = parser.getAttributeValue(null, "idref")  ?: ""
                        val linear = parser.getAttributeValue(null, "linear") ?: "yes"
                        if (idref.isNotEmpty() && linear != "no") spine.add(idref)
                    }
                }
                XmlPullParser.END_TAG -> when (parser.name.lowercase()) {
                    "manifest" -> inManifest = false
                    "spine"    -> inSpine    = false
                }
            }
            ev = parser.next()
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
            if (ext == "ncx") parseNcx(zip, header, ncxEntry, pages)
            else parseNavXhtml(zip, header, ncxEntry, pages)
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
        pages: List<EpubPage>
    ): List<TocEntry> {
        data class RawNav(val title: String, val src: String, val order: Int)

        val result = mutableListOf<RawNav>()
        val parser = Xml.newPullParser().apply {
            setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, false)
            setInput(zip.getInputStream(header), null)
        }

        // Use a stack to handle nested navPoints — we want all levels.
        data class NavState(
            var title: StringBuilder = StringBuilder(),
            var src: String = "",
            var order: Int = 0,
            var inLabel: Boolean = false,
            var inLabelText: Boolean = false
        )
        val stack = ArrayDeque<NavState>()

        var ev = parser.eventType
        while (ev != XmlPullParser.END_DOCUMENT) {
            when (ev) {
                XmlPullParser.START_TAG -> when (parser.name.lowercase()) {
                    "navpoint" -> {
                        val order = parser.getAttributeValue(null, "playOrder")?.toIntOrNull() ?: 0
                        stack.addLast(NavState(order = order))
                    }
                    "navlabel" -> stack.lastOrNull()?.let { it.inLabel = true }
                    "text"     -> stack.lastOrNull()?.let {
                        if (it.inLabel) { it.inLabelText = true; it.title.clear() }
                    }
                    "content"  -> {
                        val src = parser.getAttributeValue(null, "src") ?: ""
                        stack.lastOrNull()?.src = src
                    }
                }
                XmlPullParser.END_TAG -> when (parser.name.lowercase()) {
                    "navpoint" -> {
                        val state = stack.removeLastOrNull()
                        if (state != null) {
                            val t = state.title.toString().trim()
                            if (t.isNotEmpty() && state.src.isNotEmpty()) {
                                result.add(RawNav(t, state.src, state.order))
                            }
                        }
                    }
                    "navlabel" -> stack.lastOrNull()?.let { it.inLabel = false; it.inLabelText = false }
                    "text"     -> stack.lastOrNull()?.let { it.inLabelText = false }
                }
                XmlPullParser.TEXT -> stack.lastOrNull()?.let {
                    if (it.inLabelText) it.title.append(parser.text ?: "")
                }
            }
            ev = parser.next()
        }

        val ncxDir = ncxEntry.substringBeforeLast('/', "")
        return result.sortedBy { it.order }.mapNotNull { nav ->
            val href = try { URLDecoder.decode(nav.src, "UTF-8") } catch (_: Exception) { nav.src }
            srcToPageIndex(href, ncxDir, pages)?.let { TocEntry(nav.title, it) }
        }
    }

    /** Parse EPUB3 nav.xhtml file (looks for <nav epub:type="toc"> or first <nav>). */
    private fun parseNavXhtml(
        zip: ZipFile,
        header: FileHeader,
        navEntry: String,
        pages: List<EpubPage>
    ): List<TocEntry> {
        val raw = zip.getInputStream(header).use { it.readBytes().toString(Charsets.UTF_8) }
        val navDir = navEntry.substringBeforeLast('/', "")

        // Extract all <a href="...">text</a> from the nav document, in order.
        val linkRe = Regex("""<a\b[^>]+\bhref\s*=\s*["']([^"'#][^"']*)["'][^>]*>(.*?)</a>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
        val result = mutableListOf<TocEntry>()
        for (match in linkRe.findAll(raw)) {
            val href  = try { URLDecoder.decode(match.groupValues[1], "UTF-8") } catch (_: Exception) { match.groupValues[1] }
            val title = HTML_TAG_RE.replace(match.groupValues[2], "").trim()
            if (title.isEmpty()) continue
            val pageIdx = srcToPageIndex(href, navDir, pages) ?: continue
            result.add(TocEntry(title, pageIdx))
        }
        return result
    }

    /**
     * Resolves an href (relative to [baseDir]) to the 0-based reader page index
     * of the first chunk of the matching spine item, or null if not found.
     */
    private fun srcToPageIndex(href: String, baseDir: String, pages: List<EpubPage>): Int? {
        val filePart = href.substringBefore('#')
        val entry = normalizePath(if (baseDir.isEmpty()) filePart else "$baseDir/$filePart")
        val idx = pages.indexOfFirst { page ->
            when (page) {
                is EpubPage.Html ->
                    page.entry.equals(entry, ignoreCase = true) && page.chunkIndex == 0
                is EpubPage.SyntheticHtml ->
                    page.entry.equals(entry, ignoreCase = true) && page.chunkIndex == 0
                else -> false
            }
        }
        return if (idx >= 0) idx else null
    }

    private val NAV_FILE_RE = Regex("""(?:toc|nav|navigation|ncx)""", RegexOption.IGNORE_CASE)

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
                    ext in XHTML_EXTENSIONS && !NAV_FILE_RE.matches(base) ->
                        EpubPage.Html(header.fileName, header.fileName.substringBeforeLast('/', ""))
                    else -> null
                }
            }

    private fun readTextEntry(zip: ZipFile, entry: String): String? {
        val header = findHeader(zip, entry) ?: return null
        return try {
            zip.getInputStream(header).use { stream ->
                val bytes = stream.readBytes()
                detectCharset(bytes).let { bytes.toString(it) }
            }
        } catch (_: Exception) {
            null
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

    private fun extractFootnoteItems(zip: ZipFile, entry: String): List<EpubFootnoteItem> {
        val raw = readTextEntry(zip, entry) ?: return emptyList()
        return EpubFootnoteParser.extractItems(raw)
    }

    private fun buildSyntheticNotePages(titleEntry: String, noteEntries: List<String>, zip: ZipFile): List<EpubPage> {
        val noteItems = noteEntries.flatMap { extractFootnoteItems(zip, it) }
        if (noteItems.isEmpty()) {
            return listOf(
                EpubPage.SyntheticHtml(
                    entry = titleEntry,
                    html = buildSyntheticHtml("", includeTitle = true),
                    chunkIndex = 0,
                    totalChunks = 1
                )
            )
        }

        val bodyChunks = mutableListOf<String>()
        val current = StringBuilder()
        var currentChars = 0
        var firstChunk = true

        fun flush() {
            if (current.isEmpty()) return
            bodyChunks += buildSyntheticHtml(current.toString(), includeTitle = firstChunk)
            current.clear()
            currentChars = 0
            firstChunk = false
        }

        for (item in noteItems) {
            val escapedId = escapeHtml(item.anchorId)
            val escapedNum = escapeHtml(item.number)
            val escapedText = escapeHtml(item.text)
            val html = """<p class="note-item" id="$escapedId"><span class="note-num">$escapedNum</span>$escapedText</p>"""
            val chars = item.number.length + item.text.length
            if (currentChars + chars > CHARS_PER_PAGE && currentChars > 0) flush()
            current.append(html)
            currentChars += chars
        }
        flush()

        if (bodyChunks.isEmpty()) {
            bodyChunks += buildSyntheticHtml("", includeTitle = true)
        }

        return bodyChunks.mapIndexed { index, html ->
            EpubPage.SyntheticHtml(
                entry = titleEntry,
                html = html,
                chunkIndex = index,
                totalChunks = bodyChunks.size
            )
        }
    }

    private fun buildSyntheticHtml(content: String, includeTitle: Boolean): String {
        val title = if (includeTitle) "<h1>Примечания</h1>" else ""
        return "<html lang=\"ru\"><head>$CSS_INJECT</head><body>$title$content</body></html>"
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
            val bytes = zip.getInputStream(header).use { it.readBytes() }
            val html = bytes.toString(detectCharset(bytes))
            val body = extractBodyContent(html)
            val keepWholeBody = shouldKeepWholeEpubHtmlBody(body)
            val textCount = HTML_TAG_RE.replace(body, "").count { !it.isWhitespace() }
            val imgCount = Regex("""<\s*(?:img|image)\b""", RegexOption.IGNORE_CASE)
                .findAll(body)
                .count()
            // Files ≤ 8 KB have at most ~2 000 visible chars at 25 % text density — always 1 chunk.
            // Skip the expensive extractChunkBlocks pass for these small spine items.
            val chunkCount = if (keepWholeBody || header.uncompressedSize <= 8_000L) 1
            else resolveEpubHtmlChunkCount(
                blockCharCounts = extractChunkBlocks(body).map { it.visibleCharCount },
                charsPerPage = CHARS_PER_PAGE
            )
            EpubContentEstimate(
                textCharCount = textCount,
                imageTagCount = imgCount,
                chunkCount = chunkCount,
                keepWholeBody = keepWholeBody
            )
        } catch (_: Exception) { EpubContentEstimate(0, 0, 1, keepWholeBody = false) }
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
        val blocks = extractChunkBlocks(html.substring(bodyStart, bodyEnd))
        if (blocks.isEmpty()) return "${head}${bodyOpen}</body></html>"
        val chunkedBlocks = partitionChunkBlocks(blocks, CHARS_PER_PAGE)
        val normalizedChunkIndex = chunkIndex.coerceIn(0, (chunkedBlocks.lastIndex).coerceAtLeast(0))
        val chunkHtml = chunkedBlocks
            .getOrElse(normalizedChunkIndex) { listOf(blocks.last()) }
            .joinToString(separator = "") { it.html }

        return "${head}${bodyOpen}${chunkHtml}</body></html>"
    }

    private fun extractChunkBlocks(bodyHtml: String): List<EpubHtmlChunkBlock> {
        if (shouldKeepWholeEpubHtmlBody(bodyHtml)) {
            val visibleCharCount = HTML_TAG_RE.replace(bodyHtml, "").count { !it.isWhitespace() }
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
        // Normal regex-based path.  Empty blocks (closing wrapper tags like
        // </div>, </span>) are appended to the previous content block instead of
        // being discarded — this preserves DOM structure for standard EPUBs
        // that wrap chapters in <div class="chapter">…</div>.
        val rawBlocks = HTML_BLOCK_RE.findAll(bodyHtml)
            .map { it.value }
            .filter { it.isNotBlank() }
            .toList()
        val result = mutableListOf<EpubHtmlChunkBlock>()
        for (block in rawBlocks) {
            val visibleCharCount = HTML_TAG_RE.replace(block, "").count { !it.isWhitespace() }
            val hasRenderableMedia = Regex(
                """<\s*(?:img|image|svg)\b""",
                RegexOption.IGNORE_CASE
            ).containsMatchIn(block)
            when {
                visibleCharCount > 0 -> result += EpubHtmlChunkBlock(
                    html = block,
                    visibleCharCount = visibleCharCount
                )
                hasRenderableMedia -> result += EpubHtmlChunkBlock(
                    html = block,
                    visibleCharCount = 1
                )
                else -> {
                    // Empty block (e.g. closing </div>) — merge with previous
                    // block to keep the DOM tree intact.
                    if (result.isNotEmpty()) {
                        val prev = result.last()
                        result[result.lastIndex] = prev.copy(
                            html = prev.html + block
                        )
                    }
                    // If no previous block exists, the tag is orphaned — safe to drop.
                }
            }
        }
        return result
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
            if (currentChunk.isNotEmpty() && accumulatedChars >= charsPerPage) {
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

        return chunks
    }

    /**
     * Detects the encoding from an XHTML/HTML byte array.
     *
     * Reads the XML/HTTP-equiv declaration in the first 300 bytes for the declared charset,
     * then validates the body bytes against it.  Some FB2→EPUB converters write
     * `encoding="UTF-8"` in the XML declaration but actually store Windows-1251 bytes;
     * we detect that mismatch and fall back to windows-1251 automatically.
     */
    private fun detectCharset(bytes: ByteArray): java.nio.charset.Charset {
        val peek = bytes.take(300).toByteArray().toString(Charsets.ISO_8859_1)
        val enc  = Regex("""(?:encoding|charset)\s*=\s*["']?([A-Za-z0-9\-]+)""",
            RegexOption.IGNORE_CASE).find(peek)?.groupValues?.get(1) ?: "UTF-8"
        val declared = try { java.nio.charset.Charset.forName(enc) } catch (_: Exception) { Charsets.UTF_8 }
        // If UTF-8 is declared, validate a representative sample of the content bytes.
        // Skip the ASCII XML header (first ~100 bytes) to reach the actual text.
        if (declared == Charsets.UTF_8) {
            val sampleStart = 100.coerceAtMost(bytes.size)
            val sample = bytes.copyOfRange(sampleStart, (sampleStart + 800).coerceAtMost(bytes.size))
            if (!isLikelyValidUtf8(sample)) {
                return runCatching { java.nio.charset.Charset.forName("windows-1251") }
                    .getOrElse { Charsets.UTF_8 }
            }
        }
        return declared
    }

    /**
     * Returns true when [bytes] look like valid UTF-8 multi-byte sequences.
     * Pure ASCII is also considered valid (returns true).
     * A single invalid lead/continuation byte causes an early false return.
     */
    private fun isLikelyValidUtf8(bytes: ByteArray): Boolean {
        if (bytes.isEmpty()) return true
        var i = 0
        var nonAscii = 0
        while (i < bytes.size) {
            val b = bytes[i].toInt() and 0xFF
            when {
                b < 0x80 -> i++                                 // ASCII
                b in 0xC2..0xDF -> {                            // 2-byte lead
                    nonAscii++
                    if (i + 1 >= bytes.size || bytes[i + 1].toInt() and 0xC0 != 0x80) return false
                    i += 2
                }
                b in 0xE0..0xEF -> {                            // 3-byte lead
                    nonAscii++
                    if (i + 2 >= bytes.size ||
                        bytes[i + 1].toInt() and 0xC0 != 0x80 ||
                        bytes[i + 2].toInt() and 0xC0 != 0x80) return false
                    i += 3
                }
                b in 0xF0..0xF4 -> {                            // 4-byte lead
                    nonAscii++
                    if (i + 3 >= bytes.size ||
                        bytes[i + 1].toInt() and 0xC0 != 0x80 ||
                        bytes[i + 2].toInt() and 0xC0 != 0x80 ||
                        bytes[i + 3].toInt() and 0xC0 != 0x80) return false
                    i += 4
                }
                else -> return false                            // bare continuation or overlong
            }
        }
        return true   // pure ASCII or well-formed multi-byte sequences
    }

    private fun findHeader(zip: ZipFile, entry: String): FileHeader? {
        zip.getFileHeader(entry)?.let { return it }
        // Fallback: case-insensitive match by filename only.
        // Some EPUBs store "Image.JPG" in the ZIP but reference "image.jpg" in the OPF.
        val name = entry.substringAfterLast('/').lowercase()
        return zip.fileHeaders.find { it.fileName.substringAfterLast('/').lowercase() == name }
    }

    private fun ensureZip(): ZipFile? {
        synchronized(lock) {
            zipFile?.let { return it }
            return try {
                val filePath = if (path.startsWith("content://")) {
                    val uri = Uri.parse(path)
                    val dir = File(context.cacheDir, "epub_cache").apply { mkdirs() }
                    val tmp = File(dir, "epub_${uri.hashCode()}.epub")
                    if (!tmp.exists() || tmp.length() == 0L) {
                        context.contentResolver.openInputStream(uri)?.use { input ->
                            tmp.outputStream().use { output -> input.copyTo(output) }
                        } ?: return null
                    }
                    tempFile = tmp
                    tmp.absolutePath
                } else {
                    path
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
