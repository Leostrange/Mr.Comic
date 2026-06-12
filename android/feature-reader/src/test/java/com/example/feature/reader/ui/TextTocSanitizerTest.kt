package com.example.feature.reader.ui

import com.example.engine.formats.base.TocEntry
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class TextTocSanitizerTest {

    @Test
    fun sanitizeCollapsesNotesSectionAndFootnoteChildren() {
        val entries = listOf(
            TocEntry(title = "Chapter 1", pageIndex = 0),
            TocEntry(title = "Notes", pageIndex = 10),
            TocEntry(title = "[1]", pageIndex = 11),
            TocEntry(title = "Chapter 2", pageIndex = 20)
        )
        val sanitized = TextTocSanitizer.sanitize(entries)
        assertEquals(3, sanitized.size)
        assertEquals("Chapter 1", sanitized[0].title)
        assertEquals("Примечания", sanitized[1].title)
        assertEquals("Chapter 2", sanitized[2].title)
    }

    @Test
    fun sanitizeDeduplicatesByTitleAndPage() {
        val entries = listOf(
            TocEntry(title = "Intro", pageIndex = 0),
            TocEntry(title = "intro", pageIndex = 0)
        )
        assertEquals(1, TextTocSanitizer.sanitize(entries).size)
    }

    @Test
    fun isReaderNotesTocTitleRecognizesRussianAndEnglish() {
        assertTrue(TextTocSanitizer.isReaderNotesTocTitle("Примечания"))
        assertTrue(TextTocSanitizer.isReaderNotesTocTitle("footnotes"))
    }
}
