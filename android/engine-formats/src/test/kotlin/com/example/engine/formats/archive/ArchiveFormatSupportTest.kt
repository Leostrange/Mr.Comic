package com.example.engine.formats.archive

import com.example.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotEquals
import org.junit.Assert.assertTrue
import org.junit.Assert.assertThrows
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

    @Test
    fun textCacheFileNameIsStableAndContentScoped() {
        val first = ArchiveFormatSupport.textCacheFileName(
            prefix = "tar",
            archiveKey = "/books/archive.tar",
            entryName = "nested/Книга.fb2",
            entrySize = 1024,
            extension = "fb2"
        )
        val second = ArchiveFormatSupport.textCacheFileName(
            prefix = "tar",
            archiveKey = "/books/archive.tar",
            entryName = "nested/Книга.fb2",
            entrySize = 1024,
            extension = "fb2"
        )
        val changedSize = ArchiveFormatSupport.textCacheFileName(
            prefix = "tar",
            archiveKey = "/books/archive.tar",
            entryName = "nested/Книга.fb2",
            entrySize = 2048,
            extension = "fb2"
        )

        assertEquals(first, second)
        assertNotEquals(first, changedSize)
        assertTrue(first.startsWith("tar_"))
        assertTrue(first.endsWith(".fb2"))
    }

    @Test
    fun textCacheFileNameDigestDisambiguatesNewlineContainingParts() {
        val first = ArchiveFormatSupport.textCacheFileName(
            prefix = "zip",
            archiveKey = "archive",
            entryName = "nested\nbook.txt",
            entrySize = 7,
            extension = "txt"
        )
        val second = ArchiveFormatSupport.textCacheFileName(
            prefix = "zip",
            archiveKey = "archive\nnested",
            entryName = "book.txt",
            entrySize = 7,
            extension = "txt"
        )

        assertNotEquals(digestPart(first), digestPart(second))
    }

    @Test
    fun textCacheFileNameRejectsNegativeEntrySize() {
        assertThrows(IllegalArgumentException::class.java) {
            ArchiveFormatSupport.textCacheFileName(
                prefix = "zip",
                archiveKey = "archive.zip",
                entryName = "book.txt",
                entrySize = -1,
                extension = "txt"
            )
        }
    }

    private fun digestPart(fileName: String): String =
        fileName.removePrefix("zip_").substringBefore('_')
}
