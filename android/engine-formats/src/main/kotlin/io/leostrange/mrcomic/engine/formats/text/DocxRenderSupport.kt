package io.leostrange.mrcomic.engine.formats.text

import org.jsoup.nodes.Element

// Matches <w:instrText>...</w:instrText> including multi-line content.
// Used to strip raw field instruction strings before plain-text fallback extraction.
private val DOCX_INSTR_TEXT_RE = Regex(
    """<w:instrText\b[^>]*>[\s\S]*?</w:instrText>""",
    RegexOption.IGNORE_CASE
)

internal fun renderDocxBlockChildren(container: Element, archive: DocxArchive): List<String> =
    container.children().flatMap { child ->
        when (child.tagName()) {
            "w:p" -> listOfNotNull(renderDocxParagraph(child, archive))
            "w:tbl" -> listOfNotNull(renderDocxTable(child, archive))
            "w:sdt" -> {
                val content = child.children().firstOrNull { it.tagName() == "w:sdtContent" }
                renderDocxBlockChildren(content ?: child, archive)
            }
            "w:sdtContent",
            "w:customXml",
            "w:ins",
            "w:moveTo",
            "w:smartTag" -> renderDocxBlockChildren(child, archive)
            "w:del",
            "w:moveFrom" -> emptyList()
            else -> emptyList()
        }
    }

internal fun renderDocxParagraph(paragraph: Element, archive: DocxArchive): String? {
    val headingLevel = docxHeadingLevel(paragraph)
    val alignment = docxParagraphAlignment(paragraph)
    val anchorId = docxParagraphAnchorId(paragraph)
    val fontFamily = docxParagraphFontFamily(paragraph, archive)
    val content = renderDocxInlineChildren(paragraph, archive).ifBlank {
        // Strip w:instrText (field instructions like " HYPERLINK "url" " or " TOC \o "1-3" ")
        // before plain-text extraction. Without this, the fallback would expose raw field
        // instruction strings as visible paragraph content.
        val sanitizedHtml = DOCX_INSTR_TEXT_RE.replace(paragraph.outerHtml(), "")
        xmlTextToPlain(sanitizedHtml).takeIf { it.isNotBlank() }
            ?.let { escapeDocxHtml(it).replace("\n", "<br/>") }
            .orEmpty()
    }
    if (content.isBlank()) return null

    val style = buildString {
        alignment
            ?.takeIf { it != "start" && it != "left" }
            ?.let { append("text-align:$it;") }
        fontFamily
            ?.takeIf { it.isNotBlank() }
            ?.let { append("font-family:${docxCssFontFamilyValue(it)};") }
    }
    val idAttr = anchorId
        ?.takeIf { it.isNotBlank() }
        ?.let { " id=\"${escapeDocxHtml(it)}\"" }
        .orEmpty()
    return when (headingLevel) {
        null -> if (style.isBlank()) "<p$idAttr>$content</p>" else "<p$idAttr style=\"$style\">$content</p>"
        else -> if (style.isBlank()) "<h$headingLevel$idAttr>$content</h$headingLevel>"
        else "<h$headingLevel$idAttr style=\"$style\">$content</h$headingLevel>"
    }
}

internal fun renderDocxTable(table: Element, archive: DocxArchive): String? {
    val rows = table.children().filter { it.tagName() == "w:tr" }.mapNotNull { row ->
        val cells = row.children()
            .filter { it.tagName() == "w:tc" }
            .mapNotNull { cell ->
                val colspan = cell.getElementsByTag("w:gridSpan").firstOrNull()
                    ?.attr("w:val")
                    ?.takeIf { it.isNotBlank() && it != "1" }
                    ?.let { " colspan=\"$it\"" }
                    .orEmpty()
                val cellBody = renderDocxBlockChildren(cell, archive).joinToString(separator = "")
                if (cellBody.isBlank()) null else "<td$colspan>$cellBody</td>"
            }
        if (cells.isEmpty()) null else "<tr>${cells.joinToString(separator = "")}</tr>"
    }
    return rows.takeIf { it.isNotEmpty() }?.joinToString(
        prefix = """<div class="mrcomic-table-scroll"><table><tbody>""",
        postfix = "</tbody></table></div>",
        separator = ""
    )
}

internal fun renderDocxInlineChildren(container: Element, archive: DocxArchive): String {
    val parts = mutableListOf<String>()
    container.children().forEach { child ->
        when (child.tagName()) {
            "w:r" -> renderDocxRun(child, archive).takeIf(String::isNotBlank)?.let(parts::add)
            "w:hyperlink" -> renderDocxHyperlink(child, archive).takeIf(String::isNotBlank)?.let(parts::add)
            "w:smartTag", "w:sdt", "w:sdtContent", "w:customXml", "w:ins", "w:moveTo" -> {
                renderDocxInlineChildren(child, archive).takeIf(String::isNotBlank)?.let(parts::add)
            }
            // Simple field — w:instr is an attribute (not a child element); the child w:r
            // runs contain the already-computed field result and should be rendered normally.
            "w:fldSimple" -> {
                renderDocxInlineChildren(child, archive).takeIf(String::isNotBlank)?.let(parts::add)
            }
            // Deleted content — skip entirely; do not recurse and render deleted text.
            "w:del" -> Unit
            // Field codes: w:fldChar marks start/separator/end of a field; w:instrText is the
            // raw field instruction (e.g. " HYPERLINK "url" " or " TOC \o "1-3" ").
            // Neither should appear as visible text in the rendered document.
            "w:fldChar", "w:instrText" -> Unit
            // Revision property change records — markup metadata, not content.
            "w:rPrChange", "w:pPrChange" -> Unit
            // Structural bookmarks and comment range markers — not visible content.
            "w:bookmarkStart", "w:bookmarkEnd",
            "w:commentRangeStart", "w:commentRangeEnd" -> Unit
        }
    }
    return parts.joinToString(separator = "")
}

private fun renderDocxRun(run: Element, archive: DocxArchive): String {
    val style = docxRunStyle(run, archive)
    val fragments = mutableListOf<String>()
    run.children().forEach { child ->
        when (child.tagName()) {
            "w:rPr" -> Unit
            "w:t" -> {
                val raw = child.wholeText()
                if (raw.isNotEmpty()) {
                    fragments += if (child.attr("xml:space").equals("preserve", ignoreCase = true)) {
                        escapeDocxHtml(raw)
                            .replace("  ", "&nbsp; ")
                            .replace("\t", "&emsp;")
                    } else {
                        escapeDocxHtml(raw)
                    }
                }
            }
            "w:tab" -> fragments += "&emsp;"
            "w:br", "w:cr" -> fragments += "<br/>"
            "w:footnoteReference" -> renderDocxNoteReference(child, archive.footnotes)?.let(fragments::add)
            "w:endnoteReference" -> renderDocxNoteReference(child, archive.endnotes)?.let(fragments::add)
            "w:drawing", "w:pict", "w:object" -> renderDocxImage(child, archive)?.let(fragments::add)
        }
    }
    val content = fragments.joinToString(separator = "")
    if (content.isBlank()) return ""
    return applyDocxRunStyle(content, style)
}

private fun renderDocxNoteReference(reference: Element, notes: Map<String, String>): String? {
    val id = reference.attr("w:id").trim().takeIf { it.isNotBlank() } ?: return null
    val label = notes[id]?.takeIf { it.isNotBlank() }?.let { id } ?: id
    return """<sup class="footnote-ref"><a href="#docx-footnote-$id">$label</a></sup>"""
}

private fun renderDocxHyperlink(link: Element, archive: DocxArchive): String {
    val content = renderDocxInlineChildren(link, archive)
    if (content.isBlank()) return ""
    val href = link.attr("r:id")
        .takeIf { it.isNotBlank() }
        ?.let { archive.relationships[it] }
        ?: link.attr("w:anchor")
            .takeIf { it.isNotBlank() }
            ?.let { "#$it" }
    return if (href.isNullOrBlank()) content else "<a href=\"${escapeDocxHtml(href)}\">$content</a>"
}

private fun renderDocxImage(container: Element, archive: DocxArchive): String? {
    val blip = container.getElementsByTag("a:blip").firstOrNull() ?: return null
    val target = blip.attr("r:embed")
        .takeIf { it.isNotBlank() }
        ?.let { archive.relationships[it] }
        ?: blip.attr("r:link").takeIf { it.isNotBlank() }
        ?: return null
    val src = docxTargetToDataUri(target, archive) ?: return null
    val extent = container.getElementsByTag("wp:extent").firstOrNull()
    val widthPx = extent?.attr("cx")?.toLongOrNull()?.div(9_525L)?.toInt()
    val altText = container.getElementsByTag("wp:docPr").firstOrNull()
        ?.attr("descr")
        ?.ifBlank { container.getElementsByTag("wp:docPr").firstOrNull()?.attr("name").orEmpty() }
        .orEmpty()
    val widthStyle = widthPx?.takeIf { it > 0 }?.let { "width:${it}px;" }.orEmpty()
    return "<figure><img src=\"$src\" alt=\"${escapeDocxHtml(altText)}\" style=\"$widthStyle max-width:100%;height:auto;\"/></figure>"
}

private fun docxRunStyle(run: Element, archive: DocxArchive): DocxRunStyle {
    val properties = run.getElementsByTag("w:rPr").firstOrNull()
    val underlineValue = properties?.getElementsByTag("w:u")?.firstOrNull()?.attr("w:val")
    val strikeValue = properties?.getElementsByTag("w:strike")?.firstOrNull()?.attr("w:val")
    val vertAlign = properties?.getElementsByTag("w:vertAlign")?.firstOrNull()?.attr("w:val")
    val runStyleId = properties?.getElementsByTag("w:rStyle")?.firstOrNull()
        ?.attr("w:val")
        ?.trim()
        .orEmpty()
    return DocxRunStyle(
        bold = properties?.getElementsByTag("w:b")?.firstOrNull()?.attr("w:val")
            ?.equals("false", ignoreCase = true) != true && properties?.getElementsByTag("w:b")?.isNotEmpty() == true,
        italic = properties?.getElementsByTag("w:i")?.firstOrNull()?.attr("w:val")
            ?.equals("false", ignoreCase = true) != true && properties?.getElementsByTag("w:i")?.isNotEmpty() == true,
        underline = underlineValue != null && !underlineValue.equals("none", ignoreCase = true),
        strike = strikeValue != null && !strikeValue.equals("false", ignoreCase = true),
        superscript = vertAlign.equals("superscript", ignoreCase = true),
        subscript = vertAlign.equals("subscript", ignoreCase = true),
        colorHex = properties?.getElementsByTag("w:color")?.firstOrNull()
            ?.attr("w:val")
            ?.takeIf { it.matches(Regex("[0-9A-Fa-f]{6}")) },
        highlight = properties?.getElementsByTag("w:highlight")?.firstOrNull()
            ?.attr("w:val")
            ?.takeIf { it.isNotBlank() },
        fontFamily = resolveDocxFontFamily(
            rFonts = properties?.getElementsByTag("w:rFonts")?.firstOrNull(),
            fallbackFamily = archive.styleContext.runStyleFonts[runStyleId]
        )
    )
}

private fun applyDocxRunStyle(content: String, style: DocxRunStyle): String {
    var html = content
    if (style.bold) html = "<strong>$html</strong>"
    if (style.italic) html = "<em>$html</em>"
    if (style.underline) html = "<u>$html</u>"
    if (style.strike) html = "<del>$html</del>"
    if (style.superscript) html = "<sup>$html</sup>"
    if (style.subscript) html = "<sub>$html</sub>"

    val inlineStyle = buildString {
        style.colorHex?.let { append("color:#$it;") }
        style.highlight?.let { append("background-color:${docxHighlightColor(it)};") }
        style.fontFamily?.let { append("font-family:${docxCssFontFamilyValue(it)};") }
    }
    return if (inlineStyle.isBlank()) html else "<span style=\"$inlineStyle\">$html</span>"
}

private fun docxHeadingLevel(paragraph: Element): Int? =
    Regex("""(?:Heading|heading)(\d+)""")
        .find(
            paragraph.getElementsByTag("w:pStyle").firstOrNull()
                ?.attr("w:val")
                ?.trim()
                .orEmpty()
        )
        ?.groupValues
        ?.getOrNull(1)
        ?.toIntOrNull()
        ?.coerceIn(1, 6)

private fun docxParagraphAnchorId(paragraph: Element): String? =
    paragraph.getElementsByTag("w:bookmarkStart")
        .asSequence()
        .mapNotNull { bookmark ->
            bookmark.attr("w:name")
                .trim()
                .takeIf { it.isNotBlank() && !it.equals("_GoBack", ignoreCase = true) }
        }
        .firstOrNull()

private fun docxParagraphAlignment(paragraph: Element): String? =
    paragraph.getElementsByTag("w:jc").firstOrNull()
        ?.attr("w:val")
        ?.takeIf { it.isNotBlank() }
        ?.let {
            when (it.lowercase()) {
                "center", "right", "left", "justify", "start", "end" -> it.lowercase()
                else -> null
            }
        }

private fun docxParagraphFontFamily(paragraph: Element, archive: DocxArchive): String? {
    val styleId = paragraph.getElementsByTag("w:pStyle").firstOrNull()
        ?.attr("w:val")
        ?.trim()
        .orEmpty()
    return resolveDocxFontFamily(
        rFonts = findDocxNestedChild(paragraph, "w:pPr", "w:rPr", "w:rFonts"),
        fallbackFamily = archive.styleContext.paragraphStyleFonts[styleId]
    )
}

private fun findDocxNestedChild(element: Element?, vararg tagPath: String): Element? {
    var current = element ?: return null
    for (tagName in tagPath) {
        current = current.children().firstOrNull { it.tagName() == tagName } ?: return null
    }
    return current
}

private fun docxHighlightColor(value: String): String = when (value.lowercase()) {
    "yellow" -> "#fff3a5"
    "green" -> "#dff3c2"
    "cyan" -> "#d7f6ff"
    "magenta" -> "#ffd8f5"
    "blue" -> "#d9e8ff"
    "red" -> "#ffd9d9"
    "darkyellow" -> "#f0d28a"
    "darkgreen" -> "#b8d8b8"
    "darkcyan" -> "#b8d8d8"
    "darkmagenta" -> "#d8bfd8"
    "darkblue" -> "#b9c8e6"
    "darkred" -> "#e6b9b9"
    else -> "rgba(255, 235, 120, 0.45)"
}

internal fun escapeDocxHtml(text: String): String = text
    .replace("&", "&amp;")
    .replace("<", "&lt;")
    .replace(">", "&gt;")
