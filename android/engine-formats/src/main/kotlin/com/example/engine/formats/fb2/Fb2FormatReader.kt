package com.example.engine.formats.fb2

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.util.Base64
import android.util.Log
import android.util.Xml
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.buildUnifiedReaderHtmlDocument
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
            """<(?:h2|h3|p|blockquote)\b[^>]*>.*?</(?:h2|h3|p|blockquote)>|<br\s*/?>""",
            setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL)
        )
        private const val FB2_READER_CSS = """
a.fn,a[href*="FbAutId_"],a[href^="fbanchor://"]{font-size:0.75em;vertical-align:super;line-height:1;
     font-weight:bold;text-decoration:none;cursor:pointer}
p.note-item{margin:0.6em 0;padding-left:2.8em;text-indent:-2.8em;text-align:left}
.note-num{font-weight:bold;display:inline-block;min-width:2.8em;text-indent:0}
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
        val metadata: Map<String, String>
    )

    private val data: Parsed by lazy {
        try {
            openStream()?.use { parse(it) }
                ?: Parsed(emptyMap(), emptyList(), emptyList(), false, emptyList(), emptyMap(), emptyMap())
        } catch (e: Exception) {
            logError("FB2 parse error for $path", e)
            Parsed(emptyMap(), emptyList(), emptyList(), false, emptyList(), emptyMap(), emptyMap())
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

        val sectionBuf = StringBuilder()
        var sectionCount = 0
        var hasBodyText = false

        var depth = 0
        var bodyDepth = -1
        var mainBodyDone = false
        var sectionDepth = 0
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
                rawSections.add(content)
                return
            }

            var currentChunk = StringBuilder()
            var currentChars = 0
            for (part in parts) {
                val partChars = HTML_TAG_RE.replace(part, "").length
                if (currentChars + partChars > CHARS_PER_PAGE && currentChars > 0) {
                    rawSections.add(currentChunk.toString())
                    currentChunk = StringBuilder()
                    currentChars = 0
                }
                currentChunk.append(part)
                currentChars += partChars
            }
            if (currentChunk.isNotEmpty()) rawSections.add(currentChunk.toString())
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
                                    bodyDepth < 0 && !mainBodyDone && bodyName.isEmpty() ->
                                        bodyDepth = depth
                                    // Any named body (notes, footnotes, comments…) → footnote map
                                    bodyName.isNotEmpty() && notesBodyDepth < 0 ->
                                        notesBodyDepth = depth
                                }
                            }

                            // ── Main body content ───────────────────────────────────────────
                            bodyDepth > 0 && depth > bodyDepth -> when (name) {
                                "section" -> {
                                    // Flush buffer when a new top-level section starts.
                                    if (sectionDepth == 0) {
                                        flushPage()
                                        // Record where this section's raw pages will start
                                        pendingTocRawIdx = rawSections.size
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
                                    // Preserve hyperlinks as fbanchor:// scheme so JS can intercept
                                    val href = findHref(parser).trimStart('#')
                                    if (href.isNotEmpty()) {
                                        sectionBuf.append("<a class=\"fn\" href=\"fbanchor://${href.escapeAttr()}\">")
                                        inLink = true
                                    }
                                }
                                "image"         -> {
                                    val ref = findHref(parser).trimStart('#')
                                    if (ref.isNotEmpty()) {
                                        if (sectionDepth == 0) {
                                            bodyImageRefs.add(ref)
                                        } else {
                                            sectionBuf.append("<img data-id=\"${ref.escapeAttr()}\"/>")
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
                                mainBodyDone = true  // ignore any subsequent <body> as main body
                            }
                            name == "body" && depth == notesBodyDepth -> {
                                notesBodyDepth = -1
                            }
                            bodyDepth > 0 && depth > bodyDepth -> when (name) {
                                "section" -> {
                                    sectionDepth--
                                    // Flush whatever remained in this top-level section.
                                    if (sectionDepth == 0) flushPage()
                                }
                                "title" -> {
                                    sectionBuf.append("</h2>")
                                    if (inTopLevelTitle) {
                                        val t = titleTextBuf.toString().trim()
                                        if (t.isNotEmpty()) tocRaw.add(Pair(t, pendingTocRawIdx))
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
                                        footnoteMap[currentNoteId] = notesBuf.toString().trim()
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
            // Flush whatever was buffered before the error
            flushPage()
        }

        // Merge consecutive short sections (e.g. individual footnotes) so they don't each
        // occupy their own page.  Sections are grouped until their combined text reaches
        // CHARS_PER_PAGE, then a new group starts.
        // Also build rawSection → mergedPage index mapping for TOC.
        val mergedSections = mutableListOf<String>()
        val rawToMergedPage = mutableMapOf<Int, Int>()
        var currentMergedIdx = 0
        val pendingMerge = StringBuilder()
        var pendingChars = 0
        for ((rawIdx, section) in rawSections.withIndex()) {
            val sectionChars = HTML_TAG_RE.replace(section, "").length
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

        // Now binaries is fully populated — build HTML pages with images resolved.
        val mainPages = mergedSections.map { buildHtmlPage(it, binaries) }

        // Build final TOC: map rawSectionIdx → mergedPage index
        val tocEntries = tocRaw.mapNotNull { (title, rawSectionIdx) ->
            val clampedIdx = rawSectionIdx.coerceAtMost((rawSections.size - 1).coerceAtLeast(0))
            val pageIdx = rawToMergedPage[clampedIdx] ?: 0
            TocEntry(title, pageIdx)
        }.toMutableList()

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
                buildHtmlPage(heading + section, binaries)
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
            metadata     = metadata
        )
    }

    private fun buildHtmlPage(body: String, binaries: Map<String, ByteArray>): String {
        val resolved = Regex("""<img data-id="([^"]+)"/>""").replace(body) { m ->
            val ref = m.groupValues[1]
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
                "<img src=\"data:$mime;base64,${Base64.encodeToString(bytes, Base64.NO_WRAP)}\"/>"
            } else m.value
        }
        return buildUnifiedReaderHtmlDocument(
            body = resolved,
            extraCss = FB2_READER_CSS
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

    private fun openStream(): InputStream? = try {
        if (path.startsWith("content://"))
            context.contentResolver.openInputStream(Uri.parse(path))
        else
            File(path).inputStream()
    } catch (e: Exception) {
        logError("Cannot open FB2: $path", e); null
    }
}

internal object Fb2Preprocessor {
    private val xmlEntities = setOf("amp", "lt", "gt", "apos", "quot")
    private const val MAX_ENTITY_LENGTH = 64
    private const val PUSHBACK_BUFFER_SIZE = 128

    fun detectCharset(peekedBytes: ByteArray): Charset {
        val peek = peekedBytes.toString(Charsets.ISO_8859_1)
        val declaredEnc = Regex("""encoding\s*=\s*["']([^"']+)["']""", RegexOption.IGNORE_CASE)
            .find(peek)?.groupValues?.get(1) ?: "UTF-8"
        return try {
            Charset.forName(declaredEnc)
        } catch (_: Exception) {
            Charsets.UTF_8
        }
    }

    fun preprocess(bytes: ByteArray): ByteArray {
        val charset = detectCharset(bytes.take(1024).toByteArray())
        val text = createStreamingReader(bytes.inputStream(), charset).use { reader ->
            reader.readText()
        }.replaceFirst(
            Regex("""encoding\s*=\s*["'][^"']+["']""", RegexOption.IGNORE_CASE),
            """encoding="UTF-8""""
        )
        return text.toByteArray(Charsets.UTF_8)
    }

    fun createStreamingReader(inputStream: InputStream, charset: Charset): java.io.Reader {
        val baseReader = inputStream.reader(charset)
        return object : java.io.PushbackReader(baseReader, PUSHBACK_BUFFER_SIZE) {
            private val entityBuf = StringBuilder()

            override fun read(): Int {
                val c = super.read()
                if (c == '&'.code) {
                    entityBuf.setLength(0)
                    var next = super.read()
                    while (next != -1 && next != ';'.code && next != '&'.code && entityBuf.length < MAX_ENTITY_LENGTH) {
                        entityBuf.append(next.toChar())
                        next = super.read()
                    }

                    if (next == ';'.code) {
                        val entity = entityBuf.toString()
                        val replacement = decodeHtmlNamedEntity(entity)
                        if (replacement != null) {
                            for (i in replacement.length - 1 downTo 1) unread(replacement[i].code)
                            return replacement[0].code
                        } else if (entity.startsWith("#")) {
                            // Keep numeric entities
                            val full = "&$entity;"
                            for (i in full.length - 1 downTo 1) unread(full[i].code)
                            return '&'.code
                        } else if (entity in xmlEntities) {
                            // Keep standard XML entities
                            val full = "&$entity;"
                            for (i in full.length - 1 downTo 1) unread(full[i].code)
                            return '&'.code
                        } else {
                            // Unknown entity, escape it as &amp;...
                            val full = "amp;$entity;"
                            for (i in full.length - 1 downTo 0) unread(full[i].code)
                            return '&'.code
                        }
                    } else {
                        // Not an entity or broken, escape lone & as &amp;
                        if (next != -1) unread(next)
                        val full = "amp;" + entityBuf.toString()
                        for (i in full.length - 1 downTo 0) unread(full[i].code)
                        return '&'.code
                    }
                }
                return c
            }

            override fun read(cbuf: CharArray, off: Int, len: Int): Int {
                if (len <= 0) return 0
                var count = 0
                while (count < len) {
                    val c = read()
                    if (c == -1) break
                    cbuf[off + count] = c.toChar()
                    count++
                }
                return if (count == 0) -1 else count
            }
        }
    }

    private fun decodeHtmlNamedEntity(entity: String): String? {
        if (entity.isEmpty() || entity.startsWith("#") || entity in xmlEntities) return null
        val encoded = "&$entity;"
        val decoded = Parser.unescapeEntities(encoded, false)
        return decoded.takeIf { it != encoded && it.isNotEmpty() && '&' !in it }
    }
}

internal object Fb2MetadataParser {
    private val tagRe = Regex("<([A-Za-z0-9:_-]+)(?:\\s[^>]*)?>(.*?)</\\1>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
    private val descriptionRe = Regex("<description(?:\\s[^>]*)?>(.*?)</description>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
    private val titleInfoRe = Regex("<title-info(?:\\s[^>]*)?>(.*?)</title-info>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))
    private val authorRe = Regex("<author(?:\\s[^>]*)?>(.*?)</author>", setOf(RegexOption.IGNORE_CASE, RegexOption.DOT_MATCHES_ALL))

    fun extract(xml: String): Map<String, String> {
        val description = descriptionRe.find(xml)?.groupValues?.get(1).orEmpty()
        val titleInfo = titleInfoRe.find(description)?.groupValues?.get(1).orEmpty()
        return buildMap {
            findTag(titleInfo, "book-title")?.let { put("title", it) }
            findTag(titleInfo, "lang")?.let { put("language", it) }
            findTag(titleInfo, "genre")?.let { put("genre", it) }
            extractAuthor(titleInfo)?.let { put("author", it) }
        }
    }

    private fun extractAuthor(titleInfo: String): String? {
        val author = authorRe.find(titleInfo)?.groupValues?.get(1).orEmpty()
        val parts = listOf("first-name", "middle-name", "last-name", "nickname")
            .mapNotNull { findTag(author, it) }
        return parts.joinToString(" ").takeIf { it.isNotBlank() }
    }

    private fun findTag(xml: String, tag: String): String? =
        tagRe.findAll(xml)
            .firstOrNull { it.groupValues[1].equals(tag, ignoreCase = true) }
            ?.groupValues
            ?.get(2)
            ?.stripTags()
            ?.xmlUnescape()
            ?.trim()
            ?.takeIf { it.isNotBlank() }

    private fun String.stripTags(): String = replace(Regex("<[^>]+>"), " ")

    private fun String.xmlUnescape(): String =
        replace("&lt;", "<")
            .replace("&gt;", ">")
            .replace("&quot;", "\"")
            .replace("&apos;", "'")
            .replace("&amp;", "&")
}
