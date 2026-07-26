package io.leostrange.mrcomic.engine.formats.epub

import net.lingala.zip4j.ZipFile
import net.lingala.zip4j.model.FileHeader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import java.net.URLDecoder
import java.nio.charset.Charset
import java.util.concurrent.ConcurrentHashMap

/**
 * Analyzes EPUB content to classify spine entries and extract footnote data.
 *
 * Owns the text-entry LRU cache and memoized classification caches.
 * Extracted from [EpubFormatReader] to separate content-analysis logic
 * from spine/pagination construction.
 */
internal class EpubContentAnalyzer(
    private val textEntryCache: LinkedHashMap<String, String>,
    private val titleOnlySpinePageCache: ConcurrentHashMap<String, Boolean>,
    private val notesTitlePageCache: ConcurrentHashMap<String, Boolean>,
    private val footnotePageCache: ConcurrentHashMap<String, Boolean>,
    private val chapterTitleRe: Regex,
    private val frontMatterEntryRe: Regex,
    private val xhtmlExtensions: Set<String>,
    private val cssInject: String,
    private val findHeader: (ZipFile, String) -> FileHeader?,
    private val detectCharset: (ByteArray) -> Charset
) {
    companion object {
        private const val MAX_CACHED_TEXT_ENTRY_CHARS = 512_000
    }

    // ── Text entry reading ──────────────────────────────────────────────────

    fun readTextEntry(zip: ZipFile, entry: String): String? {
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

    // ── Spine entry classification ──────────────────────────────────────────

    fun isProtectedFrontMatterEntry(entry: String): Boolean {
        val normalized = entry.replace('\\', '/')
        val fileName = normalized.substringAfterLast('/')
        val pathLike = normalized.substringBeforeLast('.', normalized)
        val nameLike = fileName.substringBeforeLast('.', fileName)
        return frontMatterEntryRe.containsMatchIn(pathLike) ||
            frontMatterEntryRe.containsMatchIn(nameLike)
    }

    fun shouldIncludeFallbackHtml(zip: ZipFile, header: FileHeader): Boolean {
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

    fun isHeadingOnlySpinePage(zip: ZipFile, entry: String): Boolean {
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

    fun isTitleOnlySpinePage(zip: ZipFile, entry: String): Boolean =
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
            val titleLike = chapterTitleRe.containsMatchIn(visibleText) ||
                (visibleText.length <= 80 && body.select("p,div,h1,h2,h3,h4").size <= 2)
            if (!titleLike) return@getOrPut false
            !body.select("p,li,blockquote,pre,td").any { element ->
                val text = element.text().replace('\u00A0', ' ').trim()
                text.isNotBlank() && text.length > 48 && !chapterTitleRe.containsMatchIn(text)
            }
        }

    fun isNotesTitlePage(zip: ZipFile, entry: String): Boolean =
        notesTitlePageCache.getOrPut(entry) {
            val raw = readTextEntry(zip, entry) ?: return@getOrPut false
            EpubFootnoteParser.hasNotesTitle(raw)
        }

    fun isFootnotePage(zip: ZipFile, entry: String): Boolean =
        footnotePageCache.getOrPut(entry) {
            extractFootnoteItems(zip, entry).isNotEmpty()
        }

    // ── Footnote extraction ─────────────────────────────────────────────────

    fun extractFootnoteItems(zip: ZipFile, entry: String): List<EpubFootnoteItem> {
        val raw = readTextEntry(zip, entry) ?: return emptyList()
        return EpubFootnoteParser.extractItems(raw)
    }

    fun buildFootnoteMap(
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
            val entry = EpubArchiveAccess.normalizePath(if (opfDir.isEmpty()) href else "$opfDir/$href")
            val ext = entry.substringAfterLast('.', "").lowercase()
            if (ext !in xhtmlExtensions) continue
            extractFootnoteItems(zip, entry).forEach { note ->
                result.putIfAbsent(note.anchorId, note.text)
            }
        }
        return result
    }

    // ── Synthetic note pages ────────────────────────────────────────────────

    fun buildSyntheticNotePages(
        titleEntry: String,
        noteEntries: List<String>,
        zip: ZipFile
    ): List<EpubPage> {
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

    fun buildSyntheticHtml(content: String, includeTitle: Boolean): String {
        val title = if (includeTitle) "<h1>Notes</h1>" else ""
        return "<html><head>$cssInject</head><body>$title$content</body></html>"
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

    // ── Content estimation ──────────────────────────────────────────────────

    fun estimateContent(zip: ZipFile, entry: String): EpubContentEstimate {
        val header = findHeader(zip, entry) ?: return EpubContentEstimate(0, 0, 1)
        return try {
            val html = readTextEntry(zip, entry) ?: return EpubContentEstimate(0, 0, 1)
            val body = extractBodyContent(html)
            val textCount = CHUNK_HTML_TAG_RE.replace(body, "").count { !it.isWhitespace() }
            val keepWholeBody = shouldKeepWholeEpubHtmlBody(body) &&
                textCount <= CHUNK_CHARS_PER_PAGE * 2
            val imgCount = Regex("""<\s*(?:img|image)\b""", RegexOption.IGNORE_CASE)
                .findAll(body)
                .count()
            val hasSvgOrEmbeddedMedia =
                body.contains("<svg", ignoreCase = true) ||
                body.contains("<figure", ignoreCase = true) ||
                Regex("""<object\b""", RegexOption.IGNORE_CASE).containsMatchIn(body)
            val effectiveImgCount = if (hasSvgOrEmbeddedMedia) maxOf(imgCount, 1) else imgCount
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
}
