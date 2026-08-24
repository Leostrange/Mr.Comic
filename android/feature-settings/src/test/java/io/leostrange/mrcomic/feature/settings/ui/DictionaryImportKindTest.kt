package io.leostrange.mrcomic.feature.settings.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class DictionaryImportKindTest {

    @Test
    fun emptyProviderResultIsRejected() {
        assertEquals(DictionaryImportKind.INVALID, detectDictionaryImportKind(null))
        assertEquals(DictionaryImportKind.INVALID, detectDictionaryImportKind(ByteArray(0)))
    }

    @Test
    fun zipMagicIsDetectedWithoutConsumingAProviderStream() {
        assertEquals(
            DictionaryImportKind.ZIP,
            detectDictionaryImportKind(byteArrayOf(0x50, 0x4B, 0x03, 0x04))
        )
    }

    @Test
    fun plainAndGzipPayloadsAreKeptForLanguageSelection() {
        assertEquals(DictionaryImportKind.SINGLE, detectDictionaryImportKind("SQLite format 3".toByteArray()))
        assertEquals(
            DictionaryImportKind.SINGLE,
            detectDictionaryImportKind(byteArrayOf(0x1F, 0x8B.toByte(), 0x08))
        )
    }
}
