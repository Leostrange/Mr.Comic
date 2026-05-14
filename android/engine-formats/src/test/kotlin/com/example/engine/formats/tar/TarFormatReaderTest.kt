package com.example.engine.formats.tar

import android.content.ContextWrapper
import android.graphics.Bitmap
import com.example.engine.formats.base.BitmapAllocator
import com.example.engine.formats.base.RenderDeviceProfile
import com.example.engine.formats.base.RenderDeviceTier
import kotlinx.coroutines.runBlocking
import org.apache.commons.compress.archivers.tar.TarArchiveEntry
import org.apache.commons.compress.archivers.tar.TarArchiveOutputStream
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class TarFormatReaderTest {

    @Test
    fun singleBookTarDelegatesToNestedTextReader() = runBlocking {
        val sample = File.createTempFile("mrcomic-single-book", ".tar").apply {
            outputStream().use { fileOut ->
                TarArchiveOutputStream(fileOut).use { tar ->
                    tar.addBytes("cover.jpg", byteArrayOf(0x00, 0x01, 0x02))
                    tar.addBytes("nested/book.txt", "Hello from nested TAR book".encodeToByteArray())
                }
            }
            deleteOnExit()
        }
        val reader = TarFormatReader(
            context = ContextWrapper(null),
            path = sample.absolutePath,
            deviceProfile = testProfile,
            bitmapAllocator = throwingBitmapAllocator
        )

        try {
            assertEquals(1, reader.getPageCount())
            assertTrue(reader.getHtmlPage(0).orEmpty().contains("Hello from nested TAR book"))
        } finally {
            reader.close()
            sample.delete()
        }
    }

    private fun TarArchiveOutputStream.addBytes(name: String, bytes: ByteArray) {
        val entry = TarArchiveEntry(name).apply {
            size = bytes.size.toLong()
        }
        putArchiveEntry(entry)
        write(bytes)
        closeArchiveEntry()
    }

    private val testProfile = RenderDeviceProfile(
        tier = RenderDeviceTier.MID_RANGE,
        defaultPreloadPages = 1,
        maxPreloadPages = 1,
        preloadBehindPages = 0,
        memoryCacheFractionDivisor = 16,
        bitmapPoolEntries = 0,
        imageDecodeBoost = 1.0f,
        imageTargetLongEdgePx = 1200,
        imageMaxPixels = 2_000_000L,
        imagePreferredConfig = Bitmap.Config.ARGB_8888,
        pdfViewportMultiplier = 1.0f,
        pdfMaxScale = 1.0f,
        pdfMaxRenderPixels = 2_000_000L,
        disableAnimations = true
    )

    private val throwingBitmapAllocator = object : BitmapAllocator {
        override fun acquire(width: Int, height: Int, config: Bitmap.Config): Bitmap {
            error("Bitmap allocator should not be used for nested text TAR")
        }

        override fun release(bitmap: Bitmap) = Unit
    }
}
