package io.leostrange.mrcomic.engine.formats.text.pagination

import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.parser.Parser
import io.leostrange.mrcomic.engine.api.TextPaginationConstraints

/**
 * Re-export from engine-api for backward compatibility.
 * The canonical definition is in [io.leostrange.mrcomic.engine.api.TextPaginationConstraints].
 */
typealias TextPaginationConstraints = io.leostrange.mrcomic.engine.api.TextPaginationConstraints

/**
 * Re-export from engine-api. The canonical definition is in
 * [io.leostrange.mrcomic.engine.api.TextPaginationSubPage].
 */
typealias TextPaginationSubPage = io.leostrange.mrcomic.engine.api.TextPaginationSubPage

data class TextPaginationResult(
    val subPages: List<TextPaginationSubPage>
) {
    val subPageCount: Int get() = subPages.size.coerceAtLeast(1)
}

interface TextPaginator {
    suspend fun paginate(
        sectionHtml: String,
        constraints: TextPaginationConstraints
    ): TextPaginationResult
}

/**
 * Viewport-aware text paginator. Splits HTML sections into pages based on
 * actual viewport dimensions and typography, not fixed layout units.
 * This prevents half-empty pages on large screens.
 */
class LayoutUnitTextPaginator : TextPaginator {
    override suspend fun paginate(
        sectionHtml: String,
        constraints: TextPaginationConstraints
    ): TextPaginationResult {
        val charsPerPage = calculateEstimatedCharsPerPage(constraints)
        val blocks = extractReaderBlocks(sectionHtml)
        if (blocks.isEmpty()) {
            return TextPaginationResult(listOf(TextPaginationSubPage(html = sectionHtml, index = 0)))
        }
        val pages = mutableListOf<String>()
        var currentPage = StringBuilder()
        var currentChars = 0
        for (block in blocks) {
            val textLen = block.replace(Regex("<[^>]+>"), " ").trim().length
            // Split oversized blocks that exceed a full page
            if (textLen > charsPerPage) {
                if (currentChars > 0) {
                    pages += wrapPage(currentPage.toString())
                    currentPage = StringBuilder()
                    currentChars = 0
                }
                val chunks = splitOversizedBlock(block, charsPerPage)
                for (chunk in chunks) {
                    val chunkLength = chunk.replace(Regex("<[^>]+>"), " ").trim().length
                    if (currentChars + chunkLength > charsPerPage && currentChars > 0) {
                        pages += wrapPage(currentPage.toString())
                        currentPage = StringBuilder()
                        currentChars = 0
                    }
                    currentPage.append(chunk)
                    currentChars += chunkLength
                }
            } else if (currentChars + textLen > charsPerPage && currentChars > 0) {
                pages += wrapPage(currentPage.toString())
                currentPage = StringBuilder()
                currentChars = 0
                currentPage.append(block)
                currentChars += textLen
            } else {
                currentPage.append(block)
                currentChars += textLen
            }
        }
        if (currentChars > 0) {
            pages += wrapPage(currentPage.toString())
        }
        return TextPaginationResult(
            subPages = pages.ifEmpty { listOf(sectionHtml) }
                .mapIndexed { i, pageHtml -> TextPaginationSubPage(html = pageHtml, index = i) }
        )
    }

    private fun extractReaderBlocks(html: String): List<String> = runCatching {
        val doc = Jsoup.parse(html, "", Parser.htmlParser())
        doc.outputSettings(doc.outputSettings().prettyPrint(false))
        val body = doc.body()
        val blocks = mutableListOf<String>()
        val inline = mutableListOf<org.jsoup.nodes.Node>()
        fun flushInline() {
            if (inline.isEmpty()) return
            val wrapper = Element("p")
            inline.forEach { wrapper.appendChild(it.clone()) }
            blocks += wrapper.outerHtml().trim()
            inline.clear()
        }
        body.childNodes().forEach { node ->
            when (node) {
                is org.jsoup.nodes.Element -> {
                    val tag = node.normalName()
                    if (tag in BLOCK_TAGS) {
                        flushInline()
                        blocks += node.outerHtml().trim()
                    } else {
                        inline.add(node)
                    }
                }
                is org.jsoup.nodes.TextNode -> {
                    if (node.text().isNotBlank()) inline.add(node)
                }
                else -> inline.add(node)
            }
        }
        flushInline()
        blocks
    }.getOrElse { emptyList() }

    /**
     * Splits an oversized block at sentence boundaries to fit within [maxChars].
     * Falls back to splitting at word boundaries if no sentences are found.
     */
    private fun splitOversizedBlock(block: String, maxChars: Int): List<String> {
        splitAtInlineBoundaries(block, maxChars)?.let { return it }
        return splitPlainTextBlockAtSentences(block, maxChars)
    }

    /** Keeps anchors, emphasis and footnote markers intact when a paragraph has inline nodes. */
    private fun splitAtInlineBoundaries(block: String, maxChars: Int): List<String>? = runCatching {
        val root = Jsoup.parseBodyFragment(block).body().children().firstOrNull() ?: return null
        if (root.normalName() !in SPLITTABLE_TEXT_TAGS || root.childNodeSize() <= 1) return null

        val chunks = mutableListOf<String>()
        var current = root.clone().empty()
        var currentChars = 0
        root.childNodes().forEach { node ->
            val nodeChars = Jsoup.parseBodyFragment(node.outerHtml()).text().length
            if (currentChars > 0 && currentChars + nodeChars > maxChars) {
                chunks += current.outerHtml()
                current = root.clone().empty()
                currentChars = 0
            }
            current.appendChild(node.clone())
            currentChars += nodeChars
        }
        if (current.childNodeSize() > 0) chunks += current.outerHtml()
        chunks.takeIf { it.size > 1 }
    }.getOrNull()

    private fun splitPlainTextBlockAtSentences(block: String, maxChars: Int): List<String> {
        val textOnly = block.replace(Regex("<[^>]+>"), " ").trim()
        val sentences = textOnly.split(Regex("(?<=[.!?。！？])\\s+"))
        if (sentences.size <= 1) {
            // No sentence breaks — split at word boundaries
            val words = textOnly.split(Regex("\\s+"))
            val result = mutableListOf<String>()
            val current = StringBuilder()
            for (word in words) {
                if (current.length + word.length + 1 > maxChars && current.isNotEmpty()) {
                    result += "<p>${current.toString().trim()}</p>"
                    current.clear()
                }
                if (current.isNotEmpty()) current.append(' ')
                current.append(word)
            }
            if (current.isNotEmpty()) result += "<p>${current.toString().trim()}</p>"
            return result
        }
        // Group sentences into chunks that fit maxChars
        val result = mutableListOf<String>()
        val current = StringBuilder()
        for (sentence in sentences) {
            if (current.length + sentence.length > maxChars && current.isNotEmpty()) {
                result += "<p>${current.toString().trim()}</p>"
                current.clear()
            }
            if (current.isNotEmpty()) current.append(' ')
            current.append(sentence)
        }
        if (current.isNotEmpty()) result += "<p>${current.toString().trim()}</p>"
        return result.ifEmpty { listOf(block) }
    }

    private fun wrapPage(bodyHtml: String): String {
        val safe = bodyHtml.ifBlank { "<p></p>" }
        return "<div style=\"width:100%;max-width:100%;overflow-wrap:normal;\">$safe</div>"
    }

    private fun calculateEstimatedCharsPerPage(constraints: TextPaginationConstraints): Int {
        val fontSizePx = constraints.fontSizeSp
        val lineHeightPx = (fontSizePx * constraints.lineHeight).toInt().coerceAtLeast(20)
        val verticalInset = constraints.contentTopInsetPx + constraints.contentBottomInsetPx
        val usableHeight = (constraints.viewportHeightPx - verticalInset).coerceAtLeast(320)
        val linesPerPage = usableHeight / lineHeightPx.coerceAtLeast(1)
        val avgCharWidth = (fontSizePx * 0.56f).toInt().coerceAtLeast(8)
        val charsPerLine = (constraints.viewportWidthPx / avgCharWidth).coerceAtLeast(20)
        return (linesPerPage * charsPerLine * 0.75f).toInt().coerceAtLeast(400)
    }

    companion object {
        private val SPLITTABLE_TEXT_TAGS = setOf("p", "div", "blockquote")
        private val BLOCK_TAGS = setOf("p", "div", "h1", "h2", "h3", "h4", "h5", "h6",
            "table", "ul", "ol", "li", "blockquote", "pre", "hr", "figure", "section")
    }
}
