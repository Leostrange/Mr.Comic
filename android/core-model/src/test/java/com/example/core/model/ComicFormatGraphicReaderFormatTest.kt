package com.example.core.model

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ComicFormatGraphicReaderFormatTest {

    @Test
    fun graphicReaderFormatsIncludeDjvuAndCbz() {
        assertTrue(ComicFormat.DJVU.isGraphicReaderFormat())
        assertTrue(ComicFormat.CBZ.isGraphicReaderFormat())
        assertTrue(ComicFormat.PDF.isGraphicReaderFormat())
    }

    @Test
    fun textReadingFormatsAreNotGraphicReaderFormats() {
        assertFalse(ComicFormat.EPUB.isGraphicReaderFormat())
        assertFalse(ComicFormat.TXT.isGraphicReaderFormat())
    }

    @Test
    fun archiveFormatsAreClassifiedCorrectly() {
        assertTrue(ComicFormat.ZIP.isArchiveFormat())
        assertTrue(ComicFormat.RAR.isArchiveFormat())
        assertTrue(ComicFormat.SEVENZ.isArchiveFormat())
        assertTrue(ComicFormat.TAR.isArchiveFormat())
    }

    @Test
    fun nonArchiveFormatsAreNotArchiveFormats() {
        assertFalse(ComicFormat.EPUB.isArchiveFormat())
        assertFalse(ComicFormat.CBZ.isArchiveFormat())
        assertFalse(ComicFormat.PDF.isArchiveFormat())
        assertFalse(ComicFormat.UNKNOWN.isArchiveFormat())
    }
}
