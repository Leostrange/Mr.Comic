package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.formats.base.READER_BASE_DOCUMENT_CSS
import io.leostrange.mrcomic.engine.formats.base.READER_PRESERVE_LAYOUT_DOCUMENT_CSS
import io.leostrange.mrcomic.engine.formats.base.buildUnifiedReaderHtmlDocument
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element
import org.jsoup.safety.Safelist

internal val HTML_READER_SAFE_LIST: Safelist = Safelist.relaxed()
    .addTags(
        "html", "head", "body", "main", "article", "section", "aside", "header", "footer",
        "figure", "figcaption", "hr", "table", "thead", "tbody", "tfoot", "tr", "th", "td",
        "caption", "colgroup", "col", "sup", "sub", "center", "font", "big", "small",
        "kbd", "details", "summary", "mark", "abbr", "del", "s", "em", "strong",
        "div", "span"
    )
    .addAttributes(":all", "id", "class", "title", "lang", "dir", "style", "align", "data-mrcomic-pagebreak")
    .addAttributes("img", "src", "alt", "title", "width", "height", "loading", "align")
    .addAttributes("a", "href", "name", "target", "role", "epub:type", "data-footnote-id", "data-footnote")
    .addAttributes("font", "size", "face", "color")
    .addAttributes("th", "colspan", "rowspan")
    .addAttributes("td", "colspan", "rowspan")
    .addAttributes("table", "width", "border", "cellpadding", "cellspacing", "align")
    .addAttributes("col", "span")
    .addProtocols("a", "href", "http", "https", "mailto", "tel", "file", "content", "#")
    .addProtocols("img", "src", "http", "https", "file", "content", "data")
    .preserveRelativeLinks(true)

internal val DEFAULT_READER_HTML_CSS = READER_BASE_DOCUMENT_CSS
internal val PRESERVE_LAYOUT_HTML_CSS = READER_PRESERVE_LAYOUT_DOCUMENT_CSS

internal data class ReaderHtmlFootnoteExtraction(
    val contentHtml: String,
    val footnoteMap: Map<String, String>
)

/** Removes only semantic note bodies; references in the reading flow stay intact. */
internal fun extractReaderHtmlFootnotes(raw: String): ReaderHtmlFootnoteExtraction {
    val document = Jsoup.parse(raw)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val footnoteMap = linkedMapOf<String, String>()
    val noteBodies = document.allElements.filter(::isReaderHtmlFootnoteBody)
        .filter { element -> element.parents().none(::isReaderHtmlFootnoteBody) }

    linkPlainNumericFootnoteMarkers(document, noteBodies)

    noteBodies.forEach { note ->
        val anchorId = note.id().trim()
        val text = note.text().replace(Regex("\\s+"), " ").trim()
        if (anchorId.isNotBlank() && text.isNotBlank()) {
            footnoteMap.putIfAbsent(anchorId, text)
        }
        note.remove()
    }
    return ReaderHtmlFootnoteExtraction(
        contentHtml = document.outerHtml(),
        footnoteMap = footnoteMap
    )
}

private fun linkPlainNumericFootnoteMarkers(document: Document, noteBodies: List<Element>) {
    val targetIds = noteBodies.map(Element::id).filter(String::isNotBlank)
    if (targetIds.isEmpty()) return

    document.select("sup, sub, span.footnote-ref, span.noteref, span.note-ref")
        .filterNot { marker -> marker.parents().any { it.normalName() == "a" || isReaderHtmlFootnoteBody(it) } }
        .forEach { marker ->
            val markerNumber = Regex("""\d{1,4}""").find(marker.text())?.value ?: return@forEach
            val targetId = targetIds.firstOrNull { id ->
                id == markerNumber || Regex("""(?:^|[-_])${Regex.escape(markerNumber)}$""", RegexOption.IGNORE_CASE)
                    .containsMatchIn(id)
            } ?: return@forEach
            val link = Element("a")
                .attr("href", "#$targetId")
                .addClass("mrcomic-generated-noteref")
            marker.replaceWith(link)
            link.appendChild(marker)
        }
}

private fun isReaderHtmlFootnoteBody(element: Element): Boolean {
    val epubTypeTokens = element.attr("epub:type")
        .lowercase()
        .split(Regex("\\s+"))
    val roleTokens = element.attr("role")
        .lowercase()
        .split(Regex("\\s+"))
    return epubTypeTokens.any { it in setOf("footnote", "endnote", "rearnote") } ||
        roleTokens.any { it in setOf("doc-footnote", "doc-endnote") } ||
        element.hasAttr("data-footnote-body")
}

internal fun isGutenbergHtml(raw: String): Boolean {
    val lowerRaw = raw.lowercase()
    return (
        lowerRaw.contains("<!doctype html public \"-//w3c//dtd xhtml 1.0 strict//en\"") ||
            lowerRaw.contains("gutenberg") ||
            lowerRaw.contains("rel=\"coverpage\"") ||
            (lowerRaw.contains("<h1") && lowerRaw.contains("href=\"#") &&
                (lowerRaw.contains("text-align:center") || lowerRaw.contains("align=\"center\"")))
        )
}

private fun htmlEscapeText(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")

internal fun preserveGutenbergHtmlDocument(raw: String, baseUrl: String?): String {
    val normalizedBase = baseUrl.orEmpty()
    val document = Jsoup.parse(raw, normalizedBase)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    document.select(
        "script, noscript, template, iframe, object, embed, canvas, form, " +
            "input, button, select, textarea"
    ).remove()
    document.select("head base").remove()
    if (normalizedBase.isNotEmpty()) {
        document.head().prependElement("base").attr("href", normalizedBase)
    }
    document.head().append(
        """
        <style>
        @media screen {
            html {
                width: 100%;
                max-width: 100%;
                margin: 0;
                padding: 0;
                overflow-x: hidden;
                box-sizing: border-box;
            }
            *, *::before, *::after { box-sizing: inherit; }
            body {
                margin: 0;
                padding: 16px 16px 44px;
                width: 100%;
                max-width: none;
                box-sizing: border-box;
                overflow-wrap: break-word;
            }
            img { max-width: 100%; height: auto; display: block; margin: 8px auto; }
            a:link, a:visited, a:hover, a:active {
                color: #1a6f9a;
                text-decoration: underline;
                text-underline-offset: 0.14em;
                text-decoration-thickness: 0.08em;
            }
        }
        </style>
        """.trimIndent()
    )
    return document.outerHtml()
}

internal fun shouldPreserveHtmlPublisherLayout(raw: String): Boolean {
    val lowerRaw = raw.lowercase()
    if ("<body" in lowerRaw && "data-mrcomic-preserve-layout" in lowerRaw) return true
    if (Regex("""<(frameset|frame)\b""", RegexOption.IGNORE_CASE).containsMatchIn(raw)) return true
    return Regex(
        """style\s*=\s*["'][^"']*position\s*:\s*(?:absolute|fixed)\b""",
        RegexOption.IGNORE_CASE
    ).containsMatchIn(raw)
}

internal fun normalizeReaderHtmlFragment(html: String): String = runCatching {
    val trimmed = html.trim()
    if (trimmed.isBlank()) return@runCatching trimmed
    if (!trimmed.contains("<body", ignoreCase = true) && !trimmed.contains("<html", ignoreCase = true)) {
        return@runCatching trimmed
    }
    val document = Jsoup.parse(trimmed)
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    document.select("body body").forEach { it.unwrap() }
    document.select("body html").forEach { it.unwrap() }
    document.body().html().trim().ifBlank { trimmed }
}.getOrElse { html }

internal fun buildReaderHtmlDocument(
    body: String,
    baseUrl: String? = null,
    extraCss: String = "",
    extraHeadHtml: String = "",
    baseCss: String = DEFAULT_READER_HTML_CSS,
    preservePublisherLayout: Boolean = false
): String = buildUnifiedReaderHtmlDocument(
    body = normalizeReaderHtmlFragment(body),
    baseUrl = baseUrl,
    extraCss = extraCss,
    extraHeadHtml = extraHeadHtml,
    baseCss = baseCss,
    preservePublisherLayout = preservePublisherLayout
)

internal fun renderHtmlToReaderDocument(raw: String, baseUrl: String? = null): String {
    val normalizedRaw = raw.replace(
        Regex("""(?is)<(?:mbp:pagebreak|pagebreak)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak)>)"""),
        ""
    )
    val preservePublisherLayout = shouldPreserveHtmlPublisherLayout(normalizedRaw)
    val baseCss = if (preservePublisherLayout) PRESERVE_LAYOUT_HTML_CSS else DEFAULT_READER_HTML_CSS
    val normalizedBaseUrl = baseUrl.orEmpty()
    val document = if (normalizedRaw.contains("<html", ignoreCase = true) ||
        normalizedRaw.contains("<body", ignoreCase = true) ||
        normalizedRaw.contains("<head", ignoreCase = true) ||
        normalizedRaw.contains("<!DOCTYPE", ignoreCase = true)
    ) {
        Jsoup.parse(normalizedRaw, normalizedBaseUrl)
    } else {
        Jsoup.parseBodyFragment(normalizedRaw, normalizedBaseUrl)
    }
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    val extractedCss = document.select("style").joinToString("\n") { it.data() }
    val linkedStylesheets = document.select("link[rel~=(?i)stylesheet][href], link[href$=.css i][href]")
        .joinToString("\n") { it.outerHtml() }
    document.select(
        "script, style, noscript, template, iframe, object, embed, canvas, form, input, button, select, textarea"
    ).remove()
    document.select("meta, link").remove()

    val body = document.body()
    val title = document.title().trim()
    val cleanedBody = Jsoup.clean(
        body.html(),
        normalizedBaseUrl,
        HTML_READER_SAFE_LIST,
        Document.OutputSettings().prettyPrint(false)
    ).trim()
    val titleBlock = title.takeIf {
        it.isNotBlank() &&
            !cleanedBody.contains(title, ignoreCase = true) &&
            !document.body().hasAttr("data-mrcomic-preserve-layout")
    }
        ?.let { "<h1 class=\"mc-title-block\">${htmlEscapeText(it)}</h1>" }
        .orEmpty()
    val content = when {
        cleanedBody.isNotBlank() -> titleBlock + normalizeReaderHtmlFragment(cleanedBody)
        body.text().isNotBlank() -> titleBlock + "<p>${htmlEscapeText(body.text())}</p>"
        title.isNotBlank() -> "<h1 class=\"mc-title-block\">${htmlEscapeText(title)}</h1>"
        else -> "<p></p>"
    }
    return buildReaderHtmlDocument(
        body = content,
        baseUrl = baseUrl,
        extraCss = extractedCss,
        extraHeadHtml = linkedStylesheets,
        baseCss = baseCss,
        preservePublisherLayout = preservePublisherLayout
    )
}
