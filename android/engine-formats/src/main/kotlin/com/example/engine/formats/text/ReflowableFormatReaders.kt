package com.example.engine.formats.text

import android.content.Context
import android.graphics.Bitmap
import android.net.Uri
import com.example.engine.formats.base.FormatReader
import com.example.engine.formats.base.FormatReaderWebResource
import com.example.engine.formats.base.READER_BASE_DOCUMENT_CSS
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.buildUnifiedReaderHtmlDocument
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import org.jsoup.Jsoup
import java.io.File
import java.io.InputStream
import java.net.URLDecoder

class PlainTextFormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    private val document: ReflowableDocument by lazy { parseDocument() }
    private val anchorPageIndex: Map<String, Int> by lazy { buildAnchorPageIndex(document.pages) }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        document.pageCount
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override fun getTableOfContents(): List<TocEntry> = document.toc

    override fun resolveHrefToPage(href: String): Int? =
        resolveLocalHref(path, href, anchorPageIndex)

    override fun close() = Unit

    private fun parseDocument(): ReflowableDocument {
        val raw = readSourceText(context, path)
            ?: return ReflowableDocumentBuilder.error("Unable to read file.")
        val (blocks, anchors) = textBlocksWithChapterAnchors(raw)
        val pages = paginateReaderBlocks(blocks)
        val pageIndex = buildAnchorPageIndex(pages)
        val toc = anchors.mapNotNull { anchor ->
            pageIndex[anchor.id]?.let { TocEntry(anchor.title, it) }
        }
        return ReflowableDocument(pages = pages, toc = toc)
    }
}

class MarkdownFormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    private val document: ReflowableDocument by lazy { parseDocument() }
    private val anchorPageIndex: Map<String, Int> by lazy { buildAnchorPageIndex(document.pages) }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        document.pageCount
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override fun resolveHrefToPage(href: String): Int? =
        resolveLocalHref(path, href, anchorPageIndex)

    override fun close() = Unit

    private fun parseDocument(): ReflowableDocument {
        val raw = readSourceText(context, path)
            ?: return ReflowableDocumentBuilder.error("Unable to read file.")
        return ReflowableDocument(
            pages = paginateReaderBlocks(renderMarkdownToHtmlBlocks(raw))
        )
    }
}

class HtmlFormatReader(
    private val context: Context,
    private val path: String
) : FormatReader {

    private val document: ReflowableDocument by lazy { parseDocument() }
    private val anchorPageIndex: Map<String, Int> by lazy { buildAnchorPageIndex(document.pages) }

    override suspend fun getPageCount(): Int = withContext(Dispatchers.IO) {
        document.pageCount
    }

    override suspend fun getPage(index: Int): Bitmap? = null

    override suspend fun getHtmlPage(index: Int): String? = withContext(Dispatchers.IO) {
        document.pageAt(index)
    }

    override fun htmlBaseUrl(): String? {
        if (supportsHtmlAssetLoading()) return null
        if (path.startsWith("content://")) return null
        val parent = File(path).parentFile ?: return null
        return parent.toURI().toString().trimEnd('/') + "/"
    }

    override fun htmlAssetBasePath(index: Int): String? {
        if (!supportsHtmlAssetLoading()) return null
        if (index !in 0 until document.pageCount) return null
        return File(path).name
    }

    override fun openHtmlAsset(path: String): FormatReaderWebResource? {
        if (!supportsHtmlAssetLoading()) return null
        val rootDir = File(this.path).parentFile ?: return null
        val requestedPath = URLDecoder.decode(path, Charsets.UTF_8.name())
            .substringBefore('#')
            .substringBefore('?')
            .trim()
            .trimStart('/')
            .ifBlank { File(this.path).name }
        val target = runCatching { File(rootDir, requestedPath).canonicalFile }.getOrNull() ?: return null
        val canonicalRoot = runCatching { rootDir.canonicalFile }.getOrNull() ?: return null
        if (!target.path.startsWith(canonicalRoot.path, ignoreCase = true) || !target.isFile) return null

        val extension = target.extension.lowercase()
        val textualResource = extension in setOf("html", "htm", "css", "js", "txt", "xml", "svg")
        val bytes = if (textualResource) {
            decodeTextBytes(target.readBytes()).toByteArray(Charsets.UTF_8)
        } else {
            target.readBytes()
        }
        return FormatReaderWebResource(
            mimeType = readerMimeTypeFor(extension),
            bytes = bytes,
            encoding = if (textualResource) "utf-8" else null
        )
    }

    override fun resolveHrefToPage(href: String): Int? =
        resolveLocalHref(path, href, anchorPageIndex)

    override fun close() = Unit

    private fun parseDocument(): ReflowableDocument {
        val raw = readSourceText(context, path)
            ?: return ReflowableDocumentBuilder.error("Unable to read file.")
        val readerBaseUrl = if (supportsHtmlAssetLoading()) null else htmlBaseUrl()
        return ReflowableDocumentBuilder.fromMarkup(
            markup = raw,
            baseUrl = readerBaseUrl,
            baseCss = READER_BASE_DOCUMENT_CSS
        )
    }

    private fun supportsHtmlAssetLoading(): Boolean =
        !path.startsWith("content://")
}

private data class ChapterAnchor(val id: String, val title: String)

internal fun readSourceText(context: Context, path: String): String? {
    val bytes = openSourceStream(context, path)?.use(InputStream::readBytes) ?: return null
    return decodeTextBytes(bytes)
}

private fun openSourceStream(context: Context, path: String): InputStream? = try {
    if (path.startsWith("content://")) {
        context.contentResolver.openInputStream(Uri.parse(path))
    } else {
        File(path).inputStream()
    }
} catch (_: Exception) {
    null
}

private fun textBlocksWithChapterAnchors(raw: String): Pair<List<String>, List<ChapterAnchor>> {
    val normalized = raw.replace("\r\n", "\n").replace('\r', '\n')
    val paragraphs = normalized.split(Regex("\n\\s*\n"))
    val blocks = mutableListOf<String>()
    val anchors = mutableListOf<ChapterAnchor>()
    paragraphs.forEach { paragraph ->
        val trimmed = paragraph.trim()
        if (trimmed.isBlank()) return@forEach
        val chapterTitle = detectChapterHeading(trimmed)
        if (chapterTitle != null) {
            val anchor = ChapterAnchor(
                id = "txt-chapter-${anchors.size + 1}",
                title = chapterTitle
            )
            anchors += anchor
            blocks += """<h2 id="${anchor.id}" class="chapter">${escapeHtml(anchor.title)}</h2>"""
        } else {
            blocks += "<p>${escapeHtml(trimmed).replace("\n", "<br/>")}</p>"
        }
    }
    return blocks.ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") } to anchors
}

private fun detectChapterHeading(text: String): String? {
    val singleLine = text.lines().singleOrNull()?.trim() ?: return null
    if (singleLine.length > 96) return null
    return TXT_READER_CHAPTER_PATTERNS.firstOrNull { it.matches(singleLine) }?.let { singleLine }
}

private fun paginateReaderBlocks(blocks: List<String>): List<String> {
    val pages = mutableListOf<String>()
    val current = StringBuilder()
    var currentLength = 0
    blocks.flatMap(::splitOversizedReaderBlock).forEach { block ->
        val blockLength = visibleTextLength(block)
        if (current.isNotEmpty() && currentLength + blockLength > READER_CHARS_PER_PAGE) {
            pages += wrapReaderPage(current.toString())
            current.clear()
            currentLength = 0
        }
        current.append(block)
        currentLength += blockLength
    }
    if (current.isNotEmpty()) pages += wrapReaderPage(current.toString())
    return pages.ifEmpty { listOf(wrapReaderPage("<p></p>")) }
}

private fun splitOversizedReaderBlock(block: String): List<String> {
    if (visibleTextLength(block) <= READER_CHARS_PER_PAGE) return listOf(block)
    val text = Jsoup.parse(block).text().trim()
    if (text.length <= READER_CHARS_PER_PAGE) return listOf(block)
    return text.chunked(READER_CHARS_PER_PAGE)
        .map { chunk -> "<p>${escapeHtml(chunk.trim())}</p>" }
        .filter { visibleTextLength(it) > 0 }
        .ifEmpty { listOf(block) }
}

private fun wrapReaderPage(body: String): String =
    buildUnifiedReaderHtmlDocument(
        body = body,
        baseCss = READER_BASE_DOCUMENT_CSS
    )

private fun buildAnchorPageIndex(pages: List<String>): Map<String, Int> {
    val result = linkedMapOf<String, Int>()
    pages.forEachIndexed { index, html ->
        runCatching {
            val document = Jsoup.parse(html)
            document.select("[id]").forEach { element ->
                element.id().trim().takeIf { it.isNotBlank() }?.let { result.putIfAbsent(it, index) }
            }
            document.select("a[name]").forEach { element ->
                element.attr("name").trim().takeIf { it.isNotBlank() }?.let { result.putIfAbsent(it, index) }
            }
        }
    }
    return result
}

private fun resolveLocalHref(path: String, href: String, anchorPageIndex: Map<String, Int>): Int? {
    val normalizedHref = href.trim()
    if (normalizedHref.isBlank()) return null
    val hrefWithoutQuery = normalizedHref.substringBefore('?')
    val filePart = hrefWithoutQuery.substringBefore('#').trim().trimStart('/')
    val fragment = hrefWithoutQuery.substringAfter('#', "").trim()
    if (fragment.isNotBlank()) {
        anchorPageIndex[fragment]?.let { return it }
    }
    if (filePart.isBlank() || path.startsWith("content://")) return null
    val currentFile = File(path)
    val requestedName = filePart.substringAfterLast('/')
    val requestedStem = requestedName.substringBeforeLast('.', requestedName)
    return when {
        requestedName.equals(currentFile.name, ignoreCase = true) -> 0
        requestedStem.equals(currentFile.nameWithoutExtension, ignoreCase = true) -> 0
        else -> null
    }
}

private fun visibleTextLength(html: String): Int =
    html.replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
        .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
        .replace(Regex("<[^>]+>"), " ")
        .replace(Regex("\\s+"), " ")
        .trim()
        .length

private fun readerMimeTypeFor(extension: String): String = when (extension.lowercase()) {
    "html", "htm" -> "text/html"
    "css" -> "text/css"
    "js" -> "application/javascript"
    "txt" -> "text/plain"
    "xml" -> "application/xml"
    "svg" -> "image/svg+xml"
    "jpg", "jpeg" -> "image/jpeg"
    "png" -> "image/png"
    "gif" -> "image/gif"
    "webp" -> "image/webp"
    "avif" -> "image/avif"
    "bmp" -> "image/bmp"
    "ico" -> "image/x-icon"
    "ttf" -> "font/ttf"
    "otf" -> "font/otf"
    "woff" -> "font/woff"
    "woff2" -> "font/woff2"
    else -> "application/octet-stream"
}

private fun escapeHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")

private const val READER_CHARS_PER_PAGE = 2200
private val TXT_READER_CHAPTER_PATTERNS = listOf(
    Regex("""(?iu)^(глава|часть|книга|том)\s+[0-9ivxlcdm]+(?:[\s\p{Pd}.:]+.+)?$"""),
    Regex("""(?iu)^(chapter|part|book|volume)\s+[0-9ivxlcdm]+(?:[\s\p{Pd}.:]+.+)?$"""),
    Regex("""(?iu)^(пролог|эпилог|предисловие|введение|заключение|послесловие|prologue|epilogue|preface|introduction|afterword|foreword)$""")
)
