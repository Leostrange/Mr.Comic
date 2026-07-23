package io.leostrange.mrcomic.core.data.repository

import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Test

class ComicFormatDetectorTest {

    @Test
    fun extensionWinsBeforeZipMagicSoEpubIsNotClassifiedAsComicArchive() {
        val detector = detector()

        assertEquals(ComicFormat.EPUB, detector.detectByExtension("novel.epub"))
    }

    @Test
    fun archiveMimeUsesContentInspectionToKeepTextArchivesDistinct() {
        val detector = detector()

        assertEquals(ComicFormat.ZIP, detector.detectByMime("application/zip", containsTextArchive = true))
        assertEquals(ComicFormat.RAR, detector.detectByMime("application/x-rar", containsTextArchive = true))
    }

    @Test
    fun magicBytesRecognizePdfMobiAndDjvuWithoutNameOrMime() {
        assertEquals(ComicFormat.PDF, detector().detectByMagicBytes("%PDF-2.0".encodeToByteArray()))

        val mobi = ByteArray(80).also { "BOOKMOBI".encodeToByteArray().copyInto(it, 60) }
        assertEquals(ComicFormat.MOBI, detector().detectByMagicBytes(mobi))

        val djvu = ByteArray(20).also {
            "AT&TFORM".encodeToByteArray().copyInto(it)
            "DJVU".encodeToByteArray().copyInto(it, 12)
        }
        assertEquals(ComicFormat.DJVU, detector().detectByMagicBytes(djvu))
    }

    @Test
    fun titleDerivationDecodesUrisAndDropsOnlyTheLastExtension() {
        assertEquals("Book Name", deriveComicTitleFromPath("content://library/Book%20Name.epub"))
        assertEquals("archive.tar", deriveComicTitleFromPath("C:\\Books\\archive.tar.gz"))
    }

    private fun detector(): ComicFormatDetector = ComicFormatDetector(
        openInputStream = { error("The pure policy tests must not read a URI") },
        detectArchiveContentFormat = { error("The pure policy tests must not inspect an archive") }
    )
}
