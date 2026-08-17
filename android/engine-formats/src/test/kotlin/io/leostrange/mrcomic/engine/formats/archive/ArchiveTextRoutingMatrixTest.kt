package io.leostrange.mrcomic.engine.formats.archive

import android.content.ContextWrapper
import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.engine.formats.base.BitmapAllocator
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceProfile
import io.leostrange.mrcomic.engine.formats.base.RenderDeviceTier
import java.io.File
import java.nio.file.Files
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Ignore
import org.junit.Test

/**
 * Comprehensive matrix for archive → content-format routing.
 *
 * The reader splits archives into two campers:
 *   (1) text container (epub/fb2/mobi/docx/rtf/odt/md/html/txt/...)
 *   (2) raster sequence (cbz/cbr/7z/tar where the archive IS the book)
 *
 * The bug we want to expose: a ZIP containing a single text file plus a few
 * "page001.jpg" plates must render the text, not fall through to the rasters.
 * A black screen at the reader surface was traced back to a misclassification
 * where the plate images hijacked the archive even though the text file was
 * clearly the dominant content.
 */
class ArchiveTextRoutingMatrixTest {

    // ── Pure classification tests (cheap, no files) ────────────────────

    @Test
    fun fb2AloneIsSingleBook() {
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(listOf("book.fb2"))
        )
    }

    @Test
    fun epubWithNumberedPlatesIsSingleBook() {
        val entries = (1..30).map { "%03d.jpg".format(it) } + "book.epub"
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun fb2WithCoverAndReadmeIsSingleBook() {
        val entries = listOf("book.fb2", "cover.jpg", "readme.txt")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    // BUG-CAPTURE: the next three tests are expected to FAIL on current production
    // code because ArchiveFormatSupport.bookPrimaryFormats is missing md/html/txt.
    // They pin the spec that book.md + numbered plates (and the html/txt
    // equivalents) must classify as a SINGLE_BOOK, not a raster fallback that
    // showed a black screen to the user.

    @Test
    fun markdownWithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.md", "001.jpg", "002.jpg", "003.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun htmlWithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.html", "001.jpg", "002.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun xhtmlWithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.xhtml", "001.jpg", "002.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun txtWithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.txt", "001.jpg", "002.jpg", "003.jpg", "004.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun rtfWithNumberedPlatesIsSingleBook() {
        // RTF is in bookPrimaryFormats so this case already works; pin it down
        // so future refactors don't regress the path.
        val entries = listOf("book.rtf", "plate01.jpg", "plate02.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun docxWithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.docx", "001.jpg", "002.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun mobiWithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.mobi", "001.jpg", "002.jpg", "003.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun azw3WithNumberedPlatesIsSingleBook() {
        val entries = listOf("book.azw3", "cover.jpg", "001.jpg", "002.jpg")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun odtWithOneImageIsSingleBook() {
        val entries = listOf("book.odt", "plate.png")
        assertEquals(
            ArchiveContentKind.SINGLE_BOOK,
            ArchiveFormatSupport.classify(entries)
        )
    }

    @Test
    fun imageOnlyArchiveIsImageSequence() {
        // Sanity check: an archive that has no text at all must stay a comic
        // so that we don't accidentally treat it as a book.
        val entries = (1..12).map { "page%02d.png".format(it) }
        assertEquals(
            ArchiveContentKind.IMAGE_SEQUENCE,
            ArchiveFormatSupport.classify(entries)
        )
    }

    // ── Resolution: the inner text file the reader must extract ───────

    @Test
    fun resolveSelectsInnerTextEntryWhenClassifiedAsSingleBook() {
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
            listOf("001.jpg", "002.jpg", "book.md")
        )
        assertEquals("book.md must be picked over the image plates", "book.md", resolved.entryName)
        assertEquals(ComicFormat.MARKDOWN, resolved.format)
        assertTrue(resolved.format!!.isTextReadingFormat())
    }

    @Test
    fun resolveSelectsInnerHtmlEntryWhenClassifiedAsSingleBook() {
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
            listOf("001.jpg", "002.jpg", "book.html")
        )
        assertEquals("book.html", resolved.entryName)
        assertEquals(ComicFormat.HTML, resolved.format)
        assertTrue(resolved.format!!.isTextReadingFormat())
    }

    @Test
    fun resolveSelectsFb2OverAuxiliaryReadme() {
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
            listOf("book.fb2", "cover.jpg", "readme.txt")
        )
        assertEquals("book.fb2", resolved.entryName)
        assertEquals(ComicFormat.FB2, resolved.format)
    }

    @Test
    fun resolveForPureImageArchiveReturnsEmptyFormat() {
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
            (1..6).map { "%03d.jpg".format(it) }
        )
        assertNull("Pure raster archives must not get a text format", resolved.format)
    }

    // ── End-to-end delegate: real archive → text-format reader ────────

    // BUG-CAPTURE: end-to-end regression for the ".md inside a ZIP" black screen.
    @Test
    fun zipWithSingleMdAndTwoPlatesRendersAsTextArchive() = runBlocking {
        val cacheDir = Files.createTempDirectory("md_in_zip_").toFile()
        val zipFile = File.createTempFile("md_book_", ".zip")
        createZip(
            zipFile,
            listOf(
                Pair("book.md", "# Long Book\n\n" + "Paragraph. ".repeat(400)),
                Pair("001.jpg", ""),
                Pair("002.jpg", "")
            )
        )

        try {
            val reader = ArchiveDelegatingFormatReader(
                context = TestContext(cacheDir),
                path = zipFile.absolutePath,
                archiveFormat = ComicFormat.ZIP,
                deviceProfile = testRenderDeviceProfile(),
                bitmapAllocator = UnusedBitmapAllocator,
                epubStructureCache = null,
                epubManifestCache = null
            )

            try {
                assertTrue(
                    "Archive with single .md must render as text — bitmap fallback was the reported black-screen bug",
                    reader.rendersHtmlContent()
                )
                assertEquals(ComicFormat.MARKDOWN, reader.resolvedContentFormat())
                assertEquals(
                    "archive-text",
                    reader.getMetadata()["resolvedContainer"]
                )
                assertEquals(
                    ComicFormat.MARKDOWN.name,
                    reader.getMetadata()["innerArchiveFormat"]
                )
                val pageCount = reader.getPageCount()
                assertTrue("Markdown book must produce ≥1 page, got $pageCount", pageCount >= 1)
                val html = reader.getHtmlPage(0)
                assertNotNull(html)
                assertTrue(html!!.contains("Long Book", ignoreCase = true))
            } finally {
                reader.close()
            }
        } finally {
            runCatching { zipFile.delete() }
            runCatching { cacheDir.deleteRecursively() }
        }
    }

    // This end-to-end test exercises Fb2FormatReader which depends on
    // android.util.Xml.newPullParser(). In JVM unit tests (testDebugUnitTest)
    // the module sets isReturnDefaultValues=true, so XmlPullParser returns
    // mock defaults and never parses the synthetic FB2 content, causing
    // getPageCount() to return 0.
    //
    // The classification logic is already covered by the pure unit tests
    // above (fb2WithCoverAndReadmeIsSingleBook, etc.). This test should run
    // as an Android instrumentation test or with Robolectric.
    @Ignore("Requires real Android XmlPullParser — Fb2FormatReader uses android.util.Xml")
    @Test
    fun zipWithFb2CoverAndReadmeRendersFb2NotRasters() = runBlocking {
        val cacheDir = Files.createTempDirectory("fb2_zip_").toFile()
        val zipFile = File.createTempFile("fb2_book_", ".zip")
        createZip(
            zipFile,
            listOf(
                Pair("book.fb2", fb2LikeContent("Long FB2 Chapter", 200)),
                Pair("cover.jpg", ""),
                Pair("readme.txt", "Hello readme")
            )
        )

        try {
            val reader = ArchiveDelegatingFormatReader(
                context = TestContext(cacheDir),
                path = zipFile.absolutePath,
                archiveFormat = ComicFormat.ZIP,
                deviceProfile = testRenderDeviceProfile(),
                bitmapAllocator = UnusedBitmapAllocator,
                epubStructureCache = null,
                epubManifestCache = null
            )

            try {
                assertTrue(reader.rendersHtmlContent())
                assertEquals(ComicFormat.FB2, reader.resolvedContentFormat())
                val pageCount = reader.getPageCount()
                assertTrue(pageCount >= 1)
            } finally {
                reader.close()
            }
        } finally {
            runCatching { zipFile.delete() }
            runCatching { cacheDir.deleteRecursively() }
        }
    }

    @Test
    fun zipWithTxtAndOneCoverImageRendersAsTextArchive() = runBlocking {
        val cacheDir = Files.createTempDirectory("txt_zip_").toFile()
        val zipFile = File.createTempFile("txt_book_", ".zip")
        createZip(
            zipFile,
            listOf(
                Pair("book.txt", "Chapter 1\n\n" + "Paragraph. ".repeat(150)),
                Pair("cover.jpg", "")
            )
        )

        try {
            val reader = ArchiveDelegatingFormatReader(
                context = TestContext(cacheDir),
                path = zipFile.absolutePath,
                archiveFormat = ComicFormat.ZIP,
                deviceProfile = testRenderDeviceProfile(),
                bitmapAllocator = UnusedBitmapAllocator,
                epubStructureCache = null,
                epubManifestCache = null
            )

            try {
                assertTrue(reader.rendersHtmlContent())
                assertEquals(ComicFormat.TXT, reader.resolvedContentFormat())
                val pageCount = reader.getPageCount()
                assertTrue(pageCount >= 1)
                val html = reader.getHtmlPage(0)
                assertNotNull(html)
                assertTrue(html!!.contains("Chapter 1", ignoreCase = true))
            } finally {
                reader.close()
            }
        } finally {
            runCatching { zipFile.delete() }
            runCatching { cacheDir.deleteRecursively() }
        }
    }

    @Test
    fun zipWithOnlyImagesStaysAsRasterArchive() = runBlocking {
        val cacheDir = Files.createTempDirectory("raster_zip_").toFile()
        val zipFile = File.createTempFile("raster_", ".zip")
        createZip(
            zipFile,
            listOf(
                Pair("001.jpg", minimalJpeg()),
                Pair("002.jpg", minimalJpeg())
            )
        )

        try {
            val reader = ArchiveDelegatingFormatReader(
                context = TestContext(cacheDir),
                path = zipFile.absolutePath,
                archiveFormat = ComicFormat.ZIP,
                deviceProfile = testRenderDeviceProfile(),
                bitmapAllocator = UnusedBitmapAllocator,
                epubStructureCache = null,
                epubManifestCache = null
            )

            try {
                assertEquals(
                    "Pure-raster archives must surface archive-raster in metadata",
                    "archive-raster",
                    reader.getMetadata()["resolvedContainer"]
                )
            } finally {
                reader.close()
            }
        } finally {
            runCatching { zipFile.delete() }
            runCatching { cacheDir.deleteRecursively() }
        }
    }

    // ── Helpers ────────────────────────────────────────────────────────

    private fun createZip(target: File, entries: List<Pair<String, String>>) {
        ZipOutputStream(target.outputStream()).use { zip ->
            entries.forEach { (name, body) ->
                zip.putNextEntry(ZipEntry(name))
                zip.write(body.toByteArray(Charsets.UTF_8))
                zip.closeEntry()
            }
        }
    }

    private fun minimalJpeg(): String {
        // Non-empty bytestream — actual decode is irrelevant, the ZIP path
        // does not need to crack a real image to test class routing.
        return String(
            byteArrayOf(
                0xFF.toByte(), 0xD8.toByte(), 0xFF.toByte(), 0xE0.toByte(),
                0x00, 0x10, 0x4A, 0x46, 0x49, 0x46, 0x00,
                0x01, 0x01, 0x00, 0x00, 0x01, 0x00, 0x01, 0x00, 0x00,
                0xFF.toByte(), 0xD9.toByte()
            ),
            Charsets.ISO_8859_1
        )
    }

    private fun fb2LikeContent(title: String, paragraphs: Int): String = buildString {
        append("<FictionBook xmlns=\"http://www.gribuser.ru/xml/fictionbook/2.0\">")
        append("<description><title-info><title>$title</title></title-info></description>")
        append("<body><title>$title</title>")
        repeat(paragraphs) {
            append("<p>Para-${it.toString().padStart(4, '0')}: ${"Sentence. ".repeat(8)}</p>")
        }
        append("</body></FictionBook>")
    }

    private class TestContext(private val cache: File) : ContextWrapper(null) {
        override fun getCacheDir(): File = cache
    }

    private object UnusedBitmapAllocator : BitmapAllocator {
        override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap =
            error("Bitmap allocation is not expected for text-routing archive tests")

        override fun release(bitmap: Bitmap) = Unit
    }

    private fun testRenderDeviceProfile(): RenderDeviceProfile = RenderDeviceProfile(
        tier = RenderDeviceTier.MID_RANGE,
        defaultPreloadPages = 2,
        maxPreloadPages = 3,
        preloadBehindPages = 1,
        memoryCacheFractionDivisor = 12,
        bitmapPoolEntries = 4,
        imageDecodeBoost = 1.0f,
        imageTargetLongEdgePx = 1600,
        imageMaxPixels = 4_000_000L,
        imagePreferredConfig = Bitmap.Config.ARGB_8888,
        pdfViewportMultiplier = 1.0f,
        pdfMaxScale = 2.0f,
        pdfMaxRenderPixels = 4_000_000L,
        disableAnimations = false
    )
}
