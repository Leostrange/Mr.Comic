package com.example.engine.formats.base

/**
 * Single source of truth for footnote detection patterns.
 *
 * Previously these patterns were duplicated across 6+ files
 * (ReaderScreen.js, ReaderViewModel.kt, EpubFootnoteParser.kt,
 * EpubFormatReader.kt, MobiFormatReader.kt, TextFormatReader.kt).
 * All callers should reference this object instead of maintaining
 * their own copies.
 */
internal object FootnoteTokens {

    // ── CSS class / role tokens that mark footnote elements ──────────────

    /** Tokens found in `class`, `role`, or `epub:type` attributes. */
    val FOOTNOTE_MARKERS: Set<String> = setOf(
        "footnote", "note", "notebody", "rearnote", "endnote",
        "fnote", "fbautid", "fnt", "backnote", "supnote",
        "text-fn", "pagenote", "annref", "annotation",
        "noteref", "doc-noteref", "doc-fn", "doc-backref",
        "mobi-filepos"
    )

    /** Regex that matches any FOOTNOTE_MARKER as a whole word inside a class/role string. */
    val FOOTNOTE_MARKER_REGEX: Regex = Regex(
        "\\b(?:${FOOTNOTE_MARKERS.joinToString("|")})\\b",
        RegexOption.IGNORE_CASE
    )

    // ── epub:type roles ──────────────────────────────────────────────────

    val EPUB_FOOTNOTE_ROLES: Set<String> = setOf(
        "doc-noteref", "noteref", "footnote", "doc-fn", "doc-backref"
    )

    // ── href patterns ────────────────────────────────────────────────────

    /** Matches href values whose fragment looks like a footnote anchor. */
    val FOOTNOTE_HREF_REGEX: Regex = Regex(
        "#(?:fn|fnt|note|footnote|endnote|rearnote|back|sup|text-fn|pn|ann|annotation|FbAutId_|docx-footnote)",
        RegexOption.IGNORE_CASE
    )

    // ── class-only patterns (tighter, for click-handler heuristics) ──────

    /** Matches class values that strongly indicate a footnote link. */
    val FOOTNOTE_CLASS_REGEX: Regex = Regex(
        "(?:^|\\s)(?:fn|noteref|footnote-ref|fnt|backnote|supnote|text-fn|pagenote|annref|annotation|footnote|doc-noteref)(?:\\s|$)",
        RegexOption.IGNORE_CASE
    )

    // ── link-text heuristics ─────────────────────────────────────────────

    /** Matches numeric footnote references like [1], (2), 3, 42. */
    val NUMBER_REF_REGEX: Regex = Regex("""^\[?\(?\d{1,4}\]?\)?$""")

    /** Matches star-marker footnote references like *, **, ***. */
    val STAR_REF_REGEX: Regex = Regex("""^\*{1,4}$""")

    // ── URL prefixes used by FB2 footnote schemes ────────────────────────

    val FOOTNOTE_URL_PREFIXES: Set<String> = setOf(
        "noteref://", "noteref:", "fbanchor://"
    )

    // ── Utility ──────────────────────────────────────────────────────────

    /**
     * Returns `true` when the combination of link attributes suggests this
     * is a footnote link (not a chapter / external link).
     */
    fun isLikelyFootnoteLink(
        cls: String,
        role: String,
        href: String,
        epubType: String,
        title: String,
        text: String,
        dataFootnoteId: String = "",
        dataFootnote: String = ""
    ): Boolean {
        if (FOOTNOTE_CLASS_REGEX.containsMatchIn(cls)) return true
        if (EPUB_FOOTNOTE_ROLES.any { role.contains(it, ignoreCase = true) }) return true
        if (EPUB_FOOTNOTE_ROLES.any { epubType.contains(it, ignoreCase = true) }) return true
        if (FOOTNOTE_HREF_REGEX.containsMatchIn(href)) return true
        if (FOOTNOTE_MARKER_REGEX.containsMatchIn(cls)) return true
        if (NUMBER_REF_REGEX.matches(text.trim())) return true
        if (STAR_REF_REGEX.matches(text.trim())) return true
        if (title.isNotBlank() && href.contains('#')) return true
        if (dataFootnoteId.isNotBlank()) return true
        if (dataFootnote.isNotBlank()) return true
        return false
    }
}
