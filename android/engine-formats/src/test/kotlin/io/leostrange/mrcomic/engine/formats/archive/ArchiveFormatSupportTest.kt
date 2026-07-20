package io.leostrange.mrcomic.engine.formats.archive

import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.assertNull
import org.junit.Test

class ArchiveFormatSupportTest {

    @Test
    fun archiveWithCoverAndSingleTextEntryIsABook() {
        val entries = listOf(
            "cover.jpg",
            "book/intro.png",
            "book/content.html"
        )

        assertEquals(ArchiveContentKind.SINGLE_BOOK, ArchiveFormatSupport.classify(entries))
    }

    @Test
    fun archiveWithFrontispieceAndSingleTextEntryIsABook() {
        val entries = listOf(
            "frontispiece.png",
            "titlepage.jpg",
            "book.epub"
        )

        assertEquals(ArchiveContentKind.SINGLE_BOOK, ArchiveFormatSupport.classify(entries))
    }

    @Test
    fun imageSequenceWithoutTextStaysRaster() {
        val entries = listOf(
            "001.jpg",
            "002.jpg",
            "003.jpg"
        )

        assertEquals(ArchiveContentKind.IMAGE_SEQUENCE, ArchiveFormatSupport.classify(entries))
    }

    @Test
    fun selectedTextEntryKeepsSingleBookInnerFormat() {
        val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
            listOf("cover.jpg", "notes/readme.md")
        )

        assertEquals(ArchiveContentKind.SINGLE_BOOK, resolved.kind)
        assertEquals("notes/readme.md", resolved.entryName)
        assertEquals(ComicFormat.MARKDOWN, resolved.format)
    }

    @Test
    fun textFormatDetectionKeepsInnerBookFormat() {
        assertEquals(ComicFormat.HTML, ArchiveFormatSupport.textFormatForExtension("html"))
        assertEquals(ComicFormat.MARKDOWN, ArchiveFormatSupport.textFormatForExtension("md"))
        assertEquals(ComicFormat.EPUB, ArchiveFormatSupport.textFormatForExtension("epub"))
        assertEquals(ComicFormat.MOBI, ArchiveFormatSupport.textFormatForExtension("mobi"))
     }
 
     @Test
     fun `archive with text entry is classified as single book`() {
         val entries = listOf(
             "document.txt"
         )
         assertEquals(ArchiveContentKind.SINGLE_BOOK, ArchiveFormatSupport.classify(entries))
     }
 
     @Test
     fun `archive with only image entries is classified as image sequence`() {
         val entries = listOf(
             "001.jpg",
             "002.png"
         )
         assertEquals(ArchiveContentKind.IMAGE_SEQUENCE, ArchiveFormatSupport.classify(entries))
     }
 
     @Test
     fun `resolved text entry from archive is a text reading format`() {
         val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
             listOf("cover.jpg", "content.html")
         )
         assertTrue(resolved.format?.isTextReadingFormat() == true)
     }
 
     @Test
     fun `resolved image entry from archive is not a text reading format`() {
         val resolved = ArchiveFormatSupport.resolveSingleBookTextEntry(
             listOf("001.jpg", "002.png")
         )
         assertNull(resolved.format)
     }

    // --- Regression: a comic page sequence must not be hijacked by an auxiliary text file (P1-1) ---

    @Test
    fun comicPageSequenceWithStrayReadmeStaysImageSequence() {
        val entries = (1..50).map { "%03d.jpg".format(it) } + "readme.txt"
        assertEquals(ArchiveContentKind.IMAGE_SEQUENCE, ArchiveFormatSupport.classify(entries))
    }

    @Test
    fun comicPageSequenceWithStrayAboutHtmlStaysImageSequence() {
        val entries = listOf("001.jpg", "002.jpg", "003.jpg", "004.jpg", "about.html")
        assertEquals(ArchiveContentKind.IMAGE_SEQUENCE, ArchiveFormatSupport.classify(entries))
    }

    @Test
    fun genuineBookFormatStillWinsOverNumericImages() {
        // An actual e-book (epub/fb2) accompanied by numbered plate images remains a book —
        // only auxiliary plain-text formats (txt/html/md) yield to a comic page sequence.
        val entries = (1..30).map { "%03d.jpg".format(it) } + "book.epub"
        assertEquals(ArchiveContentKind.SINGLE_BOOK, ArchiveFormatSupport.classify(entries))
    }
}
