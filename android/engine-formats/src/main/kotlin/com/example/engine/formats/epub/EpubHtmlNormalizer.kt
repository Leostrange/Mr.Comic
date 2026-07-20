package com.example.engine.formats.epub

import org.jsoup.Jsoup
import org.jsoup.nodes.Document

/**
 * Pure HTML normalization functions for EPUB content.
 *
 * Extracted from EpubFormatReader to isolate the HTML transformation
 * logic from the ZIP/archive handling. Uses Jsoup for DOM manipulation.
 */

internal fun normalizeInlinedEpubMarkup(html: String): String = runCatching {
    val document = Jsoup.parse(html)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val rawBodyInnerHtml = extractEpubBodyInnerHtmlByTag(html)
    val blockTags = setOf(
        "div", "p", "h1", "h2", "h3", "h4", "h5", "h6",
        "blockquote", "ul", "ol", "li", "table", "thead", "tbody",
        "tfoot", "tr", "td", "th", "section", "article", "aside",
        "figure", "figcaption"
    )
    var changed = true
    while (changed) {
        changed = false
        document.select("span, font").forEach { wrapper ->
            val hasBlockChild = wrapper.children().any { child -> child.normalName() in blockTags }
            if (hasBlockChild && wrapper.ownText().isBlank()) {
                wrapper.unwrap()
                changed = true
            }
        }
    }
    val normalized = document.outerHtml()
    if (document.body().html().isBlank() && rawBodyInnerHtml != null) {
        html
    } else {
        normalized
    }
}.getOrDefault(html)

internal fun extractEpubBodyInnerHtmlByTag(html: String): String? {
    val open = Regex("""<body\b[^>]*>""", RegexOption.IGNORE_CASE).find(html) ?: return null
    val close = html.lastIndexOf("</body>", ignoreCase = true)
    val end = if (close > open.range.last) close else html.length
    return html.substring(open.range.last + 1, end)
        .trim()
        .takeIf { it.isNotBlank() }
}

internal fun extractEpubBodyAttributesByTag(html: String): Map<String, String> {
    val bodyOpen = Regex("""<body\b[^>]*>""", RegexOption.IGNORE_CASE).find(html)?.value ?: return emptyMap()
    return Regex("""([:\w-]+)\s*=\s*(["'])(.*?)\2""")
        .findAll(bodyOpen)
        .associate { match -> match.groupValues[1] to match.groupValues[3] }
}

internal fun rebuildNormalizedInlinedEpubDocument(html: String, readerCss: String): String = runCatching {
    val fallbackBodyInnerHtml = extractEpubBodyInnerHtmlByTag(html)
    val fallbackBodyAttributes = extractEpubBodyAttributesByTag(html)
    val source = Jsoup.parse(html)
    source.outputSettings(Document.OutputSettings().prettyPrint(false))

    val rebuilt = Document("")
    rebuilt.outputSettings(Document.OutputSettings().prettyPrint(false))

    val htmlElement = rebuilt.appendElement("html")
    source.selectFirst("html")?.attributes()?.forEach { attr ->
        htmlElement.attr(attr.key, attr.value)
    }

    val headElement = htmlElement.appendElement("head")
    headElement.appendElement("meta").attr("charset", "UTF-8")
    headElement.append(readerCss)
    source.head().children().forEach { child ->
        val tag = child.normalName()
        if (tag == "style" || tag == "title" || tag == "meta" || tag == "link") {
            headElement.appendChild(child.clone())
        }
    }

    val bodyElement = htmlElement.appendElement("body")
    source.body().attributes().forEach { attr ->
        bodyElement.attr(attr.key, attr.value)
    }
    fallbackBodyAttributes.forEach { (key, value) ->
        if (!bodyElement.hasAttr(key)) bodyElement.attr(key, value)
    }
    val sourceBodyHtml = source.body().html().trim()
    if (sourceBodyHtml.isBlank() && fallbackBodyInnerHtml != null) {
        bodyElement.html(fallbackBodyInnerHtml)
    } else {
        source.body().childNodes().forEach { child ->
            bodyElement.appendChild(child.clone())
        }
    }

    rebuilt.outerHtml()
}.getOrDefault(
    when {
        Regex("<head[^>]*>", RegexOption.IGNORE_CASE).containsMatchIn(html) ->
            html.replaceFirst(Regex("<head([^>]*)>", RegexOption.IGNORE_CASE), "<head$1>$readerCss")
        html.contains("<body", ignoreCase = true) ->
            html.replaceFirst(Regex("<body[^>]*>", RegexOption.IGNORE_CASE), "$0$readerCss")
        else -> "<html><head>$readerCss</head><body>$html</body></html>"
    }
)
