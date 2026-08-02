package io.leostrange.mrcomic.feature.reader.display

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import io.leostrange.mrcomic.feature.reader.harness.TestBookBuilder
import io.leostrange.mrcomic.feature.reader.harness.WebViewTestRunner
import org.junit.After
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File
import java.util.zip.ZipFile

/**
 * Тест: переносы и разрывы строк должны работать корректно.
 */
@RunWith(AndroidJUnit4::class)
class HyphenationAndLineBreakTest {

    private lateinit var runner: WebViewTestRunner
    private lateinit var tempDir: File

    @Before
    fun setUp() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        runner = WebViewTestRunner(context)
        runner.createWebView()
        tempDir = File(context.cacheDir, "hyphenation_test_${System.currentTimeMillis()}")
        tempDir.mkdirs()
    }

    @After
    fun tearDown() {
        if (::runner.isInitialized) runner.destroy()
        if (::tempDir.isInitialized) tempDir.deleteRecursively()
    }

    @Test
    fun longWordsDoNotOverflowContainer() {
        val book = TestBookBuilder.buildHyphenationTestBook(tempDir)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)

        // Check that no element overflows the viewport
        val overflow = runner.executeJs(
            """
            (function() {
                var body = document.body;
                return body.scrollWidth > body.clientWidth;
            })()
            """.trimIndent()
        )

        assertTrue(
            "Body should not overflow horizontally",
            overflow == "false" || overflow == "null"
        )
    }

    @Test
    fun cjkTextDoesNotUseHyphenation() {
        val book = TestBookBuilder.buildCjkBook(tempDir)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        runner.setHyphenation(true)
        Thread.sleep(500)

        val pageText = runner.getCurrentPageText()

        // CJK text should not contain hyphenation breaks
        assertFalse(
            "CJK text should not have hyphenation breaks (soft hyphens)",
            pageText.contains("\u00AD") // soft hyphen character
        )
    }

    @Test
    fun textIsReadableAtDifferentFontSizes() {
        val book = TestBookBuilder.buildEpub(
            title = "Font Size Test",
            chapters = listOf(
                TestBookBuilder.TestChapter(
                    title = "Test",
                    paragraphs = listOf(
                        "The quick brown fox jumps over the lazy dog. ".repeat(5)
                    )
                )
            ),
            outputDir = tempDir
        )

        val html = loadEpubChapter(book, 1)

        // Test at different font sizes
        for (fontSize in listOf(14, 18, 24, 32)) {
            runner.loadHtml(html)
            runner.setFontSize(fontSize)
            Thread.sleep(500)

            val text = runner.getCurrentPageText()
            assertTrue(
                "Text should be readable at font size $fontSize",
                text.isNotEmpty()
            )

            // No horizontal overflow
            val overflow = runner.executeJs(
                """
                (function() {
                    return document.body.scrollWidth > document.body.clientWidth + 10;
                })()
                """.trimIndent()
            )
            assertTrue(
                "No horizontal overflow at font size $fontSize",
                overflow == "false" || overflow == "null"
            )
        }
    }

    @Test
    fun paragraphsHaveCorrectIndent() {
        val book = TestBookBuilder.buildEpub(
            title = "Indent Test",
            chapters = listOf(
                TestBookBuilder.TestChapter(
                    title = "Test",
                    paragraphs = listOf(
                        "First paragraph.",
                        "Second paragraph.",
                        "Third paragraph."
                    )
                )
            ),
            outputDir = tempDir
        )

        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        Thread.sleep(500)

        // Check that paragraphs have text-indent
        val indent = runner.executeJs(
            """
            (function() {
                var p = document.querySelector('p');
                if (!p) return 'no_p';
                return window.getComputedStyle(p).textIndent;
            })()
            """.trimIndent()
        )

        assertTrue(
            "Paragraphs should have text-indent (got: $indent)",
            indent != "0px" && indent != "no_p"
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
            <html>
            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <style>
                    body { font-family: Georgia, serif; font-size: 18px; line-height: 1.6; margin: 0; padding: 1em; }
                    h1 { font-size: 1.5em; text-align: center; }
                    p { text-indent: 1.5em; margin: 0.5em 0; }
                </style>
            </head>
            $html
            </html>
        """.trimIndent()
    }
}
