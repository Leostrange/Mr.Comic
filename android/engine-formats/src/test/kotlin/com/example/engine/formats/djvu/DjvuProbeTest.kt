package com.example.engine.formats.djvu

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Test
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream

class DjvuProbeTest {

    @Test
    fun `probe reports single-page djvu`() {
        val result = DjvuProbe.probe(ByteArrayInputStream(document("DJVU")))

        assertNotNull(result)
        assertEquals("DJVU", result?.formType)
        assertEquals(1, result?.pageCount)
    }

    @Test
    fun `probe counts bundled djvu pages from top-level forms`() {
        val result = DjvuProbe.probe(
            ByteArrayInputStream(
                document(
                    "DJVM",
                    chunk("DIRM", byteArrayOf()),
                    nestedForm("DJVI"),
                    nestedForm("DJVU"),
                    nestedForm("THUM"),
                    nestedForm("DJVU"),
                    nestedForm("DJVU")
                )
            )
        )

        assertNotNull(result)
        assertEquals("DJVM", result?.formType)
        assertEquals(3, result?.pageCount)
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

    private fun nestedForm(formType: String, vararg nestedChunks: ByteArray): ByteArray {
        val content = ByteArrayOutputStream().apply {
            write(formType.toByteArray(Charsets.US_ASCII))
            nestedChunks.forEach { write(it) }
        }.toByteArray()
        return chunk("FORM", content)
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
