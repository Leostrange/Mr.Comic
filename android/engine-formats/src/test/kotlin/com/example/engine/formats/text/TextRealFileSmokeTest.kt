package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Assert.assertEquals
import org.junit.Test
import java.io.File

class TextRealFileSmokeTest {

    @Test
    fun docxSamplePreservesRichContent() = runBlocking {
        val sample = locateSample("docx_sample.zip")
        assertTrue("Expected DOCX sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected multiple DOCX pages, got $pageCount", pageCount > 3)

            val joined = (0 until minOf(pageCount, 8))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Demonstration of DOCX support in calibre", ignoreCase = true))
            assertTrue(joined.contains("<table", ignoreCase = true))
            assertTrue(joined.contains("<img", ignoreCase = true))
            assertTrue(joined.contains("@font-face"))
            assertTrue(joined.contains("font-family"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlSampleKeepsBookLikeMarkup() {
        val sample = locateSample("html_alice_gutenberg.html")
        assertTrue("Expected HTML sample to exist", sample.exists())

        val rendered = renderHtmlToReaderDocument(
            raw = sample.readText(Charsets.UTF_8),
            baseUrl = sample.parentFile?.toURI()?.toString()
        )

        assertTrue(rendered.contains("Alice’s Adventures in Wonderland"))
        assertTrue(rendered.contains("Project Gutenberg"))
        assertTrue(rendered.contains("<img", ignoreCase = true))
        assertTrue(!rendered.contains("<script", ignoreCase = true))
    }

    @Test
    fun htmlSampleResolvesInternalChapterAnchors() = runBlocking {
        val sample = locateSample("html_alice_gutenberg.html")
        assertTrue("Expected HTML sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val firstChapterPage = reader.resolveHrefToPage("#chap01")
            val lastChapterPage = reader.resolveHrefToPage("#chap12")

            assertTrue("Expected chapter 1 anchor to resolve", firstChapterPage != null && firstChapterPage >= 0)
            assertTrue("Expected chapter 12 anchor to resolve", lastChapterPage != null && lastChapterPage >= 0)
            assertTrue("Expected later chapter to stay on or after chapter 1", lastChapterPage!! >= firstChapterPage!!)
            assertEquals("Expected Gutenberg HTML to stay as one whole document page", 1, reader.getPageCount())
        } finally {
            reader.close()
        }
    }

    @Test
    fun mobiSampleKeepsCenteredFrontMatterAndChapterText() = runBlocking {
        val sample = locateSample("Гарин_Михайловский_Корейские_сказки.mobi")
        assertTrue("Expected MOBI sample to exist", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected multiple MOBI pages, got $pageCount", pageCount > 2)

            val firstPage = reader.getHtmlPage(0).orEmpty()
            val secondPage = reader.getHtmlPage(1).orEmpty()

            assertTrue(firstPage.contains("Корейские сказки", ignoreCase = true))
            assertTrue(
                "Expected centered front-matter markup on the first page",
                firstPage.contains("align=\"center\"", ignoreCase = true) ||
                    firstPage.contains("<center", ignoreCase = true)
            )
            assertTrue(
                "Expected later page to keep chapter text from the sample",
                (firstPage + secondPage).contains("ДИНАСТИЯ ЛИ", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun markdownSampleKeepsSpecStructure() {
        val sample = locateSample("markdown_commonmark_spec.md")
        assertTrue("Expected Markdown sample to exist", sample.exists())

        val blocks = renderMarkdownToHtmlBlocks(sample.readText(Charsets.UTF_8))
        val joined = blocks.joinToString("\n")

        assertTrue(blocks.size > 50)
        assertTrue(joined.contains("<h1>Introduction</h1>"))
        assertTrue(joined.contains("<blockquote>"))
        assertTrue(joined.contains("<pre><code"))
    }

    private fun locateSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "Epub bug/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }
}
