package io.leostrange.mrcomic.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

/**
 * Regression tests for EPUB [EpubFormatReader.htmlAssetBasePath] consistency.
 *
 * Two index spaces coexist in EPUB:
 *  - page index   → into `pages` (one spine item may produce several chunk pages)
 *  - section index → into `textDocumentSections` (one entry per spine item, chunks collapsed)
 *
 * htmlAssetBasePath must return the correct XHTML entry path for BOTH spaces and must
 * stay consistent for flat-layout EPUBs (entries without a '/' in the path).
 */
class EpubHtmlAssetBasePathTest {

    @Test
    fun flatLayoutAssetBasePathResolvesForEachSection() = runBlocking {
        val tempEpub = File.createTempFile("flat_asset_epub_", ".epub")
        try {
            // Flat layout: XHTML + CSS live in the zip root (no OPS/ dir).
            // entry "style.css" is referenced relatively from each chapter.
            ZipOutputStream(tempEpub.outputStream().buffered()).use { zip ->
                putZipText(zip, "mimetype", "application/epub+zip")
                putZipText(zip, "container.xml", """
                    <?xml version="1.0"?>
                    <container version="1.0">
                      <rootfiles>
                        <rootfile full-path="content.opf" media-type="application/oebps-package+xml"/>
                      </rootfiles>
                    </container>
                """.trimIndent(), into = "META-INF/")
                putZipText(zip, "content.opf", """
                    <?xml version="1.0"?>
                    <package version="2.0" xmlns="http://www.idpf.org/2007/opf" unique-identifier="bookid">
                      <metadata xmlns:dc="http://purl.org/dc/elements/1.1/">
                        <dc:title>Flat</dc:title>
                        <dc:identifier id="bookid">flat-1</dc:identifier>
                        <dc:language>en</dc:language>
                      </metadata>
                      <manifest>
                        <item id="ch1" href="ch1.xhtml" media-type="application/xhtml+xml"/>
                        <item id="ch2" href="ch2.xhtml" media-type="application/xhtml+xml"/>
                        <item id="css" href="style.css" media-type="text/css"/>
                        <item id="ncx" href="toc.ncx" media-type="application/x-dtbncx+xml"/>
                      </manifest>
                      <spine toc="ncx">
                        <itemref idref="ch1"/>
                        <itemref idref="ch2"/>
                      </spine>
                    </package>
                """.trimIndent())
                putZipText(zip, "ch1.xhtml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html><head><link rel="stylesheet" href="style.css"/></head>
                    <body><p>${"first chapter paragraph. ".repeat(400)}</p></body></html>
                """.trimIndent())
                putZipText(zip, "ch2.xhtml", """
                    <?xml version="1.0" encoding="UTF-8"?>
                    <html><head><link rel="stylesheet" href="style.css"/></head>
                    <body><p>${"second chapter paragraph. ".repeat(400)}</p></body></html>
                """.trimIndent())
                putZipText(zip, "style.css", "p { color: black; }")
                putZipText(zip, "toc.ncx", """
                    <?xml version="1.0"?>
                    <ncx xmlns="http://www.daisy.org/z3986/2005/ncx/" version="2005-1">
                      <head><meta name="dtb:uid" content="flat-1"/></head>
                      <docTitle><text>Flat</text></docTitle>
                      <navMap>
                        <navPoint><navLabel><text>Ch1</text></navLabel><content src="ch1.xhtml"/></navPoint>
                        <navPoint><navLabel><text>Ch2</text></navLabel><content src="ch2.xhtml"/></navPoint>
                      </navMap>
                    </ncx>
                """.trimIndent())
            }

            val reader = EpubFormatReader(ContextWrapper(null), tempEpub.absolutePath)
            try {
                // The first chapter is deliberately larger than the legacy 4,000-character
                // chunk size. Lightweight section navigation must still resolve index 1 to
                // chapter two, rather than to a second legacy chunk of chapter one.
                val firstSectionHtml = reader.getHtmlPage(0)
                val secondSectionHtml = reader.getHtmlPage(1)
                assertTrue(firstSectionHtml?.contains("first chapter paragraph") == true)
                assertTrue(secondSectionHtml?.contains("second chapter paragraph") == true)

                val sections = reader.getTextDocumentSections()
                assertTrue("Expected at least 2 text sections", sections.size >= 2)

                // For every section, htmlAssetBasePath must resolve to that section's entry,
                // not to the entry of a different section/page.
                sections.forEach { section ->
                    val base = reader.htmlAssetBasePath(section.index)
                    assertNotNull("Section ${section.index} asset base must not be null", base)
                    assertEquals(
                        "Section ${section.index} asset base must match its own entry",
                        section.id,
                        base
                    )
                }

                // The CSS asset must resolve regardless of which chapter page is the base.
                val cssAsset = reader.openHtmlAsset("style.css")
                assertNotNull("Flat-layout CSS asset must be resolvable", cssAsset)
            } finally {
                reader.close()
            }
        } finally {
            tempEpub.delete()
        }
    }

    private fun putZipText(
        zip: ZipOutputStream,
        entryName: String,
        text: String,
        into: String = ""
    ) {
        val full = if (into.isEmpty()) entryName else "$into$entryName"
        zip.putNextEntry(ZipEntry(full))
        zip.write(text.toByteArray(Charsets.UTF_8))
        zip.closeEntry()
    }
}
