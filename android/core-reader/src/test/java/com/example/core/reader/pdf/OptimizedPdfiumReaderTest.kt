package com.example.core.reader.pdf

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class OptimizedPdfiumReaderTest {

    @Test
    fun `clampBitmapSize enforces positive minimum`() {
        val (width, height) = OptimizedPdfiumReader.clampBitmapSize(0, 0)
        assertEquals(1, width)
        assertEquals(1, height)
    }

    @Test
    fun `clampBitmapSize scales down large bitmaps`() {
        val (width, height) = OptimizedPdfiumReader.clampBitmapSize(20000, 12000)
        // Both edges should be below the hard limit and still maintain aspect ratio
        assertTrue(width <= 8192)
        assertTrue(height <= 8192)
        assertTrue(width > 0 && height > 0)

        val totalPixels = width.toLong() * height.toLong()
        assertTrue(totalPixels <= 4096L * 4096L)
    }
}

