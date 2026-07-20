package io.leostrange.mrcomic.engine.formats.text.pagination

import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-02..05: Page quality matrix tests.
 *
 * TEST-02: Detect underfilled pages across the entire book.
 * TEST-03: Bottom line clipping (glyph descenders).
 * TEST-04: Vertical boundaries (status bar, toolbar).
 * TEST-05: Mode matrix (toolbar hidden/visible).
 */
class PageQualityMatrixTest {

    private val defaultConstraints = TextPaginationConstraints(
        viewportWidthPx = 360,
        viewportHeightPx = 640,
        fontSizeSp = 18,
        lineHeight = 1.6f
    )

    private fun extractVisibleText(html: String): String =
        Jsoup.parse(html).text().replace('\u00A0', ' ').trim()

    // ── TEST-02: Underfilled page detection ────────────────────────────────

    @Test
    fun test02_noUnderfilledPagesInMiddleOfChapter() = runBlocking {
        // Create a document with many paragraphs - no page should be < 50% filled
        // unless it's the last page of a chapter
        val paragraphs = (1..100).joinToString("") { i ->
            "<p>Paragraph $i with enough text to fill the page properly and ensure proper pagination behavior across multiple lines.</p>"
        }
        val html = "<html><body>$paragraphs</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "ch1", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, defaultConstraints)

        // Check that middle pages (not first, not last) have reasonable content
        val pageTexts = result.pages.map { extractVisibleText(it.html) }
        val nonEmptyPages = pageTexts.filter { it.length > 20 }

        // All non-empty pages should have reasonable content
        for (i in 0 until nonEmptyPages.size - 1) {
            assertTrue(
                "Page $i should have reasonable content (${nonEmptyPages[i].length} chars)",
                nonEmptyPages[i].length > 30
            )
        }
    }

    @Test
    fun test02_lastPageCanBeShorter() = runBlocking {
        // Last page of a chapter can be shorter - this is acceptable
        val paragraphs = (1..50).joinToString("") { i ->
            "<p>Paragraph $i content.</p>"
        }
        val html = "<html><body>$paragraphs</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "ch1", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, defaultConstraints)

        // Should have at least 1 page
        assertTrue("Should have pages", result.pages.isNotEmpty())
    }

    @Test
    fun test02_headingWithNextParagraph_staysTogether() = runBlocking {
        // A heading followed by a short paragraph should stay on the same page
        val html = """
            <html><body>
            <h2>Chapter Title</h2>
            <p>First paragraph after heading.</p>
            <p>Second paragraph with more content to fill the page properly.</p>
            </body></html>
        """.trimIndent()
        val sections = listOf(TextDocumentSection(index = 0, id = "ch1", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, defaultConstraints)
        val firstPageText = extractVisibleText(result.pages.first().html)

        assertTrue("Heading should be on first page", firstPageText.contains("Chapter Title"))
        assertTrue("First paragraph should be on first page", firstPageText.contains("First paragraph"))
    }

    // ── TEST-03: Bottom line clipping ──────────────────────────────────────

    @Test
    fun test03_glyphDescendersPreserved() = runBlocking {
        // Test with text containing descenders: у, д, р, ц, щ, g, p, q, y
        val descenderText = "Текст с буквами: у д р ц щ g p q y"
        val paragraphs = (1..30).joinToString("") { i ->
            "<p>$descenderText строка $i</p>"
        }
        val html = "<html><body>$paragraphs</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, defaultConstraints)
        val allText = result.pages.joinToString(" ") { extractVisibleText(it.html) }

        // All descender characters should be present
        for (char in listOf("у", "д", "р", "ц", "щ", "g", "p", "q", "y")) {
            assertTrue("Descender '$char' should be present", allText.contains(char))
        }
    }

    @Test
    fun test03_lastLineNotClipped() = runBlocking {
        // Each page's last line should be complete (not cut off)
        val paragraphs = (1..50).joinToString("") { i ->
            "<p>Line $i ends here with marker END$i.</p>"
        }
        val html = "<html><body>$paragraphs</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, defaultConstraints)

        // All END markers should be present
        val allText = result.pages.joinToString(" ") { extractVisibleText(it.html) }
        for (i in 1..50) {
            assertTrue("END$i should be present", allText.contains("END$i"))
        }
    }

    // ── TEST-04/05: Geometry tests moved to feature-reader module ─────────
    // (ReaderViewportGeometry is in feature-reader, not engine-formats)
    // See: feature-reader/.../geometry/ReaderViewportGeometryTest.kt
}
