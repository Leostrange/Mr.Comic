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
import com.example.engine.formats.text.MobiFormatReader
import com.example.engine.formats.text.RtfFormatReader
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
            assertTrue("Expected archived HTML book content, got $pageCount fragments", pageCount > 1)
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
            assertTrue("Expected archived TXT book content, got $pageCount fragments", pageCount > 1)
            val firstPages = (0 until minOf(3, pageCount))
                .map { index -> reader.getHtmlPage(index).orEmpty() }
                .joinToString("\n")
            assertTrue("Expected readable Cyrillic text from archived TXT", firstPages.contains("Мопассан"))
            assertFalse("Expected UTF-8 text not mojibake", firstPages.hasCommonMojibake())
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
            assertTrue("Expected EPUB content fragments, got $pageCount", pageCount > 1)
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
                "Expected EPUB backend fragments to remain bounded, got max visible fragment length $maxVisiblePageLength",
                maxVisiblePageLength < 65_000
            )
            assertFalse("Expected EPUB text not mojibake", fullText.hasCommonMojibake())
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
            assertTrue("Expected MOBI content fragments, got $pageCount", pageCount > 1)
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
                "Expected MOBI backend fragments to remain bounded, got max visible fragment length $maxVisiblePageLength",
                maxVisiblePageLength < 65_000
            )
            assertFalse("Expected MOBI text not mojibake", fullText.hasCommonMojibake())
        } finally {
            reader.close()
        }
    }

    @Test
    fun podSolntsemStandaloneMobiReaderHasManyReadablePages() = runBlocking {
        val sample = locateRootSample("Под солнцем_868805.mobi")
        val reader = MobiFormatReader(testContext, sample.absolutePath, ComicFormat.MOBI)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected standalone MOBI content fragments, got $pageCount", pageCount > 1)
            val firstPages = (0 until minOf(4, pageCount))
                .map { index -> reader.getHtmlPage(index).orEmpty() }
                .joinToString("\n")
            assertTrue(
                "Expected standalone MOBI Cyrillic title/author text",
                firstPages.contains("Мопассан") || firstPages.contains("Под солнцем")
            )
            assertFalse("Expected standalone MOBI text not mojibake", firstPages.hasCommonMojibake())
        } finally {
            reader.close()
        }
    }

    @Test
    fun podSolntsemRtfHasReadableCyrillicWithoutMojibake() = runBlocking {
        val sample = locateRootSample("Под солнцем_868805.rtf")
        val reader = RtfFormatReader(testContext, sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected RTF content fragments, got $pageCount", pageCount > 1)
            val fullText = (0 until pageCount)
                .map { index -> reader.getHtmlPage(index).orEmpty().visibleText() }
                .joinToString("\n")
            assertTrue("Expected RTF Cyrillic title/author text", fullText.contains("Мопассан") || fullText.contains("Под солнцем"))
            assertTrue(
                "Expected RTF late-book text to be present, not skipped",
                fullText.contains("коренное население постепенно исчезнет")
            )
            assertFalse("Expected RTF text not mojibake", fullText.hasCommonMojibake())
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
            assertTrue("Expected DjVu pages, got $pageCount", pageCount > 1)
            val metadata = reader.getMetadata()
            assertTrue(
                "Expected DjVu fixed-page raster contract, got $metadata",
                metadata["documentKind"] == "fixed-page" && metadata["pageModel"] == "raster"
            )
            assertTrue(
                "Expected DjVu composite diagnostics, got $metadata",
                metadata["nativeRendererRequired"] == "true" ||
                    metadata["unsupportedRenderFeatures"]?.contains("JB2 mask") == true
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
            val referenceCandidate = File(current, "reference/formats/samples/$name")
            if (referenceCandidate.exists()) return referenceCandidate
            current = current.parentFile ?: return@repeat
        }
        error("Missing root reader sample: $name")
    }

    private fun String.visibleText(): String = this
        .replace(Regex("(?is)<style\\b[^>]*>.*?</style>"), " ")
        .replace(Regex("(?is)<script\\b[^>]*>.*?</script>"), " ")
        .replace(Regex("<[^>]+>"), " ")
        .replace(Regex("\\s+"), " ")

    private fun String.hasCommonMojibake(): Boolean =
        contains("РњРѕРї") ||
            contains("Ð") ||
            contains("Ã") ||
            Regex("[\u0402\u0403\u0409\u040A\u040B\u040C\u040F\u0452\u0453\u0459\u045A\u045B\u045C\u045F]")
                .containsMatchIn(this)

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
