package io.leostrange.mrcomic.engine.formats.epub

import java.net.URLDecoder

/**
 * Pure footnote resolution logic for EPUB files.
 *
 * Extracted from EpubFormatReader so the lookup-candidate generation and
 * TOC-entry classification can be tested without ZIP/archive dependencies.
 * All functions are stateless and side-effect-free.
 */
internal object EpubFootnoteResolver {

    /**
     * Generates a list of candidate keys to look up in the footnote map.
     *
     * Different EPUB generators use different anchor formats:
     * - `noteref://file.xhtml#id` (custom scheme)
     * - `fbanchor://FbAutId_123` (FB2EPUB)
     * - `#fn1` (standard HTML)
     * - `file.xhtml#id` (relative path)
     *
     * This function tries all reasonable interpretations so the lookup
     * succeeds regardless of the source format.
     */
    fun lookupCandidates(anchorId: String): List<String> {
        val raw = anchorId.trim()
        if (raw.isBlank()) return emptyList()
        val withoutScheme = raw
            .removePrefix("noteref://")
            .removePrefix("noteref:")
            .removePrefix("fbanchor://")
        val decoded = runCatching { URLDecoder.decode(withoutScheme, "UTF-8") }
            .getOrDefault(withoutScheme)
            .trim()
        val fragment = decoded.substringAfter('#', decoded)
            .substringAfterLast('/')
            .trim()
            .trimStart('#')
        val fileAndFragment = decoded.trimStart('/')
        return listOf(
            raw,
            decoded,
            fileAndFragment,
            fragment,
            "#$fragment",
            "fn$fragment",
            "note$fragment",
            "footnote$fragment",
            "docx-footnote-$fragment"
        ).map { it.trim() }
            .filter { it.isNotEmpty() && it != "#" }
            .distinct()
    }

    /**
     * Detects whether a TOC entry is a footnote/endnote reference that should
     * be filtered out of the chapter TOC.
     */
    fun isFootnoteTocEntry(href: String, title: String): Boolean {
        val lowerHref = href.lowercase()
        // FB2EPUB footnote anchors
        if (lowerHref.contains("fbautid_")) return true
        // Common footnote ID patterns
        if (lowerHref.contains("#fn") || lowerHref.contains("#footnote") ||
            lowerHref.contains("#note") || lowerHref.contains("#endnote") ||
            lowerHref.contains("#rearnote") || lowerHref.contains("#noteref")) return true
        // fbanchor:// scheme
        if (lowerHref.startsWith("fbanchor://") || lowerHref.startsWith("fbanchor:")) return true
        // Pure numeric titles (1, 2, 3...) from footnote lists
        if (title.matches(Regex("^\\d{1,4}$"))) return true
        // Known footnote section names
        val lowerTitle = title.lowercase().trim()
        if (lowerTitle in FOOTNOTE_SECTION_NAMES) return true
        return false
    }

    private val FOOTNOTE_SECTION_NAMES = setOf(
        "notes", "note", "footnotes", "endnotes", "endnote",
        "примечания", "примечание", "сноски", "сноска",
        "annotations", "annotation"
    )
}
