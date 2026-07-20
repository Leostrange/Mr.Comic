package io.leostrange.mrcomic.engine.formats.djvu

import org.junit.Assert.assertArrayEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Test
import java.io.ByteArrayOutputStream

class DjvuSimpleRenderPlanTest {

    @Test
    fun `extracts simple BGjp page render plan`() {
        val jpegPayload = byteArrayOf(
            0xFF.toByte(), 0xD8.toByte(), 0xFF.toByte(), 0xD9.toByte()
        )
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("BGjp", jpegPayload),
            chunk("TXTa", "hello".toByteArray())
        )

        val plan = extractSimpleRenderPlan(documentBytes)

        assertNotNull(plan)
        assertArrayEquals(jpegPayload, plan?.jpegPayload)
    }

    @Test
    fun `rejects pages that still need compound compositing`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("BGjp", byteArrayOf(0x01, 0x02)),
            chunk("Sjbz", byteArrayOf(0x03))
        )

        val plan = extractSimpleRenderPlan(documentBytes)

        assertNull(plan)
    }

    @Test
    fun `rejects non jpeg-only pages`() {
        val documentBytes = document(
            "DJVU",
            chunk("INFO", byteArrayOf(0x02, 0x58, 0x03, 0x20)),
            chunk("BG44", byteArrayOf(0x01, 0x02))
        )

        val plan = extractSimpleRenderPlan(documentBytes)

        assertNull(plan)
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
