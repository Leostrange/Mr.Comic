package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class TextChapterDetectionTest {

    @Test
    fun txtReaderBuildsTableOfContentsFromChapterHeadings() = runBlocking {
        val sample = File.createTempFile("mrcomic-chapters", ".txt")
        sample.writeText(
            """
            Глава 1

            Первый абзац первой главы.

            ${"Текст первой главы. ".repeat(180)}

            Глава 2

            Второй абзац второй главы.

            ${"Текст второй главы. ".repeat(220)}
            """.trimIndent()
        )

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val toc = reader.getTableOfContents()
            assertEquals(2, toc.size)
            assertEquals("Глава 1", toc[0].title)
            assertEquals("Глава 2", toc[1].title)
            assertTrue("Second chapter should not resolve before the first one", toc[1].pageIndex >= toc[0].pageIndex)

            val pageForFirstChapter = reader.resolveHrefToPage("#txt-chapter-1")
            val pageForSecondChapter = reader.resolveHrefToPage("#txt-chapter-2")
            assertEquals(toc[0].pageIndex, pageForFirstChapter)
            assertEquals(toc[1].pageIndex, pageForSecondChapter)
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun txtReaderReflowsSoftWrappedProseLines() = runBlocking {
        val sample = File.createTempFile("mrcomic-soft-wrap", ".txt")
        sample.writeText(
            """
            Chapter 1

            Alice was beginning to get very tired of sitting by her sister on the
            bank, and of having nothing to do: once or twice she had peeped into
            the book her sister was reading, but it had no pictures or conversations.
            """.trimIndent()
        )

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val html = reader.getHtmlPage(0).orEmpty()

            assertTrue(html.contains("sister on the bank"))
            assertTrue(html.contains("peeped into the book"))
            assertFalse(html.contains("sister on the<br"))
            assertFalse(html.contains("peeped into<br"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun txtReaderConvertsGutenbergInlineEmphasis() = runBlocking {
        val sample = File.createTempFile("mrcomic-gutenberg-emphasis", ".txt")
        sample.writeText(
            """
            Chapter 1

            There was nothing so _very_ remarkable in that; nor did Alice think it
            so _very_ much out of the way to hear the Rabbit say to itself.
            """.trimIndent()
        )

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.TXT)
        try {
            val html = reader.getHtmlPage(0).orEmpty()

            assertTrue(html.contains("so <em>very</em> remarkable"))
            assertTrue(html.contains("so <em>very</em> much"))
            assertFalse(html.contains("_very_"))
        } finally {
            reader.close()
            sample.delete()
        }
    }
}
