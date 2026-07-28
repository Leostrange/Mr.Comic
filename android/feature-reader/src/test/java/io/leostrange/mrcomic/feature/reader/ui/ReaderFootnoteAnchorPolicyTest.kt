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
}
