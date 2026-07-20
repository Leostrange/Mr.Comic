package io.leostrange.mrcomic.engine.formats.text.pagination

import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class DocumentTextPaginatorTest {

    private val paginator = DocumentTextPaginator()
    private val constraints = TextPaginationConstraints(
        viewportWidthPx = 1080,
        viewportHeightPx = 1920
    )

    @Test
    fun paginateMarkupProducesPagesForEachSection() {
        val result = runBlocking {
            paginator.paginateMarkup(
                markup = """
                    <h1>One</h1><p>${"word ".repeat(80)}</p>
                    <h1>Two</h1><p>${"word ".repeat(80)}</p>
                """.trimIndent(),
                baseUrl = null,
                constraints = constraints
            )
        }

        assertEquals(2, result.sections.size)
        assertTrue(result.pageCount >= 2)
        assertEquals(result.pageCount, result.pages.size)
    }

    @Test
    fun paginatePlainTextIsDeterministic() {
        val text = "Chapter A\n\n${"Paragraph. ".repeat(40)}\n\nChapter B\n\nTail."
        val first = runBlocking { paginator.paginatePlainText(text, constraints) }
        val second = runBlocking { paginator.paginatePlainText(text, constraints) }
        assertEquals(first.pages.size, second.pages.size)
        assertEquals(first.pages.map { it.html }, second.pages.map { it.html })
    }

    @Test
    fun shortTitleSectionIsRepaginatedWithFollowingSection() = runBlocking {
        val requestedMarkup = mutableListOf<String>()
        val paginator = DocumentTextPaginator(
            sectionPaginator = object : TextPaginator {
                override suspend fun paginate(
                    sectionHtml: String,
                    constraints: TextPaginationConstraints
                ): TextPaginationResult {
                    requestedMarkup += sectionHtml
                    return TextPaginationResult(
                        listOf(TextPaginationSubPage(html = sectionHtml, index = 0))
                    )
                }
            }
        )
        val result = paginator.paginateSections(
            sections = listOf(
                TextDocumentSection(index = 0, html = "<p>Previous page text.</p>"),
                TextDocumentSection(index = 1, html = "<h1>ATLANTIDA</h1>"),
                TextDocumentSection(
                    index = 2,
                    html = "<p>${"First paragraph of the chapter. ".repeat(20)}</p>"
                )
            ),
            constraints = TextPaginationConstraints(720, 1200)
        )

        assertEquals(2, result.pages.size)
        assertEquals("<p>Previous page text.</p>", result.pages[0].html)
        val mergedChapter = "<h1>ATLANTIDA</h1><p>${"First paragraph of the chapter. ".repeat(20)}</p>"
        assertEquals(mergedChapter, result.pages[1].html)
        assertTrue(requestedMarkup.contains(mergedChapter))
    }
}
