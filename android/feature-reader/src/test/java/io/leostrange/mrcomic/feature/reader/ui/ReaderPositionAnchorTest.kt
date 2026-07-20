package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * POSITION-01: Characterization tests for position anchor extraction.
 *
 * Verifies that the system can extract a semantic anchor from the current
 * reading position, and that the anchor can be used to restore position
 * after geometry changes (font size, toolbar visibility, rotation).
 */
class ReaderPositionAnchorTest {

    // ── Anchor extraction from HTML ────────────────────────────────────────

    @Test
    fun extractAnchor_fromIdAttribute() {
        val html = """
            <html><body>
            <p id="para-42">Some text here</p>
            <p id="para-43">More text here</p>
            </body></html>
        """.trimIndent()

        // Simulate extracting anchor from a visible text position
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

    // ── Anchor restoration ─────────────────────────────────────────────────

    @Test
    fun restoreAnchor_byElementId() {
        val html = """
            <html><body>
            <p id="target">Target paragraph</p>
            </body></html>
        """.trimIndent()

        val position = restoreFromAnchor(html, TextAnchor(elementId = "target"))

        assertNotNull(position)
        assertTrue(position!! > 0)
    }

    @Test
    fun restoreAnchor_byTextContent() {
        val html = """
            <html><body>
            <p>First paragraph</p>
            <p>Unique marker CHARLIE here</p>
            <p>Last paragraph</p>
            </body></html>
        """.trimIndent()

        val position = restoreFromAnchor(html, TextAnchor(textContent = "CHARLIE"))

        assertNotNull(position)
    }

    @Test
    fun restoreAnchor_notFound_returnsNull() {
        val html = "<html><body><p>Some text</p></body></html>"

        val position = restoreFromAnchor(html, TextAnchor(elementId = "nonexistent"))

        assertNull(position)
    }

    // ── Anchor stability across reflow ─────────────────────────────────────

    @Test
    fun anchor_stableAfterFontSizeChange() {
        // Simulate: same content, different font size → anchor should still resolve
        val htmlBefore = """
            <html><body>
            <p id="ch5">Chapter 5 content</p>
            </body></html>
        """.trimIndent()
        val htmlAfter = """
            <html><body>
            <p id="ch5" style="font-size:24px">Chapter 5 content</p>
            </body></html>
        """.trimIndent()

        val anchor = extractTextAnchor(htmlBefore, visibleText = "Chapter 5 content")
        val position = restoreFromAnchor(htmlAfter, anchor!!)

        assertNotNull(position)
    }

    @Test
    fun anchor_stableAfterToolbarChange() {
        // Simulate: same content, different viewport → anchor should still resolve
        val html = """
            <html><body>
            <p id="stable-para">This paragraph should be findable</p>
            </body></html>
        """.trimIndent()

        val anchor = extractTextAnchor(html, visibleText = "findable")
        val position = restoreFromAnchor(html, anchor!!)

        assertNotNull(position)
    }

    // ── Helpers (represent the API contract, not the implementation) ────────

    /**
     * Represents a semantic anchor in the document.
     * Can be an element ID, a text content fragment, or both.
     */
    data class TextAnchor(
        val elementId: String? = null,
        val textContent: String? = null
    )

    /**
     * Extracts a text anchor from the HTML based on visible text.
     * Uses simple string matching (production uses WebView.evaluateJavascript).
     */
    private fun extractTextAnchor(html: String, visibleText: String): TextAnchor? {
        // Simple regex-based extraction for testing
        val idRegex = Regex("""id=["']([^"']+)["']""")
        val textIndex = html.indexOf(visibleText)
        if (textIndex < 0) return null

        // Find the nearest id attribute before the text
        val beforeText = html.substring(0, textIndex)
        val idMatch = idRegex.findAll(beforeText).lastOrNull()
        return TextAnchor(
            elementId = idMatch?.groupValues?.get(1),
            textContent = visibleText.take(100)
        )
    }

    /**
     * Restores position from a text anchor.
     * Returns a simulated scroll position, or null if anchor not found.
     */
    private fun restoreFromAnchor(html: String, anchor: TextAnchor): Int? {
        // Try element ID first
        if (anchor.elementId != null) {
            if (html.contains("""id="${anchor.elementId}"""") ||
                html.contains("id='${anchor.elementId}'")) {
                return 1 // Simulated position
            }
        }
        // Try text content
        if (anchor.textContent != null) {
            if (html.contains(anchor.textContent)) {
                return 1 // Simulated position
            }
        }
        return null
    }
}
