package io.leostrange.mrcomic.engine.formats.epub

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.provider.OpenableColumns
import android.util.Log
import io.leostrange.mrcomic.engine.formats.base.log.perfNowMs
import io.leostrange.mrcomic.engine.formats.base.log.safeLogE
import io.leostrange.mrcomic.engine.formats.base.log.safeLogW
import io.leostrange.mrcomic.engine.formats.base.charset.detectBomCharset
import io.leostrange.mrcomic.engine.formats.base.charset.hasUtf8Bom
import io.leostrange.mrcomic.engine.formats.base.charset.isStrictUtf8
import io.leostrange.mrcomic.engine.api.EpubCacheEntry
import io.leostrange.mrcomic.engine.api.EpubCacheStore
import com.google.gson.Gson
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.FormatReaderWebResource
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.engine.formats.text.ReflowableTextFormatReader
import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import io.leostrange.mrcomic.engine.formats.text.withSequentialIndices
import io.leostrange.mrcomic.engine.formats.base.EPUB_READER_DOCUMENT_CSS
import io.leostrange.mrcomic.engine.formats.base.buildReaderDocumentHead
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

/**
 * Elapsed-time source for perf instrumentation. Uses [System.nanoTime] (monotonic, JVM-portable)
 * so timing works on-device and in plain JVM unit tests, unlike android.os.SystemClock.
 */
/** TEMP perf instrumentation (P-perf): logs elapsed ms of a phase on the EPUB open path. */
private inline fun <T> perfPhase(label: String, block: () -> T): T {
    val start = perfNowMs()
    val result = block()
    runCatching { Log.i("EpubPerf", "$label: ${perfNowMs() - start} ms") }
    return result
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
    private val structureCache: EpubCacheStore? = null,
    private val manifestCache: EpubCacheStore? = null
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
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
        private val XHTML_EXTENSIONS = setOf("xhtml", "html", "htm")
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

    // Memoized spine-item classifications. These are pure functions of an entry's content but were
    // recomputed O(n²) times inside the merge pass of buildPagesFromOpf (each call re-read the zip
    // entry and, for title detection, ran a full Jsoup.parse) — the dominant cost of opening an EPUB
    // (~49 s for a 15-item book). One boolean per spine entry, so unbounded is fine.
    private val notesTitlePageCache = java.util.concurrent.ConcurrentHashMap<String, Boolean>()
    private val footnotePageCache = java.util.concurrent.ConcurrentHashMap<String, Boolean>()
    private val titleOnlySpinePageCache = java.util.concurrent.ConcurrentHashMap<String, Boolean>()

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
                    val r = EpubManifestParser.parseOpfRegex(opfText)
                    Triple(r.manifest, r.spine, r.ncxId)
                }.recoverCatching {
                    parseOpf(opfBytes.inputStream())
                }.getOrElse { error ->
                    safeLogW(TAG, "Failed to parse OPF for manifest cache", error)
                    return@lazy null
                }
                if (manifest.isEmpty() || spine.isEmpty()) {
                    return@lazy null
                }
                val isPublisherEpub = EpubManifestParser.detectPublisherEpub(opfText, manifest, spine)
                val repairFrontMatter = EpubManifestParser.shouldRepairFrontMatter(opfText, manifest, spine)
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
                perfPhase("manifestBuilt(spine=${blueprint.spine.size})") { }
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
                perfPhase("buildPagesFromBlueprint(spine=${blueprint.spine.size})") {
                    buildPagesFromBlueprint(blueprint, zip).ifEmpty { fallbackPages }
                }
            }.getOrElse { error ->
                safeLogW(TAG, "Failed to build EPUB pages from manifest cache", error)
                fallbackPages
            }
            val parsed = ParsedEpub(pages = pages)
            perfPhase("storeParsedInCache(pages=${pages.size})") { storeParsedInCache(cacheKey, parsed) }
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
        perfPhase("getPageCount(total)") {
            val sectionCount = textSectionPages.size
            if (sectionCount > 0) sectionCount else pages.size
        }
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
        // Do not force textDocumentSections here. Building its HTML for every spine item
        // made the first reader page wait for the whole EPUB to be unpacked.
        val sectionPage = textSectionPages.getOrNull(index)
        when (val page = sectionPage) {
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
        val page = sectionPage as? EpubPage.Html ?: return@withContext null
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
        return when (val page = textSectionPages.getOrNull(index)) {
            is EpubPage.Html -> page.entry
            is EpubPage.Image -> page.entry
            is EpubPage.SyntheticHtml -> page.entry
            else -> null
        }
    }

    /**
     * Lightweight section index. Unlike [textDocumentSections], this never reads XHTML.
     * It keeps the reader's section coordinate space available during the first paint.
     */
    private val textSectionPages: List<EpubPage> by lazy {
        val seenSpineKeys = mutableSetOf<String>()
        pages.filter { page ->
            when (page) {
                is EpubPage.Image -> seenSpineKeys.add(page.entry)
                is EpubPage.Html -> page.chunkIndex == 0 && seenSpineKeys.add(page.entry)
                is EpubPage.SyntheticHtml -> page.chunkIndex == 0 && seenSpineKeys.add("syn:${page.entry}")
            }
        }
    }

    private val textDocumentSections: List<TextDocumentSection> by lazy {
        perfPhase("buildTextDocumentSections") { buildTextDocumentSections() }
    }

    override suspend fun getTextDocumentSections(): List<TextDocumentSection> = withContext(Dispatchers.IO) {
        textDocumentSections
    }

    /**
     * Spine-level sections for TEXT PAGE/WEBTOON: one section per XHTML spine item without
     * the legacy [CHUNK_CHARS_PER_PAGE] chunk split. Viewport pagination happens in feature-reader.
     */
    private fun buildTextDocumentSections(): List<TextDocumentSection> {
        if (pages.isEmpty()) return emptyList()
        val zip = ensureZip() ?: return emptyList()
        val sections = mutableListOf<TextDocumentSection>()
        textSectionPages.forEach { page ->
            when (page) {
                is EpubPage.Image -> {
                    val html = renderImageSpineItemHtml(page.entry, zip) ?: return@forEach
                    sections += TextDocumentSection(
                        index = sections.size,
                        id = page.entry,
                        html = html
                    )
                }
                is EpubPage.Html -> {
                    val html = renderSpineSectionHtml(page, zip) ?: return@forEach
                    sections += TextDocumentSection(
                        index = sections.size,
                        id = page.entry,
                        html = html
                    )
                }
                is EpubPage.SyntheticHtml -> {
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
    private fun extractBodyContent(html: String): String = runCatching {
        val bodyStart = Regex("<body[^>]*>", RegexOption.IGNORE_CASE).find(html)
            ?.let { it.range.last + 1 } ?: 0
        val bodyEnd = html.lastIndexOf("</body>").let { if (it < 0) html.length else it }
        html.substring(bodyStart, bodyEnd.coerceAtLeast(bodyStart))
    }.getOrElse { html }

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
        
        // Try resolved file name first; if not found, search by prefix on all
        // chunkIndices — not just chunkIndex==0 (P1 #8)
        val baseResult = resolveFileNameToPageIndex(filePart, parsed.pages)
            ?.let { mapLegacyPageIndexToSectionIndex(it) }
        if (baseResult != null) return baseResult
        
        // Fallback: search pages whose entries end with this filePart
        // (handles cases where the same XHTML file appears with different chunk indices)
        return parsed.pages.indices.firstOrNull { index ->
            val page = parsed.pages[index]
            when (page) {
                is EpubPage.Html -> page.entry.endsWith(filePart, ignoreCase = true) ||
                    page.extraEntries.any { it.endsWith(filePart, ignoreCase = true) }
                is EpubPage.SyntheticHtml -> 
                    page.entry.endsWith(filePart, ignoreCase = true) ||
                    page.sourceEntries.any { it.endsWith(filePart, ignoreCase = true) }
                else -> false
            }
        }?.let { mapLegacyPageIndexToSectionIndex(it) }
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
        // IMPORTANT: cache clearing happens OUTSIDE synchronized(lock). Holding `lock`
        // (the ZipFile lifecycle guard) while also acquiring the htmlCache/textEntryCache/
        // pageHtmlCache monitors creates an AB-BA lock-order inversion with the read path,
        // which acquires a cache monitor and then `lock` (e.g. to load a page). Two threads
        // doing close() vs. read() could deadlock. Clear caches after releasing `lock`.
        synchronized(lock) {
            try { zipFile?.close() } catch (_: Exception) {}
            zipFile = null
            tempFile?.let { runCatching { it.delete() } }
            tempFile = null
        }
        synchronized(htmlCache) { htmlCache.clear() }
        synchronized(textEntryCache) { textEntryCache.clear() }
        synchronized(pageHtmlCache) { pageHtmlCache.clear() }
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
        if (path.isBlank()) return null
        if (path.startsWith("content://")) {
            return EpubCacheKey(
                filePath = path,
                fileSize = path.hashCode().toLong(),
                lastModified = 0L
            )
        }
        val file = runCatching { File(path).canonicalFile }.getOrElse { File(path).absoluteFile }
        if (!file.isFile) return null
        return EpubCacheKey(
            filePath = file.path,
            fileSize = file.length(),
            lastModified = file.lastModified()
        )
    }

    private fun loadManifestFromCache(cacheKey: EpubCacheKey?): ManifestBlueprint? =
        EpubCacheSerializer.loadManifestFromCache(cacheKey, manifestCache)

    private fun storeManifestInCache(cacheKey: EpubCacheKey?, blueprint: ManifestBlueprint) =
        EpubCacheSerializer.storeManifestInCache(cacheKey, blueprint, manifestCache)

    private fun loadParsedFromCache(cacheKey: EpubCacheKey?): ParsedEpub? =
        EpubCacheSerializer.loadParsedFromCache(cacheKey, structureCache)

    private fun storeParsedInCache(cacheKey: EpubCacheKey?, parsed: ParsedEpub) =
        EpubCacheSerializer.storeParsedInCache(cacheKey, parsed, structureCache)

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

        val __t0 = perfNowMs()

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
                        val __et = perfNowMs()
                        val e = estimateContent(zip, entry)
                        runCatching { Log.i("EpubPerf", "    estimateContent[$entry]: ${perfNowMs() - __et} ms (chunks=${e.chunkCount})") }
                        e
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

        runCatching { Log.i("EpubPerf", "  phase.spineLoop: ${perfNowMs() - __t0} ms (${rawResult.size} raw pages)") }
        val __t1 = perfNowMs()

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
        val mergeVisibleCharsLimit = CHUNK_CHARS_PER_PAGE.coerceAtMost(1_900)
        runCatching { Log.i("EpubPerf", "  phase.normalize: ${perfNowMs() - __t1} ms") }
        val __t2 = perfNowMs()

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
                    startIsTitleOnly -> CHUNK_CHARS_PER_PAGE * 2
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

        runCatching { Log.i("EpubPerf", "  phase.merge: ${perfNowMs() - __t2} ms") }

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
                EpubManifestParser.extractOpfPathFromContainer(containerXml)
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
        val result = EpubManifestParser.parseOpf(rawOpf)
        return Triple(result.manifest, result.spine, result.ncxId)
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
            val title = CHUNK_HTML_TAG_RE.replace(match.groupValues[2], "").trim()
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
    private fun isFootnoteTocEntry(href: String, title: String): Boolean =
        EpubFootnoteResolver.isFootnoteTocEntry(href, title)

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

    private fun isTitleOnlySpinePage(zip: ZipFile, entry: String): Boolean =
        titleOnlySpinePageCache.getOrPut(entry) {
            if (isHeadingOnlySpinePage(zip, entry)) return@getOrPut true
            val raw = readTextEntry(zip, entry) ?: return@getOrPut false
            val document = Jsoup.parse(raw)
            document.outputSettings(Document.OutputSettings().prettyPrint(false))
            val body = document.body() ?: return@getOrPut false
            val visibleText = body.text()
                .replace('\u00A0', ' ')
                .trim()
            if (visibleText.length > 160) return@getOrPut false
            if (body.select("img,svg,image,figure").isNotEmpty()) return@getOrPut false
            val titleLike = CHAPTER_TITLE_RE.containsMatchIn(visibleText) ||
                (visibleText.length <= 80 && body.select("p,div,h1,h2,h3,h4").size <= 2)
            if (!titleLike) return@getOrPut false
            !body.select("p,li,blockquote,pre,td").any { element ->
                val text = element.text().replace('\u00A0', ' ').trim()
                text.isNotBlank() && text.length > 48 && !CHAPTER_TITLE_RE.containsMatchIn(text)
            }
        }

    private fun isNotesTitlePage(zip: ZipFile, entry: String): Boolean =
        notesTitlePageCache.getOrPut(entry) {
            val raw = readTextEntry(zip, entry) ?: return@getOrPut false
            EpubFootnoteParser.hasNotesTitle(raw)
        }

    private fun isFootnotePage(zip: ZipFile, entry: String): Boolean =
        footnotePageCache.getOrPut(entry) {
            extractFootnoteItems(zip, entry).isNotEmpty()
        }

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

    private fun epubFootnoteLookupCandidates(anchorId: String): List<String> =
        EpubFootnoteResolver.lookupCandidates(anchorId)

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
            if (currentChars + chars > CHUNK_CHARS_PER_PAGE && currentChars > 0) flush()
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
            val textCount = CHUNK_HTML_TAG_RE.replace(body, "").count { !it.isWhitespace() }
            val keepWholeBody = shouldKeepWholeEpubHtmlBody(body) && textCount <= CHUNK_CHARS_PER_PAGE * 2
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
            else estimateChunkCount(body, textCount, CHUNK_CHARS_PER_PAGE)
            EpubContentEstimate(
                textCharCount = textCount,
                imageTagCount = effectiveImgCount,
                chunkCount = chunkCount,
                keepWholeBody = keepWholeBody
            )
        } catch (_: Exception) { EpubContentEstimate(0, 0, 1, keepWholeBody = false) }
    }




    private fun detectCharset(bytes: ByteArray): Charset = detectEpubTextCharset(bytes)

    private fun findHeader(zip: ZipFile, entry: String): FileHeader? =
        EpubArchiveAccess.findHeader(zip, entry)

    private fun epubMimeTypeFor(extension: String): String =
        EpubArchiveAccess.mimeTypeFor(extension)

    private fun epubTextEncodingFor(extension: String): String? =
        EpubArchiveAccess.textEncodingFor(extension)

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

    private fun normalizePath(p: String): String = EpubArchiveAccess.normalizePath(p)
}
