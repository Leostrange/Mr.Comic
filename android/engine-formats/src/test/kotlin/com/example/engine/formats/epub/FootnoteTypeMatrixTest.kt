package com.example.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * FOOTNOTE-02: Tests for different footnote types across EPUB2, EPUB3, and FB2.
 *
 * Verifies that:
 * - EPUB2 footnotes (epub:type="noteref") are recognized
 * - EPUB3 footnotes (role="doc-noteref") are recognized
 * - FB2 footnotes (FbAutId_*) are recognized
 * - Footnotes in same file vs separate file are handled
 * - Complex footnote content is preserved
 * - Edge cases don't cause crashes
 */
class FootnoteTypeMatrixTest {

    // ── EPUB2 footnotes (span-based, FB2EPUB style) ────────────────────────

    @Test
    fun epub2_spanBasedNotesExtracted() {
        val html = """
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <span id="id1"><div class="title1"><p class="p">1</p></div><p class="p1">First footnote text.</p></span>
            <span id="id2"><div class="title1"><p class="p">2</p></div><p class="p1">Second footnote text.</p></span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertEquals("Should find 2 footnotes", 2, items.size)
        assertEquals("id1", items[0].anchorId)
        assertEquals("1", items[0].number)
        assertTrue(items[0].text.contains("First"))
    }

    @Test
    fun epub2_fbaAutIdNotesExtracted() {
        val html = """
            <html>
            <body>
            <h3 id="FbAutId_42">42</h3>
            <p>The footnote body text for popup.</p>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertEquals("Should find 1 footnote", 1, items.size)
        assertEquals("FbAutId_42", items[0].anchorId)
        assertEquals("42", items[0].number)
    }

    // ── EPUB3 footnotes (role-based, FB2EPUB-style with numeric id) ────────

    @Test
    fun epub3_docFootnoteRoleRecognized() {
        val html = """
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <span id="id1" role="doc-footnote"><div class="title1"><p class="p">1</p></div><p class="p1">EPUB3 footnote text.</p></span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Should find doc-footnote", items.isNotEmpty())
    }

    @Test
    fun epub3_docEndnoteRoleRecognized() {
        val html = """
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <span id="id1" role="doc-endnote"><div class="title1"><p class="p">1</p></div><p class="p1">EPUB3 endnote text.</p></span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Should find doc-endnote", items.isNotEmpty())
    }

    // ── FB2 footnotes ──────────────────────────────────────────────────────

    @Test
    fun fb2_fbaAutIdRecognized() {
        val html = """
            <html><body>
            <p>Text <a href="#FbAutId_42">1</a></p>
            <div id="FbAutId_42"><p>FB2 footnote text</p></div>
            </body></html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Should find FB2 footnote", items.isNotEmpty())
        assertTrue("Should contain FB2 text", items.any { it.text.contains("FB2") })
    }

    @Test
    fun fb2_fbanchorSchemeRecognized() {
        val candidates = EpubFootnoteResolver.lookupCandidates("fbanchor://FbAutId_42")
        assertTrue("Should resolve fbanchor", candidates.any { it.contains("FbAutId_42") })
    }

    // ── Footnotes in same file vs separate file ────────────────────────────

    @Test
    fun footnoteInSameFile_bodyExtracted() {
        // FB2EPUB-style inline footnote in same file
        val html = """
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <span id="id1"><div class="title1"><p class="p">1</p></div><p class="p1">Inline footnote text.</p></span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Inline footnote found", items.any { it.text.contains("Inline") })
    }

    @Test
    fun footnoteInSeparateFile_candidatesIncludeFile() {
        val candidates = EpubFootnoteResolver.lookupCandidates("notes.xhtml#fn1")
        assertTrue("Should include file#fragment", candidates.any { it.contains("notes.xhtml") })
        assertTrue("Should include fragment only", candidates.any { it.contains("fn1") })
    }

    // ── Complex footnote content ───────────────────────────────────────────

    @Test
    fun footnoteWithMultipleParagraphs() {
        // FB2EPUB-style footnote with multiple paragraphs
        val html = """
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <span id="id1">
                <div class="title1"><p class="p">1</p></div>
                <p class="p1">First paragraph.</p>
                <p class="p1">Second paragraph.</p>
            </span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Should find footnote", items.isNotEmpty())
        val text = items.first().text
        assertTrue("Should contain first paragraph", text.contains("First"))
    }

    @Test
    fun footnoteWithFormatting() {
        val html = """
            <html xmlns="http://www.w3.org/1999/xhtml">
            <body>
            <span id="id1">
                <div class="title1"><p class="p">1</p></div>
                <p class="p1"><b>Bold</b> and <i>italic</i> text.</p>
            </span>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Should find footnote with formatting", items.isNotEmpty())
    }

    // ── Edge cases ─────────────────────────────────────────────────────────

    @Test
    fun missingTarget_noCrash() {
        val html = """
            <html><body>
            <p>Text <a href="#nonexistent" epub:type="noteref">1</a></p>
            </body></html>
        """.trimIndent()

        // Should not crash
        val items = EpubFootnoteParser.extractItems(html)
        // May or may not find items, but should not throw
        assertNotNull(items)
    }

    @Test
    fun duplicateIds_noCrash() {
        val html = """
            <html><body>
            <p>Text <a href="#fn1" epub:type="noteref">1</a></p>
            <aside id="fn1" epub:type="footnote"><p>First</p></aside>
            <aside id="fn1" epub:type="footnote"><p>Duplicate</p></aside>
            </body></html>
        """.trimIndent()

        // Should not crash
        val items = EpubFootnoteParser.extractItems(html)
        assertNotNull(items)
    }

    @Test
    fun emptyFootnote_noCrash() {
        val html = """
            <html><body>
            <p>Text <a href="#fn1" epub:type="noteref">1</a></p>
            <aside id="fn1" epub:type="footnote"></aside>
            </body></html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertNotNull(items)
    }

    @Test
    fun nonFootnoteLink_notTreatedAsFootnote() {
        // Regular chapter anchors should not be detected as footnotes
        val html = """
            <html>
            <body>
            <p id="intro">Regular paragraph with no footnote markers.</p>
            </body>
            </html>
        """.trimIndent()

        val items = EpubFootnoteParser.extractItems(html)
        assertTrue("Regular text should not produce footnotes", items.isEmpty())
    }

    @Test
    fun cyrillicFragment_handled() {
        val candidates = EpubFootnoteResolver.lookupCandidates("#сноска1")
        assertTrue("Cyrillic fragment should be included", candidates.any { it.contains("сноска1") })
    }

    @Test
    fun urlEncodedFragment_decoded() {
        val candidates = EpubFootnoteResolver.lookupCandidates("#fn%201")
        assertTrue("URL-encoded fragment should be decoded", candidates.any { it.contains("fn 1") })
    }

    // ── isFootnoteTocEntry ─────────────────────────────────────────────────

    @Test
    fun tocEntry_fbautidIsFootnote() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("FbAutId_123.html", "1"))
    }

    @Test
    fun tocEntry_notesSectionIsFootnote() {
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml", "Notes"))
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml", "Примечания"))
        assertTrue(EpubFootnoteResolver.isFootnoteTocEntry("notes.xhtml", "Сноски"))
    }

    @Test
    fun tocEntry_normalChapterIsNotFootnote() {
        assertFalse(EpubFootnoteResolver.isFootnoteTocEntry("chapter1.xhtml", "Chapter 1"))
        assertFalse(EpubFootnoteResolver.isFootnoteTocEntry("glava1.xhtml", "Глава 1"))
    }
}
