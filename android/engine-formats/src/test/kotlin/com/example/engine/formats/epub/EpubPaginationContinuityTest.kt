package com.example.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.Locale
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubPaginationContinuityTest {

    @Test
    fun oversizedParagraphKeepsTokensWholeAcrossPages() = runBlocking {
        val tokens = (1..240).map { index -> String.format(Locale.US, "epubToken%03d", index) }
        val epub = File.createTempFile("mrcomic-epub-continuity-", ".epub")
        try {
            writeFixture(epub, tokens)
            val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
            try {
                val pageCount = reader.getPageCount()
                assertTrue("EPUB should paginate long paragraphs into multiple pages", pageCount > 1)

                val pages = (0 until pageCount).mapNotNull { reader.getHtmlPage(it) }
                val joinedText = pages.joinToString(" ") { visibleText(it) }
                assertTokensPresentAndOrdered(tokens, joinedText)
            } finally {
                reader.close()
            }
        } finally {
            epub.delete()
        }
    }

    private fun writeFixture(file: File, tokens: List<String>) {
        val longParagraph = tokens.joinToString(" ")
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
                        <dc:title>Continuity Regression</dc:title>
                        <dc:identifier id="bookid">continuity-regression</dc:identifier>
                      </metadata>
                      <manifest>
                        <item id="chapter" href="chapter.xhtml" media-type="application/xhtml+xml"/>
                        <item id="ncx" href="toc.ncx" media-type="application/x-dtbncx+xml"/>
                      </manifest>
                      <spine toc="ncx">
                        <itemref idref="chapter"/>
                      </spine>
                    </package>
                """.trimIndent()
            )
            zip.writeEntry(
                "OEBPS/toc.ncx",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <ncx xmlns="http://www.daisy.org/z3986/2005/ncx/" version="2005-1">
                      <head><meta name="dtb:uid" content="continuity-regression"/></head>
                      <docTitle><text>Continuity Regression</text></docTitle>
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
                "OEBPS/chapter.xhtml",
                """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html xmlns="http://www.w3.org/1999/xhtml">
                      <head><title>Chapter</title></head>
                      <body>
                        <h1>Chapter One</h1>
                        <p>$longParagraph</p>
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

    private fun assertTokensPresentAndOrdered(tokens: List<String>, text: String) {
        var previousIndex = -1
        tokens.forEach { token ->
            val index = text.indexOf(token)
            assertTrue("EPUB dropped token $token", index >= 0)
            assertTrue("EPUB reordered token $token", index > previousIndex)
            previousIndex = index
        }
    }
}
