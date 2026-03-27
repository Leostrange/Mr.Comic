package com.example.engine.formats.djvu

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream

class DjvuAnnotationsTest {

    @Test
    fun `extracts plain ANTa annotations`() {
        val documentBytes = document(
            "DJVU",
            chunk("ANTa", "(maparea \"https://example.com\" \"Example\")".toByteArray())
        )

        val annotations = extractDjvuAnnotations(documentBytes)

        assertNotNull(annotations)
        assertEquals("(maparea \"https://example.com\" \"Example\")", annotations?.text)
        assertFalse(annotations?.hasCompressedChunks ?: true)
    }

    @Test
    fun `tracks compressed ANTz annotations`() {
        val documentBytes = document(
            "DJVU",
            chunk("ANTa", "(note plain)".toByteArray()),
            chunk("ANTz", byteArrayOf(0x01, 0x02))
        )

        val annotations = extractDjvuAnnotations(documentBytes)

        assertNotNull(annotations)
        assertTrue(annotations?.hasCompressedChunks ?: false)
        assertEquals("(note plain)", annotations?.text)
    }

    @Test
    fun `returns null when no annotations exist`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20))
        )

        assertNull(extractDjvuAnnotations(documentBytes))
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
