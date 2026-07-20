package com.example.feature.reader.ui

/** Produces the reader-visible text shared by HTML and inline footnote popups. */
internal object ReaderFootnotePopupPolicy {

    private val lineBreakTag = Regex("<br\\s*/?>", RegexOption.IGNORE_CASE)
    private val htmlTag = Regex("<[^>]+>")
    private val collapsedLineBreaks = Regex("""\s*\n\s*""")
    private val leadingNumber = Regex("""^\d+[\s\u00A0]+""")

    fun toPopupText(source: String): String? = source
        .replace("&nbsp;", "\u00A0", ignoreCase = true)
        .replace(lineBreakTag, "\n")
        .replace(htmlTag, "")
        .replace("\u00AD", "")
        .replace("\u200B", "")
        .replace(collapsedLineBreaks, " ")
        .replace(leadingNumber, "")
        .trim()
        .takeIf { it.isNotBlank() }
}
