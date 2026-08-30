package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderMarginCropLayoutPolicyTest {
    @Test
    fun landscapeUsesTwoColumnsAndKeepsWidePageMargins() {
        val layout = readerMarginCropLayout(isLandscape = true)

        assertEquals(2, layout.sideColumns)
        assertEquals(0.66f, layout.widthFraction, 0.001f)
        assertEquals(8f, layout.verticalPaddingDp, 0.001f)
    }

    @Test
    fun portraitRemainsSingleColumnButMoreCompact() {
        val layout = readerMarginCropLayout(isLandscape = false)

        assertEquals(1, layout.sideColumns)
        assertEquals(0.86f, layout.widthFraction, 0.001f)
        assertEquals(12f, layout.verticalPaddingDp, 0.001f)
    }
}
