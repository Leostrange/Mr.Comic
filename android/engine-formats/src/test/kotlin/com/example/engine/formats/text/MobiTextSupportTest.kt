package com.example.engine.formats.text

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayOutputStream

class MobiTextSupportTest {

    @Test
    fun extractsUncompressedHtmlFromMinimalMobiContainer() {
        val record = "<html><body><p>Hello MOBI</p></body></html>".encodeToByteArray()
        val bytes = buildMinimalMobi(
            compression = 1,
            textEncoding = 65001,
            textRecord = record
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertTrue(result.isMarkup)
        assertTrue(result.content.contains("Hello MOBI"))
    }

    @Test
    fun decompressesSimplePalmDocBackReference() {
        val compressed = byteArrayOf(
            0x03,
            'a'.code.toByte(),
            'b'.code.toByte(),
            'c'.code.toByte(),
            0x80.toByte(),
            0x18
        )
        val bytes = buildMinimalMobi(
            compression = 2,
            textEncoding = 65001,
            textRecord = compressed
        )

        val result = MobiTextSupport.extract(bytes)

        assertTrue(result is MobiExtractionResult.Success)
        result as MobiExtractionResult.Success
        assertEquals("abcabc", result.content)
        assertTrue(!result.isMarkup)
    }

    private fun buildMinimalMobi(
        compression: Int,
        textEncoding: Int,
        textRecord: ByteArray
    ): ByteArray {
        val record0 = ByteArray(80)
        writeUInt16BE(record0, 0, compression)
        writeUInt16BE(record0, 8, 1)
        writeUInt16BE(record0, 12, 0)
        "MOBI".encodeToByteArray().copyInto(record0, destinationOffset = 16)
        writeUInt32BE(record0, 20, 64)
        writeUInt32BE(record0, 28, textEncoding)

        val recordCount = 2
        val recordInfoOffset = 78
        val record0Offset = recordInfoOffset + recordCount * 8
        val record1Offset = record0Offset + record0.size
        val output = ByteArrayOutputStream()

        output.write(ByteArray(76))
        output.write(byteArrayOf(0x00, recordCount.toByte()))
        output.write(intToBytes(record0Offset))
        output.write(ByteArray(4))
        output.write(intToBytes(record1Offset))
        output.write(ByteArray(4))
        output.write(record0)
        output.write(textRecord)
        return output.toByteArray()
    }

    private fun writeUInt16BE(target: ByteArray, offset: Int, value: Int) {
        target[offset] = ((value shr 8) and 0xFF).toByte()
        target[offset + 1] = (value and 0xFF).toByte()
    }

    private fun writeUInt32BE(target: ByteArray, offset: Int, value: Int) {
        target[offset] = ((value shr 24) and 0xFF).toByte()
        target[offset + 1] = ((value shr 16) and 0xFF).toByte()
        target[offset + 2] = ((value shr 8) and 0xFF).toByte()
        target[offset + 3] = (value and 0xFF).toByte()
    }

    private fun intToBytes(value: Int): ByteArray = byteArrayOf(
        ((value shr 24) and 0xFF).toByte(),
        ((value shr 16) and 0xFF).toByte(),
        ((value shr 8) and 0xFF).toByte(),
        (value and 0xFF).toByte()
    )
}
