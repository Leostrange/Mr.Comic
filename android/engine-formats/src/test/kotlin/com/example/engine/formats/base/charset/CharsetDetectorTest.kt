package com.example.engine.formats.base.charset

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class CharsetDetectorTest {
    @Test
    fun detectsAndStripsUtf8Bom() {
        val bytes = byteArrayOf(0xEF.toByte(), 0xBB.toByte(), 0xBF.toByte(), 'A'.code.toByte())

        assertEquals(Charsets.UTF_8, detectBomCharset(bytes))
        assertEquals(3, bomLength(bytes))
    }

    @Test
    fun detectsUtf16Bom() {
        assertEquals(Charsets.UTF_16LE, detectBomCharset(byteArrayOf(0xFF.toByte(), 0xFE.toByte())))
        assertEquals(Charsets.UTF_16BE, detectBomCharset(byteArrayOf(0xFE.toByte(), 0xFF.toByte())))
    }

    @Test
    fun validatesUtf8WithoutAcceptingMalformedSequences() {
        assertTrue(isStrictUtf8("Привет".toByteArray(Charsets.UTF_8)))
        assertFalse(isStrictUtf8(byteArrayOf(0xC0.toByte(), 0x80.toByte())))
    }

    @Test
    fun detectsUtf16ByNullByteDistribution() {
        assertTrue(looksLikeUtf16("Reader".toByteArray(Charsets.UTF_16LE), littleEndian = true))
        assertTrue(looksLikeUtf16("Reader".toByteArray(Charsets.UTF_16BE), littleEndian = false))
        assertFalse(looksLikeUtf16("Reader".toByteArray(Charsets.UTF_8), littleEndian = true))
    }
}
