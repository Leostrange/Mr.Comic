package com.example.engine.formats.text

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReflowableSectionFirstEngineTest {

    @Test
    fun sectionsFromHtmlBlocksGroupsByChapterHeadings() {
        val sections = ReflowableDocumentBuilder.sectionsFromHtmlBlocks(
            blocks = listOf(
                """<h2 id="ch1" class="chapter">Chapter 1</h2>""",
                "<p>${"Alpha. ".repeat(40)}</p>",
                """<h2 id="ch2" class="chapter">Chapter 2</h2>""",
                "<p>${"Beta. ".repeat(40)}</p>"
            )
        )

        assertEquals(2, sections.size)
        assertEquals("ch1", sections[0].id)
        assertEquals("Chapter 1", sections[0].title)
        assertTrue(sections[0].html.contains("Alpha"))
        assertEquals("ch2", sections[1].id)
    }

    @Test
    fun sectionsFromPlainTextAvoidsCharSplitPages() {
        val longParagraph = "Word. ".repeat(500)
        val sections = ReflowableDocumentBuilder.sectionsFromPlainText(
            """
            Chapter One

            $longParagraph

            Chapter Two

            Tail paragraph.
            """.trimIndent()
        )

        assertTrue(
            "Section-first TXT should keep long chapter body in one section",
            sections.size < 10
        )
        assertTrue(sections.any { it.title == "Chapter One" || it.html.contains("Chapter One") })
    }
}
