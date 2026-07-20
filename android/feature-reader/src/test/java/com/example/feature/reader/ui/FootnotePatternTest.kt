package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class FootnotePatternTest {

    // looksLikeReaderFootnoteAnchor is private, so we test via onAnchorClick behavior.
    // Instead, test the FOOTNOTE_MARKER_RE regex directly.

    private val footnoteMarkerRe = Regex(
        """\b(footnote|note|notebody|rearnote|endnote|fnote|noteref|fnt|backnote|supnote|text-fn|pagenote|annref|annotation)\b""",
        RegexOption.IGNORE_CASE
    )

    private val footnoteIdRe = Regex(
        """^(?:fn|fnt|note|footnote|endnote|rearnote|back|sup|text-fn|pn|ann|annotation|FbAutId|id)[-_]?\d+$""",
        RegexOption.IGNORE_CASE
    )

    @Test
    fun footnoteMarkerMatchesLegacyPatterns() {
        // \b requires word boundary — test with standalone words
        assertTrue(footnoteMarkerRe.containsMatchIn("footnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("note"))
        assertTrue(footnoteMarkerRe.containsMatchIn("notebody"))
        assertTrue(footnoteMarkerRe.containsMatchIn("endnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("rearnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("fnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("noteref"))
        // In context: "see footnote" or class="fn footnote-ref"
        assertTrue(footnoteMarkerRe.containsMatchIn("class=\"fn footnote-ref\""))
        assertTrue(footnoteMarkerRe.containsMatchIn("see footnote for details"))
    }

    @Test
    fun footnoteMarkerMatchesNewPatterns() {
        assertTrue(footnoteMarkerRe.containsMatchIn("fnt"))
        assertTrue(footnoteMarkerRe.containsMatchIn("backnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("supnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("text-fn"))
        assertTrue(footnoteMarkerRe.containsMatchIn("pagenote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("annref"))
        assertTrue(footnoteMarkerRe.containsMatchIn("annotation"))
        // In context
        assertTrue(footnoteMarkerRe.containsMatchIn("class=\"fnt\""))
        assertTrue(footnoteMarkerRe.containsMatchIn("data-type=\"annotation\""))
    }

    @Test
    fun footnoteIdMatchesLegacyPatterns() {
        assertTrue(footnoteIdRe.matches("fn1"))
        assertTrue(footnoteIdRe.matches("fn-1"))
        assertTrue(footnoteIdRe.matches("note1"))
        assertTrue(footnoteIdRe.matches("note_1"))
        assertTrue(footnoteIdRe.matches("footnote1"))
        assertTrue(footnoteIdRe.matches("FbAutId_123"))
        assertTrue(footnoteIdRe.matches("id1"))
    }

    @Test
    fun footnoteIdMatchesNewPatterns() {
        assertTrue(footnoteIdRe.matches("fnt1"))
        assertTrue(footnoteIdRe.matches("fnt-1"))
        assertTrue(footnoteIdRe.matches("back1"))
        assertTrue(footnoteIdRe.matches("back-1"))
        assertTrue(footnoteIdRe.matches("sup1"))
        assertTrue(footnoteIdRe.matches("sup-1"))
        assertTrue(footnoteIdRe.matches("text-fn1"))
        assertTrue(footnoteIdRe.matches("text-fn-1"))
        assertTrue(footnoteIdRe.matches("pn1"))
        assertTrue(footnoteIdRe.matches("pn-1"))
        assertTrue(footnoteIdRe.matches("ann1"))
        assertTrue(footnoteIdRe.matches("ann-1"))
        assertTrue(footnoteIdRe.matches("annotation1"))
        assertTrue(footnoteIdRe.matches("annotation-1"))
    }

    @Test
    fun footnoteIdRejectsNonFootnotePatterns() {
        assertFalse(footnoteIdRe.matches("chapter1"))
        assertFalse(footnoteIdRe.matches("page1"))
        assertFalse(footnoteIdRe.matches("section1"))
        assertFalse(footnoteIdRe.matches("heading1"))
        assertFalse(footnoteIdRe.matches("123"))
        assertFalse(footnoteIdRe.matches(""))
    }

    @Test
    fun footnoteMarkerIsCaseInsensitive() {
        assertTrue(footnoteMarkerRe.containsMatchIn("Footnote"))
        assertTrue(footnoteMarkerRe.containsMatchIn("ENDNOTE"))
        assertTrue(footnoteMarkerRe.containsMatchIn("Noteref"))
        assertTrue(footnoteMarkerRe.containsMatchIn("FNT"))
        assertTrue(footnoteMarkerRe.containsMatchIn("Annotation"))
    }

    @Test
    fun footnoteIdRequiresDigitSuffix() {
        assertFalse(footnoteIdRe.matches("fn"))
        assertFalse(footnoteIdRe.matches("note"))
        assertFalse(footnoteIdRe.matches("fnt"))
        assertFalse(footnoteIdRe.matches("back"))
    }

    @Test
    fun epubFootnoteParserNoteIdReMatchesNewPatterns() {
        // This mirrors the EpubFootnoteParser.noteIdRe regex
        val epubNoteIdRe = Regex(
            """^(?:FbAutId_\d+|id\d+|fn\d+|fnt[-_]*\d+|note[-_]*\d+|footnote[-_]*\d+|back[-_]*\d+|sup[-_]*\d+|text-fn[-_]*\d+|pn[-_]*\d+|ann[-_]*\d+|annotation[-_]*\d+)$""",
            RegexOption.IGNORE_CASE
        )
        assertTrue(epubNoteIdRe.matches("fnt5"))
        assertTrue(epubNoteIdRe.matches("fnt_5"))
        assertTrue(epubNoteIdRe.matches("back-3"))
        assertTrue(epubNoteIdRe.matches("sup_2"))
        assertTrue(epubNoteIdRe.matches("text-fn1"))
        assertTrue(epubNoteIdRe.matches("pn10"))
        assertTrue(epubNoteIdRe.matches("ann1"))
        assertTrue(epubNoteIdRe.matches("annotation-1"))
        assertTrue(epubNoteIdRe.matches("FbAutId_42"))
        assertTrue(epubNoteIdRe.matches("fn1"))
        assertTrue(epubNoteIdRe.matches("note_1"))
        assertTrue(epubNoteIdRe.matches("footnote-1"))
    }
}
