package com.example.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.nio.charset.Charset
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubEncodingTest {

    @Test
    fun invalidUtf8WesternChapterPrefersWindows1252OverCyrillicFallback() {
        val charset = Charset.forName("windows-1252")
        val expected = "Caf\u00E9 d\u00E9j\u00E0 vu \u2014 na\u00EFve fa\u00E7ade"
        val html = """<?xml version="1.0" encoding="UTF-8"?><html><body><p>Cafe deja vu - naive facade</p><p>$expected</p></body></html>"""
        val bytes = html.toByteArray(charset)

        assertEquals("windows-1252", detectEpubTextCharset(bytes).name())
        assertTrue(decodeEpubText(bytes).contains(expected))
    }

    @Test
    fun invalidUtf8CyrillicChapterStillPrefersWindows1251() {
        val charset = Charset.forName("windows-1251")
        val expected = "\u041F\u0440\u0438\u0432\u0435\u0442 \u0438\u0437 EPUB"
        val html = """<?xml version="1.0" encoding="UTF-8"?><html><body><p>$expected</p></body></html>"""
        val bytes = html.toByteArray(charset)

        assertEquals("windows-1251", detectEpubTextCharset(bytes).name())
        assertTrue(decodeEpubText(bytes).contains(expected))
    }

    @Test
    fun readerDecodesWindows1252ChapterDeclaredAsUtf8() = runBlocking {
        val expected = "Caf\u00E9 d\u00E9j\u00E0 vu \u2014 na\u00EFve fa\u00E7ade"
        val sample = createEncodingEpub(
            chapterBytes = """<?xml version="1.0" encoding="UTF-8"?><html><body><p>$expected</p></body></html>"""
                .toByteArray(Charset.forName("windows-1252"))
        )

        try {
            val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
            try {
                val page = reader.getHtmlPage(0).orEmpty()
                assertTrue(page.contains(expected))
            } finally {
                reader.close()
            }
        } finally {
            sample.delete()
        }
    }

    private fun createEncodingEpub(chapterBytes: ByteArray): File {
        val tempFile = File.createTempFile("epub_encoding_", ".epub")
        ZipOutputStream(tempFile.outputStream().buffered()).use { zip ->
            putZipBytes(zip, "mimetype", "application/epub+zip".toByteArray(Charsets.UTF_8))
            putZipBytes(
                zip,
                "META-INF/container.xml",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
                      <rootfiles>
                        <rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/>
                      </rootfiles>
                    </container>
                """.trimIndent().toByteArray(Charsets.UTF_8)
            )
            putZipBytes(
                zip,
                "OEBPS/content.opf",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <package version="2.0" xmlns="http://www.idpf.org/2007/opf">
                      <manifest>
                        <item id="chapter" href="chapter.xhtml" media-type="application/xhtml+xml"/>
                      </manifest>
                      <spine>
                        <itemref idref="chapter"/>
                      </spine>
                    </package>
                """.trimIndent().toByteArray(Charsets.UTF_8)
            )
            putZipBytes(zip, "OEBPS/chapter.xhtml", chapterBytes)
        }
        return tempFile
    }

    private fun putZipBytes(zip: ZipOutputStream, entryName: String, bytes: ByteArray) {
        zip.putNextEntry(ZipEntry(entryName))
        zip.write(bytes)
        zip.closeEntry()
    }
}
