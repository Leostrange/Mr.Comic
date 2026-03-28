package com.example.engine.formats.text

import org.junit.Assert.assertTrue
import org.junit.Test

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
