package io.leostrange.mrcomic.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubLongChapterTest {

    @Test
    fun longChapterIsServedWhole_notJustItsFirstChunk() = runBlocking {
        val paragraphs = (1..80).joinToString("") { i ->
            "<p>[P$i] " + "The quiet river carried lanterns past the old mill. ".repeat(4) + "</p>"
        }
        val chapter = """<?xml version="1.0" encoding="utf-8"?>
            <html xmlns="http://www.w3.org/1999/xhtml"><head><title>One</title></head>
            <body><h1>Chapter One</h1><h2 id="a">Part A</h2>$paragraphs</body></html>"""
        val epub = buildEpub(listOf("ch1.xhtml" to chapter, "ch2.xhtml" to chapter.replace("[P", "[Q")))
        val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
        try {
            assertEquals(2, reader.getPageCount())
            val text = Jsoup.parse(reader.getHtmlPage(0).orEmpty()).body().text()
            assertTrue("first paragraph", text.contains("[P1]"))
            assertTrue("last paragraph must not be dropped with later chunks", text.contains("[P80]"))
            val sectionText = Jsoup.parse(reader.getTextDocumentSections()[0].html).body().text()
            assertEquals("display and section text must match", sectionText.length, text.length)
        } finally {
            reader.close()
            epub.delete()
        }
    }

    private fun buildEpub(items: List<Pair<String, String>>): File {
        val file = File.createTempFile("long_chapter_", ".epub")
        ZipOutputStream(file.outputStream()).use { zip ->
            fun put(name: String, body: String) {
                zip.putNextEntry(ZipEntry(name)); zip.write(body.toByteArray()); zip.closeEntry()
            }
            put("mimetype", "application/epub+zip")
            put(
                "META-INF/container.xml",
                """<?xml version="1.0"?><container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
                <rootfiles><rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/></rootfiles></container>"""
            )
            val manifest = items.indices.joinToString("") { """<item id="i$it" href="${items[it].first}" media-type="application/xhtml+xml"/>""" }
            val spine = items.indices.joinToString("") { """<itemref idref="i$it"/>""" }
            put(
                "OEBPS/content.opf",
                """<?xml version="1.0" encoding="UTF-8"?><package version="2.0" xmlns="http://www.idpf.org/2007/opf">
                <manifest>$manifest</manifest><spine>$spine</spine></package>"""
            )
            items.forEach { (name, html) -> put("OEBPS/$name", html) }
        }
        return file
    }
}
