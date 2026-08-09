package io.leostrange.mrcomic.core.data.repository

import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

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

    @Test
    fun detectArchiveContentFormat_textZipReturnsTextFormat() {
        val zip = zipOf(
            "page1.jpg" to "fake-jpeg-bytes",
            "book.txt" to "Hello world"
        )

        val format = detectArchiveContentFormat { ByteArrayInputStream(zip) }

        assertEquals(ComicFormat.TXT, format)
    }

    @Test
    fun detectArchiveContentFormat_htmlZipReturnsHtmlFormat() {
        val zip = zipOf("index.html" to "<html><body>Hello</body></html>")

        assertEquals(ComicFormat.HTML, detectArchiveContentFormat { ByteArrayInputStream(zip) })
    }

    @Test
    fun detectArchiveContentFormat_imageOnlyZipReturnsNull() {
        val zip = zipOf(
            "page1.jpg" to "fake-jpeg-bytes",
            "page2.png" to "fake-png-bytes"
        )

        assertNull(detectArchiveContentFormat { ByteArrayInputStream(zip) })
    }

    @Test
    fun detectArchiveContentFormat_stopsAtFirstHundredEntries() {
        val entries = (1..110).associate { "page$it.jpg" to "fake-jpeg-bytes" } +
            ("book.txt" to "Hello world")
        val zip = zipOf(entries)

        // The text file sits after the first 100 scanned entries, so the scanner
        // must not see it and must classify the archive as image-only (null).
        assertNull(detectArchiveContentFormat { ByteArrayInputStream(zip) })
    }

    @Test
    fun detectArchiveContentFormat_tarTextArchiveReturnsTextFormat() {
        val tar = tarOf("book.fb2" to "<FictionBook/>")

        assertEquals(ComicFormat.FB2, detectArchiveContentFormat { ByteArrayInputStream(tar) })
    }

    @Test
    fun detectArchiveContentFormat_nullStreamReturnsNull() {
        assertNull(detectArchiveContentFormat { null })
    }

    // ── 7z and RAR (file-based scanning) ───────────────────────────────────

    @Test
    fun detectArchiveContentFormat_7zTextArchiveReturnsTextFormat() {
        val file = sevenZFileOf("book.fb2" to "<FictionBook/>")

        try {
            assertEquals(ComicFormat.FB2, detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_7zImageOnlyReturnsNull() {
        val file = sevenZFileOf("page1.jpg" to "fake-jpeg-bytes")

        try {
            assertNull(detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_7zTextAfterImageLimitIsIgnored() {
        // Same 100-entry limit as the stream scanner: a text file placed after
        // the first 100 scanned entries must not flip the archive to a text format.
        val entries = (1..110).associate { "page$it.jpg" to "fake-jpeg-bytes" } +
            ("book.txt" to "Hello world")
        val file = sevenZFileOf(entries)

        try {
            assertNull(detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_corrupted7zReturnsNull() {
        val file = java.io.File.createTempFile("corrupt", ".7z")
        // 7z signature followed by garbage — must not crash the scanner.
        file.writeBytes(
            byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C) +
                "not-a-real-archive".toByteArray()
        )

        try {
            assertNull(detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_rar4TextArchiveReturnsTextFormat() {
        val file = rar4FileOf("book.fb2" to "<FictionBook/>")

        try {
            assertEquals(ComicFormat.FB2, detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_rar4ImageOnlyReturnsNull() {
        val file = rar4FileOf("page1.jpg" to "fake-jpeg-bytes")

        try {
            assertNull(detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_corruptedRarReturnsNull() {
        val file = java.io.File.createTempFile("corrupt", ".rar")
        // RAR4 signature followed by garbage — junrar rejects it, scanner returns null.
        file.writeBytes(
            byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00) +
                "not-a-real-archive".toByteArray()
        )

        try {
            assertNull(detectArchiveContentFormat(file))
        } finally {
            file.delete()
        }
    }

    @Test
    fun detectArchiveContentFormat_missingFileReturnsNull() {
        assertNull(detectArchiveContentFormat(java.io.File("no/such/file.7z")))
    }

    // ── Fixture builders ───────────────────────────────────────────────────

    private fun sevenZFileOf(vararg entries: Pair<String, String>): java.io.File =
        sevenZFileOf(entries.toMap())

    private fun sevenZFileOf(entries: Map<String, String>): java.io.File {
        val file = java.io.File.createTempFile("fixture", ".7z")
        org.apache.commons.compress.archivers.sevenz.SevenZOutputFile(file).use { sz ->
            entries.forEach { (name, content) ->
                val entry = sz.createArchiveEntry(java.io.File(name), name)
                sz.putArchiveEntry(entry)
                sz.write(content.toByteArray(Charsets.UTF_8))
                sz.closeArchiveEntry()
            }
        }
        return file
    }

    /**
     * Builds a minimal valid RAR4 archive with stored (uncompressed) entries.
     * junrar does not validate the header CRC, so zeros are accepted.
     */
    private fun rar4FileOf(vararg entries: Pair<String, String>): java.io.File {
        val file = java.io.File.createTempFile("fixture", ".rar")
        val out = ByteArrayOutputStream()
        // Mark header: "Rar!\x1A\x07\x00"
        out.write(byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00))
        // Main header: HEAD_SIZE=13 (includes the 2-byte HEAD_CRC)
        out.write(byteArrayOf(0, 0, 0x73, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0))
        entries.forEach { (name, content) ->
            val nameBytes = name.toByteArray(Charsets.UTF_8)
            val data = content.toByteArray(Charsets.UTF_8)
            out.write(0); out.write(0) // header crc (not validated)
            out.write(0x74) // file header type
            out.write(0); out.write(0x80) // flags: LONG_BLOCK
            val headerSize = 2 + 1 + 2 + 2 + 4 + 4 + 1 + 4 + 4 + 1 + 1 + 2 + 4 + nameBytes.size
            out.write(headerSize and 0xFF); out.write((headerSize shr 8) and 0xFF)
            writeIntLe(out, data.size) // pack size
            writeIntLe(out, data.size) // unpack size
            out.write(2) // host os: windows
            writeIntLe(out, 0) // file crc
            writeIntLe(out, 0) // file time
            out.write(20) // unpack version
            out.write(0x30) // method: store
            out.write(nameBytes.size and 0xFF); out.write((nameBytes.size shr 8) and 0xFF)
            writeIntLe(out, 0x20) // attributes
            out.write(nameBytes)
            out.write(data)
        }
        // End of archive block: HEAD_CRC=0x3DC4, type 0x7B, flags 0x4000, size 7
        out.write(byteArrayOf(0xC4.toByte(), 0x3D, 0x7B, 0x00, 0x40, 0x07, 0x00))
        file.writeBytes(out.toByteArray())
        return file
    }

    private fun writeIntLe(out: ByteArrayOutputStream, value: Int) {
        out.write(value and 0xFF)
        out.write((value shr 8) and 0xFF)
        out.write((value shr 16) and 0xFF)
        out.write((value shr 24) and 0xFF)
    }

    private fun detector(): ComicFormatDetector = ComicFormatDetector(
        openInputStream = { error("The pure policy tests must not read a URI") },
        archiveAccessFor = { error("The pure policy tests must not inspect an archive") }
    )

    private fun zipOf(vararg entries: Pair<String, String>): ByteArray =
        zipOf(entries.toMap())

    private fun zipOf(entries: Map<String, String>): ByteArray {
        val buffer = ByteArrayOutputStream()
        ZipOutputStream(buffer).use { zip ->
            entries.forEach { (name, content) ->
                zip.putNextEntry(ZipEntry(name))
                zip.write(content.toByteArray(Charsets.UTF_8))
                zip.closeEntry()
            }
        }
        return buffer.toByteArray()
    }

    private fun tarOf(vararg entries: Pair<String, String>): ByteArray {
        val buffer = ByteArrayOutputStream()
        org.apache.commons.compress.archivers.tar.TarArchiveOutputStream(buffer).use { tar ->
            entries.forEach { (name, content) ->
                val entry = org.apache.commons.compress.archivers.tar.TarArchiveEntry(name)
                entry.size = content.toByteArray(Charsets.UTF_8).size.toLong()
                tar.putArchiveEntry(entry)
                tar.write(content.toByteArray(Charsets.UTF_8))
                tar.closeArchiveEntry()
            }
        }
        return buffer.toByteArray()
    }
}
