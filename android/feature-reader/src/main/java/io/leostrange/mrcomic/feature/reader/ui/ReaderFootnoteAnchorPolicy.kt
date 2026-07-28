package io.leostrange.mrcomic.feature.reader.ui

import java.net.URLDecoder

/**
 * Pure normalization and classification for reader footnote links.
 *
 * This is intentionally independent of WebView and format readers so every caller
 * can use the same lookup rules before deciding whether to navigate or show a note.
 */
internal object ReaderFootnoteAnchorPolicy {

    private val markerPattern = Regex(
        """\b(footnote|note|notebody|rearnote|endnote|fnote|noteref|fnt|backnote|supnote|text-fn|pagenote|annref|annotation)(?=[-_\s]|$)""",
        RegexOption.IGNORE_CASE
    )
    private val identifierPattern = Regex(
        """^(?:fn|fnt|note|footnote|endnote|rearnote|back|sup|text-fn|pn|ann|annotation|FbAutId|id|fbanchor)[-_]?\d*$""",
        RegexOption.IGNORE_CASE
    )

    fun normalize(href: String): String {
        val withoutBridge = when {
            href.startsWith("noteref://", ignoreCase = true) -> href.substring(10)
            href.startsWith("noteref:", ignoreCase = true) -> href.substring(8)
            href.startsWith("fbanchor://", ignoreCase = true) -> href.substring(11)
            href.startsWith("fbanchor:", ignoreCase = true) -> href.substring(9)
            else -> href
        }
        return runCatching {
            URLDecoder.decode(withoutBridge, Charsets.UTF_8.name())
        }.getOrDefault(withoutBridge)
    }

    fun lookupCandidates(cleanHref: String, fragment: String): List<String> {
        val noHash = cleanHref.trim().trimStart('#')
        val fragmentWithoutHash = fragment.trim().trimStart('#')
        return listOf(
            fragmentWithoutHash,
            noHash,
            "#$fragmentWithoutHash",
            "#$noHash"
        ).map { it.trim() }
            .filter { it.isNotEmpty() && it != "#" }
            .distinct()
    }

    fun isFootnoteAnchor(anchor: String): Boolean {
        val value = anchor.trim().trimStart('#')
        return value.isNotBlank() && (
            markerPattern.containsMatchIn(value) || identifierPattern.matches(value)
        )
    }
}
