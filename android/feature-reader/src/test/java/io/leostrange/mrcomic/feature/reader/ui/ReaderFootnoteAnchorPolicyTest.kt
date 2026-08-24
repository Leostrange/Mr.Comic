package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderFootnoteAnchorPolicyTest {

    @Test
    fun normalizesBridgeSchemesAndEncodedFragments() {
        assertEquals("#note-1", ReaderFootnoteAnchorPolicy.normalize("noteref://%23note-1"))
        assertEquals("FbAutId_7", ReaderFootnoteAnchorPolicy.normalize("fbanchor://FbAutId_7"))
        assertEquals("note 7", ReaderFootnoteAnchorPolicy.normalize("noteref:note%207"))
    }

    @Test
    fun createsStableDistinctLookupCandidates() {
        assertEquals(
            listOf("note-1", "#note-1"),
            ReaderFootnoteAnchorPolicy.lookupCandidates("#note-1", "note-1")
        )
        assertEquals(
            listOf("chapter.xhtml", "#chapter.xhtml"),
            ReaderFootnoteAnchorPolicy.lookupCandidates("chapter.xhtml", "")
        )
    }

    @Test
    fun recognizesKnownFootnoteAnchorsButRejectsChapterAnchors() {
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("note-1"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("FbAutId_42"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("endnote12"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("note_1"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("fn_1"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("note"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("fn"))
        assertFalse(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("chapter-1"))
        assertFalse(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("contents"))
    }

    // ── BUG-T4 regression: common footnote patterns at screen edges ────────

    /** Numeric-only markers like "1" or "42" — common in EPUB footnotes. */
    @Test
    fun recognizesNumericOnlyFootnoteAnchors() {
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("1"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("42"))
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("100"))
    }

    /** Patterns used by FBReader/FB2 "fbanchor" scheme. */
    @Test
    fun normalizesFbanchorScheme() {
        assertEquals("FbAutId_5", ReaderFootnoteAnchorPolicy.normalize("fbanchor://FbAutId_5"))
        assertEquals("id_10", ReaderFootnoteAnchorPolicy.normalize("fbanchor:id_10"))
    }

    /** Kobo-style footnote references. */
    @Test
    fun recognizesKoboFootnotePattern() {
        assertTrue(ReaderFootnoteAnchorPolicy.isFootnoteAnchor("kobo-side-note-1"))
    }

    /** Verify lookupCandidates handles multi-file footnote hrefs. */
    @Test
    fun lookupCandidatesForCrossFileFootnote() {
        val candidates = ReaderFootnoteAnchorPolicy.lookupCandidates(
            "chapter2.xhtml#fn-3",
            "fn-3"
        )
        assertTrue(candidates.contains("fn-3"))
        assertTrue(candidates.contains("#fn-3"))
    }
}
