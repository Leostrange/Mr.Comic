package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReadingMode
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderPageImageScalePolicyTest {
    @Test
    fun documentSpreadAlwaysFitsAvailableHeight() {
        assertEquals(
            ReaderImageScaleMode.FIT_HEIGHT.storedValue,
            resolvePageImageScaleMode(
                format = ComicFormat.PDF,
                readingMode = ReadingMode.DUAL_PAGE,
                requestedMode = ReaderImageScaleMode.FIT_WIDTH.storedValue,
            )
        )
    }

    @Test
    fun singlePdfPageKeepsRequestedScale() {
        assertEquals(
            ReaderImageScaleMode.FIT_WIDTH.storedValue,
            resolvePageImageScaleMode(
                format = ComicFormat.PDF,
                readingMode = ReadingMode.PAGE_LTR,
                requestedMode = ReaderImageScaleMode.FIT_WIDTH.storedValue,
            )
        )
    }
}
