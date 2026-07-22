package io.leostrange.mrcomic.engine.formats.text.pagination

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class LayoutUnitTextPaginatorTest {

    private val paginator = LayoutUnitTextPaginator()

    @Test
    fun paginateReturnsAtLeastOneSubPage() {
        val result = kotlinx.coroutines.runBlocking {
            paginator.paginate(
                sectionHtml = "<p>${"word ".repeat(200)}</p>",
                constraints = TextPaginationConstraints(
                    viewportWidthPx = 1080,
                    viewportHeightPx = 1920
                )
            )
        }

        assertTrue(result.subPages.isNotEmpty())
        assertTrue(result.subPageCount >= 1)
    }

    @Test
    fun paginateIsDeterministicForSameInput() {
        val html = "<h1>Title</h1><p>${"Paragraph. ".repeat(120)}</p>"
        val constraints = TextPaginationConstraints(
            viewportWidthPx = 720,
            viewportHeightPx = 1280,
            fontSizeSp = 18,
            lineHeight = 1.6f
        )
        val first = kotlinx.coroutines.runBlocking { paginator.paginate(html, constraints) }
        val second = kotlinx.coroutines.runBlocking { paginator.paginate(html, constraints) }
        assertEquals(first.subPages.size, second.subPages.size)
        assertEquals(first.subPages.map { it.html }, second.subPages.map { it.html })
    }

    @Test
    fun paginatePreservesInlineMarkupWhenSplittingAnOversizedParagraph() {
        val html = "<p>${"<a href=\"#note-1\">linked sentence.</a> ".repeat(700)}</p>"

        val result = kotlinx.coroutines.runBlocking {
            paginator.paginate(
                sectionHtml = html,
                constraints = TextPaginationConstraints(
                    viewportWidthPx = 360,
                    viewportHeightPx = 640
                )
            )
        }

        assertTrue(result.subPageCount > 1)
        assertTrue(
            "splitting must not turn links and footnote markers into plain text",
            result.subPages.all { it.html.contains("href=\"#note-1\"") }
        )
    }
}
