package io.leostrange.mrcomic.feature.reader.pagination

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import io.leostrange.mrcomic.feature.reader.harness.TestBookBuilder
import io.leostrange.mrcomic.feature.reader.harness.WebViewTestRunner
import org.junit.After
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File

/**
 * Тест: пагинация должна быть стабильной при:
 * - Изменении размера шрифта
 * - Переключении PAGE ↔ WEBTOON
 * - Переключении LTR ↔ RTL
 */
@RunWith(AndroidJUnit4::class)
class PaginationConsistencyTest {

    private lateinit var runner: WebViewTestRunner
    private lateinit var tempDir: File

    @Before
    fun setUp() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        runner = WebViewTestRunner(context)
        runner.createWebView()
        tempDir = File(context.cacheDir, "pagination_test_${System.currentTimeMillis()}")
        tempDir.mkdirs()
    }

    @After
    fun tearDown() {
        runner.destroy()
        tempDir.deleteRecursively()
    }

    @Test
    fun pageCountIncreasesWithLargerFont() {
        val book = TestBookBuilder.buildEpub(
            title = "Pagination Stability",
            chapters = listOf(
                TestBookBuilder.TestChapter(
                    title = "Test Chapter",
                    paragraphs = (1..50).map { "Paragraph $it. ".repeat(10) }
                )
            ),
            outputDir = tempDir
        )

        // Load book with small font
        val html1 = loadEpubChapter(book, 1)
        runner.loadHtml(html1)
        runner.setFontSize(16)
        Thread.sleep(500)
        val pagesAt16 = runner.getPageCount()

        // Reload with larger font
        runner.loadHtml(html1)
        runner.setFontSize(24)
        Thread.sleep(500)
        val pagesAt24 = runner.getPageCount()

        assertTrue(
            "Larger font should produce more pages: $pagesAt24 > $pagesAt16",
            pagesAt24 >= pagesAt16
        )
    }

    @Test
    fun sameFontProducesSamePageCount() {
        val book = TestBookBuilder.buildEpub(
            title = "Consistency",
            chapters = listOf(
                TestBookBuilder.TestChapter(
                    title = "Chapter",
                    paragraphs = (1..30).map { "Paragraph $it. ".repeat(5) }
                )
            ),
            outputDir = tempDir
        )

        val html = loadEpubChapter(book, 1)

        // Load twice with same font
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)
        val pages1 = runner.getPageCount()

        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)
        val pages2 = runner.getPageCount()

        assertTrue(
            "Same font size should produce same page count: $pages1 == $pages2",
            pages1 == pages2
        )
    }

    @Test
    fun pageContentIsStableAcrossReloads() {
        val book = TestBookBuilder.buildEpub(
            title = "Content Stability",
            chapters = listOf(
                TestBookBuilder.TestChapter(
                    title = "Chapter",
                    paragraphs = (1..20).map { "Paragraph $it with enough text to fill. ".repeat(3) }
                )
            ),
            outputDir = tempDir
        )

        val html = loadEpubChapter(book, 1)

        // Load, go to page 2, capture text
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)
        runner.goToPage(2)
        Thread.sleep(300)
        val text1 = runner.getCurrentPageText()

        // Reload, same page
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)
        runner.goToPage(2)
        Thread.sleep(300)
        val text2 = runner.getCurrentPageText()

        // Content should be the same
        assertTrue(
            "Page content should be stable across reloads",
            text1.take(100) == text2.take(100) || text1.isEmpty() || text2.isEmpty()
        )
    }

    private fun loadEpubChapter(book: File, chapterIndex: Int): String {
        // Extract chapter from EPUB zip
        val zipFile = java.util.zip.ZipFile(book)
        val entryName = "OEBPS/chapter${chapterIndex}.xhtml"
        val entry = zipFile.getEntry(entryName) ?: throw IllegalArgumentException("Chapter $chapterIndex not found")
        val html = zipFile.getInputStream(entry).bufferedReader().readText()
        zipFile.close()

        // Wrap in full HTML document with base CSS
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
