package com.example.engine.formats.djvu

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Test
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream

class DjvuProbeTest {

    @Test
    fun `probe reports single-page djvu`() {
        val result = DjvuProbe.probe(
            ByteArrayInputStream(
                document(
                    "DJVU",
                    infoChunk(width = 600, height = 800, dpi = 300),
                    chunk("TXTa", "hello".toByteArray())
                )
            )
        )

        assertNotNull(result)
        assertEquals("DJVU", result?.formType)
        assertEquals(1, result?.pageCount)
        assertEquals(listOf("INFO", "TXTa"), result?.topLevelChunkIds)
        assertEquals(listOf("INFO", "TXTa"), result?.pages?.singleOrNull()?.chunkIds)
        assertEquals(600, result?.pages?.singleOrNull()?.info?.width)
        assertEquals(800, result?.pages?.singleOrNull()?.info?.height)
        assertEquals(300, result?.pages?.singleOrNull()?.info?.dpi)
        assertEquals(0L, result?.pages?.singleOrNull()?.fileOffset)
        assertEquals(44L, result?.pages?.singleOrNull()?.byteLength)
    }

    @Test
    fun `probe counts bundled djvu pages from top-level forms`() {
        val result = DjvuProbe.probe(
            ByteArrayInputStream(
                document(
                    "DJVM",
                    chunk("DIRM", byteArrayOf()),
                    nestedForm("DJVI"),
                    nestedForm("DJVU", infoChunk(width = 1200, height = 1600, dpi = 400), chunk("TXTa", byteArrayOf())),
                    nestedForm("THUM"),
                    nestedForm("DJVU", infoChunk(width = 900, height = 1400)),
                    nestedForm("DJVU", infoChunk(width = 1024, height = 768, dpi = 300), chunk("Sjbz", byteArrayOf()))
                )
            )
        )

        assertNotNull(result)
        assertEquals("DJVM", result?.formType)
        assertEquals(3, result?.pageCount)
        assertEquals(
            listOf("DIRM", "FORM:DJVI", "FORM:DJVU", "FORM:THUM", "FORM:DJVU", "FORM:DJVU"),
            result?.topLevelChunkIds
        )
        // DJVM probe skips inner chunk inspection for stream safety;
        // chunkIds and info are resolved lazily during page rendering.
        assertEquals(emptyList<String>(), result?.pages?.get(0)?.chunkIds)
        assertEquals(emptyList<String>(), result?.pages?.get(1)?.chunkIds)
        assertEquals(emptyList<String>(), result?.pages?.get(2)?.chunkIds)
        assertEquals(null, result?.pages?.get(0)?.info)
        assertEquals(null, result?.pages?.get(1)?.info)
        assertEquals(null, result?.pages?.get(2)?.info)
        assertEquals(36L, result?.pages?.get(0)?.fileOffset)
        assertEquals(34L, result?.pages?.get(0)?.byteLength)
        assertEquals(82L, result?.pages?.get(1)?.fileOffset)
        assertEquals(24L, result?.pages?.get(1)?.byteLength)
        assertEquals(106L, result?.pages?.get(2)?.fileOffset)
        assertEquals(34L, result?.pages?.get(2)?.byteLength)
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

    private fun infoChunk(width: Int, height: Int, dpi: Int? = null): ByteArray {
        val payload = ByteArrayOutputStream().apply {
            writeShortBe(this, width)
            writeShortBe(this, height)
            dpi?.let { writeShortBe(this, it) }
        }.toByteArray()
        return chunk("INFO", payload)
    }

    private fun ByteArrayOutputStream.writeInt(value: Int) {
        write((value ushr 24) and 0xFF)
        write((value ushr 16) and 0xFF)
        write((value ushr 8) and 0xFF)
        write(value and 0xFF)
    }

    private fun writeShortBe(stream: ByteArrayOutputStream, value: Int) {
        stream.write((value ushr 8) and 0xFF)
        stream.write(value and 0xFF)
    }
}
