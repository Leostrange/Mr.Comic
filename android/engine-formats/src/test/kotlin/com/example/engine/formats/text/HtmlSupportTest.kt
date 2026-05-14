package com.example.engine.formats.text

import android.content.ContextWrapper
import com.example.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class HtmlSupportTest {

    @Test
    fun rendersUtf8HtmlCorpusSample() {
        val samplePath = locateCorpusFile("html_utf8_tika.html")
        assertTrue("Expected HTML corpus sample to exist", samplePath.exists())

        val html = renderHtmlToReaderDocument(samplePath.readText(Charsets.UTF_8))

        assertTrue(html.contains("Tilte with UTF-8 chars öäå"))
        assertTrue(html.contains("Content with UTF-8 chars"))
        assertTrue(html.contains("åäö"))
    }

    @Test
    fun dropsScriptHeavyPreambleFromRealHtml() {
        val samplePath = locateCorpusFile("html_big_preamble_tika.html")
        assertTrue("Expected HTML corpus sample to exist", samplePath.exists())

        val html = renderHtmlToReaderDocument(samplePath.readText(Charsets.UTF_8))

        assertTrue(!html.contains("<script", ignoreCase = true))
        assertTrue(!html.contains("function addToList"))
        assertTrue(!html.contains("<form", ignoreCase = true))
    }

    @Test
    fun preservesRelativeLinksAndImages() {
        val raw = """
            <html><head><title>Sample</title></head><body>
            <h1>Chapter 1</h1>
            <p><a href="chapter2.html">Next</a></p>
            <img src="images/pic.jpg" alt="Pic"/>
            </body></html>
        """.trimIndent()

        val html = renderHtmlToReaderDocument(raw, "file:///books/")

        assertTrue(html.contains("href=\"chapter2.html\""))
        assertTrue(html.contains("src=\"images/pic.jpg\""))
        assertTrue(html.contains("alt=\"Pic\""))
    }

    @Test
    fun simpleHtmlUsesUnifiedBookTypography() {
        val raw = """
            <html><head><title>Story</title></head><body>
            <h1>Story</h1>
            <p>First paragraph.</p>
            <p>Second paragraph.</p>
            </body></html>
        """.trimIndent()

        val html = renderHtmlToReaderDocument(raw)

        assertTrue(html.contains("font-family: Georgia, \"Times New Roman\", serif;"))
        assertTrue(html.contains("text-indent: 1.5em;"))
        assertTrue(!html.contains("data-mrcomic-preserve-layout", ignoreCase = true))
    }

    @Test
    fun complexHtmlKeepsPreserveLayoutMode() {
        val raw = """
            <html><body>
            <table><tr><td>Grid</td><td>Layout</td></tr></table>
            </body></html>
        """.trimIndent()

        val html = renderHtmlToReaderDocument(raw)

        assertTrue(html.contains("data-mrcomic-preserve-layout=\"true\"", ignoreCase = true))
    }

    @Test
    fun readerKeepsHtmlTablesRenderableInPages() = runBlocking {
        val sample = File.createTempFile("mrcomic-html-table", ".html").apply {
            writeText(
                """
                    <html><body>
                    <h1>Table chapter</h1>
                    <table>
                      <caption>Supplies</caption>
                      <colgroup><col width="40%"/><col width="60%"/></colgroup>
                      <tr><th>Item</th><th>Needed</th></tr>
                      <tr><td>Books</td><td>1</td></tr>
                    </table>
                    </body></html>
                """.trimIndent()
            )
            deleteOnExit()
        }

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val html = reader.getHtmlPage(0).orEmpty()
            assertTrue(html.contains("<table", ignoreCase = true))
            assertTrue(html.contains("mrcomic-table-scroll", ignoreCase = true))
            assertTrue(html.contains("<caption", ignoreCase = true))
            assertTrue(html.contains("<colgroup", ignoreCase = true))
            assertTrue(html.contains("<th", ignoreCase = true))
            assertTrue(html.contains("Supplies"))
            assertTrue(html.contains("Books"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun readerPreservesImageOnlyBlocksInPaginatedHtml() = runBlocking {
        val sample = File.createTempFile("mrcomic-html-image", ".html").apply {
            writeText(
                """
                    <html><body>
                    <img src="cover.jpg" alt="Cover"/>
                    <h1>Chapter One</h1>
                    <p>Opening text.</p>
                    </body></html>
                """.trimIndent()
            )
            deleteOnExit()
        }

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue(firstPage.contains("src=\"cover.jpg\""))
            assertTrue(firstPage.contains("alt=\"Cover\""))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun readerBuildsTocAndHrefTargetsFromHtmlHeadings() = runBlocking {
        val sample = File.createTempFile("mrcomic-html-toc", ".html").apply {
            writeText(
                """
                    <html><body>
                    <p><a href="#chapter-two">Chapter Two</a></p>
                    <h1>Chapter One</h1>
                    <p>${"Opening. ".repeat(260)}</p>
                    <h2 id="chapter-two">Chapter Two</h2>
                    <p>Target text.</p>
                    </body></html>
                """.trimIndent()
            )
            deleteOnExit()
        }

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val toc = reader.getTableOfContents()
            assertEquals(listOf("Chapter One", "Chapter Two"), toc.map { it.title })
            assertEquals(toc[1].pageIndex, reader.resolveHrefToPage("#chapter-two"))
            assertTrue(toc[1].pageIndex > toc[0].pageIndex)
        } finally {
            reader.close()
            sample.delete()
        }
    }

    @Test
    fun readerResolvesExistingHtmlNameAnchorsFromTableOfContents() = runBlocking {
        val sample = File.createTempFile("mrcomic-html-named-anchor", ".html").apply {
            writeText(
                """
                    <html><body>
                    <nav><a href="#chapter-2">Chapter Two</a></nav>
                    <h1>Chapter One</h1>
                    <p>${"Opening. ".repeat(8_000)}</p>
                    <p id="chapter-2">Chapter Two starts here.</p>
                    </body></html>
                """.trimIndent()
            )
            deleteOnExit()
        }

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val targetPage = reader.resolveHrefToPage("#chapter-2")
            assertNotNull("Expected legacy name anchor to resolve", targetPage)
            assertTrue("Expected named anchor to land after the opening page", targetPage!! > 0)
        } finally {
            reader.close()
            sample.delete()
        }
    }

    private fun locateCorpusFile(name: String): java.io.File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = java.io.File(userDir).absoluteFile
        repeat(6) {
            val candidate = java.io.File(current, "samples/format-real-corpus/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return java.io.File(userDir, name)
    }
}
