package com.example.engine.formats.djvu

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Test
import java.io.ByteArrayOutputStream

class DjvuPageDocumentBuilderTest {

    @Test
    fun `builder wraps nested djvu form into standalone document`() {
        val nestedPage = chunk(
            "FORM",
            "DJVU".toByteArray(Charsets.US_ASCII) +
                chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20))
        )

        val standalone = buildStandaloneDjvuDocumentBytes(nestedPage)

        assertNotNull(standalone)
        assertEquals("AT&TFORM", standalone?.copyOfRange(0, 8)?.decodeToString())
        assertEquals("DJVU", standalone?.copyOfRange(12, 16)?.decodeToString())
    }

    @Test
    fun `builder trims trailing pad from nested page chunk`() {
        val oddPayload = byteArrayOf(0x01, 0x02, 0x03)
        val nestedPage = chunk(
            "FORM",
            "DJVU".toByteArray(Charsets.US_ASCII) + chunk("TXTa", oddPayload)
        )

        val standalone = buildStandaloneDjvuDocumentBytes(nestedPage)

        assertNotNull(standalone)
        val expectedLength = 4 + 8 + (
            ((nestedPage[4].toInt() and 0xFF) shl 24) or
                ((nestedPage[5].toInt() and 0xFF) shl 16) or
                ((nestedPage[6].toInt() and 0xFF) shl 8) or
                (nestedPage[7].toInt() and 0xFF)
            )
        assertEquals(expectedLength, standalone?.size)
    }

    @Test
    fun `builder returns original bytes when input is already standalone`() {
        val standalone = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20))
        )

        val rebuilt = buildStandaloneDjvuDocumentBytes(standalone)

        assertArrayEquals(standalone, rebuilt)
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
