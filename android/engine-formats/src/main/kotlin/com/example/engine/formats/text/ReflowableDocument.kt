package com.example.engine.formats.text

import com.example.engine.formats.base.READER_MOBI_DOCUMENT_CSS
import com.example.engine.formats.base.TocEntry
import com.example.engine.formats.base.buildUnifiedReaderHtmlDocument
import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.nodes.TextNode

internal data class ReflowableDocument(
    val pages: List<String>,
    val toc: List<TocEntry> = emptyList()
) {
    val pageCount: Int get() = pages.size.coerceAtLeast(1)

    fun pageAt(index: Int): String? =
        pages.getOrNull(index.coerceIn(0, (pages.size - 1).coerceAtLeast(0)))
}

internal object ReflowableDocumentBuilder {
    private const val CHARS_PER_PAGE = 2200
    private const val FORCED_PAGEBREAK_MARKER = "<hr data-mrcomic-pagebreak=\"true\"/>"
    private val READER_BLOCK_TAGS = setOf(
        "p", "div", "section", "article", "blockquote", "pre",
        "ul", "ol", "li", "table", "thead", "tbody", "tfoot",
        "tr", "td", "th", "figure", "figcaption", "hr",
        "h1", "h2", "h3", "h4", "h5", "h6", "img"
    )
    private val READER_CONTAINER_TAGS = setOf("body", "main", "div", "section", "article", "aside")

    fun fromPlainText(text: String, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        val blocks = textBlocks(text)
        return ReflowableDocument(paginateBlocks(blocks, baseCss))
    }

    fun fromHtmlBlocks(blocks: List<String>, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        return ReflowableDocument(paginateBlocks(blocks, baseCss))
    }

    fun fromMarkup(markup: String, baseUrl: String?, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument {
        val normalized = renderHtmlToReaderDocument(markup, baseUrl)
        return ReflowableDocument(splitReaderDocument(normalized, baseCss))
    }

    fun error(message: String, baseCss: String = READER_MOBI_DOCUMENT_CSS): ReflowableDocument =
        ReflowableDocument(
            listOf(
                buildUnifiedReaderHtmlDocument(
                    body = "<p>${escapeHtml(message)}</p>",
                    baseCss = baseCss
                )
            )
        )

    private fun textBlocks(raw: String): List<String> {
        return raw
            .replace("\r\n", "\n")
            .replace('\r', '\n')
            .split(Regex("\n\\s*\n"))
            .mapNotNull { part ->
                val trimmed = part.trim()
                if (trimmed.isBlank()) null else "<p>${escapeHtml(trimmed).replace("\n", "<br/>")}</p>"
            }
            .ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
    }

    private fun paginateBlocks(blocks: List<String>, baseCss: String): List<String> {
        val pages = mutableListOf<String>()
        val current = StringBuilder()
        var currentLength = 0
        blocks.forEach { block ->
            val blockTextLength = block.visibleTextLength()
            if (current.isNotEmpty() && currentLength + blockTextLength > CHARS_PER_PAGE) {
                pages += wrapBody(current.toString(), baseCss)
                current.clear()
                currentLength = 0
            }
            current.append(block)
            currentLength += blockTextLength
        }
        if (current.isNotEmpty()) pages += wrapBody(current.toString(), baseCss)
        return pages.ifEmpty { listOf(wrapBody("<p></p>", baseCss)) }
    }

    private fun splitReaderDocument(html: String, baseCss: String): List<String> {
        val blocks = extractReaderBlocks(html)
        return if (blocks.isEmpty()) {
            listOf(html)
        } else {
            paginateMarkupBlocks(blocks, baseCss)
        }
    }

    private fun extractReaderBlocks(html: String): List<String> = runCatching {
        val document = Jsoup.parse(html)
        document.outputSettings(document.outputSettings().prettyPrint(false))
        flattenReaderNodes(document.body())
    }.getOrElse { emptyList() }

    private fun flattenReaderNodes(root: Element): List<String> {
        val blocks = mutableListOf<String>()
        val inlineBuffer = mutableListOf<Node>()

        fun flushInlineBuffer() {
            if (inlineBuffer.isEmpty()) return
            val wrapper = Element("p")
            inlineBuffer.forEach { wrapper.appendChild(it.clone()) }
            val html = wrapper.outerHtml().trim()
            if (html.isNotBlank()) {
                blocks += html
            }
            inlineBuffer.clear()
        }

        root.childNodes().forEach { node ->
            when (node) {
                is TextNode -> {
                    if (!node.text().isNullOrBlank()) {
                        inlineBuffer.add(node.clone())
                    }
                }
                is Element -> {
                    if (isForcedPagebreak(node)) {
                        flushInlineBuffer()
                        blocks += FORCED_PAGEBREAK_MARKER
                    } else if (shouldEmitStandaloneBlock(node)) {
                        flushInlineBuffer()
                        blocks += node.outerHtml().trim()
                    } else if (hasNestedBlockChildren(node)) {
                        flushInlineBuffer()
                        blocks += flattenReaderNodes(node)
                    } else {
                        inlineBuffer.add(node.clone())
                    }
                }
            }
        }

        flushInlineBuffer()
        return blocks
    }

    private fun paginateMarkupBlocks(blocks: List<String>, baseCss: String): List<String> {
        val pages = mutableListOf<String>()
        val current = StringBuilder()
        var currentLength = 0

        fun flushPage() {
            if (current.isNotEmpty()) {
                pages += wrapBody(current.toString(), baseCss)
                current.clear()
                currentLength = 0
            }
        }

        blocks.flatMap(::splitOversizedMarkupBlock).forEach { block ->
            if (block == FORCED_PAGEBREAK_MARKER) {
                flushPage()
                return@forEach
            }
            val blockLength = block.visibleTextLength().coerceAtLeast(1)
            if (current.isNotEmpty() && currentLength + blockLength > CHARS_PER_PAGE) {
                flushPage()
            }
            current.append(block)
            currentLength += blockLength
        }

        flushPage()
        return pages.ifEmpty { listOf(wrapBody("<p></p>", baseCss)) }
    }

    private fun splitOversizedMarkupBlock(block: String): List<String> {
        if (block == FORCED_PAGEBREAK_MARKER) return listOf(block)
        if (block.visibleTextLength() <= CHARS_PER_PAGE * 2) return listOf(block)

        return runCatching {
            val body = Jsoup.parseBodyFragment(block).body()
            val root = body.children().firstOrNull()
            val text = body.text().trim()
            if (text.length <= CHARS_PER_PAGE * 2) return@runCatching listOf(block)

            val tag = root?.normalName()?.takeIf { it.isNotBlank() } ?: "p"
            val attrs = root?.attributes()
                ?.joinToString(" ") { attr -> """${attr.key}="${escapeHtml(attr.value)}"""" }
                ?.takeIf { it.isNotBlank() }
                ?.let { " $it" }
                .orEmpty()

            splitTextIntoReaderChunks(text, CHARS_PER_PAGE).map { chunk ->
                "<$tag$attrs>${escapeHtml(chunk)}</$tag>"
            }
        }.getOrElse { listOf(block) }
    }

    private fun splitTextIntoReaderChunks(text: String, charsPerPage: Int): List<String> {
        if (text.length <= charsPerPage) return listOf(text)
        val chunks = mutableListOf<String>()
        var start = 0
        while (start < text.length) {
            val targetEnd = (start + charsPerPage).coerceAtMost(text.length)
            var boundary = targetEnd
            if (targetEnd < text.length) {
                val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd - 1)
                if (whitespaceBoundary > start + charsPerPage / 3) {
                    boundary = whitespaceBoundary
                }
            }
            val chunk = text.substring(start, boundary).trim()
            if (chunk.isNotBlank()) chunks += chunk
            start = boundary.coerceAtLeast(start + 1)
            while (start < text.length && text[start].isWhitespace()) start++
        }
        return chunks.ifEmpty { listOf(text) }
    }

    private fun shouldEmitStandaloneBlock(element: Element): Boolean {
        val tag = element.normalName()
        if (tag == "hr") return true
        if (tag == "img") return true
        if (tag !in READER_BLOCK_TAGS) return false
        return tag !in READER_CONTAINER_TAGS || !hasNestedBlockChildren(element)
    }

    private fun hasNestedBlockChildren(element: Element): Boolean =
        element.children().any { child ->
            val tag = child.normalName()
            isForcedPagebreak(child) ||
                tag in READER_BLOCK_TAGS && tag !in setOf("span", "a", "strong", "em", "b", "i", "u", "sup", "sub")
        }

    private fun isForcedPagebreak(element: Element): Boolean {
        if (element.normalName() != "hr") return false
        return element.hasAttr("data-mrcomic-pagebreak") ||
            element.classNames().contains("mrcomic-pagebreak")
    }

    private fun wrapBody(body: String, baseCss: String): String =
        buildUnifiedReaderHtmlDocument(
            body = body,
            baseCss = baseCss
        )

    private fun String.visibleTextLength(): Int =
        replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
            .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
            .replace(Regex("<[^>]+>"), " ")
            .replace(Regex("\\s+"), " ")
            .trim()
            .length

    private fun escapeHtml(text: String): String = text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
}
