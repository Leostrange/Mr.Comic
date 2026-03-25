package com.example.engine.formats.base

import com.example.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Test
import java.io.ByteArrayInputStream

class FormatDetectorTest {

    @Test
    fun `detect recognizes single-page djvu by magic bytes`() {
        val header = ByteArray(80)
        "AT&TFORM".encodeToByteArray().copyInto(header, 0)
        "DJVU".encodeToByteArray().copyInto(header, 12)

        assertEquals(
            ComicFormat.DJVU,
            FormatDetector.detect(ByteArrayInputStream(header), "mystery.bin")
        )
    }

    @Test
    fun `detect recognizes multipage djvu by magic bytes`() {
        val header = ByteArray(80)
        "AT&TFORM".encodeToByteArray().copyInto(header, 0)
        "DJVM".encodeToByteArray().copyInto(header, 12)

        assertEquals(
            ComicFormat.DJVU,
            FormatDetector.detect(ByteArrayInputStream(header), "mystery.bin")
        )
    }

    @Test
    fun `detect still falls back to extension when magic bytes are absent`() {
        val header = ByteArray(80)

        assertEquals(
            ComicFormat.DJVU,
            FormatDetector.detect(ByteArrayInputStream(header), "document.djvu")
        )
    }
}
