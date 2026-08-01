package io.leostrange.mrcomic.engine.formats.archive

import android.content.ContextWrapper
import android.graphics.Bitmap
import io.leostrange.mrcomic.core.model.ComicFormat
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
import org.junit.Assert.assertTrue
import org.junit.Test

class ArchiveDelegatingFormatReaderTest {

    @Test
    fun zipWithSingleTxtBookRendersAsTextArchive() = runBlocking {
        val cacheDir = Files.createTempDirectory("archive_text_cache_test_").toFile()
        val zipFile = File.createTempFile("archive_text_book_", ".zip")
        createZip(zipFile, "books/story.txt", "Chapter One\n\nArchived text stays readable.")

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
            assertEquals(1, reader.getPageCount())

            val html = reader.getHtmlPage(0)
            assertNotNull(html)
            assertTrue(html!!.contains("Archived text stays readable."))

            val metadata = reader.getMetadata()
            assertEquals("archive-text", metadata["resolvedContainer"])
            assertEquals(ComicFormat.TXT.name, metadata["innerArchiveFormat"])
        } finally {
            reader.close()
            runCatching { zipFile.delete() }
            runCatching { cacheDir.deleteRecursively() }
        }
    }

    private fun createZip(target: File, entryName: String, content: String) {
        ZipOutputStream(target.outputStream()).use { zip ->
            zip.putNextEntry(ZipEntry(entryName))
            zip.write(content.toByteArray(Charsets.UTF_8))
            zip.closeEntry()
        }
    }

    private class TestContext(private val cache: File) : ContextWrapper(null) {
        override fun getCacheDir(): File = cache
    }

    private object UnusedBitmapAllocator : BitmapAllocator {
        override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap =
            error("Bitmap allocation is not expected for text archive tests")

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
