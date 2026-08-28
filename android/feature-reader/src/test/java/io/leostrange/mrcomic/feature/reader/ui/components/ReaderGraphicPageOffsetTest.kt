package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderGraphicPageOffsetTest {

    @Test
    fun pdfAndDjvuUseTheSameDocumentAlignment() {
        val expected = ReaderGraphicPageOffset(xDp = 0, yDp = 20)

        assertEquals(expected, readerGraphicPageOffset(ComicFormat.PDF))
        assertEquals(expected, readerGraphicPageOffset(ComicFormat.DJVU))
    }

    @Test
    fun otherGraphicFormatsRemainCentered() {
        val expected = ReaderGraphicPageOffset(xDp = 0, yDp = 0)

        assertEquals(expected, readerGraphicPageOffset(ComicFormat.CBZ))
        assertEquals(expected, readerGraphicPageOffset(ComicFormat.CBR))
        assertEquals(expected, readerGraphicPageOffset(null))
    }
}
