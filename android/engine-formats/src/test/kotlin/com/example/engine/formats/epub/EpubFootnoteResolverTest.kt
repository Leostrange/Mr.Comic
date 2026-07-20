package com.example.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [EpubFootnoteResolver].
 */
class EpubFootnoteResolverTest {

    // ── lookupCandidates ───────────────────────────────────────────────────

    @Test
    fun lookupCandidates_standardFragment() {
        val candidates = EpubFootnoteResolver.lookupCandidates("#fn1")
        assertTrue("#fn1" in candidates)
        assertTrue("fn1" in candidates)
    }

    @Test
    fun lookupCandidates_noterefScheme() {
        val candidates = EpubFootnoteResolver.lookupCandidates("noteref://notes.xhtml#note1")
        assertTrue("notes.xhtml#note1" in candidates)
        assertTrue("note1" in candidates)
    }

    @Test
    fun lookupCandidates_fbanchorScheme() {
        val candidates = EpubFootnoteResolver.lookupCandidates("fbanchor://FbAutId_42")
        assertTrue("FbAutId_42" in candidates)
    }

    @Test
    fun lookupCandidates_relativePath() {
        val candidates = EpubFootnoteResolver.lookupCandidates("../Text/notes.xhtml#fn5")
        assertTrue("fn5" in candidates)
    }

    @Test
    fun lookupCandidates_urlEncoded() {
        val candidates = EpubFootnoteResolver.lookupCandidates("%23note1")
        assertTrue(candidates.isNotEmpty())
    }

    @Test
    fun lookupCandidates_blankReturnsEmpty() {
        assertEquals(emptyList<String>(), EpubFootnoteResolver.lookupCandidates(""))
        assertEquals(emptyList<String>(), EpubFootnoteResolver.lookupCandidates("   "))
    }

    @Test
    fun lookupCandidates_noDuplicates() {
        val candidates = EpubFootnoteResolver.lookupCandidates("#fn1")
        assertEquals(candidates.size, candidates.distinct().size)
    }

    // ── isFootnoteTocEntry ─────────────────────────────────────────────────

    @Test
    fun isFootnoteTocEntry_fbautidReturnsTrue() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("FbAutId_123.html", "1"))
    }

    @Test
    fun isFootnoteTocEntry_fnHashReturnsTrue() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml#fn1", "1"))
    }

    @Test
    fun isFootnoteTocEntry_fbanchorReturnsTrue() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("fbanchor://FbAutId_1", "1"))
    }

    @Test
    fun isFootnoteTocEntry_numericTitleReturnsTrue() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("ch1.xhtml", "42"))
    }

    @Test
    fun isFootnoteTocEntry_notesTitleReturnsTrue() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml", "Notes"))
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml", "Примечания"))
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml", "Сноски"))
    }

    @Test
    fun isFootnoteTocEntry_normalChapterReturnsFalse() {
        assertFalse(EpubFootnoteResolver.isFootnoteTocEntry("ch1.xhtml", "Chapter 1"))
        assertFalse(EpubFootnoteResolver.isFootnoteTocEntry("chapter01.xhtml", "Введение"))
    }
}
