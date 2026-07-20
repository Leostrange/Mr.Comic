package io.leostrange.mrcomic.engine.formats.base

import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Test
import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class FormatDetectorTest {

    @Test
    fun `detect recognizes single-page djvu by magic bytes`() {
        val header = ByteArray(80)
        "AT&TFORM".encodeToByteArray().copyInto(header, 0)
        "DJVU".encodeToByteArray().copyInto(header, 12)

        assertEquals(
            ComicFormat.DJVU,
            FormatDetector.detect(ByteArrayInputStream(header), "mystery.bin")
        )
    }

    @Test
    fun `detect recognizes multipage djvu by magic bytes`() {
        val header = ByteArray(80)
        "AT&TFORM".encodeToByteArray().copyInto(header, 0)
        "DJVM".encodeToByteArray().copyInto(header, 12)

        assertEquals(
            ComicFormat.DJVU,
            FormatDetector.detect(ByteArrayInputStream(header), "mystery.bin")
        )
    }

    @Test
    fun `detect still falls back to extension when magic bytes are absent`() {
        val header = ByteArray(80)

        assertEquals(
            ComicFormat.DJVU,
            FormatDetector.detect(ByteArrayInputStream(header), "document.djvu")
        )
    }

    @Test
    fun `detect prefers epub extension over zip magic bytes`() {
        assertEquals(
            ComicFormat.EPUB,
            FormatDetector.detect(ByteArrayInputStream(minimalZip()), "book.epub")
        )
    }

    @Test
    fun `detect recognizes epub container when name has no extension`() {
        assertEquals(
            ComicFormat.EPUB,
            FormatDetector.detect(
                ByteArrayInputStream(
                    minimalZip(
                        "mimetype" to "application/epub+zip",
                        "META-INF/container.xml" to "<container/>",
                        "OEBPS/chapter.xhtml" to "<html/>"
                    )
                ),
                "content"
            )
        )
    }

    @Test
    fun `detect recognizes docx container when name has no extension`() {
        assertEquals(
            ComicFormat.DOCX,
            FormatDetector.detect(
                ByteArrayInputStream(
                    minimalZip(
                        "[Content_Types].xml" to "<Types/>",
                        "word/document.xml" to "<document/>"
                    )
                ),
                "content"
            )
        )
    }

    private fun minimalZip(vararg entries: Pair<String, String>): ByteArray {
        val safeEntries = entries.takeIf { it.isNotEmpty() }
            ?: arrayOf("page001.jpg" to "not-really-an-image")
        val output = ByteArrayOutputStream()
        ZipOutputStream(output).use { zip ->
            safeEntries.forEach { (name, body) ->
                zip.putNextEntry(ZipEntry(name))
                zip.write(body.toByteArray())
                zip.closeEntry()
            }
        }
        return output.toByteArray()
    }
}
