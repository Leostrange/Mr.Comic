package io.leostrange.mrcomic.engine.formats.text.pagination

import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * PAGE-01: Verify no duplicate lines between adjacent pages.
 *
 * Creates a document with numbered lines and checks that the last line
 * of page N is strictly before the first line of page N+1.
 */
class PageBoundaryContinuityTest {

    private val constraints = TextPaginationConstraints(
        viewportWidthPx = 360,
        viewportHeightPx = 640,
        fontSizeSp = 18,
        lineHeight = 1.6f
    )

    @Test
    fun numberedLines_noDuplicatesBetweenPages() = runBlocking {
        // Create 100 numbered paragraphs
        val paragraphs = (1..100).map { "<p>LINE-${it.toString().padStart(4, '0')}</p>" }
        val html = "<html><body>${paragraphs.joinToString("")}</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)

        // Extract visible text from each page
        val pageTexts = result.pages.map { page ->
            Jsoup.parse(page.html).text().replace('\u00A0', ' ').trim()
        }

        // Check that no LINE-XXXX appears on more than one page
        val linePattern = Regex("LINE-\\d{4}")
        for (pageNum in 0 until pageTexts.size) {
            val matches = linePattern.findAll(pageTexts[pageNum]).map { it.value }.toList()
            for (line in matches) {
                val pagesWithLine = pageTexts.count { it.contains(line) }
                assertTrue(
                    "Line '$line' should appear on at most 1 page, found on $pagesWithLine",
                    pagesWithLine <= 1
                )
            }
        }
    }

    @Test
    fun numberedLines_allLinesPresent() = runBlocking {
        val paragraphs = (1..100).map { "<p>LINE-${it.toString().padStart(4, '0')}</p>" }
        val html = "<html><body>${paragraphs.joinToString("")}</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") {
            Jsoup.parse(it.html).text().replace('\u00A0', ' ')
        }

        // All 100 lines must be present
        for (i in 1..100) {
            val line = "LINE-${i.toString().padStart(4, '0')}"
            assertTrue("Line '$line' must be present", allText.contains(line))
        }
    }

    @Test
    fun numberedLines_orderedCorrectly() = runBlocking {
        val paragraphs = (1..50).map { "<p>LINE-${it.toString().padStart(4, '0')}</p>" }
        val html = "<html><body>${paragraphs.joinToString("")}</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") {
            Jsoup.parse(it.html).text().replace('\u00A0', ' ')
        }

        // Lines must appear in order
        val linePattern = Regex("LINE-\\d{4}")
        val foundLines = linePattern.findAll(allText).map { it.value }.toList()
        for (i in 0 until foundLines.size - 1) {
            val current = foundLines[i].substringAfter("LINE-").toInt()
            val next = foundLines[i + 1].substringAfter("LINE-").toInt()
            assertTrue(
                "Lines must be ordered: ${foundLines[i]} should come before ${foundLines[i+1]}",
                current < next
            )
        }
    }
}
