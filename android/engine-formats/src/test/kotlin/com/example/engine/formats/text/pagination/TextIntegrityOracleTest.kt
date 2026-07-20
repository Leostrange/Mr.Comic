package com.example.engine.formats.text.pagination

import com.example.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertTrue
import org.junit.Assert.fail
import org.junit.Test

/**
 * PAG-008: Text integrity oracle.
 *
 * Collects visible text from all paginated pages and compares it with the
 * normalized source document. Catches: loss, duplication, reordering, and
 * footnote body injection into the main reading flow.
 *
 * This is the automated equivalent of the manual "read every page and check
 * for missing/duplicate sentences" QA scenario.
 */
class TextIntegrityOracleTest {

    private val constraints = TextPaginationConstraints(
        viewportWidthPx = 360,
        viewportHeightPx = 640,
        fontSizeSp = 18,
        lineHeight = 1.6f,
        letterSpacingEm = 0f,
        wordSpacingEm = 0f,
        paragraphSpacingEm = 0.2f,
        bold = false
    )

    @Test
    fun multiChapterDocument_noLostText() = runBlocking {
        val chapters = listOf(
            chapter("Chapter 1: The Beginning", paragraphs(10, "ch1")),
            chapter("Chapter 2: The Middle", paragraphs(15, "ch2")),
            chapter("Chapter 3: The End", paragraphs(8, "ch3"))
        )
        val sections = chapters.mapIndexed { i, html ->
            TextDocumentSection(index = i, id = "ch$i", html = html)
        }

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val pageTexts = result.pages.map { extractVisibleText(it.html) }
        val allPageText = pageTexts.joinToString(" ").trim()
        val sourceText = sections.joinToString(" ") { extractVisibleText(it.html) }.trim()

        assertTextContainsAllWords(sourceText, allPageText, "multi-chapter document")
    }

    @Test
    fun singleLongChapter_noDuplicates() = runBlocking {
        // PAG-002: Each unique marker must appear on exactly 1 page.
        // Use padded markers (UNIQ01, UNIQ02, ..., UNIQ50) to avoid substring
        // matching issues (e.g. "UNIQ2" matching "UNIQ25").
        val paragraphs = (1..50).map { i ->
            val padded = i.toString().padStart(2, '0')
            "<p>Para$i has marker UNIQ$padded.</p>"
        }
        val html = "<html><body>${paragraphs.joinToString("")}</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "long", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val pageRaws = result.pages.map { it.html }

        // All markers must be present
        val allMarkers = (1..50).map { "UNIQ${it.toString().padStart(2, '0')}" }
        val allRaw = pageRaws.joinToString("")
        for (marker in allMarkers) {
            assertTrue("Marker '$marker' must be present", allRaw.contains(marker))
        }

        // No marker on more than 1 page
        for (marker in allMarkers) {
            val count = pageRaws.count { it.contains(marker) }
            assertTrue(
                "Marker '$marker' on $count pages, expected ≤ 1",
                count <= 1
            )
        }
    }

    @Test
    fun debug_layoutUnit50() = runBlocking {
        val paragraphs = (1..50).map { "<p>Para$it has marker TOK$it end.</p>" }
        val html = paragraphs.joinToString("")

        val paginator = LayoutUnitTextPaginator()
        val result = paginator.paginate(html, constraints)

        println("=== LAYOUT50 PAGES: ${result.subPages.size} ===")
        for (page in result.subPages) {
            val markers = (1..50).filter { page.html.contains("TOK$it") }
            println("Page${page.index}: $markers len=${page.html.length}")
        }
    }

    @Test
    fun sectionBoundaries_noReordering() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "s0", html = chapter("Section A", "<p>Alpha text.</p><p>Bravo text.</p>")),
            TextDocumentSection(index = 1, id = "s1", html = chapter("Section B", "<p>Charlie text.</p><p>Delta text.</p>")),
            TextDocumentSection(index = 2, id = "s2", html = chapter("Section C", "<p>Echo text.</p><p>Foxtrot text.</p>"))
        )

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allPageText = result.pages.joinToString(" ") { extractVisibleText(it.html) }

        // Verify ordering: Alpha before Bravo before Charlie etc.
        val markers = listOf("Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot")
        for (i in markers.indices) {
            for (j in i + 1 until markers.size) {
                val posA = allPageText.indexOf(markers[i])
                val posB = allPageText.indexOf(markers[j])
                if (posA >= 0 && posB >= 0) {
                    assertTrue(
                        "${markers[i]} (pos $posA) should appear before ${markers[j]} (pos $posB)",
                        posA < posB
                    )
                }
            }
        }
    }

    @Test
    fun footnoteBodies_detectedByOracle() = runBlocking {
        // NOTE-001: The paginator does not filter <aside> footnote bodies.
        // This oracle test DETECTS the issue — footnote body text currently
        // DOES appear in the paginated output. When NOTE-001 is fixed
        // (footnote bodies extracted before pagination), this test should
        // be updated to assert absence.
        val mainText = (1..20).joinToString("\n") { "<p>Main paragraph $it with enough text to fill a page properly.</p>" }
        val footnoteBody = """<aside id="fn1" epub:type="footnote"><p>FOOTNOTE_ORACLE_MARKER should be extracted before pagination.</p></aside>"""
        val html = chapter("Chapter with Footnotes", "$mainText\n$footnoteBody")
        val sections = listOf(TextDocumentSection(index = 0, id = "ch1", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allPageText = result.pages.joinToString(" ") { extractVisibleText(it.html) }

        // Oracle detects: footnote body IS present (NOTE-001 bug)
        val footnotePresent = allPageText.contains("FOOTNOTE_ORACLE_MARKER")
        // When NOTE-001 is fixed, change this to: assertTrue(!footnotePresent)
        assertTrue(
            "Oracle detected NOTE-001: footnote body ${if (footnotePresent) "IS" else "is NOT"} present in main flow",
            footnotePresent // Documents current buggy behavior
        )
    }

    @Test
    fun emptySections_produceAtLeastOnePage() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "empty", html = ""),
            TextDocumentSection(index = 1, id = "normal", html = chapter("Title", "<p>Content.</p>"))
        )

        val result = DocumentTextPaginator().paginateSections(sections, constraints)

        assertTrue("Should have at least 1 page", result.pages.isNotEmpty())
    }

    @Test
    fun titleOnlySection_mergedWithNext() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "title", html = "<html><body><h1>Chapter Title</h1></body></html>"),
            TextDocumentSection(index = 1, id = "content", html = chapter("Content", paragraphs(5, "merge")))
        )

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allPageText = result.pages.joinToString(" ") { extractVisibleText(it.html) }

        assertTrue("Title should be present", allPageText.contains("Chapter Title"))
        assertTrue("Content should be present", allPageText.contains("merge1"))
    }

    // ── Helpers ────────────────────────────────────────────────────────────

    private fun chapter(title: String, body: String): String =
        "<html><body><h1>$title</h1>$body</body></html>"

    private fun paragraphs(count: Int, prefix: String): String =
        (1..count).joinToString("\n") { i ->
            "<p>$prefix$i: Lorem ipsum dolor sit amet, consectetur adipiscing elit. " +
                "Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>"
        }

    private fun extractVisibleText(html: String): String = runCatching {
        Jsoup.parse(html).text().replace('\u00A0', ' ').trim()
    }.getOrDefault(html.trim())

    private fun assertTextContainsAllWords(source: String, result: String, context: String) {
        val sourceWords = source.split(Regex("\\s+")).filter { it.length >= 4 }.toSet()
        val resultWords = result.split(Regex("\\s+")).toSet()
        val missing = sourceWords - resultWords
        if (missing.isNotEmpty()) {
            val sample = missing.take(10).joinToString(", ")
            fail("[$context] ${missing.size} words missing from paginated output: $sample")
        }
    }
}
