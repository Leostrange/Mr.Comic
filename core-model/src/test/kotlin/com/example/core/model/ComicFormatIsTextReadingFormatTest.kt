package com.example.core.model

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Tests for [ComicFormat.isTextReadingFormat()].
 */
class ComicFormatIsTextReadingFormatTest {

    @Test
    fun `text formats return true`() {
        assertTrue(ComicFormat.EPUB.isTextReadingFormat())
        assertTrue(ComicFormat.FB2.isTextReadingFormat())
        assertTrue(ComicFormat.TXT.isTextReadingFormat())
        assertTrue(ComicFormat.HTML.isTextReadingFormat())
        assertTrue(ComicFormat.MARKDOWN.isTextReadingFormat())
        assertTrue(ComicFormat.RTF.isTextReadingFormat())
        assertTrue(ComicFormat.MOBI.isTextReadingFormat())
        assertTrue(ComicFormat.AZW3.isTextReadingFormat())
        assertTrue(ComicFormat.DOCX.isTextReadingFormat())
        assertTrue(ComicFormat.ODT.isTextReadingFormat())
    }

    @Test
    fun `non-text formats return false`() {
        assertFalse(ComicFormat.CBZ.isTextReadingFormat())
        assertFalse(ComicFormat.CBR.isTextReadingFormat())
        assertFalse(ComicFormat.PDF.isTextReadingFormat())
        assertFalse(ComicFormat.ZIP.isTextReadingFormat())
        assertFalse(ComicFormat.RAR.isTextReadingFormat())
        assertFalse(ComicFormat.SEVENZ.isTextReadingFormat())
        assertFalse(ComicFormat.TAR.isTextReadingFormat())
        assertFalse(ComicFormat.DJVU.isTextReadingFormat())
        assertFalse(ComicFormat.FOLDER.isTextReadingFormat())
        assertFalse(ComicFormat.UNKNOWN.isTextReadingFormat())
    }
}