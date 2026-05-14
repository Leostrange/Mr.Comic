package com.example.engine.formats.djvu

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream

class DjvuVisualLayerPlanTest {

    @Test
    fun `extracts composite visual layer profile`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("BG44", byteArrayOf(0x01, 0x02, 0x03)),
            chunk("FG44", byteArrayOf(0x04, 0x05)),
            chunk("Sjbz", byteArrayOf(0x09, 0x0A)),
            chunk("FGbz", byteArrayOf(0x10)),
            chunk("INCL", byteArrayOf(0x41, 0x42))
        )

        val plan = extractDjvuVisualLayerPlan(documentBytes)

        assertNotNull(plan)
        assertEquals("BG44", plan?.backgroundLayer)
        assertEquals("FG44", plan?.foregroundLayer)
        assertEquals("Sjbz", plan?.maskLayer)
        assertEquals("FGbz", plan?.paletteChunk)
        assertEquals(1, plan?.includedChunkCount)
        assertTrue(plan?.usesIw44 ?: false)
        assertTrue(plan?.usesJb2 ?: false)
        assertTrue(plan?.requiresCompositeDecode ?: false)
        assertTrue(plan?.requiresNativeCompositeRenderer ?: false)
        assertEquals(
            listOf(
                "IW44 background",
                "foreground layer FG44",
                "JB2 mask",
                "foreground palette FGbz",
                "shared included chunks"
            ),
            plan?.unsupportedRenderFeatures
        )
    }

    @Test
    fun `extracts simple jpeg visual layer profile`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("BGjp", byteArrayOf(0x11, 0x22, 0x33))
        )

        val plan = extractDjvuVisualLayerPlan(documentBytes)

        assertNotNull(plan)
        assertEquals("BGjp", plan?.backgroundLayer)
        assertFalse(plan?.usesIw44 ?: true)
        assertFalse(plan?.usesJb2 ?: true)
        assertFalse(plan?.requiresNativeCompositeRenderer ?: true)
        assertEquals(emptyList<String>(), plan?.unsupportedRenderFeatures)
    }

    @Test
    fun `visual layer html names composite diagnostics without missing renderer fallback`() {
        val html = buildDjvuVisualLayerHtml(
            fileName = "sample.djvu",
            pageIndex = 0,
            totalPages = 1,
            visualLayerPlan = DjvuVisualLayerPlan(
                chunkIds = listOf("INFO", "BG44", "Sjbz"),
                backgroundLayer = "BG44",
                maskLayer = "Sjbz"
            )
        )

        assertFalse(html.contains("Нужен композитный DjVu renderer"))
        assertTrue(html.contains("Скан DjVu с композитными слоями"))
        assertTrue(html.contains("IW44 background"))
        assertTrue(html.contains("JB2 mask"))
    }

    private fun document(formType: String, vararg nestedChunks: ByteArray): ByteArray {
        val content = ByteArrayOutputStream().apply {
            write(formType.toByteArray(Charsets.US_ASCII))
            nestedChunks.forEach { write(it) }
        }.toByteArray()
        return ByteArrayOutputStream().apply {
            write("AT&TFORM".toByteArray(Charsets.US_ASCII))
            writeInt(content.size)
            write(content)
        }.toByteArray()
    }

    private fun chunk(id: String, payload: ByteArray): ByteArray {
        val paddedPayload = if (payload.size % 2 == 0) payload else payload + byteArrayOf(0)
        return ByteArrayOutputStream().apply {
            write(id.toByteArray(Charsets.US_ASCII))
            writeInt(payload.size)
            write(paddedPayload)
        }.toByteArray()
    }

    private fun ByteArrayOutputStream.writeInt(value: Int) {
        write((value ushr 24) and 0xFF)
        write((value ushr 16) and 0xFF)
        write((value ushr 8) and 0xFF)
        write(value and 0xFF)
    }
}
