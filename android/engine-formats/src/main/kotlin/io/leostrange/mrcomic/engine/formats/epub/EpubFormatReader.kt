package io.leostrange.mrcomic.engine.formats.epub

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
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
import java.io.File

/**
 * TEMP perf instrumentation: logs elapsed ms of a phase on the EPUB open path.
 * Uses [System.nanoTime] (monotonic, JVM-portable) so timing works on-device and in unit tests.
 */
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

    /** Renders spine items into HTML for the reader. Initialized lazily on first use. */
    private val htmlRenderer by lazy {
        EpubHtmlRenderer(
            contentAnalyzer = contentAnalyzer,
            findHeader = { zip, entry -> EpubArchiveAccess.findHeader(zip, entry) },
            detectCharset = { bytes -> detectEpubTextCharset(bytes) },
            cssInject = CSS_INJECT,
            prepareDocument = { html, readerCss, xhtmlEntryPath, assetExists ->
                prepareAssetBackedEpubDocument(html, readerCss, xhtmlEntryPath, assetExists)
            },
            sanitizeCss = { css, cssEntryPath, assetExists ->
                sanitizeAssetBackedEpubCss(css, cssEntryPath, assetExists)
            },
            epubMimeTypeFor = { ext -> EpubArchiveAccess.mimeTypeFor(ext) },
            epubTextEncodingFor = { ext -> EpubArchiveAccess.textEncodingFor(ext) },
            logW = { tag, msg, e -> safeLogW(tag, msg, e) }
        )
    }

    /** Manages ZIP file lifecycle. Initialized lazily on first use. */
    private val archiveManager by lazy {
        EpubArchiveManager(
            context = context,
            path = path,
            logW = { tag, msg, e -> safeLogW(tag, msg, e) },
            logE = { tag, msg, e -> safeLogE(tag, msg, e) }
        )
    }

    /** Builds spine pages from OPF manifest data. Initialized lazily on first use. */
    private val spineBuilder by lazy {
        SpineBuilder(
            contentAnalyzer = contentAnalyzer,
            findHeader = { zip, entry -> EpubArchiveAccess.findHeader(zip, entry) },
            detectCharset = { bytes -> detectEpubTextCharset(bytes) },
            normalizePath = { p -> EpubArchiveAccess.normalizePath(p) },

            imageExtensions = IMAGE_EXTENSIONS,
            xhtmlExtensions = XHTML_EXTENSIONS,
            epubFlavorStandard = EPUB_FLAVOR_STANDARD,
            epubFlavorFb2 = EPUB_FLAVOR_FB2,
            epubFlavorCalibre = EPUB_FLAVOR_CALIBRE,
            epubFlavorPublisher = EPUB_FLAVOR_PUBLISHER
        )
    }

    /** LRU cache: (entry path → inlined HTML). 8 entries cover forward/backward navigation. */
    private val htmlCache = object : LinkedHashMap<String, String>(12, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, String>?) = size > 8
    }
    private val textEntryCache = object : LinkedHashMap<String, String>(20, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<String, String>?) = size > 16
    }
    private val pageHtmlCache = object : LinkedHashMap<Int, String>(16, 0.75f, true) {
        override fun removeEldestEntry(eldest: MutableMap.MutableEntry<Int, String>?) = size > 12
    }

    // Memoized O(n²)→O(n) spine-item classifications (one boolean per entry, unbounded is fine).
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
            EpubCacheSerializer.loadManifestFromCache(cacheKey, manifestCache)?.let { return@lazy it }
            val zip = archiveManager.ensureZip() ?: return@lazy null
            // Find OPF entry (container.xml → first .opf fallback)
            val opfEntry: String? = run {
                val containerHeader = zip.getFileHeader("META-INF/container.xml")
                val fromContainer = containerHeader?.let { header ->
                    zip.getInputStream(header).use { stream ->
                        EpubManifestParser.extractOpfPathFromContainer(decodeEpubText(stream.readBytes()))
                    }
                }
                fromContainer?.takeIf { it.isNotBlank() }
                    ?: zip.fileHeaders.firstOrNull { !it.isDirectory && it.fileName.endsWith(".opf", ignoreCase = true) }?.fileName
            }
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
                    val bytes = opfBytes
                    val rawOpf = bytes.toString(detectEpubTextCharset(bytes))
                    val result = EpubManifestParser.parseOpf(rawOpf)
                    Triple(result.manifest, result.spine, result.ncxId)
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
                EpubCacheSerializer.storeManifestInCache(cacheKey, blueprint, manifestCache)
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
            EpubCacheSerializer.loadParsedFromCache(cacheKey, structureCache)?.let { return@lazy it }
            val zip = archiveManager.ensureZip() ?: return@lazy ParsedEpub(emptyList())
            val fallbackPages by lazy(LazyThreadSafetyMode.NONE) { fallbackContentPages(zip) }
            val blueprint = manifestBlueprint
            if (blueprint == null) {
                return@lazy ParsedEpub(fallbackPages)
            }
            val pages = runCatching {
                perfPhase("buildPagesFromBlueprint(spine=${blueprint.spine.size})") {
                    val builtPages = buildPagesFromOpf(
                        manifest = blueprint.manifest, spine = blueprint.spine,
                        opfDir = blueprint.opfDir, zip = zip, flavor = blueprint.flavor
                    )
                    val result = if (blueprint.repairFrontMatter) {
                        buildPagesFromOpf(
                            manifest = blueprint.manifest, spine = blueprint.spine,
                            opfDir = blueprint.opfDir, zip = zip,
                            flavor = EPUB_FLAVOR_FB2, allowFallback = false
                        ).ifEmpty { builtPages }
                    } else builtPages
                    result.ifEmpty { fallbackPages }
                }
            }.getOrElse { error ->
                safeLogW(TAG, "Failed to build EPUB pages from manifest cache", error)
                fallbackPages
            }
            val parsed = ParsedEpub(pages = pages)
            perfPhase("storeParsedInCache(pages=${pages.size})") { EpubCacheSerializer.storeParsedInCache(cacheKey, parsed, structureCache) }
            parsed
        } catch (e: Exception) {
            safeLogE(TAG, "Failed to build EPUB page list", e)
            val zip = runCatching { archiveManager.ensureZip() }.getOrNull()
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
            zipProvider = { archiveManager.ensureZip() },
            extractChunk = { html, chunkIndex, totalChunks -> extractChunk(html, chunkIndex, totalChunks) }
        )
    }
    private val lazyTocEntries: List<TocEntry> by lazy {
        val blueprint = manifestBlueprint ?: return@lazy emptyList()
        runCatching {
            val zip = archiveManager.ensureZip() ?: return@runCatching emptyList()
            val ncxId = blueprint.ncxId ?: return@runCatching emptyList<TocEntry>()
            val ncxHref = blueprint.manifest[ncxId] ?: return@runCatching emptyList<TocEntry>()
            tocResolver.parseToc(zip, blueprint.opfDir, ncxHref)
        }.getOrElse { error ->
            safeLogW(TAG, "Failed to build EPUB TOC from manifest cache", error)
            emptyList()
        }
    }
    private val footnoteMap: Map<String, String> by lazy {
        val blueprint = manifestBlueprint ?: return@lazy emptyMap()
        runCatching {
            val zip = archiveManager.ensureZip() ?: return@runCatching emptyMap()
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
            val zip = archiveManager.ensureZip() ?: return@withContext null
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
        when (sectionPage) {
            is EpubPage.SyntheticHtml -> {
                synchronized(pageHtmlCache) { pageHtmlCache[index] = sectionPage.html }
                return@withContext sectionPage.html
            }
            is EpubPage.Image, is EpubPage.Html -> Unit // handled below
            else -> return@withContext null
        }
        try {
            val zip = archiveManager.ensureZip() ?: return@withContext null
            if (sectionPage is EpubPage.Image) {
                val html = htmlRenderer.renderImageSpineItemHtml(sectionPage.entry, zip) ?: return@withContext null
                synchronized(pageHtmlCache) { pageHtmlCache[index] = html }
                return@withContext html
            }
            val page = sectionPage as EpubPage.Html

            // Build (or retrieve from cache) the full inlined HTML for an XHTML entry.
            fun buildHtml(entry: String): String? {
                synchronized(htmlCache) { htmlCache[entry] }?.let { return it }
                val header = findHeader(zip, entry) ?: return null
                val raw = zip.getInputStream(header).use { stream ->
                    val bytes = stream.readBytes()
                    detectEpubTextCharset(bytes).let { bytes.toString(it) }
                }
                val html = prepareAssetBackedEpubDocument(
                    html = raw, readerCss = CSS_INJECT, xhtmlEntryPath = entry,
                    assetExists = { candidate -> findHeader(zip, candidate) != null }
                )
                synchronized(htmlCache) { htmlCache[entry] = html }
                return html
            }

            val firstHtml = buildHtml(page.entry) ?: return@withContext null

            val pageHtml = if (page.extraEntries.isEmpty() && page.totalChunks > 1) {
                // Chunked: re-read raw HTML and extract the chunk before CSS injection.
                val rawChunk = findHeader(zip, page.entry)?.let { header ->
                    zip.getInputStream(header).use { stream ->
                        val bytes = stream.readBytes()
                        extractChunk(bytes.toString(detectEpubTextCharset(bytes)), page.chunkIndex, page.totalChunks)
                    }
                } ?: extractChunk(firstHtml, page.chunkIndex, page.totalChunks)
                prepareAssetBackedEpubDocument(
                    html = rawChunk, readerCss = CSS_INJECT, xhtmlEntryPath = page.entry,
                    assetExists = { candidate -> findHeader(zip, candidate) != null }
                )
            } else if (page.extraEntries.isNotEmpty()) {
                // Merged path: append body content from extra entries before </body>.
                val extraBodies = page.extraEntries.mapNotNull { entry ->
                    buildHtml(entry)?.let { extractWrappedBodyContent(it) }
                }.filter { it.isNotBlank() }
                firstHtml.replace("</body>", extraBodies.joinToString("") + "</body>", ignoreCase = true)
            } else {
                firstHtml
            }
            synchronized(pageHtmlCache) { pageHtmlCache[index] = pageHtml }
            pageHtml
        } catch (e: Exception) {
            safeLogW(TAG, "HTML read failed for page $index", e); null
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
        val zip = archiveManager.ensureZip() ?: return emptyList()
        val sections = mutableListOf<TextDocumentSection>()
        textSectionPages.forEach { page ->
            val html: String? = when (page) {
                is EpubPage.Image -> htmlRenderer.renderImageSpineItemHtml(page.entry, zip)
                is EpubPage.Html -> htmlRenderer.renderSpineSectionHtml(page, zip)
                is EpubPage.SyntheticHtml -> {
                    if (page.totalChunks <= 1) page.html
                    else pages.asSequence()
                        .filterIsInstance<EpubPage.SyntheticHtml>()
                        .filter { it.entry == page.entry }
                        .sortedBy { it.chunkIndex }
                        .joinToString(separator = "") { extractBodyContent(it.html) }
                        .let { contentAnalyzer.buildSyntheticHtml(it, includeTitle = true) }
                }
            }
            if (html != null) {
                val id = when (page) {
                    is EpubPage.Image -> page.entry
                    is EpubPage.Html -> page.entry
                    is EpubPage.SyntheticHtml -> page.entry
                }
                sections += TextDocumentSection(index = sections.size, id = id, html = html)
            }
        }
        return sections.withSequentialIndices()
    }

    override fun openHtmlAsset(path: String): FormatReaderWebResource? {
        val zip = archiveManager.ensureZip() ?: return null
        return htmlRenderer.renderHtmlAsset(path, zip)
    }

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
        }
        return sections.indexOfFirst { section ->
            val sectionId = section.id ?: return@indexOfFirst false
            sectionId.equals(entry, ignoreCase = true) ||
                sectionId.endsWith(entry, ignoreCase = true) ||
                entry.endsWith(sectionId, ignoreCase = true)
        }.takeIf { it >= 0 } ?: legacyPageIndex.coerceIn(0, sections.lastIndex)
    }

    override fun close() {
        // IMPORTANT: cache clearing happens OUTSIDE the archive manager's lock.
        // Holding the ZipFile lifecycle guard while also acquiring the htmlCache/textEntryCache/
        // pageHtmlCache monitors creates an AB-BA lock-order inversion with the read path,
        // which acquires a cache monitor and then the lock (e.g. to load a page). Two threads
        // doing close() vs. read() could deadlock. Clear caches after releasing the lock.
        archiveManager.close()
        synchronized(htmlCache) { htmlCache.clear() }
        synchronized(textEntryCache) { textEntryCache.clear() }
        synchronized(pageHtmlCache) { pageHtmlCache.clear() }
        runCatching {
            synchronized(htmlRenderer.htmlCache) { htmlRenderer.htmlCache.clear() }
        }
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

    // ── Page list construction ────────────────────────────────────────────────

    private fun buildPagesFromOpf(
        manifest: Map<String, String>,
        spine: List<String>,
        opfDir: String,
        zip: ZipFile,
        forceWholeHtmlEntries: Boolean = false,
        flavor: String = EPUB_FLAVOR_STANDARD,
        allowFallback: Boolean = true
    ): List<EpubPage> = spineBuilder.buildPagesFromOpf(manifest, spine, opfDir, zip, forceWholeHtmlEntries, flavor, allowFallback)

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

    private fun findHeader(zip: ZipFile, entry: String): FileHeader? =
        EpubArchiveAccess.findHeader(zip, entry)

}
