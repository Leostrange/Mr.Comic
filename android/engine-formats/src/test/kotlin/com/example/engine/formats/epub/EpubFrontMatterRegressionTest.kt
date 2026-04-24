package com.example.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubFrontMatterRegressionTest {

    @Test
    fun promotedFrontispieceIsFollowedByFirstTextPageWithoutBlankBridgePage() = runBlocking {
        val epub = File.createTempFile("mrcomic-frontispiece-", ".epub")
        try {
            writeFrontispieceFixture(epub)
            val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
            try {
                val pageCount = reader.getPageCount()
                assertEquals("Frontispiece + first chapter should be the only reader pages", 2, pageCount)

                val pages = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }
                assertEquals(2, pages.size)
                assertTrue("Expected promoted frontispiece to stay visible", pages[0].contains("Frontispiece Plate"))
                assertTrue("Expected first text page immediately after frontispiece", pages[1].contains("chapterToken001"))
                assertFalse(
                    "EPUB must not keep a blank XHTML wrapper between frontispiece and text",
                    pages.any { visibleText(it).isBlank() && !hasRenderableMedia(it) }
                )
            } finally {
                reader.close()
            }
        } finally {
            epub.delete()
        }
    }

    private fun writeFrontispieceFixture(file: File) {
        ZipOutputStream(file.outputStream()).use { zip ->
            zip.writeEntry("mimetype", "application/epub+zip")
            zip.writeEntry(
                "META-INF/container.xml",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
                      <rootfiles>
                        <rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/>
                      </rootfiles>
                    </container>
                """.trimIndent()
            )
            zip.writeEntry(
                "OEBPS/content.opf",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <package xmlns="http://www.idpf.org/2007/opf" unique-identifier="bookid" version="2.0">
                      <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
                        <dc:title>Frontispiece Regression</dc:title>
                        <dc:identifier id="bookid">frontispiece-regression</dc:identifier>
                      </metadata>
                      <manifest>
                        <item id="frontispiece" href="frontispiece.xhtml" media-type="application/xhtml+xml"/>
                        <item id="empty" href="empty.xhtml" media-type="application/xhtml+xml"/>
                        <item id="chapter" href="chapter.xhtml" media-type="application/xhtml+xml"/>
                        <item id="ncx" href="toc.ncx" media-type="application/x-dtbncx+xml"/>
                      </manifest>
                      <spine toc="ncx">
                        <itemref idref="empty"/>
                        <itemref idref="chapter"/>
                      </spine>
                      <guide>
                        <reference type="frontispiece" title="Frontispiece" href="frontispiece.xhtml"/>
                      </guide>
                    </package>
                """.trimIndent()
            )
            zip.writeEntry(
                "OEBPS/toc.ncx",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <ncx xmlns="http://www.daisy.org/z3986/2005/ncx/" version="2005-1">
                      <head><meta name="dtb:uid" content="frontispiece-regression"/></head>
                      <docTitle><text>Frontispiece Regression</text></docTitle>
                      <navMap>
                        <navPoint id="chapter" playOrder="1">
                          <navLabel><text>Chapter</text></navLabel>
                          <content src="chapter.xhtml"/>
                        </navPoint>
                      </navMap>
                    </ncx>
                """.trimIndent()
            )
            zip.writeEntry(
                "OEBPS/frontispiece.xhtml",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html xmlns="http://www.w3.org/1999/xhtml">
                      <head><title>Frontispiece</title></head>
                      <body>
                        <svg xmlns="http://www.w3.org/2000/svg" width="320" height="480" viewBox="0 0 320 480">
                          <rect width="320" height="480" fill="#eeeeee"/>
                          <text x="48" y="220">Frontispiece Plate</text>
                        </svg>
                      </body>
                    </html>
                """.trimIndent()
            )
            zip.writeEntry(
                "OEBPS/empty.xhtml",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html xmlns="http://www.w3.org/1999/xhtml">
                      <head><title>Empty bridge</title></head>
                      <body>
                        <div class="blank">&nbsp;</div>
                      </body>
                    </html>
                """.trimIndent()
            )
            zip.writeEntry(
                "OEBPS/chapter.xhtml",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html xmlns="http://www.w3.org/1999/xhtml">
                      <head><title>Chapter</title></head>
                      <body>
                        <h1>Chapter One</h1>
                        <p>chapterToken001 chapterToken002 chapterToken003 chapterToken004 chapterToken005 chapterToken006 chapterToken007 chapterToken008 chapterToken009 chapterToken010</p>
                      </body>
                    </html>
                """.trimIndent()
            )
        }
    }

    private fun ZipOutputStream.writeEntry(name: String, text: String) {
        putNextEntry(ZipEntry(name))
        write(text.toByteArray(Charsets.UTF_8))
        closeEntry()
    }

    private fun visibleText(html: String): String {
        return Jsoup.parse(html)
            .text()
            .replace('\u00A0', ' ')
            .replace(Regex("\\s+"), " ")
            .trim()
    }

    private fun hasRenderableMedia(html: String): Boolean {
        return Regex("""<\s*(?:img|image|svg)\b""", RegexOption.IGNORE_CASE).containsMatchIn(html)
    }
}
