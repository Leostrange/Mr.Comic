package io.leostrange.mrcomic.engine.formats.text

import org.jsoup.Jsoup
import org.jsoup.nodes.Element
import org.jsoup.nodes.Node
import org.jsoup.nodes.TextNode

// ─────────────────────────────────────────────────────────────────────────────
// Block extraction helpers for reflowable documents.
// Extracted from ReflowableDocumentBuilder to reduce its size.
// ─────────────────────────────────────────────────────────────────────────────

internal const val FORCED_PAGEBREAK_MARKER = "<hr data-mrcomic-pagebreak=\"true\"/>"

internal val READER_BLOCK_TAGS = setOf(
    "p", "div", "section", "article", "blockquote", "pre",
    "ul", "ol", "li", "table", "thead", "tbody", "tfoot",
    "tr", "td", "th", "figure", "figcaption", "hr",
    "h1", "h2", "h3", "h4", "h5", "h6", "img"
)

internal val READER_CONTAINER_TAGS = setOf("body", "main", "div", "section", "article", "aside")

internal fun shouldEmitStandaloneBlock(element: Element): Boolean {
    val tag = element.normalName()
    if (tag == "hr") return true
    if (tag == "img") return true
    if (tag !in READER_BLOCK_TAGS) return false
    return tag !in READER_CONTAINER_TAGS || !hasNestedBlockChildren(element)
}

internal fun hasNestedBlockChildren(element: Element): Boolean =
    element.children().any { child ->
        val tag = child.normalName()
        isForcedPagebreak(child) ||
            tag in READER_BLOCK_TAGS && tag !in setOf("span", "a", "strong", "em", "b", "i", "u", "sup", "sub")
    }

internal fun isForcedPagebreak(element: Element): Boolean {
    if (element.normalName() != "hr") return false
    return element.hasAttr("data-mrcomic-pagebreak") ||
        element.classNames().contains("mrcomic-pagebreak")
}

internal fun isSplittableTextBlock(element: Element): Boolean {
    val tag = element.normalName()
    if (tag !in setOf("p", "div")) return false
    return element.children().none { child ->
        child.normalName() in READER_BLOCK_TAGS && child.normalName() !in setOf(
            "span", "a", "strong", "em", "b", "i", "u", "sup", "sub", "font", "small", "big"
        )
    }
}

internal fun extractReaderBlocks(html: String): List<String> = runCatching {
    val document = Jsoup.parse(html)
    document.outputSettings(document.outputSettings().prettyPrint(false))
    flattenReaderNodes(document.body())
}.getOrElse { emptyList() }

internal fun flattenReaderNodes(root: Element): List<String> {
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
