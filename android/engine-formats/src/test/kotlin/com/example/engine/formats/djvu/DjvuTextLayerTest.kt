package com.example.engine.formats.djvu

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream

class DjvuTextLayerTest {

    @Test
    fun `extracts TXTa text layer`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            txTaChunk("Hello DjVu\n\nParagraph two.")
        )

        val textLayer = extractDjvuTextLayer(documentBytes)

        assertNotNull(textLayer)
        assertEquals("TXTa", textLayer?.sourceChunkId)
        assertFalse(textLayer?.isCompressed ?: true)
        assertEquals("Hello DjVu\n\nParagraph two.", textLayer?.text)
    }

    @Test
    fun `detects compressed TXTz text layer`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("TXTz", byteArrayOf(0x01, 0x02, 0x03))
        )

        assertTrue(hasCompressedDjvuTextLayer(documentBytes))
        assertNull(extractDjvuTextLayer(documentBytes))
    }

    @Test
    fun `rejects malformed TXTa payload`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("TXTa", byteArrayOf(0x00, 0x00, 0x10, 0x41))
        )

        assertNull(extractDjvuTextLayer(documentBytes))
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

    private fun txTaChunk(text: String): ByteArray {
        val textBytes = text.toByteArray(Charsets.UTF_8)
        val payload = ByteArrayOutputStream().apply {
            write((textBytes.size ushr 16) and 0xFF)
            write((textBytes.size ushr 8) and 0xFF)
            write(textBytes.size and 0xFF)
            write(textBytes)
            write(1)
        }.toByteArray()
        return chunk("TXTa", payload)
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
