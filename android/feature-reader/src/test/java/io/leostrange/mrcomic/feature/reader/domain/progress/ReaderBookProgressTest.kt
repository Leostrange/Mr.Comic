package io.leostrange.mrcomic.feature.reader.domain.progress

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderBookProgressTest {

    @Test
    fun text_weightsSectionsByTextLength() {
        val weights = listOf(10, 30, 60)
        assertEquals(0f, ReaderBookProgress.text(0, 0.0, 3, weights), 1e-6f)
        assertEquals(0.10f, ReaderBookProgress.text(1, 0.0, 3, weights), 1e-6f)
        assertEquals(0.25f, ReaderBookProgress.text(1, 0.5, 3, weights), 1e-6f)
        assertEquals(0.70f, ReaderBookProgress.text(2, 0.5, 3, weights), 1e-6f)
    }

    @Test
    fun text_fallsBackToEqualSectionsWhenWeightsUnusable() {
        assertEquals(0.5f, ReaderBookProgress.text(1, 0.0, 2, null), 1e-6f)
        assertEquals(0.75f, ReaderBookProgress.text(1, 0.5, 2, listOf(1)), 1e-6f)
        assertEquals(0.25f, ReaderBookProgress.text(0, 0.5, 2, listOf(0, 0)), 1e-6f)
    }

    @Test
    fun text_atEndIsComplete_andInputsAreClamped() {
        assertEquals(1f, ReaderBookProgress.text(2, 0.1, 3, listOf(1, 1, 1), atEnd = true), 0f)
        assertEquals(1f, ReaderBookProgress.text(9, 9.0, 3, listOf(1, 1, 1)), 0f)
        assertEquals(0f, ReaderBookProgress.text(-4, Double.NaN, 3, listOf(1, 1, 1)), 0f)
        assertEquals(0f, ReaderBookProgress.text(0, 0.5, 0, null), 0f)
    }

    @Test
    fun locate_isInverseOfText() {
        val weights = listOf(5, 0, 40, 55)
        listOf(0f, 0.03f, 0.05f, 0.2f, 0.45f, 0.9f).forEach { progress ->
            val target = ReaderBookProgress.locate(progress, 4, weights)
            val roundTrip = ReaderBookProgress.text(target.sectionIndex, target.sectionFraction, 4, weights)
            assertEquals("progress=$progress", progress, roundTrip, 1e-5f)
        }
    }

    @Test
    fun locate_skipsEmptySections_andClampsEnds() {
        assertTarget(2, 0.0, ReaderBookProgress.locate(0.05f, 4, listOf(5, 0, 40, 55)))
        assertTarget(3, 1.0, ReaderBookProgress.locate(1f, 4, listOf(5, 0, 40, 55)))
        assertTarget(1, 0.5, ReaderBookProgress.locate(0.75f, 2, null))
        assertTarget(1, 1.0, ReaderBookProgress.locate(1f, 2, null))
    }

    private fun assertTarget(section: Int, fraction: Double, actual: TextProgressTarget) {
        assertEquals(section, actual.sectionIndex)
        assertEquals(fraction, actual.sectionFraction, 1e-6)
    }

    @Test
    fun raster_matchesLegacyPageFormula() {
        assertEquals(0f, ReaderBookProgress.raster(0, 10), 0f)
        assertEquals(1f, ReaderBookProgress.raster(9, 10), 0f)
        assertEquals(0.5f, ReaderBookProgress.raster(2, 5), 1e-6f)
        assertEquals(0f, ReaderBookProgress.raster(0, 1), 0f)
    }
}
