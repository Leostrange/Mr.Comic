package com.example.engine.formats.text.pagination

import com.example.engine.formats.text.ReflowableDocumentBuilder
import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.parser.Parser

/**
 * Viewport and typography inputs for deterministic text sub-page calculation.
 */
data class TextPaginationConstraints(
    val viewportWidthPx: Int,
    val viewportHeightPx: Int,
    val contentTopInsetPx: Int = 0,
    val contentBottomInsetPx: Int = 0,
    val fontSizeSp: Int = 18,
    val lineHeight: Float = 1.6f,
    val letterSpacingEm: Float = 0f,
    val wordSpacingEm: Float = 0f,
    val paragraphSpacingEm: Float = 0.2f,
    val bold: Boolean = false
)

data class TextPaginationSubPage(
    val html: String,
    val index: Int,
    /** Source section index before viewport sub-pagination. */
    val sectionIndex: Int = 0
)

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
            if (currentChars + textLen > charsPerPage && currentChars > 0) {
                pages += wrapPage(currentPage.toString())
                currentPage = StringBuilder()
                currentChars = 0
            }
            currentPage.append(block)
            currentChars += textLen
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

    private fun wrapPage(bodyHtml: String): String {
        val safe = bodyHtml.ifBlank { "<p></p>" }
        return "<div style=\"width:100%;max-width:100%;word-wrap:break-word;overflow-wrap:break-word;\">$safe</div>"
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
        private val BLOCK_TAGS = setOf("p", "div", "h1", "h2", "h3", "h4", "h5", "h6",
            "table", "ul", "ol", "li", "blockquote", "pre", "hr", "figure", "section")
    }
}
