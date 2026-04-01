package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
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
}
