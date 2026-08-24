package io.leostrange.mrcomic.core.data.dictionary

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.File
import java.util.zip.GZIPOutputStream

/**
 * Unit tests for gzip detection and SQLite validation logic in [DictionaryDownloader].
 * These test the pure static helpers and the import-validation path without
 * requiring Robolectric or a full Context.
 */
class DictionaryDownloaderGzipAndSqliteTest {

    // ── isGzip ───────────────────────────────────────────────────────────

    @Test
    fun isGzip_returnsTrueForGzippedContent() {
        val payload = "hello world".toByteArray()
        val compressed = ByteArrayOutputStream().use { bos ->
            GZIPOutputStream(bos).use { it.write(payload) }
            bos.toByteArray()
        }
        val stream = ByteArrayInputStream(compressed)
        assertTrue(DictionaryDownloader.isGzip(stream))
    }

    @Test
    fun isGzip_returnsFalseForPlainSqliteHeader() {
        val header = SQLITE_HEADER.copyOf()
        val stream = ByteArrayInputStream(header)
        assertFalse(DictionaryDownloader.isGzip(stream))
    }

    @Test
    fun isGzip_returnsFalseForEmptyStream() {
        val stream = ByteArrayInputStream(ByteArray(0))
        assertFalse(DictionaryDownloader.isGzip(stream))
    }

    @Test
    fun isGzip_returnsFalseForArbitraryBytes() {
        val stream = ByteArrayInputStream(byteArrayOf(0x00, 0x01, 0x02))
        assertFalse(DictionaryDownloader.isGzip(stream))
    }

    @Test
    fun isGzip_returnsTrueForOnlyMagicBytes() {
        // Only the two gzip magic bytes — valid enough for detection
        val stream = ByteArrayInputStream(byteArrayOf(0x1F.toByte(), 0x8B.toByte()))
        assertTrue(DictionaryDownloader.isGzip(stream))
    }

    // ── isValidSqlite ────────────────────────────────────────────────────

    @Test
    fun isValidSqlite_returnsTrueForCorrectHeader() {
        val file = writeTempFile(SQLITE_HEADER)
        assertTrue(DictionaryDownloader.isValidSqlite(file))
        file.delete()
    }

    @Test
    fun isValidSqlite_returnsFalseForGzipHeader() {
        val gzipMagic = byteArrayOf(0x1F.toByte(), 0x8B.toByte(), 0x08, 0x00, 0x00, 0x00, 0x00, 0x00)
        val file = writeTempFile(gzipMagic + ByteArray(8))
        assertFalse(DictionaryDownloader.isValidSqlite(file))
        file.delete()
    }

    @Test
    fun isValidSqlite_returnsFalseForTooShortFile() {
        val file = writeTempFile(ByteArray(4))
        assertFalse(DictionaryDownloader.isValidSqlite(file))
        file.delete()
    }

    @Test
    fun isValidSqlite_returnsFalseForWrongText() {
        val content = "Not a database!!".toByteArray(Charsets.US_ASCII)
        val file = writeTempFile(content)
        assertFalse(DictionaryDownloader.isValidSqlite(file))
        file.delete()
    }

    // ── Helpers ──────────────────────────────────────────────────────────

    private fun writeTempFile(content: ByteArray): File {
        val file = File.createTempFile("sqlite_test_", ".db", null)
        file.writeBytes(content)
        return file
    }

    companion object {
        /** The exact 16-byte SQLite header magic. */
        private val SQLITE_HEADER = byteArrayOf(
            0x53, 0x51, 0x4C, 0x69, 0x74, 0x65, 0x20, 0x66, // "SQLite f"
            0x6F, 0x72, 0x6D, 0x61, 0x74, 0x20, 0x33, 0x00, // "ormat 3\0"
        )
    }
}
