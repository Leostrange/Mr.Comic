package io.leostrange.mrcomic.engine.formats.text

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

class HtmlSupportTest {

    @Test
    fun extractsSemanticFootnoteBodiesWithoutRemovingReferences() {
        val extraction = extractReaderHtmlFootnotes(
            """
            <html><body>
              <p>Visible text<a href="#fn-1" epub:type="noteref">1</a>.</p>
              <aside id="fn-1" epub:type="footnote">1 Footnote body.</aside>
              <section id="end-2" role="doc-endnote">2 Endnote body.</section>
            </body></html>
            """.trimIndent()
        )

        assertTrue(extraction.contentHtml.contains("Visible text"))
        assertTrue(extraction.contentHtml.contains("href=\"#fn-1\""))
        assertFalse(extraction.contentHtml.contains("Footnote body."))
        assertFalse(extraction.contentHtml.contains("Endnote body."))
        assertEquals("1 Footnote body.", extraction.footnoteMap["fn-1"])
        assertEquals("2 Endnote body.", extraction.footnoteMap["end-2"])
    }

    @Test
    fun linksPlainNumericSuperscriptToMatchingSemanticFootnoteBody() {
        val extraction = extractReaderHtmlFootnotes(
            """
            <html><body>
              <p>Visible text<sup>[1]</sup>.</p>
              <aside id="note-1" role="doc-footnote">[1] Footnote body.</aside>
            </body></html>
            """.trimIndent()
        )

        assertTrue(extraction.contentHtml.contains("href=\"#note-1\""))
        assertTrue(extraction.contentHtml.contains("mrcomic-generated-noteref"))
        assertEquals("[1] Footnote body.", extraction.footnoteMap["note-1"])
    }

    @Test
    fun rendersUtf8HtmlCorpusSample() {
        val samplePath = locateCorpusFile("html_utf8_tika.html")
        assumeTrue("HTML corpus sample not available", samplePath.exists())

        val html = renderHtmlToReaderDocument(samplePath.readText(Charsets.UTF_8))

        assertTrue(html.contains("Tilte with UTF-8 chars öäå"))
        assertTrue(html.contains("Content with UTF-8 chars"))
        assertTrue(html.contains("åäö"))
    }

    @Test
    fun dropsScriptHeavyPreambleFromRealHtml() {
        val samplePath = locateCorpusFile("html_big_preamble_tika.html")
        assumeTrue("HTML corpus sample not available", samplePath.exists())

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
        // The body tag must NOT carry the preserve-layout attribute. The CSS uses
        // :not([data-mrcomic-preserve-layout="true"]) selectors, so the string does
        // appear in the stylesheet — check only the <body> tag itself.
        val bodyTag = Regex("<body[^>]*>", RegexOption.IGNORE_CASE).find(html)?.value ?: ""
        assertTrue(
            "Simple HTML must not have preserve-layout body attribute, got: $bodyTag",
            !bodyTag.contains("data-mrcomic-preserve-layout", ignoreCase = true)
        )
    }

    @Test
    fun semanticTableReflowsInsteadOfLockingTheWholeDocumentWidth() {
        val raw = """
            <html><body>
            <table><tr><td>Grid</td><td>Layout</td></tr></table>
            </body></html>
        """.trimIndent()

        val html = renderHtmlToReaderDocument(raw)

        val bodyTag = Regex("<body[^>]*>", RegexOption.IGNORE_CASE).find(html)?.value ?: ""
        assertFalse(bodyTag.contains("data-mrcomic-preserve-layout", ignoreCase = true))
    }

    @Test
    fun gutenbergHtmlReflowsSoLongTitleCannotBeClippedByPublisherGeometry() {
        val raw = """
            <!doctype html public "-//W3C//DTD XHTML 1.0 Strict//EN">
            <html><head><title>Alice's Adventures in Wonderland</title></head><body>
              <h1 style="width: 900px; font-size: 96px">Alice's Adventures in Wonderland</h1>
              <p>Project Gutenberg sample.</p>
            </body></html>
        """.trimIndent()

        val html = renderHtmlToReaderDocument(raw)
        val bodyTag = Regex("<body[^>]*>", RegexOption.IGNORE_CASE).find(html)?.value ?: ""

        assertFalse(bodyTag.contains("data-mrcomic-preserve-layout", ignoreCase = true))
        assertTrue(html.contains(".mc-title-block"))
        assertTrue(html.contains("overflow-wrap: anywhere"))
    }

    @Test
    fun legacySourcePagebreakDoesNotCreateAStandaloneMostlyEmptyReaderPage() {
        val html = renderHtmlToReaderDocument(
            """
            <html><body>
              <p>Short front matter.</p>
              <mbp:pagebreak/>
              <p>TEXT FORMATTING</p>
            </body></html>
            """.trimIndent()
        )

        assertFalse(html.contains("mrcomic-pagebreak"))
        assertTrue(html.contains("Short front matter"))
        assertTrue(html.contains("TEXT FORMATTING"))
    }

    @Test
    fun explicitReaderPagebreakRemainsAvailableForSemanticBoundaries() {
        val html = renderHtmlToReaderDocument(
            """
            <html><body>
              <p>Cover.</p>
              <hr data-mrcomic-pagebreak="true"/>
              <h1>Chapter One</h1>
            </body></html>
            """.trimIndent()
        )

        assertTrue(html.contains("data-mrcomic-pagebreak=\"true\""))
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
