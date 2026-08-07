package io.leostrange.mrcomic.engine.formats.text

internal fun extractMarkupFragment(text: String): String? {
    if (!looksLikeMarkup(text)) return null

    // Also search for HTML-entity-encoded tags (P1 #10)
    val trimmed = text.trim()
    val startList = listOf(
        "<!doctype",
        "<html", "&lt;html",
        "<body", "&lt;body",
        "<section", "&lt;section",
        "<article", "&lt;article",
        "<chapter", "&lt;chapter",
        "<h1", "&lt;h1",
        "<h2", "&lt;h2",
        "<p", "&lt;p",
        "<div", "&lt;div",
        "<mbp:pagebreak", "&lt;mbp:pagebreak"
    )
    val start = startList.mapNotNull { marker ->
        trimmed.indexOf(marker, ignoreCase = true).takeIf { it >= 0 }
    }.minOrNull() ?: 0

    var fragment = trimmed.substring(start).trim()
    val htmlEnd = fragment.lastIndexOf("</html>", ignoreCase = true)
    if (htmlEnd >= 0) {
        fragment = fragment.substring(0, htmlEnd + "</html>".length)
    }
    return fragment.trim().takeIf { it.isNotBlank() }
}

internal fun looksLikeMarkup(text: String): Boolean {
    // Also match HTML-entity-encoded tags like &lt;body&gt; (P1 #10)
    val lower = text.lowercase()
    val markers = listOf(
        "<html", "&lt;html",
        "<body", "&lt;body",
        "<p", "&lt;p",
        "<div", "&lt;div",
        "<span", "&lt;span",
        "<h1", "&lt;h1",
        "<h2", "&lt;h2",
        "<mbp:pagebreak", "&lt;mbp:pagebreak",
        "<guide", "&lt;guide",
        "<metadata", "&lt;metadata"
    )
    return markers.count { lower.contains(it) } >= 2
}
