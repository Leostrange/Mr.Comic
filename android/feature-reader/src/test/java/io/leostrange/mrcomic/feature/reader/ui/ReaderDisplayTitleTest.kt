package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * BUG-READER-06: long HTML book titles must survive display-title cleanup
 * without being cut well below what the two-line chrome bar can render.
 */
class ReaderDisplayTitleTest {

    @Test
    fun `strips extension path and underscores`() {
        val raw = "/books/some_folder/my_very_long_story.html"
        assertEquals("my very long story", cleanReaderDisplayTitle(raw))
    }

    @Test
    fun `keeps long titles up to the two-line cap`() {
        val name = (1..40).joinToString("") { "word$it " }.trim() + ".html"
        val cleaned = cleanReaderDisplayTitle(name)
        assertEquals(160, cleaned.length)
        assertTrue(cleaned.startsWith("word1"))
    }

    @Test
    fun `caps pathological titles at 160 chars`() {
        val raw = "x".repeat(500) + ".html"
        assertEquals(160, cleanReaderDisplayTitle(raw).length)
    }

    @Test
    fun `blank input yields empty title`() {
        assertEquals("", cleanReaderDisplayTitle("   "))
    }
}
