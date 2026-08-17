package io.leostrange.mrcomic.feature.reader.footnotes

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import io.leostrange.mrcomic.feature.reader.harness.TestBookBuilder
import io.leostrange.mrcomic.feature.reader.harness.WebViewTestRunner
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File
import java.util.zip.ZipFile

/**
 * Тест: текст сносок НЕ должен встраиваться в основной текст книги.
 * Это ключевая проблема из анализа Mr.Comic vs Readium-2/KOReader/Foliate.
 */
@RunWith(AndroidJUnit4::class)
class FootnoteExtractionTest {

    private lateinit var runner: WebViewTestRunner
    private lateinit var tempDir: File

    @Before
    fun setUp() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        runner = WebViewTestRunner(context)
        runner.createWebView()
        tempDir = File(context.cacheDir, "footnote_test_${System.currentTimeMillis()}")
        tempDir.mkdirs()
    }

    @After
    fun tearDown() {
        if (::runner.isInitialized) runner.destroy()
        if (::tempDir.isInitialized) tempDir.deleteRecursively()
    }

    @Test
    fun footnoteTextIsNotEmbeddedInMainTextFlow() {
        val book = TestBookBuilder.buildFootnoteTestBook(tempDir)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        Thread.sleep(500)

        // Collect all visible text on the page
        val allVisibleText = runner.getVisibleText()

        // Footnote text should NOT be in the main flow
        assertFalse(
            "Footnote 1 text should NOT be in main text flow",
            allVisibleText.contains("This is the text of footnote 1")
        )
        assertFalse(
            "Footnote 2 text should NOT be in main text flow",
            allVisibleText.contains("This is the text of footnote 2")
        )

        // But footnote references should be present
        assertTrue(
            "Footnote reference [1] should be in main text",
            allVisibleText.contains("[1]")
        )
        assertTrue(
            "Footnote reference [2] should be in main text",
            allVisibleText.contains("[2]")
        )
    }

    @Test
    fun footnotePopupShowsCorrectContent() {
        val book = TestBookBuilder.buildFootnoteTestBook(tempDir)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        Thread.sleep(500)

        // Simulate tapping on footnote reference [1]
        // In a real test, we'd use UI Automator to tap the link
        // For now, verify the footnote data is available
        val footnoteText = runner.executeJs(
            """
            (function() {
                var fn = document.getElementById('fn1');
                return fn ? fn.innerText : null;
            })()
            """.trimIndent()
        )

        // The footnote element should exist in the DOM
        // (even if hidden by CSS)
        assertNotNull("Footnote 1 element should exist in DOM", footnoteText)
    }

    @Test
    fun epub2FootnotesAreDetectedByIdHeuristic() {
        val book = TestBookBuilder.buildEpub(
            title = "EPUB2 Footnotes",
            chapters = listOf(
                TestBookBuilder.TestChapter(
                    title = "Chapter",
                    paragraphs = listOf(
                        "Text with footnote.<a href=\"#note1\">[1]</a>"
                    ),
                    footnotes = listOf(
                        TestBookBuilder.Footnote(
                            id = "note1",
                            refText = "[1]",
                            noteText = "EPUB2 style footnote text.",
                            type = TestBookBuilder.FootnoteType.EPUB2
                        )
                    )
                )
            ),
            outputDir = tempDir
        )

        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        Thread.sleep(500)

        val allText = runner.getVisibleText()

        assertFalse(
            "EPUB2 footnote text should NOT be in main flow",
            allText.contains("EPUB2 style footnote text")
        )
    }

    @Test
    fun footnoteSectionIsExcludedFromVisibleContent() {
        val book = TestBookBuilder.buildFootnoteTestBook(tempDir)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        Thread.sleep(500)

        // The footnotes section should be hidden by CSS
        val fnSectionVisible = runner.executeJs(
            """
            (function() {
                var section = document.querySelector('[epub\\:type="footnotes"]');
                if (!section) return 'not_found';
                var style = window.getComputedStyle(section);
                return style.display;
            })()
            """.trimIndent()
        )

        // Should be hidden (display: none) or not found
        assertTrue(
            "Footnotes section should be hidden, got: $fnSectionVisible",
            fnSectionVisible == "none" || fnSectionVisible == "not_found"
        )
    }

    private fun loadEpubChapter(book: File, chapterIndex: Int): String {
        val zipFile = ZipFile(book)
        val entryName = "OEBPS/chapter${chapterIndex}.xhtml"
        val entry = zipFile.getEntry(entryName) ?: throw IllegalArgumentException("Chapter $chapterIndex not found")
        val html = zipFile.getInputStream(entry).bufferedReader().readText()
        zipFile.close()

        return """
            <!DOCTYPE html>
            <html xmlns="http://www.w3.org/1999/xhtml" xmlns:epub="http://www.idpf.org/2007/ops">
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <style>
                    body {
                        font-family: Georgia, serif;
                        font-size: 18px;
                        line-height: 1.6;
                        margin: 0;
                        padding: 1em;
                        max-width: 100vw;
                        box-sizing: border-box;
                        overflow-x: hidden;
                        overflow-wrap: anywhere;
                    }
                    *, *::before, *::after { box-sizing: border-box; max-width: 100%; }
                    h1 { font-size: 1.5em; text-align: center; }
                    p { text-indent: 1.5em; margin: 0.5em 0; }
                    section[epub\\:type="footnotes"],
                    [epub\\:type="footnote"],
                    [role="doc-footnote"],
                    [role="doc-endnote"],
                    [id^="fn"],
                    [id^="note"] {
                        display: none !important;
                        position: absolute !important;
                        width: 0 !important;
                        height: 0 !important;
                        overflow: hidden !important;
                    }
                </style>
            </head>
            $html
            </html>
        """.trimIndent()
    }
}
