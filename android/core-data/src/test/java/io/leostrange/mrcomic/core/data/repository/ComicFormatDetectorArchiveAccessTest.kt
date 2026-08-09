package io.leostrange.mrcomic.core.data.repository

import android.net.Uri
import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.InputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [35])

/**
 * ARC-09b: exercise the [comicFormatDetector]'s URI-aware archive dispatcher
 * through explicit [ArchiveStreamSource] / [RandomAccessArchiveMaterialiser]
 * adapters, so the classification logic is testable without Android content
 * resolution. The full file-based and stream-based scanners are already
 * covered by [comicFormatDetectorTest]; this class targets the dispatch glue
 * specifically — text vs image, 100-entry limit, content URI handling, 7Z/RAR
 * error paths, and temp file cleanup.
 */
class ComicFormatDetectorArchiveAccessTest {

    private val anyUri = Uri.parse("content://library/test")

    // ── ZIP / TAR (stream path) ─────────────────────────────────────────────

    @Test
    fun zipTextArchiveBehindStreamSourceReturnsTextFormat() {
        val zip = zipOf("book.txt" to "hello world")
        val detector = detectorFor(zip)

        assertEquals(ComicFormat.TXT, detector.archiveContentForUri(anyUri))
    }

    @Test
    fun zipImageOnlyArchiveReturnsNull() {
        val zip = zipOf(
            "page1.jpg" to "fake-jpeg-bytes",
            "page2.png" to "fake-png-bytes"
        )
        val detector = detectorFor(zip)

        assertNull(detector.archiveContentForUri(anyUri))
    }

    @Test
    fun tarTextArchiveBehindStreamSourceReturnsTextFormat() {
        val tar = tarOf("book.fb2" to "<FictionBook/>")
        val detector = detectorFor(tar)

        assertEquals(ComicFormat.FB2, detector.archiveContentForUri(anyUri))
    }

    @Test
    fun hundredEntryLimitAlsoAppliesToUriDispatcher() {
        // 110 image entries followed by a text entry: the dispatcher must stop
        // scanning after the 100th image and miss the text file, classifying
        // the archive as image-only.
        val entries = (1..110).associate { "page$it.jpg" to "fake-jpeg-bytes" } +
            ("book.txt" to "hello world")
        val zip = zipOf(entries)
        val detector = detectorFor(zip)

        assertNull(detector.archiveContentForUri(anyUri))
    }

    // ── 7Z (random-access path + cleanup) ───────────────────────────────────

    @Test
    fun sevenZTextArchiveUsesRandomAccessAndCleansUpTempFile() {
        val fixture = sevenZBytes("book.fb2" to "<FictionBook/>")
        val fixtureFolder = createTempFolder()
        val materialiser = RecordingMaterialiser(fixture, fixtureFolder)
        val detector = detectorFor(
            streamBytes = sevenZHeaderBytes(),
            materialiser = materialiser
        )

        assertEquals(ComicFormat.FB2, detector.archiveContentForUri(anyUri))
        assertTrue("Random materialiser must be invoked for 7Z", materialiser.invoked)
        assertNotNull(materialiser.lastDelivered)
        assertFalse(
            "Temp file must be deleted after 7Z scan",
            materialiser.lastDelivered!!.exists()
        )
    }

    @Test
    fun sevenZImageOnlyArchiveReturnsNullAndCleansUpTempFile() {
        val fixture = sevenZBytes("page1.jpg" to "fake-jpeg-bytes")
        val fixtureFolder = createTempFolder()
        val materialiser = RecordingMaterialiser(fixture, fixtureFolder)
        val detector = detectorFor(
            streamBytes = sevenZHeaderBytes(),
            materialiser = materialiser
        )

        assertNull(detector.archiveContentForUri(anyUri))
        assertTrue(materialiser.invoked)
        assertFalse(materialiser.lastDelivered!!.exists())
    }

    @Test
    fun corruptedSevenZCleansUpTempFile() {
        // 7z signature followed by garbage — the scanner must swallow the
        // exception, return null, and still delete the materialised file.
        val fixtureFolder = createTempFolder()
        val materialiser = RecordingMaterialiser(
            fixtureBytes = byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C) +
                "not-a-real-archive".toByteArray(),
            fixtureFolder = fixtureFolder
        )
        val detector = detectorFor(
            streamBytes = sevenZHeaderBytes(),
            materialiser = materialiser
        )

        assertNull(detector.archiveContentForUri(anyUri))
        assertTrue(materialiser.invoked)
        assertFalse(
            "Temp file must be deleted even when the scanner throws",
            materialiser.lastDelivered!!.exists()
        )
    }

    // ── RAR (random-access path + cleanup) ──────────────────────────────────

    @Test
    fun rar4TextArchiveUsesRandomAccessAndCleansUpTempFile() {
        val fixture = rar4Bytes("book.fb2" to "<FictionBook/>")
        val fixtureFolder = createTempFolder()
        val materialiser = RecordingMaterialiser(fixture, fixtureFolder)
        val detector = detectorFor(
            streamBytes = rar4HeaderBytes(),
            materialiser = materialiser
        )

        assertEquals(ComicFormat.FB2, detector.archiveContentForUri(anyUri))
        assertTrue(materialiser.invoked)
        assertFalse(materialiser.lastDelivered!!.exists())
    }

    @Test
    fun corruptedRarCleansUpTempFile() {
        val fixtureFolder = createTempFolder()
        val materialiser = RecordingMaterialiser(
            fixtureBytes = byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00) +
                "not-a-real-archive".toByteArray(),
            fixtureFolder = fixtureFolder
        )
        val detector = detectorFor(
            streamBytes = rar4HeaderBytes(),
            materialiser = materialiser
        )

        assertNull(detector.archiveContentForUri(anyUri))
        assertTrue(materialiser.invoked)
        assertFalse(
            "Temp file must be deleted even when the scanner throws",
            materialiser.lastDelivered!!.exists()
        )
    }

    // ── content URI / adapter contract ──────────────────────────────────────

    @Test
    fun nullStreamFromContentUriReturnsNull() {
        val detector = detectorFor(streamBytes = null)

        assertNull(detector.archiveContentForUri(anyUri))
    }

    @Test
    fun nullRandomAccessMaterialiserFor7ZReturnsNull() {
        // Detection recognises a 7z header but the materialiser cannot produce
        // a temp file (e.g. content provider failed to copy): the detector
        // must return null cleanly without throwing.
        val detector = detectorFor(
            streamBytes = sevenZHeaderBytes(),
            materialiser = NullMaterialiser
        )

        assertNull(detector.archiveContentForUri(Uri.parse("content://library/broken.7z")))
    }

    @Test
    fun nullRandomAccessMaterialiserForRarReturnsNull() {
        val detector = detectorFor(
            streamBytes = rar4HeaderBytes(),
            materialiser = NullMaterialiser
        )

        assertNull(detector.archiveContentForUri(Uri.parse("content://library/broken.rar")))
    }

    @Test
    fun materialiserReceivesCorrectExtensionBasedOnMagicHeader() {
        val extensions = mutableListOf<String>()
        val recording = object : RandomAccessArchiveMaterialiser {
            override fun materialise(extension: String): File? {
                extensions += extension
                val file = File.createTempFile("capture-arc", ".$extension")
                // Empty the file so the scanner fails fast without leaving
                // a misleading fixture file on disk for the assertion.
                file.writeBytes(byteArrayOf())
                return file
            }
        }

        val sevenZDetector = detectorFor(sevenZHeaderBytes(), recording)
        sevenZDetector.archiveContentForUri(Uri.parse("content://library/x.7z"))

        val rarDetector = detectorFor(rar4HeaderBytes(), recording)
        rarDetector.archiveContentForUri(Uri.parse("content://library/x.rar"))

        assertEquals(listOf("7z", "rar"), extensions)
    }

    // ── Helpers ─────────────────────────────────────────────────────────────

    private fun detectorFor(
        streamBytes: ByteArray?,
        materialiser: RandomAccessArchiveMaterialiser = NotInvokedMaterialiser
    ): ComicFormatDetector =
        ComicFormatDetector(
            openInputStream = { error("URI magic-byte sniff must not be reached in these tests") },
            archiveAccessFor = { _ ->
                ArchiveAccess(
                    stream = ArchiveStreamSource { streamBytes?.let(::ByteArrayInputStream) },
                    randomAccess = materialiser
                )
            }
        )

    private fun createTempFolder(): File =
        File.createTempFile("scanner-folder", "anchor").apply { delete(); mkdirs() }

    private fun sevenZHeaderBytes(): ByteArray =
        byteArrayOf(0x37, 0x7A, 0xBC.toByte(), 0xAF.toByte(), 0x27, 0x1C) +
            "<placeholder>".toByteArray()

    private fun rar4HeaderBytes(): ByteArray =
        byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00) +
            "<placeholder>".toByteArray()

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

    /** Builds a valid 7Z archive in a temp file and returns its bytes. */
    private fun sevenZBytes(vararg entries: Pair<String, String>): ByteArray =
        sevenZBytes(entries.toMap())

    private fun sevenZBytes(entries: Map<String, String>): ByteArray {
        val file = File.createTempFile("fixture-arc-access", ".7z")
        org.apache.commons.compress.archivers.sevenz.SevenZOutputFile(file).use { sz ->
            entries.forEach { (name, content) ->
                val entry = sz.createArchiveEntry(File(name), name)
                sz.putArchiveEntry(entry)
                sz.write(content.toByteArray(Charsets.UTF_8))
                sz.closeArchiveEntry()
            }
        }
        return file.readBytes().also { file.delete() }
    }

    private fun rar4Bytes(vararg entries: Pair<String, String>): ByteArray {
        val out = ByteArrayOutputStream()
        out.write(byteArrayOf(0x52, 0x61, 0x72, 0x21, 0x1A, 0x07, 0x00))
        out.write(byteArrayOf(0, 0, 0x73, 0, 0, 13, 0, 0, 0, 0, 0, 0, 0))
        entries.forEach { (name, content) ->
            val nameBytes = name.toByteArray(Charsets.UTF_8)
            val data = content.toByteArray(Charsets.UTF_8)
            out.write(0); out.write(0)
            out.write(0x74)
            out.write(0); out.write(0x80)
            val headerSize = 2 + 1 + 2 + 2 + 4 + 4 + 1 + 4 + 4 + 1 + 1 + 2 + 4 + nameBytes.size
            out.write(headerSize and 0xFF); out.write((headerSize shr 8) and 0xFF)
            writeIntLe(out, data.size)
            writeIntLe(out, data.size)
            out.write(2)
            writeIntLe(out, 0)
            writeIntLe(out, 0)
            out.write(20)
            out.write(0x30)
            out.write(nameBytes.size and 0xFF); out.write((nameBytes.size shr 8) and 0xFF)
            writeIntLe(out, 0x20)
            out.write(nameBytes)
            out.write(data)
        }
        out.write(byteArrayOf(0xC4.toByte(), 0x3D, 0x7B, 0x00, 0x40, 0x07, 0x00))
        return out.toByteArray()
    }

    private fun writeIntLe(out: ByteArrayOutputStream, value: Int) {
        out.write(value and 0xFF)
        out.write((value shr 8) and 0xFF)
        out.write((value shr 16) and 0xFF)
        out.write((value shr 24) and 0xFF)
    }

    /**
     * Hands out a fresh temp file seeded with [fixtureBytes]. The detector
     * must delete the file after scanning; we record [lastDelivered] so the
     * assertion can verify cleanup and so the test is robust against
     * assert-side-effects on the fixture file.
     */
    private class RecordingMaterialiser(
        private val fixtureBytes: ByteArray,
        private val fixtureFolder: File
    ) : RandomAccessArchiveMaterialiser {
        var invoked: Boolean = false
        var lastDelivered: File? = null
        var lastExtension: String? = null

        override fun materialise(extension: String): File? {
            invoked = true
            lastExtension = extension
            val target = File.createTempFile("scanner-temp", ".$extension", fixtureFolder)
            target.writeBytes(fixtureBytes)
            lastDelivered = target
            return target
        }
    }

    private object NotInvokedMaterialiser : RandomAccessArchiveMaterialiser {
        override fun materialise(extension: String): File? =
            error("Random-access materialiser must not be invoked on the stream path")
    }

    private object NullMaterialiser : RandomAccessArchiveMaterialiser {
        override fun materialise(extension: String): File? = null
    }
}
