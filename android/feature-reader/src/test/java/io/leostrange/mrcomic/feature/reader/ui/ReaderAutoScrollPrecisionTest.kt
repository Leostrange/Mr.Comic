package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderAutoScrollPrecisionTest {

    @Test
    fun normalize_clampsRoundsAndKeepsExactIntegerSliderValue() {
        assertEquals(15f, ReaderAutoScrollPrecision.normalize(0f), 0f)
        assertEquals(73f, ReaderAutoScrollPrecision.normalize(72.6f), 0f)
        assertEquals(240f, ReaderAutoScrollPrecision.normalize(999f), 0f)
    }

    @Test
    fun pageTurnInterval_preservesFormerPresetAnchorsAndDecreasesWithSpeed() {
        assertEquals(12_000L, ReaderAutoScrollPrecision.pageTurnIntervalMillis(30f))
        assertEquals(7_000L, ReaderAutoScrollPrecision.pageTurnIntervalMillis(80f))
        assertEquals(3_500L, ReaderAutoScrollPrecision.pageTurnIntervalMillis(180f))
        assertTrue(
            ReaderAutoScrollPrecision.pageTurnIntervalMillis(181f) <
                ReaderAutoScrollPrecision.pageTurnIntervalMillis(80f)
        )
    }

    @Test
    fun webtoonPixelSpeed_preservesFormerAnchorsAndUsesDifferentUnit() {
        assertEquals(45f, ReaderAutoScrollPrecision.webtoonPixelsPerSecond(30f), 0f)
        assertEquals(110f, ReaderAutoScrollPrecision.webtoonPixelsPerSecond(80f), 0f)
        assertEquals(220f, ReaderAutoScrollPrecision.webtoonPixelsPerSecond(180f), 0f)
        assertEquals("110 пикс./с", ReaderAutoScrollPrecision.valueLabel(80f, ReadingMode.WEBTOON))
    }
}
