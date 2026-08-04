package io.leostrange.mrcomic.feature.reader.ui

/** Produces the reader-visible text shared by HTML and inline footnote popups. */
internal object ReaderFootnotePopupPolicy {

    private val lineBreakTag = Regex("<br\\s*/?>", RegexOption.IGNORE_CASE)
    private val scriptTag = Regex("<script[^>]*>[\\s\\S]*?</script>", RegexOption.IGNORE_CASE)
    private val htmlTag = Regex("<[^>]+>")
    private val collapsedLineBreaks = Regex("""\s*\n\s*""")
    private val collapsedSpaces = Regex(" {2,}")
    private val leadingNumber = Regex("""^\d+[\s\u00A0]+""")

    fun toPopupText(source: String): String? = source
        .replace("&nbsp;", "\u00A0", ignoreCase = true)
        .replace(scriptTag, "")
        .replace(lineBreakTag, "\n")
        .replace(htmlTag, "")
        .replace("\u00AD", "")
        .replace("\u200B", "")
        .replace(collapsedLineBreaks, " ")
        .replace(collapsedSpaces, " ")
        .replace(leadingNumber, "")
        .trim()
        .takeIf { it.isNotBlank() }
}
