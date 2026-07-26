package io.leostrange.mrcomic.engine.formats.epub

import io.leostrange.mrcomic.engine.formats.base.FormatReaderWebResource
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import java.util.concurrent.ConcurrentHashMap

// extractBodyContent is a top-level function in EpubHtmlNormalizer.kt, same package
// No import needed, but we reference it via EpubHtmlNormalizer.extractBodyContent

/**
 * Renders EPUB spine items into HTML for the reader.
 *
 * Extracted from EpubFormatReader to reduce its size.
 * Owns the [htmlCache] for rendered HTML fragments.
 */
internal class EpubHtmlRenderer(
    private val contentAnalyzer: EpubContentAnalyzer,
    private val findHeader: (ZipFile, String) -> FileHeader?,
    private val detectCharset: (ByteArray) -> java.nio.charset.Charset,
    private val cssInject: String,
    private val prepareDocument: (html: String, readerCss: String, xhtmlEntryPath: String, assetExists: (String) -> Boolean) -> String,
    private val sanitizeCss: (css: String, cssEntryPath: String, assetExists: (String) -> Boolean) -> String,
    private val epubMimeTypeFor: (String) -> String,
    private val epubTextEncodingFor: (String) -> String?,
    private val logW: (String, String, Throwable?) -> Unit
) {
    /** Cache for rendered HTML fragments. Keyed by entry path or synthetic key. */
    val htmlCache = ConcurrentHashMap<String, String>()

    /**
     * Renders an image spine item as a full HTML document with centered image layout.
     * Returns null if the entry is not found in the ZIP.
     */
    fun renderImageSpineItemHtml(entry: String, zip: ZipFile): String? {
        synchronized(htmlCache) { htmlCache["img:$entry"] }?.let { return it }
        if (findHeader(zip, entry) == null) return null
        val fileName = entry.substringAfterLast('/')
        val body = contentAnalyzer.buildSyntheticHtml(
            content = """<div class="mrcomic-image-page"><img src="$fileName" alt="" /></div>""",
            includeTitle = false
        )
        val html = prepareDocument(
            body,
            cssInject + """
                body[data-mrcomic-preserve-layout='true']{margin:0;padding:0;display:flex;align-items:center;justify-content:center;min-height:var(--mrcomic-page-visible-height,100vh);}
                .mrcomic-image-page{display:flex;align-items:center;justify-content:center;width:100%;min-height:var(--mrcomic-page-visible-height,100vh);}
                .mrcomic-image-page img{max-width:100%;max-height:var(--mrcomic-page-visible-height,100vh);width:auto;height:auto;object-fit:contain;}
            """.trimIndent(),
            entry
        ) { candidate -> findHeader(zip, candidate) != null }
        synchronized(htmlCache) { htmlCache["img:$entry"] = html }
        return html
    }

    /**
     * Renders a single XHTML spine item as a full HTML document.
     * Returns null if the entry is not found or cannot be read.
     */
    fun renderFullSpineItemHtml(page: EpubPage.Html, zip: ZipFile): String? {
        synchronized(htmlCache) { htmlCache[page.entry] }?.let { return it }
        val header = findHeader(zip, page.entry) ?: return null
        val raw = try {
            zip.getInputStream(header).use { stream ->
                val bytes = stream.readBytes()
                detectCharset(bytes).let { charset -> bytes.toString(charset) }
            }
        } catch (e: Exception) {
            logW("EpubPerf", "Failed to read spine item ${page.entry}", e)
            return null
        }
        val html = prepareDocument(
            raw,
            cssInject,
            page.entry
        ) { candidate -> findHeader(zip, candidate) != null }
        synchronized(htmlCache) { htmlCache[page.entry] = html }
        return html
    }

    /**
     * Renders a full spine section HTML including merged [EpubPage.Html.extraEntries] bodies.
     * Extra entries (e.g., footnote files) are wrapped in a hidden container so they don't
     * participate in layout, scrollWidth, scrollHeight, or pageCount.
     */
    fun renderSpineSectionHtml(page: EpubPage.Html, zip: ZipFile): String? {
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
        // FOOTNOTE-01: Wrap footnote bodies in a hidden container so they don't
        // participate in layout, scrollWidth, scrollHeight, or pageCount.
        // The content is still in the DOM for popup retrieval via getFootnoteText().
        val hiddenContainer = """<div id="__mrcomic_footnote_storage" style="display:none!important;position:absolute!important;height:0!important;width:0!important;overflow:hidden!important;">""" +
            extraBodies.joinToString("") +
            "</div>"
        val merged = firstHtml.replace(
            "</body>",
            hiddenContainer + "</body>",
            ignoreCase = true
        )
        synchronized(htmlCache) { htmlCache[cacheKey] = merged }
        return merged
    }

    /**
     * Renders a web resource for an HTML asset (CSS, image, font, etc.).
     * Used by [EpubFormatReader.openHtmlAsset].
     */
    fun renderHtmlAsset(path: String, zip: ZipFile): FormatReaderWebResource? {
        return try {
            val normalizedPath = EpubArchiveAccess.normalizePath(
                try {
                    java.net.URLDecoder.decode(path.substringBefore('#').substringBefore('?'), "UTF-8")
                } catch (_: Exception) {
                    path.substringBefore('#').substringBefore('?')
                }
            )
            val header = findHeader(zip, normalizedPath) ?: return null
            val bytes = zip.getInputStream(header).use(java.io.InputStream::readBytes)
            val extension = header.fileName.substringAfterLast('.', "").lowercase()
            when (extension) {
                "css" -> {
                    val sanitizedCss = sanitizeCss(
                        bytes.toString(detectCharset(bytes)),
                        header.fileName
                    ) { candidate -> findHeader(zip, candidate) != null }
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
            logW("EpubPerf", "Failed to open EPUB asset: $path", e)
            null
        }
    }

    /** Extracts body content and wraps it in a `<section epub-merged-section>` element. */
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
}
