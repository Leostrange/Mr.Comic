package com.example.engine.formats

import android.content.ContextWrapper
import android.graphics.Bitmap
import com.example.core.model.ComicFormat
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.RenderDeviceTier
import com.example.engine.formats.djvu.DjvuFormatReader
import com.example.engine.formats.djvu.StructuredDjvuBackend
import com.example.engine.formats.epub.EpubFormatReader
import com.example.engine.formats.text.TextFormatReader
import com.example.engine.formats.zip.ZipFormatReader
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class RootReaderSampleRegressionTest {

    @Test
    fun podSolntsemHtmlZipOpensAsBookNotCoverOnly() = runBlocking {
        val sample = locateRootSample("Под солнцем_868805.html.zip")
        val reader = ZipFormatReader(testContext, sample.absolutePath, testProfile, throwingAllocator)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected archived HTML book pages, got $pageCount", pageCount > 20)
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue("Expected text HTML page from ZIP", firstPage.contains("Мопассан") || firstPage.contains("Под солнцем"))
            assertFalse("ZIP should not render only cover bitmap", firstPage.contains("Unable to read file"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun podSolntsemTxtZipOpensAsReadableTextBook() = runBlocking {
        val sample = locateRootSample("Под солнцем_868805.txt.zip")
        val reader = ZipFormatReader(testContext, sample.absolutePath, testProfile, throwingAllocator)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected archived TXT book pages, got $pageCount", pageCount > 20)
            val firstPages = (0 until minOf(3, pageCount))
                .map { index -> reader.getHtmlPage(index).orEmpty() }
                .joinToString("\n")
            assertTrue("Expected readable Cyrillic text from archived TXT", firstPages.contains("Мопассан"))
            assertFalse("Expected UTF-8 text not mojibake", firstPages.contains("РњРѕРї"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun podSolntsemEpubHasManyReadablePages() = runBlocking {
        val sample = locateRootSample("Под солнцем_868805.epub")
        val reader = EpubFormatReader(testContext, sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 20)
            val firstPages = (0 until minOf(4, pageCount))
                .map { index -> reader.getHtmlPage(index).orEmpty() }
                .joinToString("\n")
            val maxVisiblePageLength = (0 until minOf(pageCount, 12))
                .maxOf { index -> reader.getHtmlPage(index).orEmpty().visibleText().length }
            val fullText = (0 until pageCount)
                .map { index -> reader.getHtmlPage(index).orEmpty().visibleText() }
                .joinToString("\n")
            assertTrue("Expected EPUB Cyrillic title/author text", firstPages.contains("Мопассан") || firstPages.contains("Под солнцем"))
            assertTrue(
                "Expected EPUB late-book text to be present, not truncated",
                fullText.contains("коренное население постепенно исчезнет")
            )
            assertTrue(
                "Expected EPUB reader pagination to avoid oversized text pages, got max visible page length $maxVisiblePageLength",
                maxVisiblePageLength < 5000
            )
            assertFalse("Expected EPUB text not mojibake", firstPages.contains("РњРѕРї"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun podSolntsemMobiHasManyReadablePages() = runBlocking {
        val sample = locateRootSample("Под солнцем_868805.mobi")
        val reader = TextFormatReader(testContext, sample.absolutePath, ComicFormat.MOBI)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected MOBI pages, got $pageCount", pageCount > 20)
            val firstPages = (0 until minOf(4, pageCount))
                .map { index -> reader.getHtmlPage(index).orEmpty() }
                .joinToString("\n")
            val maxVisiblePageLength = (0 until minOf(pageCount, 12))
                .maxOf { index -> reader.getHtmlPage(index).orEmpty().visibleText().length }
            val fullText = (0 until pageCount)
                .map { index -> reader.getHtmlPage(index).orEmpty().visibleText() }
                .joinToString("\n")
            assertTrue("Expected MOBI Cyrillic title/author text", firstPages.contains("Мопассан") || firstPages.contains("Под солнцем"))
            assertTrue(
                "Expected MOBI late-book text to be present, not truncated",
                fullText.contains("коренное население постепенно исчезнет")
            )
            assertTrue(
                "Expected MOBI reader pagination to avoid oversized text pages, got max visible page length $maxVisiblePageLength",
                maxVisiblePageLength < 5000
            )
            assertFalse("Expected MOBI text not mojibake", firstPages.contains("РњРѕРї"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun sampleDjvuProducesReaderContent() = runBlocking {
        val sample = locateRootSample("novaya_teoriya_razvitiya_obshchestva_bez_oshibok_marksa_i_le.djvu")
        val reader = DjvuFormatReader(testContext, sample.absolutePath, StructuredDjvuBackend(testContext))
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected DjVu pages, got $pageCount", pageCount >= 1)
            val firstPage = reader.getHtmlPage(0).orEmpty()
            assertTrue(
                "Expected DjVu visual/scanned-page presentation, not plain OCR text",
                firstPage.contains("графическая композиция", ignoreCase = true) ||
                    firstPage.contains("DjVu scan layer", ignoreCase = true) ||
                    firstPage.contains("<img", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    private fun locateRootSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(8) {
            val candidate = File(current, name)
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        error("Missing root reader sample: $name")
    }

    private fun String.visibleText(): String = this
        .replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
        .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
        .replace(Regex("<[^>]+>"), " ")
        .replace(Regex("\\s+"), " ")

    private companion object {
        val testContext = ContextWrapper(null)
        val testProfile = RenderDeviceProfile(
            tier = RenderDeviceTier.MID_RANGE,
            defaultPreloadPages = 3,
            maxPreloadPages = 4,
            preloadBehindPages = 1,
            memoryCacheFractionDivisor = 12,
            bitmapPoolEntries = 0,
            imageDecodeBoost = 1.0f,
            imageTargetLongEdgePx = 1600,
            imageMaxPixels = 4_000_000,
            imagePreferredConfig = Bitmap.Config.ARGB_8888,
            pdfViewportMultiplier = 1.0f,
            pdfMaxScale = 1.0f,
            pdfMaxRenderPixels = 4_000_000,
            disableAnimations = false
        )
        val throwingAllocator = object : BitmapAllocator {
            override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap {
                error("Bitmap allocation is not expected in text archive regression tests")
            }

            override fun release(bitmap: Bitmap) = Unit
        }
    }
}
