package com.example.engine.formats.text.pagination

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
        val result = kotlinx.coroutines.runBlocking {
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
        val first = kotlinx.coroutines.runBlocking { paginator.paginatePlainText(text, constraints) }
        val second = kotlinx.coroutines.runBlocking { paginator.paginatePlainText(text, constraints) }
        assertEquals(first.pages.size, second.pages.size)
        assertEquals(first.pages.map { it.html }, second.pages.map { it.html })
    }
}
