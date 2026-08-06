package io.leostrange.mrcomic.engine.formats.text

import io.leostrange.mrcomic.engine.formats.base.FormatReader
import org.jsoup.Jsoup
import org.jsoup.nodes.Document
import org.jsoup.nodes.Element

private const val CHARS_PER_PAGE = 4000

internal fun TextFormatReader.paginateBlocks(
    blocks: List<String>,
    extraCss: String = "",
    baseCss: String = DEFAULT_READER_HTML_CSS,
    preservePublisherLayout: Boolean = false
): List<String> {
    if (blocks.isEmpty()) return listOf(wrapHtml("<p></p>", extraCss, baseCss, preservePublisherLayout))
    val pages = mutableListOf<String>()
    val buffer = StringBuilder()
    var chars = 0

    fun flush() {
        if (buffer.isNotEmpty()) {
            pages += wrapHtml(
                body = buffer.toString(),
                extraCss = extraCss,
                baseCss = baseCss,
                preservePublisherLayout = preservePublisherLayout
            )
            buffer.clear()
            chars = 0
        }
    }

    blocks.flatMap(::splitOversizedReaderHtmlBlock).forEach { block ->
        val visibleChars = block.replace(Regex("<[^>]+>"), "").length.coerceAtLeast(1)
        if (
            chars > 0 &&
            (block.isReaderSectionStartBlock() || chars + visibleChars > CHARS_PER_PAGE)
        ) {
            flush()
        }
        buffer.append(block)
        chars += visibleChars
    }
    flush()
    return pages.ifEmpty { listOf(wrapHtml("<p></p>", extraCss, baseCss, preservePublisherLayout)) }
}

internal fun TextFormatReader.normalizeHtmlDocument(raw: String): String {
    val trimmed = raw.trim()
    return if (trimmed.contains("<html", ignoreCase = true)) {
        trimmed
    } else {
        wrapHtml(trimmed)
    }
}

internal fun TextFormatReader.markupPages(
    raw: String,
    baseUrl: String?,
    preservePublisherLayout: Boolean = false,
    baseCss: String = DEFAULT_READER_HTML_CSS,
    keepWholeDocument: Boolean = false
): List<String> {
    val splitPages = splitMarkupPages(raw)
    if (splitPages.size > 1) {
        return splitPages.flatMap {
            paginateHtmlDocument(
                raw = it,
                baseUrl = baseUrl,
                preservePublisherLayout = preservePublisherLayout,
                baseCss = baseCss,
                keepWholeDocument = keepWholeDocument
            )
        }
    }
    return paginateHtmlDocument(
        raw = raw,
        baseUrl = baseUrl,
        preservePublisherLayout = preservePublisherLayout,
        baseCss = baseCss,
        keepWholeDocument = keepWholeDocument
    )
}

internal fun TextFormatReader.splitMarkupPages(raw: String): List<String> {
    val delimiter = Regex(
        """<(?:mbp:pagebreak|pagebreak|hr)\b[^>]*(?:/?>|>.*?</(?:mbp:pagebreak|pagebreak|hr)>)""",
        setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)
    )
    return raw.split(delimiter)
        .map(String::trim)
        .filter(String::isNotBlank)
}

internal fun TextFormatReader.htmlBlocks(raw: String): List<String> {
    val cleaned = raw
        .replace(
            Regex("""<(script|style|head)\b[^>]*>.*?</\1>""", setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)),
            ""
        )
        .replace(Regex("""<br\s*/?>""", RegexOption.IGNORE_CASE), "\n")
    val blockRegex = Regex(
        """<(h[1-6]|p|blockquote|pre|li|div)\b[^>]*>(.*?)</\1>""",
        setOf(RegexOption.DOT_MATCHES_ALL, RegexOption.IGNORE_CASE)
    )
    val blocks = blockRegex.findAll(cleaned).mapNotNull { match ->
        val tag = match.groupValues[1].lowercase()
        val plain = htmlToPlain(match.groupValues[2])
        if (plain.isBlank()) {
            null
        } else {
            val escaped = escapeHtml(plain).replace("\n", "<br/>")
            when {
                tag.startsWith("h") -> "<$tag>$escaped</$tag>"
                tag == "blockquote" -> "<blockquote>$escaped</blockquote>"
                tag == "pre" -> "<pre>$escaped</pre>"
                tag == "li" -> "<p>• $escaped</p>"
                else -> "<p>$escaped</p>"
            }
        }
    }.toList()
    return blocks.ifEmpty { textBlocks(htmlToPlain(cleaned)) }
}

internal fun TextFormatReader.htmlToPlain(raw: String): String {
    val lineBreaksRestored = raw
        .replace(Regex("""<br\s*/?>""", RegexOption.IGNORE_CASE), "\n")
        .replace(Regex("""</p>""", RegexOption.IGNORE_CASE), "\n\n")
        .replace(Regex("""</div>""", RegexOption.IGNORE_CASE), "\n")
        .replace(Regex("""</li>""", RegexOption.IGNORE_CASE), "\n")
        .replace(Regex("""</blockquote>""", RegexOption.IGNORE_CASE), "\n\n")
        .replace(Regex("""</h[1-6]>""", RegexOption.IGNORE_CASE), "\n\n")
    return decodeXmlEntities(
        lineBreaksRestored
            .replace(Regex("""<[^>]+>"""), "")
            .replace('\u00A0', ' ')
    )
        .replace(Regex("""[ \t]+\n"""), "\n")
        .replace(Regex("""\n{3,}"""), "\n\n")
        .trim()
}

/**
 * Parses an HTML file with jsoup, cleans it, then paginates block-level children
 * using the same CHARS_PER_PAGE budget as other text formats.
 * The base URL is injected into every page's <head> so relative image/link paths resolve.
 */
internal fun TextFormatReader.paginateHtmlDocument(
    raw: String,
    baseUrl: String?,
    preservePublisherLayout: Boolean = false,
    baseCss: String = DEFAULT_READER_HTML_CSS,
    keepWholeDocument: Boolean = false
): List<String> {
    val normalizedBase = baseUrl.orEmpty()
    val document = if (raw.contains("<html", ignoreCase = true) ||
                       raw.contains("<body", ignoreCase = true) ||
                       raw.contains("<!DOCTYPE", ignoreCase = true)
    ) {
        Jsoup.parse(raw, normalizedBase)
    } else {
        Jsoup.parseBodyFragment(raw, normalizedBase)
    }
    document.outputSettings(Document.OutputSettings().prettyPrint(false))
    // Extract <style> content before removing elements so it can be forwarded to each page.
    val extractedCss = document.select("style").joinToString("\n") { it.data() }
    val linkedStylesheets = document.select("link[rel~=(?i)stylesheet][href], link[href$=.css i][href]")
        .joinToString("\n") { it.outerHtml() }
    document.select(
        "script, style, noscript, template, iframe, object, embed, canvas, form, " +
        "input, button, select, textarea"
    ).remove()
    document.select("meta, link").remove()

    val title = document.title().trim()
    val body  = document.body()

    val childBlocks = extractReaderHtmlBlocks(body, normalizedBase).toMutableList()

    if (!preservePublisherLayout &&
        title.isNotBlank() &&
        childBlocks.none { it.contains(title, ignoreCase = true) }
    ) {
        childBlocks.add(0, "<h1>${htmlEscapeText(title)}</h1>")
    }

    if (childBlocks.isEmpty()) {
        val fallback = body.text().trim()
        return listOf(buildReaderHtmlDocument(
            body = if (fallback.isNotBlank()) "<p>${htmlEscapeText(fallback)}</p>" else "<p></p>",
            baseUrl = baseUrl,
            extraCss = extractedCss,
            extraHeadHtml = linkedStylesheets,
            baseCss = baseCss,
            preservePublisherLayout = preservePublisherLayout
        ))
    }

    if (keepWholeDocument) {
        return listOf(
            buildReaderHtmlDocument(
                body = childBlocks.joinToString(separator = ""),
                baseUrl = baseUrl,
                extraCss = extractedCss,
                extraHeadHtml = linkedStylesheets,
                baseCss = baseCss,
                preservePublisherLayout = preservePublisherLayout
            )
        )
    }

    // Paginate using the shared budget, but produce pages with baseUrl injected.
    val pages  = mutableListOf<String>()
    val buffer = StringBuilder()
    var chars  = 0

    fun flush() {
        if (buffer.isNotEmpty()) {
            pages += buildReaderHtmlDocument(
                body = buffer.toString(),
                baseUrl = baseUrl,
                extraCss = extractedCss,
                extraHeadHtml = linkedStylesheets,
                baseCss = baseCss,
                preservePublisherLayout = preservePublisherLayout
            )
            buffer.clear()
            chars = 0
        }
    }

    childBlocks.forEach { block ->
        val visible = block.replace(Regex("<[^>]+>"), "").length.coerceAtLeast(1)
        if (
            chars > 0 &&
            (block.isReaderSectionStartBlock() || chars + visible > CHARS_PER_PAGE)
        ) {
            flush()
        }
        buffer.append(block)
        chars += visible
    }
    flush()

    return pages.ifEmpty {
        listOf(
            buildReaderHtmlDocument(
                body = "<p></p>",
                baseUrl = baseUrl,
                extraHeadHtml = linkedStylesheets,
                baseCss = baseCss,
                preservePublisherLayout = preservePublisherLayout
            )
        )
    }
}

internal fun TextFormatReader.extractReaderHtmlBlocks(body: Element, baseUrl: String): List<String> {
    val blockSelector = listOf(
        "h1", "h2", "h3", "h4", "h5", "h6",
        "p", "blockquote", "pre", "li", "figure", "figcaption",
        "table", "hr", "img"
    ).joinToString(",")

    val candidates = body.select(blockSelector)
        .filterNot { element -> element.parents().any { it.normalName() in setOf("table", "figure") } }
        .ifEmpty { body.children().toList() }

    return candidates
        .flatMap { element ->
            val cleaned = normalizeReaderHtmlFragment(
                Jsoup.clean(
                    element.outerHtml(),
                    baseUrl,
                    HTML_READER_SAFE_LIST,
                    Document.OutputSettings().prettyPrint(false)
                ).trim()
            )
            if (cleaned.isBlank() || !hasReaderVisibleContent(cleaned)) {
                emptyList()
            } else {
                splitOversizedReaderHtmlBlock(cleaned)
            }
        }
}

internal fun TextFormatReader.hasReaderVisibleContent(html: String): Boolean {
    if (visibleReaderText(html).isNotBlank()) return true
    val document = Jsoup.parseBodyFragment(html)
    return document.select("img[src], svg, table, hr").isNotEmpty()
}

internal fun TextFormatReader.splitOversizedReaderHtmlBlock(block: String): List<String> {
    val visible = visibleReaderText(block)
    if (visible.length <= CHARS_PER_PAGE) return listOf(block)
    val document = Jsoup.parseBodyFragment(block)
    val tag = document.body().children().firstOrNull()?.normalName()
        ?.takeIf { it in setOf("p", "blockquote", "li") }
        ?: "p"
    return splitReaderTextIntoChunks(visible, CHARS_PER_PAGE)
        .map { chunk -> "<$tag>${htmlEscapeText(chunk.trim())}</$tag>" }
        .filter { visibleReaderText(it).isNotBlank() }
        .ifEmpty { listOf(block) }
}

private fun String.isReaderSectionStartBlock(): Boolean = runCatching {
    val first = Jsoup.parseBodyFragment(this).body().children().firstOrNull() ?: return@runCatching false
    val tag = first.normalName()
    tag in setOf("h1", "h2", "h3") ||
        first.hasClass("chapter") ||
        first.attr("data-mrcomic-section-start").equals("true", ignoreCase = true)
}.getOrDefault(false)

internal fun TextFormatReader.splitReaderTextIntoChunks(text: String, charsPerChunk: Int): List<String> {
    if (text.length <= charsPerChunk) return listOf(text)
    val chunks = mutableListOf<String>()
    var start = 0
    while (start < text.length) {
        val targetEnd = (start + charsPerChunk).coerceAtMost(text.length)
        var boundary = targetEnd
        if (targetEnd < text.length) {
            val whitespaceBoundary = text.lastIndexOf(' ', startIndex = targetEnd)
                .takeIf { it >= start + charsPerChunk / 3 } ?: -1
            if (whitespaceBoundary >= 0) {
                boundary = whitespaceBoundary
            }
        }
        val chunk = text.substring(start, boundary).trim()
        if (chunk.isNotBlank()) chunks += chunk
        start = boundary.coerceAtLeast(start + 1)
    }
    return chunks
}

internal fun TextFormatReader.htmlEscapeText(text: String): String {
    return text
        .replace("&", "&amp;")
        .replace("<", "&lt;")
        .replace(">", "&gt;")
        .replace("\"", "&quot;")
        .replace("'", "&#39;")
}

internal fun TextFormatReader.wrapHtml(
    body: String,
    extraCss: String = "",
    baseCss: String = DEFAULT_READER_HTML_CSS,
    preservePublisherLayout: Boolean = false
): String = buildReaderHtmlDocument(
    body = body,
    extraCss = extraCss,
    baseCss = baseCss,
    preservePublisherLayout = preservePublisherLayout
)
internal fun TextFormatReader.escapeHtml(text: String): String = htmlEscapeText(text)
