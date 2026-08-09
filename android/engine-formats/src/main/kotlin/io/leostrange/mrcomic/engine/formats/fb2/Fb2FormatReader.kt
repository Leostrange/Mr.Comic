package io.leostrange.mrcomic.engine.formats.fb2

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Base64
import android.util.Log
import android.util.Xml
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import io.leostrange.mrcomic.engine.formats.base.TocEntry
import io.leostrange.mrcomic.engine.formats.base.buildUnifiedReaderHtmlDocument
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jsoup.parser.Parser
import org.xmlpull.v1.XmlPullParser
import java.io.File
import java.io.InputStream
import java.net.URLDecoder
import java.nio.charset.Charset

/**
 * FB2 reader.  Two automatic modes:
 *
 *  IMAGE — body has only <image> refs, no real text → Bitmap pages.
 *  TEXT  — body contains paragraphs/text → HTML pages (one per top-level section,
 *           or the whole body as one page if no sections).  Images embedded as data URIs.
 *
 * Extras:
 *  • TOC  — built from <section><title> elements in the main body.
 *  • Footnotes — <body name="notes"> sections parsed into a map; clicking an <a> link
 *                in the text shows the note text in a bottom sheet popup.
 */
class Fb2FormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    override fun rendersHtmlContent(): Boolean = true

    companion object {
        private const val TAG      = "Fb2FormatReader"
        private const val XLINK_NS = "http://www.w3.org/1999/xlink"
        private val IMAGE_EXTS     = setOf("jpg", "jpeg", "png", "webp", "gif", "bmp")
        /**
         * Target non-whitespace character count per reader page.
         * Keep pages below a single phone viewport in PAGE_* mode. The WebView is
         * scroll-locked there, so oversized chunks look like skipped/cut text.
         */
        private const val CHARS_PER_PAGE = 4000
        /** Regex for stripping HTML tags when counting content characters. */
        private val HTML_TAG_RE = Regex("<[^>]+>")
        private val GENERATED_BLOCK_RE = Regex(
            """<(?:h2|h3|p|blockquote)\b[^>]*>.*?</(?:h2|h3|p|blockquote)>|<br\s*/?(?:>|</br>)?""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        private const val FB2_READER_CSS = """
a.fn,a[href*="FbAutId_"],a[href^="fbanchor://"]{font-size:0.75em;vertical-align:super;line-height:1;
     font-weight:bold;text-decoration:none;cursor:pointer}
p.note-item{margin:0.6em 0;padding-left:2.8em;text-indent:-2.8em;text-align:left}
.note-num{font-weight:bold;display:inline-block;min-width:2.8em;text-indent:0}
.mrcomic-cover-section{text-align:center;break-inside:avoid;page-break-inside:avoid}
.mrcomic-cover-section p{text-align:center!important;text-indent:0!important;margin:0.55em 0}
.mrcomic-cover-section .mrcomic-cover-image{max-height:min(58vh,calc(100vh - 20em))!important;width:auto!important;max-width:100%!important;object-fit:contain!important;margin:0 auto 0.8em!important}
"""

        private fun appendEscapedFb2Text(target: StringBuilder, text: String) {
            val trimmed = text.trim()
            if (trimmed.isEmpty()) return
            val previous = target.lastMeaningfulChar()
            val first = trimmed.first()
            if (previous != null && previous.shouldSeparateFrom(first)) {
                target.append(' ')
            }
            target.append(
                trimmed
                    .replace("&", "&amp;")
                    .replace("<", "&lt;")
                    .replace(">", "&gt;")
            )
        }

        internal fun appendEscapedFb2TextForTest(target: StringBuilder, text: String) {
            appendEscapedFb2Text(target, text)
        }

        private fun StringBuilder.lastMeaningfulChar(): Char? {
            var index = length - 1
            while (index >= 0) {
                val char = this[index]
                if (char == '>') {
                    index = previousIndexOf('<', index - 1) - 1
                    continue
                }
                if (!char.isWhitespace()) return char
                index--
            }
            return null
        }

        private fun StringBuilder.previousIndexOf(target: Char, fromIndex: Int): Int {
            var index = fromIndex.coerceAtMost(length - 1)
            while (index >= 0) {
                if (this[index] == target) return index
                index--
            }
            return -1
        }

        private fun Char.shouldSeparateFrom(next: Char): Boolean =
            (isLetterOrDigit() || this == ')' || this == '»' || this == '"') &&
                (next.isLetterOrDigit() || next == '(' || next == '«' || next == '"')

        private inline fun logDebug(message: () -> String) {
            try {
                Log.d(TAG, message())
            } catch (_: RuntimeException) {
                // Plain JVM unit tests do not provide android.util.Log.
            }
        }

        private fun logWarning(message: String, throwable: Throwable) {
            try {
                Log.w(TAG, message, throwable)
            } catch (_: RuntimeException) {
                // Plain JVM unit tests do not provide android.util.Log.
            }
        }

        private fun logError(message: String, throwable: Throwable) {
            try {
                Log.e(TAG, message, throwable)
            } catch (_: RuntimeException) {
                // Plain JVM unit tests do not provide android.util.Log.
            }
        }
    }

    private data class Parsed(
        val binaries: Map<String, ByteArray>,
        val imageRefs: List<String>,         // body-level image refs (image-comic format)
        val htmlPages: List<String>,         // HTML strings (text mode)
        val hasBodyText: Boolean,            // true = text was found in body
        val tocEntries: List<TocEntry>,      // chapter TOC
        val footnoteMap: Map<String, String>, // anchorId → footnote HTML text
        val anchorPageMap: Map<String, Int>,  // FB2 section id → reader page
        val metadata: Map<String, String>
    )

    private val data: Parsed by lazy {
        try {
            openStream()?.use { parse(it) }
                ?: Parsed(emptyMap(), emptyList(), emptyList(), false, emptyList(), emptyMap(), emptyMap(), emptyMap())
        } catch (e: Exception) {
            logError("FB2 parse error for $path", e)
            e.printStackTrace()
            Parsed(emptyMap(), emptyList(), emptyList(), false, emptyList(), emptyMap(), emptyMap(), emptyMap())
        }
    }

    // TEXT mode when body had actual text paragraphs
    private val isTextMode get() = data.hasBodyText && data.htmlPages.isNotEmpty()

    private val imageBitmapBytes: List<ByteArray> by lazy {
        if (isTextMode) return@lazy emptyList()
        val refs = data.imageRefs
        val bins = data.binaries
        if (refs.isEmpty()) return@lazy bins.values.toList()
        val exact = refs.mapNotNull { bins[it] }
        if (exact.isNotEmpty()) return@lazy exact
        val fuzzy = refs.mapNotNull { ref ->
            val noExt = ref.substringBeforeLast('.', ref)
            bins[ref] ?: bins[noExt]
                ?: bins.entries.firstOrNull { (k, _) ->
                    k.substringBeforeLast('.', k) == noExt
                }?.value
        }
        if (fuzzy.isNotEmpty()) fuzzy else bins.values.toList()
    }

    // ── FormatReader ──────────────────────────────────────────────────────────

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        val count = if (isTextMode) data.htmlPages.size else imageBitmapBytes.size
        logDebug { "getPageCount=$count isTextMode=$isTextMode path=$path" }
        count
    }

    override suspend fun getPage(index: Int): Bitmap? = withContext(Dispatchers.IO) {
        if (isTextMode) return@withContext null
        val bytes = imageBitmapBytes.getOrNull(index) ?: return@withContext null
        BitmapFactory.decodeByteArray(bytes, 0, bytes.size)
    }

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        if (!isTextMode) return@withContext null
        data.htmlPages.getOrNull(index)
    }

    override fun getTableOfContents(): List<TocEntry> = data.tocEntries

    override fun getFootnoteText(anchorId: String): String? {
        if (data.footnoteMap.isEmpty()) return null
        return fb2FootnoteLookupCandidates(anchorId).firstNotNullOfOrNull { candidate ->
            data.footnoteMap[candidate]
        }
    }

    override suspend fun getMetadata(): Map<String, String> = withContext(Dispatchers.IO) {
        buildMap {
            put("format", "FB2")
            put("engine", "fb2-xml-reflowable-v1")
            putAll(data.metadata)
        }
    }

    override fun close() { /* no persistent resources */ }

    private fun fb2FootnoteLookupCandidates(anchorId: String): List<String> {
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
        return listOf(
            raw,
            decoded,
            fragment,
            "#$fragment",
            "fn$fragment",
            "note$fragment",
            "footnote$fragment",
            "docx-footnote-$fragment"
        ).map { it.trim() }
            .filter { it.isNotEmpty() && it != "#" }
            .distinct()
    }

    // ── Parser ────────────────────────────────────────────────────────────────

    private fun preprocessBytes(bytes: ByteArray): ByteArray =
        Fb2Preprocessor.preprocess(bytes)

    private fun parse(stream: InputStream): Parsed {
        val bufferedStream = stream.buffered()

        // Peek metadata and detect charset
        val metadataBuffer = ByteArray(1024 * 1024) // 1MB for metadata should be enough
        bufferedStream.mark(metadataBuffer.size)
        val readCount = bufferedStream.read(metadataBuffer).coerceAtLeast(0)
        val peekedBytes = if (readCount < metadataBuffer.size) metadataBuffer.copyOf(readCount) else metadataBuffer
        bufferedStream.reset()

        val charset = Fb2Preprocessor.detectCharset(peekedBytes)
        val metadata = Fb2MetadataParser.extract(peekedBytes.toString(charset))

        val binaries = LinkedHashMap<String, ByteArray>()
        val bodyImageRefs = mutableListOf<String>()
        val rawSections = mutableListOf<String>()
        val rawSectionStarts = mutableListOf<Boolean>()
        val sectionRawStarts = linkedMapOf<String, Int>()
        var markNextRawSectionStart = true

        fun addRawSection(content: String) {
            rawSections.add(content)
            rawSectionStarts.add(markNextRawSectionStart)
            markNextRawSectionStart = false
        }

        val sectionBuf = StringBuilder()
        var sectionCount = 0
        var hasBodyText = false

        var depth = 0
        var bodyDepth = -1
        var isMainBody = false
        var sectionDepth = 0
        var currentTopLevelSectionId: String? = null
        var inBinary = false
        var binaryId = ""
        val binaryBuf = StringBuilder()

        val tocRaw = mutableListOf<Pair<String, Int>>()
        var pendingTocRawIdx = 0
        val titleTextBuf = StringBuilder()
        var inTopLevelTitle = false

        var notesBodyDepth = -1
        val footnoteMap = mutableMapOf<String, String>()
        val notesBuf = StringBuilder()
        var currentNoteId = ""
        var notesSectionDepth = 0
        var inLink = false

        fun extractPageBlocks(content: String): List<String> {
            val blocks = mutableListOf<String>()
            var cursor = 0
            for (match in GENERATED_BLOCK_RE.findAll(content)) {
                if (match.range.first > cursor) {
                    content.substring(cursor, match.range.first)
                        .trim()
                        .takeIf { it.isNotEmpty() }
                        ?.let(blocks::add)
                }
                match.value.trim().takeIf { it.isNotEmpty() }?.let(blocks::add)
                cursor = match.range.last + 1
            }
            if (cursor < content.length) {
                content.substring(cursor)
                    .trim()
                    .takeIf { it.isNotEmpty() }
                    ?.let(blocks::add)
            }
            return blocks
        }

        fun flushPage() {
            if (sectionBuf.isEmpty()) return
            val content = sectionBuf.toString()
            sectionBuf.clear()

            val parts = extractPageBlocks(content)

            if (parts.isEmpty()) {
                addRawSection(content)
                return
            }

            var currentChunk = StringBuilder()
            var currentChars = 0
            for (part in parts) {
                val partChars = HTML_TAG_RE.replace(part, "").length
                if (currentChars + partChars > CHARS_PER_PAGE && currentChars > 0) {
                    addRawSection(currentChunk.toString())
                    currentChunk = StringBuilder()
                    currentChars = 0
                }
                currentChunk.append(part)
                currentChars += partChars
            }
            if (currentChunk.isNotEmpty()) addRawSection(currentChunk.toString())
        }

        val reader = Fb2Preprocessor.createStreamingReader(bufferedStream, charset)
        val parser = Xml.newPullParser().apply {
            setFeature(XmlPullParser.FEATURE_PROCESS_NAMESPACES, true)
            setInput(reader)
        }

        try {
            var ev = parser.eventType
            while (ev != XmlPullParser.END_DOCUMENT) {
                when (ev) {
                    XmlPullParser.START_TAG -> {
                        depth++
                        val name = parser.name
                        when {
                            // ── Collect binary images ──────────────────────
                            name == "binary" -> {
                                val id = parser.getAttributeValue(null, "id") ?: ""
                                val ct = parser.getAttributeValue(null, "content-type") ?: ""
                                if (id.isNotEmpty() && !inBinary &&
                                    (ct.startsWith("image/") ||
                                            id.lowercase().substringAfterLast('.', "") in IMAGE_EXTS)) {
                                    binaryId = id; binaryBuf.clear(); inBinary = true
                                }
                            }
                            inBinary -> { /* skip nested tags inside binary */ }

                            // ── Body detection ─────────────────────────────
                            name == "body" -> {
                                val bodyName = parser.getAttributeValue(null, "name") ?: ""
                                when {
                                    // First unnamed body → main text body
                                    !isMainBody && bodyName.isEmpty() -> {
                                        bodyDepth = depth
                                        isMainBody = true
                                    }
                                    // Any named body (notes, footnotes, comments…) → footnote map
                                    // Reset notesBodyDepth on each body entry so second named
                                    // body after main body also gets parsed (P1 #6)
                                    bodyName.isNotEmpty() -> {
                                        if (notesBodyDepth < 0) {
                                            notesBodyDepth = depth
                                        }
                                    }
                                }
                            }

                            // ── Main body content ───────────────────────────────────────────
                            bodyDepth > 0 && depth > bodyDepth -> when (name) {
                                "section" -> {
                                    // Flush buffer when a new top-level section starts.
                                    if (sectionDepth == 0) {
                                        flushPage()
                                        // Record where this section's raw pages will start and keep
                                        // explicit front-matter sections (cover/TOC) separate.
                                        pendingTocRawIdx = rawSections.size
                                        parser.getAttributeValue(null, "id")?.trim()
                                            ?.takeIf { it.isNotEmpty() }
                                            ?.let { sectionRawStarts[it] = pendingTocRawIdx }
                                        markNextRawSectionStart = true
                                        currentTopLevelSectionId = parser.getAttributeValue(null, "id")?.trim()
                                        inTopLevelTitle = false
                                        titleTextBuf.clear()
                                    }
                                    sectionDepth++
                                    sectionCount++
                                }
                                "title" -> {
                                    sectionBuf.append("<h2>")
                                    // Capture title text only for the top-level section (sectionDepth==1)
                                    if (sectionDepth == 1) {
                                        inTopLevelTitle = true
                                        titleTextBuf.clear()
                                    }
                                }
                                "subtitle"      -> sectionBuf.append("<h3>")
                                "p", "v"        -> sectionBuf.append("<p>")
                                "empty-line"    -> sectionBuf.append("<br>")
                                "emphasis"      -> sectionBuf.append("<em>")
                                "strong"        -> sectionBuf.append("<strong>")
                                "strikethrough" -> sectionBuf.append("<s>")
                                "sup"           -> sectionBuf.append("<sup>")
                                "sub"           -> sectionBuf.append("<sub>")
                                "code"          -> sectionBuf.append("<code>")
                                "cite"          -> sectionBuf.append("<blockquote>")
                                "epigraph"      -> sectionBuf.append("<blockquote><em>")
                                "a" -> {
                                    // Keep chapter/section links as normal fragments so the reader
                                    // can resolve them to an FB2 section page. Footnote-like links
                                    // retain the dedicated scheme and open the popup instead.
                                    val rawHref = findHref(parser).trim()
                                    val href = rawHref.trimStart('#')
                                    if (href.isNotEmpty()) {
                                        if (rawHref.startsWith("#") && !isLikelyFb2FootnoteTarget(href)) {
                                            sectionBuf.append("<a href=\"#${href.escapeAttr()}\">")
                                        } else {
                                            sectionBuf.append("<a class=\"fn\" href=\"fbanchor://${href.escapeAttr()}\">")
                                        }
                                        inLink = true
                                    }
                                }
                                "image"         -> {
                                    val ref = findHref(parser).trimStart('#')
                                    if (ref.isNotEmpty()) {
                                        if (sectionDepth == 0) {
                                            bodyImageRefs.add(ref)
                                        } else {
                                            val coverClass = if (currentTopLevelSectionId.equals("synopsis", ignoreCase = true)) {
                                                " class=\"mrcomic-cover-image\""
                                            } else ""
                                            sectionBuf.append("<img$coverClass data-id=\"${ref.escapeAttr()}\"/>")
                                        }
                                    }
                                }
                            }

                            // ── Notes body content ──────────────────────────────────────────
                            notesBodyDepth > 0 && depth > notesBodyDepth -> when (name) {
                                "section" -> {
                                    notesSectionDepth++
                                    if (notesSectionDepth == 1) {
                                        currentNoteId = parser.getAttributeValue(null, "id") ?: ""
                                        notesBuf.clear()
                                    }
                                }
                                "p", "v"   -> notesBuf.append("<p>")
                                "title"    -> notesBuf.append("<strong>")
                                "emphasis" -> notesBuf.append("<em>")
                                "strong"   -> notesBuf.append("<strong>")
                                "sup"      -> notesBuf.append("<sup>")
                            }
                        }
                    }

                    XmlPullParser.END_TAG -> {
                        val name = parser.name
                        when {
                            name == "binary" && inBinary -> {
                                try {
                                    val dec = Base64.decode(binaryBuf.toString(), Base64.DEFAULT)
                                    if (dec.isNotEmpty()) binaries[binaryId] = dec
                                } catch (e: Exception) {
                                    logWarning("Base64 decode failed for binary '$binaryId'", e)
                                }
                                inBinary = false; binaryId = ""; binaryBuf.clear()
                            }
                            inBinary -> { /* skip */ }
                            name == "body" && depth == bodyDepth -> {
                                flushPage()
                                bodyDepth = -1
                                isMainBody = true  // ignore any subsequent <body> as main body
                            }
                            name == "body" && depth == notesBodyDepth -> {
                                notesBodyDepth = -1
                            }
                            bodyDepth > 0 && depth > bodyDepth -> when (name) {
                                "section" -> {
                                    sectionDepth--
                                    // Flush whatever remained in this top-level section.
                                    if (sectionDepth == 0) {
                                        flushPage()
                                        currentTopLevelSectionId = null
                                    }
                                }
                                "title" -> {
                                    sectionBuf.append("</h2>")
                                    if (inTopLevelTitle) {
                                        val t = titleTextBuf.toString().trim()
                                        if (t.isNotEmpty() && !isTocSectionId(currentTopLevelSectionId)) {
                                            tocRaw.add(Pair(t, pendingTocRawIdx))
                                        }
                                        inTopLevelTitle = false
                                    }
                                }
                                "subtitle"      -> sectionBuf.append("</h3>")
                                "p", "v"        -> sectionBuf.append("</p>")
                                "emphasis"      -> sectionBuf.append("</em>")
                                "strong"        -> sectionBuf.append("</strong>")
                                "strikethrough" -> sectionBuf.append("</s>")
                                "sup"           -> sectionBuf.append("</sup>")
                                "sub"           -> sectionBuf.append("</sub>")
                                "code"          -> sectionBuf.append("</code>")
                                "cite"          -> sectionBuf.append("</blockquote>")
                                "epigraph"      -> sectionBuf.append("</em></blockquote>")
                                "a" -> if (inLink) { sectionBuf.append("</a>"); inLink = false }
                            }
                            notesBodyDepth > 0 && depth > notesBodyDepth -> when (name) {
                                "section" -> {
                                    notesSectionDepth--
                                    if (notesSectionDepth == 0 && currentNoteId.isNotEmpty()) {
                                        // Store both id and fbanchor://-prefixed key for footnote lookup (P1 #9)
                                        footnoteMap[currentNoteId] = notesBuf.toString().trim()
                                        if (currentNoteId.isNotEmpty()) {
                                            footnoteMap["fbanchor://$currentNoteId"] = notesBuf.toString().trim()
                                        }
                                        currentNoteId = ""
                                        notesBuf.clear()
                                    }
                                }
                                "p", "v"   -> notesBuf.append("</p>")
                                "title"    -> notesBuf.append("</strong> ")
                                "emphasis" -> notesBuf.append("</em>")
                                "strong"   -> notesBuf.append("</strong>")
                                "sup"      -> notesBuf.append("</sup>")
                            }
                        }
                        depth--
                    }

                    XmlPullParser.TEXT, XmlPullParser.CDSECT -> {
                        val text = parser.text ?: ""
                        when {
                            inBinary -> binaryBuf.append(text)
                            bodyDepth > 0 && depth > bodyDepth -> {
                                // Use trim() only to decide whether this node is pure whitespace
                                // (e.g. newlines between block tags) — but append the ORIGINAL
                                // text, preserving inline spaces like "Hello <em>world</em>".
                                if (text.trim().isNotEmpty()) {
                                    hasBodyText = true
                                    appendEscapedFb2Text(sectionBuf, text)
                                    if (inTopLevelTitle) titleTextBuf.append(text)
                                }
                            }
                            notesBodyDepth > 0 && depth > notesBodyDepth -> {
                                if (text.trim().isNotEmpty()) {
                                    appendEscapedFb2Text(notesBuf, text)
                                }
                            }
                        }
                    }
                }
                ev = parser.next()
            }
        } catch (e: Exception) {
            logError("FB2 XML parse exception", e)
            e.printStackTrace()
            // Flush whatever was buffered before the error
            flushPage()
        }

        // Merge consecutive short sections (e.g. individual footnotes) so they don't each
        // occupy their own page. Sections are grouped until their combined text reaches
        // CHARS_PER_PAGE, then a new group starts. Also build the rawSection → merged page
        // index mapping used for TOC and anchor resolution.
        val (mergedSections, rawToMergedPage) = mergeRawSections(rawSections, rawSectionStarts)

        // Now binaries is fully populated — build HTML pages with images resolved.
        // NOTE: Do NOT escape HTML here — appendEscapedFb2Text() already escapes
        // text nodes (< → &lt;), while parser-generated tags (<h2>, <p>, etc.)
        // must remain as real HTML markup for WebView rendering.
        val fb2Lang = metadata["language"]
        val mainPages = mergedSections.map {
            buildHtmlPage(it, binaries, fb2Lang)
        }

        // Build final TOC: map rawSectionIdx → mergedPage index
        val tocEntries = tocRaw.mapNotNull { (title, rawSectionIdx) ->
            val clampedIdx = rawSectionIdx.coerceAtMost((rawSections.size - 1).coerceAtLeast(0))
            val pageIdx = rawToMergedPage[clampedIdx] ?: 0
            TocEntry(title, pageIdx)
        }.toMutableList()
        val anchorPageMap = sectionRawStarts.mapValues { (_, rawSectionIdx) ->
            val clampedIdx = rawSectionIdx.coerceAtMost((rawSections.size - 1).coerceAtLeast(0))
            rawToMergedPage[clampedIdx] ?: 0
        }

        // If there are footnotes, split them into screen-sized pages and add a TOC entry.
        val pages: List<String>
        if (footnoteMap.isNotEmpty()) {
            // Regex to extract the numeric note number from the title stored in notesBuf.
            // notesBuf title looks like: <strong><p>13</p></strong> or <strong>13</strong>
            val noteTitleRe = Regex("""^<strong>(?:<p>)?(\d+)(?:</p>)?</strong>\s*""", RegexOption.IGNORE_CASE)
            // Build one HTML entry per footnote (Readera-style: bold blue number + hanging text).
            val notesEntries = footnoteMap.entries.map { (id, htmlText) ->
                val raw = htmlText.trimStart()
                val titleMatch = noteTitleRe.find(raw)
                // Use the numeric number from the title; fall back to digits in the anchor id.
                val noteNum = titleMatch?.groupValues?.get(1)?.takeIf { it.isNotEmpty() }
                    ?: id.filter { it.isDigit() }.takeIf { it.isNotEmpty() }
                    ?: id
                // Strip the <strong>N</strong> title prefix — number is shown via note-num span.
                val noteBody = if (titleMatch != null) raw.substring(titleMatch.value.length) else raw
                Pair("""<p class="note-item" id="$id"><span class="note-num">$noteNum</span>$noteBody</p>""",
                    noteBody.replace(HTML_TAG_RE, "").length.coerceAtLeast(1))
            }
            val notesSections = mutableListOf<String>()
            val buf = StringBuilder()
            var bufChars = 0
            notesEntries.forEach { (html, chars) ->
                if (bufChars + chars > CHARS_PER_PAGE && bufChars > 0) {
                    notesSections.add(buf.toString())
                    buf.clear(); bufChars = 0
                }
                buf.append(html); bufChars += chars
            }
            if (buf.isNotEmpty()) notesSections.add(buf.toString())

            val notesPages = notesSections.mapIndexed { idx, section ->
                val heading = if (idx == 0) "<h2>Примечания</h2>" else ""
                buildHtmlPage(heading + section, binaries, fb2Lang)
            }
            pages = mainPages + notesPages
            tocEntries.add(TocEntry("Примечания", mainPages.size))
        } else {
            pages = mainPages
        }

        logDebug { "FB2 parsed: binaries=${binaries.size} bodyImageRefs=${bodyImageRefs.size} " +
                "rawSections=${rawSections.size} pages=${pages.size} hasBodyText=$hasBodyText " +
                "sections=$sectionCount toc=${tocEntries.size} footnotes=${footnoteMap.size}" }

        return Parsed(
            binaries     = binaries,
            imageRefs    = bodyImageRefs,
            htmlPages    = pages,
            hasBodyText  = hasBodyText,
            tocEntries   = tocEntries,
            footnoteMap  = footnoteMap,
            anchorPageMap = anchorPageMap,
            metadata     = metadata
        )
    }

    /**
     * Groups consecutive short raw sections (e.g. individual footnotes) into reader pages
     * until the combined text reaches [CHARS_PER_PAGE], and maps every raw section index
     * to its merged reader page. Sections flagged as explicit section starts always begin
     * a new merged page so front-matter (cover/TOC) stays separate from chapter text.
     */
    private fun mergeRawSections(
        rawSections: List<String>,
        rawSectionStarts: List<Boolean>,
    ): Pair<List<String>, Map<Int, Int>> {
        val mergedSections = mutableListOf<String>()
        val rawToMergedPage = mutableMapOf<Int, Int>()
        var currentMergedIdx = 0
        val pendingMerge = StringBuilder()
        var pendingChars = 0
        for ((rawIdx, section) in rawSections.withIndex()) {
            val sectionChars = HTML_TAG_RE.replace(section, "").length
            if (pendingChars > 0 && rawSectionStarts.getOrNull(rawIdx) == true) {
                mergedSections.add(pendingMerge.toString())
                pendingMerge.clear()
                pendingChars = 0
                currentMergedIdx++
            }
            if (pendingChars + sectionChars > CHARS_PER_PAGE && pendingChars > 0) {
                mergedSections.add(pendingMerge.toString())
                pendingMerge.clear()
                pendingChars = 0
                currentMergedIdx++
            }
            rawToMergedPage[rawIdx] = currentMergedIdx
            pendingMerge.append(section)
            pendingChars += sectionChars
        }
        if (pendingMerge.isNotEmpty()) mergedSections.add(pendingMerge.toString())
        return mergedSections to rawToMergedPage
    }

    private fun buildHtmlPage(body: String, binaries: Map<String, ByteArray>, lang: String? = null): String {
        val resolved = Regex("""<img([^>]*)data-id="([^"]+)"([^>]*)/>""").replace(body) { m ->
            val ref = m.groupValues[2]
            val noExt = ref.substringBeforeLast('.', ref)
            val bytes = binaries[ref] ?: binaries[noExt]
                ?: binaries.entries.firstOrNull { (k, _) ->
                    k.substringBeforeLast('.', k) == noExt
                }?.value
            if (bytes != null) {
                val mime = when (ref.substringAfterLast('.', "").lowercase()) {
                    "png"  -> "image/png"
                    "gif"  -> "image/gif"
                    "webp" -> "image/webp"
                    else   -> "image/jpeg"
                }
                val coverClass = if (m.value.contains("mrcomic-cover-image")) {
                    " class=\"mrcomic-cover-image\""
                } else ""
                "<img$coverClass src=\"data:$mime;base64,${Base64.encodeToString(bytes, Base64.NO_WRAP)}\"/>"
            } else m.value
        }
        val pageBody = if (body.contains("mrcomic-cover-image")) {
            "<div class=\"mrcomic-cover-section\">$resolved</div>"
        } else resolved
        return buildUnifiedReaderHtmlDocument(
            body = pageBody,
            extraCss = FB2_READER_CSS,
            lang = lang
        )
    }

    private fun findHref(parser: XmlPullParser): String {
        parser.getAttributeValue(XLINK_NS, "href")?.let { return it }
        parser.getAttributeValue(null, "href")?.let { return it }
        for (i in 0 until parser.attributeCount)
            if (parser.getAttributeName(i).endsWith("href")) return parser.getAttributeValue(i)
        return ""
    }

    private fun String.escapeAttr() = replace("\"", "&quot;")

    private fun isLikelyFb2FootnoteTarget(href: String): Boolean =
        Regex("(?i)(?:^|[-_])(fn|footnote|note|endnote|ref)(?:[-_]|$)|^\\d+$").containsMatchIn(href)

    private fun isTocSectionId(id: String?): Boolean =
        id?.trim()?.lowercase() in setOf("toc", "contents", "table-of-contents", "table_of_contents")

    override fun resolveHrefToPage(href: String): Int? {
        val normalized = href.trim()
            .removePrefix("fbanchor://")
            .removePrefix("#")
        val fragment = normalized.substringAfter('#', normalized)
            .substringAfterLast('/')
            .trim()
        return data.anchorPageMap[fragment]
            ?: data.anchorPageMap[normalized.substringBefore('#').substringAfterLast('/').trim()]
    }

    /** Escapes HTML-unsafe characters in FB2 body text before it reaches WebView. */
    private fun escapeHtmlForFb2(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace("\"", "&quot;")
        .replace("'", "&#39;")

    private fun openStream(): InputStream? = try {
        if (path.startsWith("content://"))
            context.contentResolver.openInputStream(Uri.parse(path))
        else
            File(path).inputStream()
    } catch (e: Exception) {
        logError("Cannot open FB2: $path", e); null
    }
}
