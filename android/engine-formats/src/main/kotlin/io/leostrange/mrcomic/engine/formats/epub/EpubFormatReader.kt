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
import kotlinx.coroutines.withContext
import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.parser.Parser as JsoupXmlParser
import java.io.File
import java.io.InputStream
import java.net.URLDecoder
import java.nio.charset.Charset

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
        private val CACHE_GSON = Gson()
        private val IMAGE_EXTENSIONS = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
        private val XHTML_EXTENSIONS = setOf("xhtml", "html", "htm")
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

    private val contentAnalyzer by lazy {
        EpubContentAnalyzer(
            textEntryCache = textEntryCache,
            titleOnlySpinePageCache = titleOnlySpinePageCache,
            notesTitlePageCache = notesTitlePageCache,
            footnotePageCache = footnotePageCache,
            chapterTitleRe = CHAPTER_TITLE_RE,
            frontMatterEntryRe = FRONT_MATTER_ENTRY_RE,
            xhtmlExtensions = XHTML_EXTENSIONS,
            cssInject = CSS_INJECT,
            findHeader = { zip, entry -> EpubArchiveAccess.findHeader(zip, entry) },
            detectCharset = { bytes -> detectEpubTextCharset(bytes) }
        )
    }

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
    private val tocResolver by lazy {
        EpubTocResolver(
            pages = pages,
            sectionIndexMapper = { legacyIndex -> mapLegacyPageIndexToSectionIndex(legacyIndex) },
            findHeader = { zip, entry -> EpubArchiveAccess.findHeader(zip, entry) },
            detectCharset = { bytes -> detectEpubTextCharset(bytes) },
            textEntryReader = { zip, entry -> contentAnalyzer.readTextEntry(zip, entry) },
            zipProvider = { ensureZip() },
            extractChunk = { html, chunkIndex, totalChunks -> extractChunk(html, chunkIndex, totalChunks) }
        )
    }
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
            contentAnalyzer.buildFootnoteMap(blueprint.manifest, blueprint.spine, blueprint.opfDir, zip)
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
                                contentAnalyzer.buildSyntheticHtml(body, includeTitle = true)
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
        val body = contentAnalyzer.buildSyntheticHtml(
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
        return EpubFootnoteResolver.lookupCandidates(anchorId).firstNotNullOfOrNull { candidate ->
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
        return tocResolver.resolveHrefToPage(normalizedHref)
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
        return tocResolver.parseToc(zip, blueprint.opfDir, ncxHref)
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
        val isSpecialFlavor = flavor in setOf(EPUB_FLAVOR_FB2, EPUB_FLAVOR_CALIBRE, EPUB_FLAVOR_PUBLISHER)
        val ctx = SpineBuildContext()

        val __t0 = perfNowMs()
        buildSpinePages(manifest, spine, opfDir, zip, forceWholeHtmlEntries, isSpecialFlavor, ctx)
        if (isSpecialFlavor) {
            return if (ctx.rawResult.isNotEmpty()) ctx.rawResult
            else if (allowFallback) fallbackContentPages(zip) else emptyList()
        }
        runCatching { Log.i("EpubPerf", "  phase.spineLoop: ${perfNowMs() - __t0} ms (${ctx.rawResult.size} raw pages)") }

        val __t1 = perfNowMs()
        val normalized = normalizeNoteSections(ctx.rawResult, zip)
        runCatching { Log.i("EpubPerf", "  phase.normalize: ${perfNowMs() - __t1} ms") }

        val __t2 = perfNowMs()
        val merged = mergeTinyPages(normalized, ctx, zip)
        val filtered = filterZeroWeightPages(merged, ctx)
        runCatching { Log.i("EpubPerf", "  phase.merge: ${perfNowMs() - __t2} ms") }

        return if (filtered.isNotEmpty()) filtered else if (allowFallback) fallbackContentPages(zip) else emptyList()
    }

    /** Mutable state shared across [buildPagesFromOpf] phases. */
    private class SpineBuildContext {
        val rawResult = mutableListOf<EpubPage>()
        val htmlVisibleChars = mutableMapOf<String, Int>()
        val imageOnlyHtmlEntries = mutableSetOf<String>()
        val keepWholeBodyEntries = mutableSetOf<String>()
        val protectedFrontMatterEntries = mutableSetOf<String>()
    }

    /** Phase 1: iterate spine items and build raw [EpubPage] list. */
    private fun buildSpinePages(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile,
        forceWholeHtmlEntries: Boolean,
        isSpecialFlavor: Boolean,
        ctx: SpineBuildContext
    ) {
        spineLoop@ for (idref in spine) {
            val rawHref = manifest[idref] ?: continue
            val hrefDecoded = try { URLDecoder.decode(rawHref, "UTF-8") } catch (_: Exception) { rawHref }
            val href = hrefDecoded.substringBefore('#')
            val entry = normalizePath(if (opfDir.isEmpty()) href else "$opfDir/$href")
            val ext = entry.substringAfterLast('.', "").lowercase()
            val header = findHeader(zip, entry) ?: continue
            when {
                ext in IMAGE_EXTENSIONS ->
                    ctx.rawResult.add(EpubPage.Image(entry))
                ext in XHTML_EXTENSIONS -> {
                    val isProtectedFrontMatter = contentAnalyzer.isProtectedFrontMatterEntry(entry)
                    if (isProtectedFrontMatter) ctx.protectedFrontMatterEntries += entry
                    val estimate = if (forceWholeHtmlEntries || isProtectedFrontMatter) {
                        EpubContentEstimate(1, 0, 1, keepWholeBody = true)
                    } else {
                        val __et = perfNowMs()
                        val e = contentAnalyzer.estimateContent(zip, entry)
                        runCatching { Log.i("EpubPerf", "    estimateContent[$entry]: ${perfNowMs() - __et} ms (chunks=${e.chunkCount})") }
                        e
                    }
                    val charCount = estimate.textCharCount
                    val imgCount = estimate.imageTagCount
                    ctx.htmlVisibleChars[entry] = charCount.coerceAtLeast(if (imgCount > 0) 1 else 0)
                    if (charCount == 0 && imgCount > 0) ctx.imageOnlyHtmlEntries += entry
                    if (estimate.keepWholeBody) ctx.keepWholeBodyEntries += entry
                    if (charCount == 0 && imgCount == 0) {
                        if (isSpecialFlavor && header.uncompressedSize > 0) {
                            ctx.rawResult.add(EpubPage.Html(entry, opfDir, 0, 1))
                        }
                        continue@spineLoop
                    }
                    repeat(estimate.chunkCount) { i ->
                        ctx.rawResult.add(EpubPage.Html(entry, opfDir, i, estimate.chunkCount))
                    }
                }
            }
        }
    }

    /** Phase 2: consolidate adjacent note sections into synthetic pages. */
    private fun normalizeNoteSections(rawResult: List<EpubPage>, zip: ZipFile): List<EpubPage> {
        val normalized = mutableListOf<EpubPage>()
        var i = 0
        while (i < rawResult.size) {
            val pg = rawResult[i]
            if (pg is EpubPage.Html && pg.totalChunks == 1 && contentAnalyzer.isNotesTitlePage(zip, pg.entry)) {
                val noteEntries = mutableListOf<String>()
                var j = i + 1
                while (j < rawResult.size) {
                    val nxt = rawResult[j] as? EpubPage.Html ?: break
                    if (nxt.totalChunks != 1 || !contentAnalyzer.isFootnotePage(zip, nxt.entry)) break
                    noteEntries.add(nxt.entry)
                    j++
                }
                if (noteEntries.isNotEmpty()) {
                    normalized.addAll(contentAnalyzer.buildSyntheticNotePages(pg.entry, noteEntries, zip))
                    i = j
                    continue
                }
            }
            normalized.add(pg)
            i++
        }
        return normalized
    }

    /** Phase 3: merge tiny adjacent pages into larger groups. */
    private fun mergeTinyPages(
        normalized: List<EpubPage>,
        ctx: SpineBuildContext,
        zip: ZipFile
    ): List<EpubPage> {
        val merged = mutableListOf<EpubPage>()
        val mergeVisibleCharsLimit = CHUNK_CHARS_PER_PAGE.coerceAtMost(1_900)

        fun isMergeSafePage(page: EpubPage.Html): Boolean {
            if (page.totalChunks != 1) return false
            if (contentAnalyzer.isNotesTitlePage(zip, page.entry) || contentAnalyzer.isFootnotePage(zip, page.entry)) return false
            if (page.entry in ctx.imageOnlyHtmlEntries) return false
            if (contentAnalyzer.isTitleOnlySpinePage(zip, page.entry)) return true
            if (page.entry in ctx.keepWholeBodyEntries) return false
            if (page.entry in ctx.protectedFrontMatterEntries) return false
            return true
        }

        fun mergeWeight(page: EpubPage.Html): Int =
            ctx.htmlVisibleChars[page.entry]?.coerceAtLeast(if (page.entry in ctx.imageOnlyHtmlEntries) 1 else 0)
                ?: if (page.entry in ctx.imageOnlyHtmlEntries) 1 else 0

        var i = 0
        while (i < normalized.size) {
            val pg = normalized[i]
            if (pg is EpubPage.Html && isMergeSafePage(pg)) {
                val startWeight = mergeWeight(pg)
                val startIsImageOnly = pg.entry in ctx.imageOnlyHtmlEntries
                val startIsTitleOnly = contentAnalyzer.isTitleOnlySpinePage(zip, pg.entry)
                val startIsTinyText = startWeight in 1 until mergeVisibleCharsLimit
                if (!startIsImageOnly && !startIsTinyText && !startIsTitleOnly) {
                    merged.add(pg); i++; continue
                }
                val mergeLimit = when {
                    startIsImageOnly -> 420
                    startIsTitleOnly -> CHUNK_CHARS_PER_PAGE * 2
                    pg.entry in ctx.keepWholeBodyEntries -> 420
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
                    val nxtIsImageOnly = nxt.entry in ctx.imageOnlyHtmlEntries
                    val nxtIsTinyText = nxtWeight in 1 until mergeVisibleCharsLimit
                    val needsBodyFollowUp = startIsTitleOnly && !mergedBodyFollowUp
                    if (!nxtIsImageOnly && !nxtIsTinyText) {
                        if (!needsBodyFollowUp) break
                        if (combinedWeight + nxtWeight > mergeLimit) break
                        extras.add(nxt.entry); combinedWeight += nxtWeight; mergedBodyFollowUp = true
                        j++; break
                    }
                    if (combinedWeight + nxtWeight > mergeLimit) break
                    if (extras.size >= 4) break
                    extras.add(nxt.entry); combinedWeight += nxtWeight; j++
                }
                merged.add(pg.copy(extraEntries = extras))
                i = j; continue
            }
            merged.add(pg); i++
        }
        return merged
    }

    /** Phase 4: remove pages with zero visible weight. */
    private fun filterZeroWeightPages(merged: List<EpubPage>, ctx: SpineBuildContext): List<EpubPage> =
        merged.filterNot { page ->
            when (page) {
                is EpubPage.Html -> {
                    if (page.entry in ctx.imageOnlyHtmlEntries) return@filterNot false
                    val primaryWeight = ctx.htmlVisibleChars[page.entry] ?: 0
                    val extraWeight = page.extraEntries.sumOf { ctx.htmlVisibleChars[it] ?: 0 }
                    primaryWeight + extraWeight <= 0
                }
                else -> false
            }
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
                        contentAnalyzer.shouldIncludeFallbackHtml(zip, header) ->
                        EpubPage.Html(header.fileName, header.fileName.substringBeforeLast('/', ""))
                    else -> null
                }
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
