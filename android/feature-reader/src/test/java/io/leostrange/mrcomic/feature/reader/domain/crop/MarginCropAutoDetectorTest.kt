package io.leostrange.mrcomic.feature.reader.domain.crop

import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class MarginCropAutoDetectorTest {

    /** Solid page: uniform paper with a dark content block at the given insets. */
    private fun grid(
        width: Int,
        height: Int,
        paper: Int = 240,
        ink: Int = 30,
        insets: ReaderMarginCropSides
    ): (Int, Int) -> Int {
        val leftPx = (width * insets.left).toInt()
        val topPx = (height * insets.top).toInt()
        val rightPx = width - (width * insets.right).toInt()
        val bottomPx = height - (height * insets.bottom).toInt()
        return { x, y ->
            if (x in leftPx until rightPx && y in topPx until bottomPx) ink else paper
        }
    }

    @Test
    fun tinyGridsReturnNoCrop() {
        assertTrue(MarginCropAutoDetector.detect(8, 8) { _, _ -> 0 }.isZero)
        assertTrue(MarginCropAutoDetector.detect(0, 0) { _, _ -> 0 }.isZero)
    }

    @Test
    fun blankPageIsNotCropped() {
        val result = MarginCropAutoDetector.detect(100, 140) { _, _ -> 230 }
        assertTrue("Blank page must stay uncropped: $result", result.isZero)
    }

    @Test
    fun symmetricMarginsAreDetected() {
        val width = 200
        val height = 280
        // 10% margins around a text block.
        val result = MarginCropAutoDetector.detect(
            width,
            height,
            luminance = grid(width, height, insets = ReaderMarginCropSides(0.10f, 0.10f, 0.10f, 0.10f))
        )
        assertEquals(0.10f, result.left, 0.02f)
        assertEquals(0.10f, result.right, 0.02f)
        assertEquals(0.10f, result.top, 0.02f)
        assertEquals(0.10f, result.bottom, 0.02f)
    }

    @Test
    fun asymmetricMarginsAreDetectedIndependently() {
        val width = 200
        val height = 280
        val result = MarginCropAutoDetector.detect(
            width,
            height,
            luminance = grid(
                width,
                height,
                insets = ReaderMarginCropSides(left = 0.04f, top = 0.12f, right = 0.16f, bottom = 0.02f)
            )
        )
        assertEquals(0.04f, result.left, 0.02f)
        assertEquals(0.16f, result.right, 0.02f)
        assertEquals(0.12f, result.top, 0.02f)
        assertEquals(0.02f, result.bottom, 0.02f)
    }

    @Test
    fun contentBeyondTheCapIsNeverOverCropped() {
        val width = 200
        val height = 280
        // Content occupies only the middle third: real insets are ~0.33, but the
        // detector must cap at MAX_SIDE_FRACTION and never crop past it.
        val result = MarginCropAutoDetector.detect(
            width,
            height,
            luminance = grid(width, height, insets = ReaderMarginCropSides(0.33f, 0.33f, 0.33f, 0.33f))
        )
        assertTrue(result.left <= ReaderMarginCrop.MAX_SIDE_FRACTION)
        assertTrue(result.top <= ReaderMarginCrop.MAX_SIDE_FRACTION)
        assertTrue(result.left >= 0.20f)
        assertTrue(result.top >= 0.20f)
    }

    @Test
    fun dustSpecksNearTheBorderDoNotBlockCropping() {
        val width = 200
        val height = 280
        val base = grid(width, height, insets = ReaderMarginCropSides(0.10f, 0.10f, 0.10f, 0.10f))
        val result = MarginCropAutoDetector.detect(width, height) { x, y ->
            // A few isolated dark pixels 2% from the edges (dust/speckle).
            val nearLeftSpeck = x == 4 && y == 140
            val nearTopSpeck = y == 5 && x == 100
            if (nearLeftSpeck || nearTopSpeck) 20 else base(x, y)
        }
        // The left line at x=4 has 1 dark sample out of 280 (<5% share).
        assertTrue("Specks must be ignored: $result", result.left >= 0.08f)
    }
}
