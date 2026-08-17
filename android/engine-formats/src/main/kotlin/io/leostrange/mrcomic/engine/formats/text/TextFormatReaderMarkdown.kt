package io.leostrange.mrcomic.engine.formats.text

import org.jsoup.Jsoup
import org.jsoup.nodes.Document

private const val MAX_SECTION_CHARS = 100_000

internal data class MarkdownDocumentBlocks(
    val blocks: List<String>,
    val anchors: List<TxtChapterAnchor>
)

internal data class HtmlPageAnchorResult(
    val pages: List<String>,
    val anchors: List<TxtChapterAnchor>
)

internal fun TextFormatReader.markdownBlocks(raw: String): List<String> {
    return renderMarkdownToHtmlBlocks(raw).ifEmpty { textBlocks(raw) }
}

internal fun TextFormatReader.markdownDocumentBlocks(raw: String): MarkdownDocumentBlocks {
    val blocks = if (isTechnicalMarkdown(raw)) {
        processTechnicalMarkdown(raw)
    } else {
        markdownBlocks(raw)
    }
    return addHeadingAnchors(blocks)
}

internal fun TextFormatReader.addHeadingAnchors(blocks: List<String>): MarkdownDocumentBlocks {
    val usedIds = linkedSetOf<String>()
    val anchors = mutableListOf<TxtChapterAnchor>()
    val anchoredBlocks = blocks.map { block ->
        runCatching {
            val document = Jsoup.parseBodyFragment(block)
            val heading = document.body().children().firstOrNull { child ->
                child.normalName() in setOf("h1", "h2", "h3", "h4", "h5", "h6")
            } ?: return@runCatching block
            val title = heading.text().replace(Regex("\\s+"), " ").trim()
            if (title.isBlank()) return@runCatching block
            val existingId = heading.id().trim()
            val id = if (existingId.isNotBlank()) {
                uniqueMarkdownAnchor(existingId, usedIds)
            } else {
                uniqueMarkdownAnchor(markdownAnchorSlug(title), usedIds)
            }
            heading.attr("id", id)
            anchors += TxtChapterAnchor(id = id, title = title)
            document.body().html().trim().ifBlank { block }
        }.getOrElse { block }
    }
    return MarkdownDocumentBlocks(
        blocks = anchoredBlocks.ifEmpty { blocks },
        anchors = anchors
    )
}

internal fun TextFormatReader.addHtmlHeadingAnchorsToPages(pages: List<String>): HtmlPageAnchorResult {
    val usedIds = linkedSetOf<String>()
    val anchors = mutableListOf<TxtChapterAnchor>()
    val updatedPages = pages.map { page ->
        runCatching {
            val document = Jsoup.parse(page)
            document.outputSettings(Document.OutputSettings().prettyPrint(false))
            document.select("h1, h2, h3, h4, h5, h6").forEach { heading ->
                val title = heading.text().replace(Regex("\\s+"), " ").trim()
                if (title.isBlank()) return@forEach
                val existingId = heading.id().trim()
                val id = if (existingId.isNotBlank()) {
                    uniqueMarkdownAnchor(existingId, usedIds)
                } else {
                    uniqueMarkdownAnchor(markdownAnchorSlug(title), usedIds)
                }
                heading.attr("id", id)
                anchors += TxtChapterAnchor(id = id, title = title)
            }
            document.select("[id], a[name], [name]").forEach { element ->
                val id = element.id().trim()
                    .ifBlank { element.attr("name").trim() }
                if (id.isBlank() || id in usedIds) return@forEach
                usedIds += id
                val title = element.text()
                    .replace(Regex("\\s+"), " ")
                    .trim()
                    .ifBlank { id }
                anchors += TxtChapterAnchor(id = id, title = title)
            }
            document.outerHtml()
        }.getOrElse { page }
    }
    return HtmlPageAnchorResult(
        pages = updatedPages.ifEmpty { pages },
        anchors = anchors
    )
}

internal fun TextFormatReader.uniqueMarkdownAnchor(base: String, usedIds: MutableSet<String>): String {
    val safeBase = base.ifBlank { "section" }
    var candidate = safeBase
    var index = 2
    while (!usedIds.add(candidate)) {
        candidate = "$safeBase-$index"
        index += 1
    }
    return candidate
}

internal fun TextFormatReader.injectHeadingIdsFromAnchoredPages(
    sections: List<TextDocumentSection>,
    anchoredPages: List<String>
): List<TextDocumentSection> {
    val headingIdMap = linkedMapOf<String, String>()
    for (page in anchoredPages) {
        runCatching {
            val doc = Jsoup.parse(page)
            doc.select("h1, h2, h3, h4, h5, h6").forEach { heading ->
                val id = heading.id().trim()
                if (id.isNotBlank()) {
                    val title = heading.text().replace(Regex("\\s+"), " ").trim()
                    if (title.isNotBlank()) headingIdMap[title] = id
                }
            }
        }
    }
    if (headingIdMap.isEmpty()) return sections
    return sections.map { section ->
        runCatching {
            val doc = Jsoup.parse(section.html)
            doc.select("h1, h2, h3, h4, h5, h6").forEach { heading ->
                if (heading.id().isBlank()) {
                    val title = heading.text().replace(Regex("\\s+"), " ").trim()
                    headingIdMap[title]?.let { heading.attr("id", it) }
                }
            }
            section.copy(html = doc.outerHtml())
        }.getOrElse { section }
    }
}

internal fun TextFormatReader.splitLargeSections(sections: List<TextDocumentSection>): List<TextDocumentSection> {
    val maxChars = MAX_SECTION_CHARS
    val result = mutableListOf<TextDocumentSection>()
    var globalIndex = 0
    for (section in sections) {
        if (section.html.length <= maxChars) {
            result.add(section.copy(index = globalIndex++))
            continue
        }
        val splits = splitHtmlAtBoundaries(section.html, maxChars)
        for (splitHtml in splits) {
            result.add(TextDocumentSection(
                index = globalIndex++,
                id = section.id,
                title = section.title,
                html = splitHtml,
                baseUrl = section.baseUrl,
                isFrontMatter = section.isFrontMatter
            ))
        }
    }
    return result
}

internal fun TextFormatReader.splitHtmlAtBoundaries(html: String, maxChars: Int): List<String> {
    if (html.length <= maxChars) return listOf(html)
    val chunks = mutableListOf<String>()
    var start = 0
    while (start < html.length) {
        var end = (start + maxChars).coerceAtMost(html.length)
        if (end < html.length) {
            val lastBlockClose = html.lastIndexOf("</p>", end)
                .coerceAtLeast(html.lastIndexOf("</div>", end))
                .coerceAtLeast(html.lastIndexOf("</h", end))
                .coerceAtLeast(html.lastIndexOf("</li>", end))
            if (lastBlockClose > start + maxChars / 2) end = lastBlockClose + 4
        }
        chunks.add(html.substring(start, end))
        start = end
    }
    return chunks
}

internal fun TextFormatReader.markdownAnchorSlug(title: String): String {
    val asciiSlug = title
        .lowercase()
        .replace(Regex("""[^\p{L}\p{N}]+"""), "-")
        .trim('-')
    return asciiSlug.ifBlank { "section" }
}

/**
 * Pre-process MOBI markup: convert <font size="N"><b>text</b></font> inside
 * centered paragraphs into proper heading tags, and unwrap structural blockquotes.
 */

internal fun TextFormatReader.isTechnicalMarkdown(raw: String): Boolean {
    val lines = raw.lines()
    if (lines.size < 3 || lines[0].trim() != "---") return false
    // Look for closing --- within first 30 lines (typical YAML front matter)
    // and require at least one YAML key-value pair between the markers.
    for (i in 1 until minOf(30, lines.size)) {
        if (lines[i].trim() == "---") {
            // Check that at least one line between markers contains ':'
            val hasYamlKey = (1 until i).any { lines[it].contains(':') }
            return hasYamlKey
        }
    }
    return false
}

internal fun TextFormatReader.extractYamlFrontMatter(raw: String): Pair<Map<String, String>, String> {
    val lines = raw.lines()
    if (lines.size < 3 || lines[0].trim() != "---") {
        return emptyMap<String, String>() to raw
    }

    val metadata = mutableMapOf<String, String>()
    var contentStart = -1
    var inFrontMatter = true

    for (i in 1 until lines.size) {
        val line = lines[i].trim()
        if (line == "---" && inFrontMatter) {
            contentStart = i + 1
            break
        }

        if (inFrontMatter) {
            val colonIndex = line.indexOf(':')
            if (colonIndex > 0) {
                val key = line.substring(0, colonIndex).trim()
                val value = line.substring(colonIndex + 1).trim().removeSurrounding("\"", "\"").removeSurrounding("'", "'")
                if (key.isNotEmpty()) {
                    metadata[key] = value
                }
            }
        }
    }

    if (contentStart <= 0 || contentStart >= lines.size) {
        return emptyMap<String, String>() to raw
    }

    val content = lines.drop(contentStart).joinToString("\n")
    return metadata to content
}

internal fun TextFormatReader.processTechnicalMarkdown(raw: String): List<String> {
    // Extract YAML front matter if present
    val (metadata, content) = extractYamlFrontMatter(raw)

    // Process the main content with CommonMark
    val contentBlocks = renderMarkdownToHtmlBlocks(content)

    // Create front matter header if metadata exists
    val frontMatterBlocks = mutableListOf<String>()
    if (metadata.isNotEmpty()) {
        val title = metadata["title"] ?: metadata.getOrDefault("Title", "")
        val author = metadata["author"] ?: metadata.getOrDefault("Author", "")
        val version = metadata["version"] ?: metadata.getOrDefault("Version", "")
        val date = metadata["date"] ?: metadata.getOrDefault("Date", "")
        val license = metadata["license"] ?: metadata.getOrDefault("License", "")

        val headerHtml = buildString {
            if (title.isNotBlank()) {
                append("<h1>${htmlEscapeText(title)}</h1>")
            }
            if (author.isNotBlank()) {
                append("<p><strong>Author:</strong> ${htmlEscapeText(author)}</p>")
            }
            if (version.isNotBlank()) {
                append("<p><strong>Version:</strong> ${htmlEscapeText(version)}</p>")
            }
            if (date.isNotBlank()) {
                append("<p><strong>Date:</strong> ${htmlEscapeText(date)}</p>")
            }
            if (license.isNotBlank()) {
                append("<p><strong>License:</strong> ${htmlEscapeText(license)}</p>")
            }
            if (title.isNotBlank() || author.isNotBlank() || version.isNotBlank() || date.isNotBlank() || license.isNotBlank()) {
                append("<hr/>")
            }
        }

        if (headerHtml.isNotBlank()) {
            frontMatterBlocks.add(headerHtml)
        }
    }

    return frontMatterBlocks + contentBlocks
}
