package com.example.engine.formats.archive

import com.example.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Test

class ArchiveFormatSupportTest {

    @Test
    fun naturalSortOrdersComicPagesByNumber() {
        val pages = listOf(
            "chapter/page10.jpg",
            "chapter/page2.jpg",
            "chapter/page1.jpg",
            "chapter/page01.jpg"
        ).sortedWith(ArchiveFormatSupport.naturalPathComparator)

        assertEquals(
            listOf(
                "chapter/page1.jpg",
                "chapter/page01.jpg",
                "chapter/page2.jpg",
                "chapter/page10.jpg"
            ),
            pages
        )
    }

    @Test
    fun classifierDetectsSingleBookArchiveWithCover() {
        val kind = ArchiveFormatSupport.classify(
            listOf(
                "cover.jpg",
                "META-INF/container.xml",
                "book.epub"
            )
        )

        assertEquals(ArchiveContentKind.SINGLE_BOOK, kind)
    }

    @Test
    fun classifierKeepsMixedArchiveOutOfSingleBookDelegate() {
        val kind = ArchiveFormatSupport.classify(
            listOf(
                "book.epub",
                "pages/page001.jpg",
                "pages/page002.jpg"
            )
        )

        assertEquals(ArchiveContentKind.MIXED, kind)
    }

    @Test
    fun textExtensionsMapToReaderFormats() {
        assertEquals(ComicFormat.EPUB, ArchiveFormatSupport.textFormatForExtension("epub"))
        assertEquals(ComicFormat.MOBI, ArchiveFormatSupport.textFormatForExtension("prc"))
        assertEquals(ComicFormat.AZW3, ArchiveFormatSupport.textFormatForExtension("kf8"))
        assertEquals(ComicFormat.HTML, ArchiveFormatSupport.textFormatForExtension("xhtml"))
    }
}
