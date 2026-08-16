package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import org.junit.Assert.assertEquals
import org.junit.Test

class WebtoonImageLayoutPolicyTest {

    @Test
    fun fitHeight_withUnboundedLazyColumnHeight_fallsBackToViewportWidth() {
        val size = resolveWebtoonImageSizePx(
            containerWidthPx = 1_080f,
            containerHeightPx = Float.POSITIVE_INFINITY,
            hasBoundedHeight = false,
            sourceWidthPx = 790f,
            sourceHeightPx = 1_200f,
            scaleMode = ReaderImageScaleMode.FIT_HEIGHT,
        )

        assertEquals(1_080f, size.width, 0.01f)
        assertEquals(1_640.51f, size.height, 0.01f)
    }
}
