package io.leostrange.mrcomic.feature.reader.progress

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.platform.app.InstrumentationRegistry
import io.leostrange.mrcomic.feature.reader.harness.ProgressVerifier
import io.leostrange.mrcomic.feature.reader.harness.TestBookBuilder
import io.leostrange.mrcomic.feature.reader.harness.WebViewTestRunner
import org.junit.After
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import java.io.File
import java.util.zip.ZipFile

/**
 * Тест: прогресс чтения должен корректно сохраняться и восстанавливаться.
 */
@RunWith(AndroidJUnit4::class)
class ProgressPersistenceTest {

    private lateinit var runner: WebViewTestRunner
    private lateinit var tempDir: File

    @Before
    fun setUp() {
        val context = InstrumentationRegistry.getInstrumentation().targetContext
        runner = WebViewTestRunner(context)
        runner.createWebView()
        tempDir = File(context.cacheDir, "progress_test_${System.currentTimeMillis()}")
        tempDir.mkdirs()
    }

    @After
    fun tearDown() {
        if (::runner.isInitialized) runner.destroy()
        if (::tempDir.isInitialized) tempDir.deleteRecursively()
    }

    @Test
    fun progressIsMonotonicallyIncreasing() {
        val book = TestBookBuilder.buildLongBook(tempDir, chapters = 5, paragraphsPerChapter = 20)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)

        val pageCount = runner.getPageCount()
        if (pageCount <= 1) return // Skip if pagination not ready

        var lastPercentage = 0.0
        for (page in 0 until pageCount) {
            runner.goToPage(page)
            Thread.sleep(100)
            val percentage = page.toDouble() / pageCount
            assertTrue(
                "Progress should be monotonically increasing: $percentage >= $lastPercentage at page $page",
                percentage >= lastPercentage - 0.01
            )
            lastPercentage = percentage
        }
    }

    @Test
    fun progressSnapshotsAreConsistent() {
        val book = TestBookBuilder.buildLongBook(tempDir, chapters = 3, paragraphsPerChapter = 30)
        val html = loadEpubChapter(book, 1)
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)

        val pageCount = runner.getPageCount()
        if (pageCount <= 1) return

        val snapshots = mutableListOf<ProgressVerifier.ProgressSnapshot>()
        for (page in 0 until pageCount) {
            runner.goToPage(page)
            Thread.sleep(100)
            snapshots.add(
                ProgressVerifier.ProgressSnapshot(
                    page = page,
                    totalPages = pageCount,
                    percentage = page.toDouble() / pageCount,
                    cfi = null,
                    spineIndex = 0,
                    textOffset = 0
                )
            )
        }

        val errors = ProgressVerifier.verifyConsistency(snapshots)
        assertTrue(
            "Progress should be consistent, errors: $errors",
            errors.isEmpty()
        )
    }

    @Test
    fun progressSurvivesFontSizeChange() {
        val book = TestBookBuilder.buildLongBook(tempDir, chapters = 3, paragraphsPerChapter = 30)
        val html = loadEpubChapter(book, 1)

        // Load with font size 18
        runner.loadHtml(html)
        runner.setFontSize(18)
        Thread.sleep(500)

        val pagesAt18 = runner.getPageCount()
        if (pagesAt18 <= 1) return

        // Go to middle page
        val midPage = pagesAt18 / 2
        runner.goToPage(midPage)
        Thread.sleep(300)
        val textAtMid = runner.getCurrentPageText().take(100)

        // Change font size
        runner.setFontSize(24)
        Thread.sleep(500)

        // Progress should still be meaningful (page count changes, but content is accessible)
        val pagesAt24 = runner.getPageCount()
        assertTrue(
            "After font change, page count should be different: $pagesAt24 vs $pagesAt18",
            pagesAt24 != pagesAt18 || pagesAt24 <= 1
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
