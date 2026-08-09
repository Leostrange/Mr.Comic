package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * ARC-11 S5: HtmlProgressAnchor tests.
 *
 * Covers anchor extraction, resolution, and section-cursor ordering.
 * Plain JUnit — no WebView, no Compose, no Robolectric.
 */
class HtmlProgressAnchorTest {

    // ── Anchor extraction ──────────────────────────────────────────────────

    @Test
    fun extractAnchor_fromIdAttribute() {
        val html = """
            <html><body>
            <p id="para-42">Some text here</p>
            <p id="para-43">More text here</p>
            </body></html>
        """.trimIndent()

        val anchor = extractTextAnchor(html, visibleText = "Some text here")

        assertNotNull(anchor)
        assertEquals("para-42", anchor?.elementId)
    }

    @Test
    fun extractAnchor_fromTextContent() {
        val html = """
            <html><body>
            <p>First paragraph with unique marker ALPHA</p>
            <p>Second paragraph with unique marker BRAVO</p>
            </body></html>
        """.trimIndent()

        val anchor = extractTextAnchor(html, visibleText = "unique marker BRAVO")

        assertNotNull(anchor)
        assertTrue(anchor?.textContent?.contains("BRAVO") == true)
    }

    @Test
    fun extractAnchor_noMatch_returnsNull() {
        val html = "<html><body><p>Some text</p></body></html>"

        val anchor = extractTextAnchor(html, visibleText = "NONEXISTENT")

        assertNull(anchor)
    }

    @Test
    fun extractAnchor_blankText_returnsNull() {
        val html = "<html><body><p id='a'>Hello</p></body></html>"

        assertNull(extractTextAnchor(html, ""))
        assertNull(extractTextAnchor(html, "   "))
    }

    @Test
    fun extractAnchor_textTruncated_toMaxLength() {
        val longText = "A".repeat(200)
        val html = "<html><body><p id='x'>$longText</p></body></html>"

        val anchor = extractTextAnchor(html, visibleText = longText)

        assertNotNull(anchor)
        assertEquals(120, anchor?.textContent?.length)
    }

    // ── Anchor resolution ──────────────────────────────────────────────────

    @Test
    fun resolve_byElementId() {
        val html = """<html><body><p id="target">Target paragraph</p></body></html>"""

        assertTrue(resolveAnchorPosition(html, ReaderPositionAnchor(elementId = "target")))
    }

    @Test
    fun resolve_bySingleQuotedId() {
        val html = """<html><body><p id='target'>Target</p></body></html>"""

        assertTrue(resolveAnchorPosition(html, ReaderPositionAnchor(elementId = "target")))
    }

    @Test
    fun resolve_byTextContent() {
        val html = """<html><body><p>Unique marker CHARLIE here</p></body></html>"""

        assertTrue(resolveAnchorPosition(html, ReaderPositionAnchor(textContent = "CHARLIE")))
    }

    @Test
    fun resolve_notFound_returnsFalse() {
        val html = "<html><body><p>Some text</p></body></html>"

        assertFalse(resolveAnchorPosition(html, ReaderPositionAnchor(elementId = "nonexistent")))
    }

    @Test
    fun resolve_textNotFound_returnsFalse() {
        val html = "<html><body><p>Some text</p></body></html>"

        assertFalse(resolveAnchorPosition(html, ReaderPositionAnchor(textContent = "ghost")))
    }

    @Test
    fun resolve_idTakesPriority_overText() {
        val html = """<html><body><p id="real">Real ID paragraph</p></body></html>"""

        // Both id and text are present; id should resolve first
        assertTrue(resolveAnchorPosition(html, ReaderPositionAnchor(
            elementId = "real",
            textContent = "nonexistent text"
        )))
    }

    // ── Anchor stability across reflow ─────────────────────────────────────

    @Test
    fun anchor_stableAfterFontSizeChange() {
        val htmlBefore = """<html><body><p id="ch5">Chapter 5 content</p></body></html>"""
        val htmlAfter = """<html><body><p id="ch5" style="font-size:24px">Chapter 5 content</p></body></html>"""

        val anchor = extractTextAnchor(htmlBefore, visibleText = "Chapter 5 content")
        assertNotNull(anchor)
        assertTrue(resolveAnchorPosition(htmlAfter, anchor!!))
    }

    @Test
    fun anchor_stableAfterToolbarChange() {
        val html = """<html><body><p id="stable-para">This paragraph should be findable</p></body></html>"""

        val anchor = extractTextAnchor(html, visibleText = "findable")
        assertNotNull(anchor)
        assertTrue(resolveAnchorPosition(html, anchor!!))
    }

    // ── Section cursors ────────────────────────────────────────────────────

    @Test
    fun cursor_ordering_sectionFirst() {
        val a = readerSectionCursor(sectionIndex = 1, characterOffset = 500)
        val b = readerSectionCursor(sectionIndex = 2, characterOffset = 10)

        assertTrue(a < b)
    }

    @Test
    fun cursor_ordering_offsetWithinSameSection() {
        val a = readerSectionCursor(sectionIndex = 3, characterOffset = 100)
        val b = readerSectionCursor(sectionIndex = 3, characterOffset = 200)

        assertTrue(a < b)
    }

    @Test
    fun cursor_equality() {
        val a = readerSectionCursor(sectionIndex = 5, characterOffset = 42)
        val b = ReaderSectionCursor(sectionIndex = 5, characterOffset = 42)

        assertEquals(a, b)
        assertEquals(0, a.compareTo(b))
    }

    @Test
    fun cursor_clampsNegatives() {
        val c = readerSectionCursor(sectionIndex = -1, characterOffset = -5)
        assertEquals(0, c.sectionIndex)
        assertEquals(0, c.characterOffset)
    }

    // ── ReaderPositionAnchor validation ────────────────────────────────────

    @Test(expected = IllegalArgumentException::class)
    fun anchor_rejectsBothNull() {
        ReaderPositionAnchor(elementId = null, textContent = null)
    }

    @Test
    fun anchor_acceptsIdOnly() {
        val a = ReaderPositionAnchor(elementId = "header-1")
        assertEquals("header-1", a.elementId)
        assertNull(a.textContent)
    }

    @Test
    fun anchor_acceptsTextOnly() {
        val a = ReaderPositionAnchor(textContent = "some text")
        assertEquals("some text", a.textContent)
        assertNull(a.elementId)
    }
}
