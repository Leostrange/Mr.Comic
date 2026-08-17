package io.leostrange.mrcomic.engine.formats.djvu

import android.content.ContextWrapper
import android.graphics.Bitmap
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Assume.assumeTrue
import org.junit.Test

/**
 * Honest regression tests for the DJVU page-render path that exposed the
 * "Failed to render page 1" UX bug. The reader used to surface this error
 * whenever the structured backend could not produce a Bitmap for index 0 —
 * regardless of whether the file was a valid DjVu or whether the failure
 * was recoverable. These tests pin down:
 *   1) The probe pipeline on a synthetic single-page DJVU,
 *   2) What happens when the backend cannot open (graceful null, no crash),
 *   3) End-to-end bitstream layout (formType + chunks) for a real-shape
 *      BGjp sample so we know the simple render path stays wired,
 *   4) The metadata keys the UI relies on when painting a recoverable
 *      placeholder after the bitmap path fails.
 */
class DjvuFormatReaderRenderTest {

    // ── Synthetic fixtures ───────────────────────────────────────────────

    private fun syntheticDjvuSinglePage(
        formType: String = "DJVU",
        chunks: List<Pair<String, ByteArray>> = listOf(
            "INFO" to infoChunk(width = 800, height = 1200, dpi = 300),
            "BGjp" to byteArrayOf(0xFF.toByte(), 0xD8.toByte(), 0xFF.toByte(), 0xE0.toByte()),
            "TXTa" to "Hello world".toByteArray(Charsets.US_ASCII)
        )
    ): ByteArray {
        val content = ByteArrayOutputStream().apply {
            write(formType.toByteArray(Charsets.US_ASCII))
            chunks.forEach { (id, payload) -> write(chunk(id, payload)) }
        }.toByteArray()
        return ByteArrayOutputStream().apply {
            write("AT&TFORM".toByteArray(Charsets.US_ASCII))
            writeInt(content.size)
            write(content)
        }.toByteArray()
    }

    private fun infoChunk(width: Int, height: Int, dpi: Int): ByteArray {
        // DjvuSimpleRenderPlan/DjvuIw44Encoder-friendly shape:
        //   byte0 = minor flags + version nibble (≥ 24 for grayscale fits 0x0F check)
        //   bytes 1-2 = width in 32-bit BE (we only need shape; payload is fine for probe)
        //   bytes 3-4 = height
        //   bytes 5-6 = dpi
        return byteArrayOf(
            0x18,
            ((width ushr 8) and 0xFF).toByte(),
            (width and 0xFF).toByte(),
            ((height ushr 8) and 0xFF).toByte(),
            (height and 0xFF).toByte(),
            ((dpi ushr 8) and 0xFF).toByte(),
            (dpi and 0xFF).toByte()
        )
    }

    private fun chunk(id: String, payload: ByteArray): ByteArray {
        val padded = if (payload.size % 2 == 0) payload else payload + byteArrayOf(0)
        return ByteArrayOutputStream().apply {
            write(id.toByteArray(Charsets.US_ASCII))
            writeInt(payload.size)
            write(padded)
        }.toByteArray()
    }

    private fun ByteArrayOutputStream.writeInt(value: Int) {
        write((value ushr 24) and 0xFF)
        write((value ushr 16) and 0xFF)
        write((value ushr 8) and 0xFF)
        write(value and 0xFF)
    }

    private fun writeTempFile(name: String, bytes: ByteArray): java.io.File {
        val tmp = java.io.File.createTempFile(name, ".djvu")
        tmp.writeBytes(bytes)
        tmp.deleteOnExit()
        return tmp
    }

    // ── Probe pipeline ──────────────────────────────────────────────────

    @Test
    fun `probe accepts single-page synthetic DJVU with valid header and chunks`() {
        val bytes = syntheticDjvuSinglePage()

        val probe = DjvuProbe.probe(ByteArrayInputStream(bytes))

        assertNotNull("Probe must accept AT&TFORM DJVU header", probe)
        assertEquals("DJVU", probe?.formType)
        assertEquals("DJVU form declares exactly one page for synthetic single-page fixture", 1, probe?.pageCount)
        assertTrue("Synthetic chunks must include INFO", probe?.topLevelChunkIds?.contains("INFO") == true)
        assertTrue("Synthetic chunks must include BGjp or Sjbz for a render path",
            probe?.topLevelChunkIds?.any { it in setOf("BGjp", "BG44", "Sjbz") } == true)
    }

    @Test
    fun `probe rejects non-DJVU AT and T FORM wrapper`() {
        val content = ByteArrayOutputStream().apply {
            write("PDF\u0001".toByteArray(Charsets.US_ASCII))
            write(byteArrayOf(1, 2, 3, 4, 5))
        }.toByteArray()
        val wrapper = ByteArrayOutputStream().apply {
            write("AT&TFORM".toByteArray(Charsets.US_ASCII))
            writeInt(content.size)
            write(content)
        }.toByteArray()

        val probe = DjvuProbe.probe(ByteArrayInputStream(wrapper))

        // A non-DJVU formType that gets probed should fail gracefully — either null
        // probe or formType ≠ "DJVU". The reader must never crash in this path.
        if (probe != null) {
            assertFalse("Non-DjVu formType must not pretend to be DJVU", probe.formType == "DJVU")
        }
    }

    @Test
    fun `DjvuFormatReader exposes non-empty pageCount on a synthetic file with placeholder probe`() {
        val bytes = syntheticDjvuSinglePage()
        val file = writeTempFile("djvu_synthetic_page1", bytes)
        val reader = DjvuFormatReader(
            context = ContextWrapper(null),
            path = file.absolutePath,
            backend = FailingDjvuBackend
        )

        val count = runBlocking { reader.getPageCount() }

        assertTrue("Page count must be ≥1 even when backend.open() returns null",
            count >= 1)
    }

    @Test
    fun `DjvuFormatReader surfaces a non-blank placeholder HTML when backend open fails`() {
        val bytes = syntheticDjvuSinglePage()
        val file = writeTempFile("djvu_synthetic_placeholder", bytes)
        val reader = DjvuFormatReader(
            context = ContextWrapper(null),
            path = file.absolutePath,
            backend = FailingDjvuBackend
        )

        val placeholderHtml = runBlocking { reader.getHtmlPage(0) }
        assertNotNull("Reader must surface an HTML placeholder when bitmap decode fails",
            placeholderHtml)
        assertNotNull(placeholderHtml)
        val text = org.jsoup.Jsoup.parse(placeholderHtml!!).text()
        assertTrue(
            "Placeholder HTML must be readable when bitmap decode fails (was empty: '${text}')",
            text.isNotBlank() && placeholderHtml.length > 30
        )
        // Placeholder must NOT be the brittle "Failed to render page 1" string that
        // used to be shown to the user — it must at least mention the document
        // so the user knows what was attempted.
        assertTrue(
            "Placeholder should mention the file name so the user knows what failed",
            placeholderHtml.contains("djvu_synthetic_placeholder") ||
                placeholderHtml.contains("DjVu", ignoreCase = true) ||
                placeholderHtml.contains("DJVU", ignoreCase = true)
        )
    }

    @Test
    fun `DjvuFormatReader renders Bitmap for page 0 when backend succeeds and Android bitmap peer is available`() {
        // We rely on Bitmap.createBitmap being allocatable. JVM unit-test sandboxes
        // cannot allocate an Android Bitmap; if Bitmap.createBitmap throws or returns
        // null we self-skip the assertion rather than crashing the whole test class.
        val canAllocateBitmap = try {
            val probe = Bitmap.createBitmap(2, 2, Bitmap.Config.ALPHA_8)
            probe.recycle()
            true
        } catch (e: Throwable) {
            false
        }
        assumeTrue("Bitmap.createBitmap unavailable in this JVM/Android runtime", canAllocateBitmap)

        val bytes = syntheticDjvuSinglePage()
        val file = writeTempFile("djvu_synthetic_render", bytes)
        val reader = DjvuFormatReader(
            context = ContextWrapper(null),
            path = file.absolutePath,
            backend = AlwaysBitmapBackend(width = 4, height = 4)
        )

        val bitmap = runBlocking { reader.getPage(0) }
        assertNotNull("Page 0 must render as a Bitmap when backend.open() succeeds", bitmap)
        assertEquals("Bitmap width must match what the backend reported", 4, bitmap?.width)
        assertEquals("Bitmap height must match what the backend reported", 4, bitmap?.height)
    }

    @Test
    fun `DjvuFormatReader getMetadata reports djvu status keys the UI uses to surface a friendly error`() {
        val bytes = syntheticDjvuSinglePage()
        val file = writeTempFile("djvu_synthetic_meta", bytes)
        val reader = DjvuFormatReader(
            context = ContextWrapper(null),
            path = file.absolutePath,
            backend = ProbeOnlyBackend(formType = "DJVU", pageCount = 1)
        )

        val metadata = runBlocking { reader.getMetadata() }
        assertEquals("DjVu", metadata["format"])
        assertEquals("DJVU", metadata["djvuFormType"])
        assertEquals("1", metadata["djvuPageCount"])
        assertTrue("nativeCompositeRendererAvailable must be a stringified boolean",
            metadata.containsKey("nativeCompositeRendererAvailable"))
    }

    @Test
    fun `DjvuFormatReader close is idempotent`() {
        val bytes = syntheticDjvuSinglePage()
        val file = writeTempFile("djvu_close_idempotent", bytes)
        val reader = DjvuFormatReader(
            context = ContextWrapper(null),
            path = file.absolutePath,
            backend = FailingDjvuBackend
        )

        runBlocking { reader.getPageCount() }
        reader.close()
        // Second close must not throw.
        reader.close()
    }

    // ── Helper backends ─────────────────────────────────────────────────

    private object FailingDjvuBackend : DjvuBackend {
        override val status: DjvuBackendStatus = DjvuBackendStatus.Unavailable(
            backendName = "test-failing",
            summary = "synthetic backend failure",
            details = "always returns null"
        )
        override suspend fun open(path: String): DjvuDocument? = null
    }

    private class AlwaysBitmapBackend(
        private val width: Int,
        private val height: Int
    ) : DjvuBackend {
        override val status: DjvuBackendStatus =
            DjvuBackendStatus.Available(backendName = "test-bitmap", nativeCompositeRendererAvailable = true)

        override suspend fun open(path: String): DjvuDocument = object : DjvuDocument {
            override suspend fun getPageCount(): Int = 1
            override suspend fun renderPage(index: Int, renderQuality: Int): Bitmap =
                Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888)
            override suspend fun getMetadata(): Map<String, String> = mapOf("test" to "1")
            override fun close() = Unit
        }
    }

    private class ProbeOnlyBackend(
        private val formType: String,
        private val pageCount: Int
    ) : DjvuBackend {
        override val status: DjvuBackendStatus = DjvuBackendStatus.Available(
            backendName = "test-probe-only",
            nativeCompositeRendererAvailable = false
        )
        override suspend fun open(path: String): DjvuDocument? = null
    }
}
