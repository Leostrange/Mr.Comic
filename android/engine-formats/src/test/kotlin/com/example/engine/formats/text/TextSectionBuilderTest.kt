package com.example.engine.formats.text

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class TextSectionBuilderTest {

    @Test
    fun fromPlainTextSplitsOnBlankLinesIntoSections() {
        val sections = TextSectionBuilder.fromPlainText(
            """
            Chapter One

            First paragraph.

            Chapter Two

            Second paragraph.
            """.trimIndent()
        )

        assertTrue(sections.size >= 2)
        assertTrue(sections[0].html.contains("Chapter One"))
        assertTrue(sections.last().html.contains("Second paragraph"))
    }

    @Test
    fun fromMarkupSplitsOnHeadingSections() {
        val sections = TextSectionBuilder.fromMarkup(
            """
            <h1 id="ch1">Chapter 1</h1><p>Alpha.</p>
            <h1 id="ch2">Chapter 2</h1><p>Beta.</p>
            """.trimIndent()
        )

        assertEquals(2, sections.size)
        assertEquals("ch1", sections[0].id)
        assertEquals("Chapter 1", sections[0].title)
        assertEquals("ch2", sections[1].id)
        assertEquals("Chapter 2", sections[1].title)
    }

    @Test
    fun fromMarkupRespectsForcedPageBreakMarker() {
        val sections = TextSectionBuilder.fromMarkup(
            """
            <p>Before break.</p>
            <hr data-mrcomic-pagebreak="true"/>
            <p>After break.</p>
            """.trimIndent()
        )

        assertEquals(2, sections.size)
        assertTrue(sections[0].html.contains("Before break"))
        assertTrue(sections[1].html.contains("After break"))
    }
}
