package com.example.engine.formats.text

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.nio.file.Files

class ReflowableFormatReadersTest {

    @Test
    fun plainTextReaderBuildsPagesAndTocFromChapterHeadings() = runBlocking {
        val sample = tempFile(
            suffix = ".txt",
            text = "Глава 1\n\nПервый абзац.\n\nГлава 2\n\nВторой абзац."
        )
        val reader = PlainTextFormatReader(testContext, sample.absolutePath)
        try {
            assertTrue(reader.getPageCount() >= 1)
            assertTrue(reader.getHtmlPage(0).orEmpty().contains("Первый абзац"))
            assertEquals(2, reader.getTableOfContents().size)
            assertEquals(0, reader.resolveHrefToPage("#txt-chapter-1"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun markdownReaderRendersMarkdownBlocks() = runBlocking {
        val sample = tempFile(
            suffix = ".md",
            text = "# Header\n\n- one\n- two"
        )
        val reader = MarkdownFormatReader(testContext, sample.absolutePath)
        try {
            val html = reader.getHtmlPage(0).orEmpty()
            assertTrue(html.contains("<h1>Header</h1>"))
            assertTrue(html.contains("<li>one</li>"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun htmlReaderServesLocalAssetsAndResolvesAnchors() = runBlocking {
        val dir = Files.createTempDirectory("mrcomic-html-reader").toFile()
        val css = File(dir, "style.css").apply { writeText("body { color: red; }") }
        val html = File(dir, "book.html").apply {
            writeText(
                """
                <html>
                  <head><link rel="stylesheet" href="${css.name}"></head>
                  <body><h1 id="start">Title</h1><p>Body</p></body>
                </html>
                """.trimIndent()
            )
        }
        val reader = HtmlFormatReader(testContext, html.absolutePath)
        try {
            assertTrue(reader.getHtmlPage(0).orEmpty().contains("Title"))
            assertNotNull(reader.openHtmlAsset("style.css"))
            assertEquals(0, reader.resolveHrefToPage("#start"))
        } finally {
            reader.close()
            css.delete()
            html.delete()
            dir.delete()
        }
    }

    private fun tempFile(suffix: String, text: String): File =
        File.createTempFile("mrcomic-reflowable", suffix).apply {
            writeText(text)
            deleteOnExit()
        }

    private companion object {
        val testContext = ContextWrapper(null)
    }
}
