package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderRasterSystemInsetsPolicyTest {

    @Test
    fun immersiveRasterReaderKeepsOnlyHorizontalCutoutSafety() {
        assertEquals(
            ReaderRasterSystemInsets.HORIZONTAL_ONLY,
            readerRasterSystemInsets(immersiveMode = true)
        )
    }

    @Test
    fun visibleSystemBarsKeepTheRasterViewportStable() {
        assertEquals(
            ReaderRasterSystemInsets.HORIZONTAL_ONLY,
            readerRasterSystemInsets(immersiveMode = false)
        )
    }
}
