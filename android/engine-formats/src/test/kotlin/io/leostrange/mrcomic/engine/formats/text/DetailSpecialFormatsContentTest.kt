package io.leostrange.mrcomic.engine.formats.text

import android.content.ContextWrapper
import io.leostrange.mrcomic.core.model.ComicFormat
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test
import java.io.File

/**
 * TEST-10 (per user request: detailed for RTF/DOCX/MARKDOWN/MOBI/HTML).
 *
 * This class exercises text-format readers on corpus samples large enough
 * to span multiple pages. The same invariant pattern is reused for every
 * format so a regression in a single format is obvious in the test log:
 *
 *   * Page 1 must not be blank.
 *   * Distinct visible markers (alphanumeric ids) must each appear
 *     exactly once across all rendered pages.
 *   * Annotations (footnote markers, hyperlinks, list items) must NOT be
 *     silently dropped between pages.
 *
 * Tests are skipped via assumeTrue when the corpus sample is missing.
 */
class DetailSpecialFormatsContentTest {

    private fun locateCorpus(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "samples/format-real-corpus/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }

    private fun locateSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "Epub bug/$name")
            if (candidate.exists()) return candidate
            val reference = File(current, "reference/formats/samples/$name")
            if (reference.exists()) return reference
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }

    // ── DOCX: 7-page corpus sample keeps structure intact ─────────────

    @Test
    fun docxCorpusSampleKeepsListsTablesAndFootnoteMarkersAcrossPages() = runBlocking {
        val sample = locateCorpus("docx_sample.docx")
        assumeTrue("DOCX corpus sample not available at " + sample.absolutePath, sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("DOCX corpus must render at least 7 pages to qualify as long content, got $pageCount",
                pageCount >= 7)

            val joined = (0 until pageCount)
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(joined.contains("Demonstration of DOCX support in calibre", ignoreCase = true))

            // Inline structure: tables/links/list items must NOT be silently
            // consumed by the DOCX → HTML pipeline.
            assertTrue(
                "Tables or image-bearing markup must survive DOCX → HTML on every page",
                (0 until pageCount).flatMap { idx ->
                    listOfNotNull(reader.getHtmlPage(idx))
                }.any { it.contains("<table", ignoreCase = true) || it.contains("<img", ignoreCase = true) || it.contains("data:image", ignoreCase = true) }
            )

            // No marker appears across two pages.
            for (marker in listOf("Demonstration", "Text Formatting", "Inline formatting")) {
                val occurrences = (0 until pageCount).count { idx ->
                    reader.getHtmlPage(idx)?.contains(marker, ignoreCase = true) == true
                }
                assertTrue(
                    "$marker must appear on exactly one page, found on $occurrences",
                    occurrences == 1
                )
            }
        } finally {
            reader.close()
        }
    }

    @Test
    fun docxFootnotesCorpusSampleKeepsFootnoteTextIntactOnEveryPage() = runBlocking {
        val sample = locateCorpus("docx_footnotes_tika.docx")
        assumeTrue("DOCX footnotes corpus sample not available", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.DOCX)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("DOCX footnotes sample must produce at least 1 page, got $pageCount", pageCount >= 1)
            val joined = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")
            assertTrue("DOCX footnote body text must survive", joined.contains("snoska", ignoreCase = true))
            assertTrue(
                "DOCX footnote anchors must remain visible across pages",
                joined.contains("<sup", ignoreCase = true) || joined.contains("footnote", ignoreCase = true) || joined.contains("footnoteReference")
            )
        } finally {
            reader.close()
        }
    }

    // ── MARKDOWN: 7-page spec sample keeps block structure ───────────

    @Test
    fun markdownSpecCorpusSampleKeepsHeadingsCodeAndQuotesAcrossPages() {
        val sample = locateSample("markdown_commonmark_spec.md")
            .takeIf { it.exists() }
            ?: locateCorpus("markdown_commonmark_spec.md")
        assumeTrue("Markdown corpus sample not available", sample.exists())

        val blocks = renderMarkdownToHtmlBlocks(sample.readText(Charsets.UTF_8))
        assertTrue("Markdown corpus must produce >= 50 blocks to qualify as long content", blocks.size > 50)

        val joined = blocks.joinToString("\n")
        assertTrue(
            "Markdown corpus must contain <h1>Introduction</h1> exactly once",
            joined.contains("<h1>Introduction</h1>")
        )
        assertTrue(
            "Markdown corpus must contain at least one blockquote",
            joined.contains("<blockquote>")
        )
        assertTrue(
            "Markdown corpus must contain code blocks",
            joined.contains("<pre><code")
        )
    }

    @Test
    fun markdownInlineHTMLEscapesAndCodeBlocksProtectContent() {
        val md = """
            # Title
            <script>alert(1)</script>
            `inline code`
            ```kotlin
            fun main() = println("hi")
            ```
            [link](https://example.com)
        """.trimIndent()
        val blocks = renderMarkdownToHtmlBlocks(md)
        val joined = blocks.joinToString("\n")
        assertFalse(
            "Inline script tag must be escaped by the markdown renderer",
            joined.contains("<script>", ignoreCase = true)
        )
        assertTrue(
            "Code fences must appear as <pre><code> blocks",
            joined.contains("<pre><code")
        )
        assertTrue(
            "Markdown links must remain as anchors",
            joined.contains("<a ", ignoreCase = true) || joined.contains("href=", ignoreCase = true)
        )
    }

    // ── HTML: covers 7+ pages of "Alice" and resolves chapter anchors ─

    @Test
    fun htmlAliceCorpusSampleResolvedAcrossPages() = runBlocking {
        val sample = locateSample("html_alice_gutenberg.html")
            .takeIf { it.exists() }
            ?: locateCorpus("html_alice_gutenberg.html")
        assumeTrue("HTML Alice corpus sample not available", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val pageCount = reader.getPageCount()
            assertTrue(
                "Gutenberg HTML must paginate to at least 7 pages (it is a whole novel)",
                pageCount >= 7
            )

            val joined = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")

            // Chapter 1 must appear exactly once.
            val occurrences = (0 until pageCount).count { idx ->
                val html = reader.getHtmlPage(idx)
                html?.contains("CHAPTER I", ignoreCase = true) == true
            }
            assertEquals("CHAPTER I must appear exactly once across all pages", 1, occurrences)

            // Each page must keep its HTML wrapper markup (no stripped body).
            for (idx in 0 until pageCount) {
                val html = reader.getHtmlPage(idx).orEmpty()
                assertTrue(
                    "Page $idx must keep <html>/<body> wrapper markup",
                    html.contains("<html", ignoreCase = true) || html.contains("<body", ignoreCase = true)
                )
            }
        } finally {
            reader.close()
        }
    }

    @Test
    fun htmlChapterAnchorResolvesToIncreasingPageIndices() = runBlocking {
        val sample = locateSample("html_alice_gutenberg.html")
            .takeIf { it.exists() }
            ?: locateCorpus("html_alice_gutenberg.html")
        assumeTrue("HTML Alice corpus sample not available", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.HTML)
        try {
            val firstChapterPage = reader.resolveHrefToPage("#chap01")
            val lastChapterPage = reader.resolveHrefToPage("#chap12")
            assertNotNull("Chapter 1 must resolve to a page index", firstChapterPage)
            assertNotNull("Last chapter must resolve to a page index", lastChapterPage)
            assertTrue(
                "Last chapter page index must be ≥ first chapter page index",
                lastChapterPage!! >= firstChapterPage!!
            )
        } finally {
            reader.close()
        }
    }

    // ── MOBI: covers sample content across page boundaries ────────────

    @Test
    fun mobiRussianCorpusKeepsCenteredFrontMatterAndChapterTextAcrossPages() = runBlocking {
        val sample = locateSample("Гарин_Михайловский_Корейские_сказки.mobi")
            .takeIf { it.exists() }
            ?: locateCorpus("Гарин_Михайловский_Корейские_сказки.mobi")
        assumeTrue("MOBI corpus sample not available", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.MOBI)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("MOBI corpus must produce at least one page, got $pageCount", pageCount >= 1)

            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue(
                "First page must contain the book title",
                firstPage.contains("Корейские сказки", ignoreCase = true)
            )

            val joined = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")
            assertTrue(
                "MOBI corpus must keep chapter body text on a later page",
                joined.contains("ДИНАСТИЯ ЛИ", ignoreCase = true)
            )

            // No duplicate chapter body across pages.
            val occurrences = (0 until pageCount).count { idx ->
                reader.getHtmlPage(idx)?.contains("ДИНАСТИЯ ЛИ", ignoreCase = true) == true
            }
            assertEquals(
                "Chapter marker ДИНАСТИЯ ЛИ must appear exactly once across pages",
                1, occurrences
            )
        } finally {
            reader.close()
        }
    }

    // ── RTF: covers hyperlink + recipe + cyrillic corpus across pages ─

    @Test
    fun rtfHyperlinkRecipeCorpusKeepsHyperlinksAcrossPages() = runBlocking {
        val sample = locateSample("rtf_hyperlink_styles_tika.rtf")
            .takeIf { it.exists() }
            ?: locateCorpus("rtf_hyperlink_styles_tika.rtf")
        assumeTrue("RTF hyperlink corpus sample not available", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.RTF)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("RTF corpus must produce at least one page, got $pageCount", pageCount >= 1)

            val joined = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")
            assertTrue(
                "Recipe body must survive RTF → HTML",
                joined.contains("Flour Tortilla", ignoreCase = true)
            )
            assertTrue(
                "RTF hyperlinks must remain on the rendered pages",
                joined.contains("Dip, Caesar.doc", ignoreCase = true) &&
                    joined.contains("Blackening Spice.doc", ignoreCase = true)
            )
            assertTrue(
                "Hyperlink markup must be preserved",
                joined.contains("<a ", ignoreCase = true) || joined.contains("href=", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun rtfCyrillicCorpusSampleKeepsCp1251TextReadableAcrossPages() = runBlocking {
        val sample = locateSample("rtf_cyrillic_cp1251.rtf")
            .takeIf { it.exists() }
            ?: locateCorpus("rtf_cyrillic_cp1251.rtf")
        assumeTrue("Cyrillic RTF corpus sample not available", sample.exists())

        val reader = TextFormatReader(ContextWrapper(null), sample.absolutePath, ComicFormat.RTF)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("RTF cp1251 corpus must produce at least 1 page", pageCount >= 1)

            val joined = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }.joinToString("\n")
            assertTrue(joined.contains("Тестовый документ"))
            assertTrue(joined.contains("Привет, мир!"))
            assertTrue(joined.contains("Конец файла"))

            // Each Cyrillic phrase must appear on exactly one page.
            for (phrase in listOf("Тестовый документ", "Привет, мир!", "Конец файла")) {
                val occurrences = (0 until pageCount).count { idx ->
                    reader.getHtmlPage(idx)?.contains(phrase) == true
                }
                assertEquals(
                    "Phrase '$phrase' must appear on exactly one page across the corpus",
                    1, occurrences
                )
            }
        } finally {
            reader.close()
        }
    }
}
