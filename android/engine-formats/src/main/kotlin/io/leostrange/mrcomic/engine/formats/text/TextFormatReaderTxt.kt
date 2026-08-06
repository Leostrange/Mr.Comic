package io.leostrange.mrcomic.engine.formats.text

import android.content.Context
import io.leostrange.mrcomic.engine.formats.base.FormatReader
import org.jsoup.nodes.Document

private val TXT_CHAPTER_PATTERNS = listOf(
    Regex("""(?iu)^(глава|часть|книга|том)\s+[0-9ivxlcdm]+(?:[\s\p{Pd}.:]+.+)?$"""),
    Regex("""(?iu)^(chapter|part|book|volume)\s+[0-9ivxlcdm]+(?:[\s\p{Pd}.:]+.+)?$"""),
    Regex("""(?iu)^(пролог|эпилог|предисловие|введение|заключение|послесловие|prologue|epilogue|preface|introduction|afterword|foreword)$""")
)

internal fun TextFormatReader.textBlocks(raw: String): List<String> {
    return raw
        .replace("\r\n", "\n")
        .replace('\r', '\n')
        .split(Regex("\n\\s*\n"))
        .mapNotNull { part ->
            renderTxtParagraphBlock(part)
        }
        .ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
}

internal fun TextFormatReader.sectionTxtDocument(raw: String): TextDocumentData {
    val (blocks, chapterAnchors) = textBlocksWithChapterAnchors(raw)
    return TextDocumentData(
        sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(blocks)
            .withSequentialIndices(),
        chapterAnchors = chapterAnchors
    )
}

internal fun TextFormatReader.textBlocksWithChapterAnchors(raw: String): Pair<List<String>, List<TxtChapterAnchor>> {
    val normalized = raw.replace("\r\n", "\n").replace('\r', '\n')
    val paragraphs = normalized.split(Regex("\n\\s*\n"))
    val blocks = mutableListOf<String>()
    val chapterAnchors = mutableListOf<TxtChapterAnchor>()

    paragraphs.forEach { paragraph ->
        val trimmed = paragraph.trim()
        if (trimmed.isBlank()) return@forEach
        val chapterTitle = detectTxtChapterHeading(trimmed)
        if (chapterTitle != null) {
            val anchor = TxtChapterAnchor(
                id = "txt-chapter-${chapterAnchors.size + 1}",
                title = chapterTitle
            )
            chapterAnchors += anchor
            blocks += """<h2 id="${anchor.id}" class="chapter">${escapeHtml(anchor.title)}</h2>"""
        } else {
            renderTxtParagraphBlock(trimmed)?.let(blocks::add)
        }
    }

    val safeBlocks = blocks.ifEmpty { listOf("<p>${escapeHtml(raw.trim())}</p>") }
    return safeBlocks to chapterAnchors
}

internal fun TextFormatReader.renderTxtParagraphBlock(paragraph: String): String? {
    val lines = paragraph.lines()
        .map { it.trim() }
        .filter { it.isNotBlank() }
    if (lines.isEmpty()) return null

    val body = if (shouldPreserveTxtLineBreaks(lines)) {
        lines.joinToString("<br/>") { renderPlainTextInlineMarkup(escapeHtml(it)) }
    } else {
        renderPlainTextInlineMarkup(escapeHtml(joinTxtProseLines(lines)))
    }
    return "<p>$body</p>"
}

internal fun TextFormatReader.joinTxtProseLines(lines: List<String>): String {
    if (lines.isEmpty()) return ""
    val builder = StringBuilder(lines.first())
    // Strip soft hyphens (\u00AD) from the first line — they should not be visible
    while (builder.indexOf("\u00AD") >= 0) {
        builder.deleteCharAt(builder.indexOf("\u00AD"))
    }
    lines.drop(1).forEach { nextLine ->
        val previousLast = builder.lastOrNull()
        val nextFirst = nextLine.firstOrNull()
        // Handle multiple hyphen types: ASCII hyphen, soft hyphen, non-breaking hyphen, en-dash
        val isPrintedHyphenation =
            previousLast != null && isHyphenChar(previousLast) &&
                nextFirst != null &&
                nextFirst.isLetter() &&
                !isEmDashContext(builder)
        if (isPrintedHyphenation) {
            builder.deleteCharAt(builder.lastIndex)
            builder.append(nextLine)
        } else {
            builder.append(' ')
            builder.append(nextLine)
        }
        // Strip soft hyphens from the joined line
        while (builder.indexOf("\u00AD") >= 0) {
            builder.deleteCharAt(builder.indexOf("\u00AD"))
        }
    }
    return builder.toString()
}

/** Checks if the character is a hyphen that should be rejoined at line breaks. */
internal fun TextFormatReader.isHyphenChar(ch: Char): Boolean =
    ch == '-' || ch == '\u00AD' || ch == '\u2011' || ch == '\u2013'

/** Returns true if the last char is an em-dash (dialogue marker), not a hyphenation. */
internal fun TextFormatReader.isEmDashContext(builder: StringBuilder): Boolean {
    val lastTwo = builder.takeLast(2)
    // "—" (em-dash) used as dialogue marker — don't rejoin
    // " -" (space + hyphen) used as bullet — don't rejoin
    return lastTwo == " —" || lastTwo == " -" ||
        builder.lastOrNull() == '\u2014' ||
        (builder.length >= 2 && builder[builder.lastIndex - 1] == ' ' && builder[builder.lastIndex] == '-')
}

internal fun TextFormatReader.renderPlainTextInlineMarkup(escaped: String): String {
    var rendered = escaped
    rendered = rendered.replace(Regex("""(?<!\w)\*\*(.+?)\*\*(?!\w)""")) {
        "<strong>${it.groupValues[1]}</strong>"
    }
    rendered = rendered.replace(Regex("""(?<!\w)__(.+?)__(?!\w)""")) {
        "<strong>${it.groupValues[1]}</strong>"
    }
    rendered = rendered.replace(Regex("""(?<![A-Za-z0-9])_([^_\n]+?)_(?![A-Za-z0-9])""")) {
        "<em>${it.groupValues[1]}</em>"
    }
    rendered = rendered.replace(Regex("""(?<!\w)\*([^*\n]+?)\*(?!\w)""")) {
        "<em>${it.groupValues[1]}</em>"
    }
    // Footnote markers: [1], [2], [12] etc. — wrap in clickable link
    rendered = rendered.replace(Regex("""\[(\d{1,4})]""")) {
        val num = it.groupValues[1]
        """<a class="fn" href="fbanchor://note_$num" data-footnote-id="$num"><sup>[$num]</sup></a>"""
    }
    // Unicode superscript footnote markers: ¹ ² ³ etc.
    rendered = rendered.replace(Regex("""([¹²³⁴⁵⁶⁷⁸⁹⁰]+)""")) {
        val marker = it.groupValues[1]
        """<a class="fn" href="fbanchor://note_$marker" data-footnote-id="$marker"><sup>$marker</sup></a>"""
    }
    return rendered
}

internal fun TextFormatReader.shouldPreserveTxtLineBreaks(lines: List<String>): Boolean {
    if (lines.size <= 1) return false
    val proseLineCount = lines.count { line ->
        line.length >= 48 && !line.endsWithPunctuation()
    }
    if (proseLineCount >= lines.size / 2) return false

    val shortLineCount = lines.count { it.length <= 42 }
    val listLikeCount = lines.count { line ->
        line.matches(Regex("""(?:[-*•]|\d+[.)])\s+.+"""))
    }
    return shortLineCount >= lines.size / 2 || listLikeCount >= 2
}

internal fun String.endsWithPunctuation(): Boolean =
    lastOrNull() in setOf('.', '!', '?', ':', ';', ',', '\u2026', '\u2014', '-')

internal fun TextFormatReader.detectTxtChapterHeading(text: String): String? {
    val singleLine = text.lines()
        .map { it.trim() }
        .filter { it.isNotBlank() }
        .joinToString(" ")
        .takeIf { it.isNotBlank() }
        ?: return null
    if (singleLine.length > 120) return null
    if (singleLine.count { it == ' ' } > 8) return null
    return singleLine.takeIf { candidate ->
        TXT_CHAPTER_PATTERNS.any { pattern -> pattern.matches(candidate) }
    }
}
