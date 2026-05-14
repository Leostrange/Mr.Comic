package com.example.engine.formats.epub

import android.content.Context
import kotlinx.coroutines.runBlocking
import io.mockk.mockk
import org.jsoup.Jsoup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubChunkingTest {
    private val testContext: Context
        get() = mockk(relaxed = true)

    @Test
    fun groupsHtmlBlocksWithoutCreatingEmptyTrailingPages() {
        val chunks = resolveEpubHtmlChunkCount(
            blockCharCounts = listOf(11, 802, 761, 1747, 1887, 1919, 1078, 519, 1648, 1302, 1029),
            charsPerPage = 2_000
        )

        assertEquals(8, chunks)
    }

    @Test
    fun keepsAtLeastOneChunkForSmallEntries() {
        val chunks = resolveEpubHtmlChunkCount(
            blockCharCounts = listOf(420),
            charsPerPage = 2_000
        )

        assertEquals(1, chunks)
    }

    @Test
    fun keepsWholeBodyForWrappedFb2EpubMarkup() {
        val body = """
            <span id="id1"><div class="title1"><p class="p">Предисловие</p></div>
            <p class="p1">Первый абзац.</p>
            <p class="p1">Второй абзац.</p></span>
        """.trimIndent()

        assertTrue(shouldKeepWholeEpubHtmlBody(body))
    }

    @Test
    fun keepsNormalParagraphBodyChunkable() {
        val body = """
            <div class="title1"><p class="p">Предисловие</p></div>
            <p class="p1">Первый абзац.</p>
            <p class="p1">Второй абзац.</p>
        """.trimIndent()

        assertFalse(shouldKeepWholeEpubHtmlBody(body))
    }

    @Test
    fun unwrapsInvalidInlineWrappersInFb2EpubMarkup() {
        val html = """
            <html><body><span id="id1"><div class="title1"><p>Предисловие</p></div><p>Абзац.</p></span></body></html>
        """.trimIndent()

        val normalized = normalizeInlinedEpubMarkup(html)

        assertTrue(normalized.contains("<div class=\"title1\"><p>Предисловие</p></div>"))
        assertFalse(normalized.contains("<span id=\"id1\"><div"))
    }

    @Test
    fun chunkingPreservesContainerDomOnEveryPage() = runBlocking {
        val paragraphs = (1..120).joinToString("") { index ->
            "<p>Chapter paragraph $index ${"readable text ".repeat(45)}</p>"
        }
        val tempEpub = createTempEpub(
            chapterBody = """<div id="chapter-root" class="chapter" data-kind="body">$paragraphs</div>"""
        )

        try {
            val reader = EpubFormatReader(testContext, tempEpub.absolutePath)
            try {
                val chapterPages = (0 until reader.getPageCount())
                    .mapNotNull { reader.getHtmlPage(it) }
                    .filter { it.contains("Chapter paragraph", ignoreCase = true) }

                assertTrue("Expected chapter to be split across several pages", chapterPages.size > 1)
                chapterPages.forEach { page ->
                    val document = Jsoup.parse(page)
                    val chapterContainers = document.select("div.chapter")
                    assertTrue("Each chunk should carry valid chapter wrappers", chapterContainers.isNotEmpty())
                    assertTrue(chapterContainers.all { it.select("p").isNotEmpty() })
                    assertFalse("Chunks must not start with an orphan closing wrapper", page.contains("<body></div>", ignoreCase = true))
                    assertFalse("Chunking should not duplicate source id attributes across pages", page.contains("chapter-root"))
                }
            } finally {
                reader.close()
            }
        } finally {
            tempEpub.delete()
        }
    }

    @Test
    fun resolvesFragmentHrefToChunkContainingAnchor() = runBlocking {
        val leadingParagraphs = (1..120).joinToString("") { index ->
            "<p>Lead paragraph $index ${"reader words ".repeat(45)}</p>"
        }
        val trailingParagraphs = (1..4).joinToString("") { index ->
            "<p>After anchor $index ${"more words ".repeat(30)}</p>"
        }
        val tempEpub = createTempEpub(
            chapterBody = "$leadingParagraphs<h2 id=\"target-chapter\">Target Chapter</h2>$trailingParagraphs"
        )

        try {
            val reader = EpubFormatReader(testContext, tempEpub.absolutePath)
            try {
                val resolvedPage = reader.resolveHrefToPage("chapter.xhtml#target-chapter")
                assertTrue("Anchor should resolve to a later chunk", resolvedPage != null && resolvedPage > 0)

                val html = reader.getHtmlPage(resolvedPage ?: 0).orEmpty()
                assertTrue("Resolved page should contain the target heading", html.contains("target-chapter"))
                assertTrue(html.contains("Target Chapter"))
            } finally {
                reader.close()
            }
        } finally {
            tempEpub.delete()
        }
    }

    private fun createTempEpub(chapterBody: String): File {
        val tempFile = File.createTempFile("epub_chunking_", ".epub")
        ZipOutputStream(tempFile.outputStream().buffered()).use { zip ->
            putZipText(zip, "mimetype", "application/epub+zip")
            putZipText(zip, "META-INF/container.xml", """
                <?xml version="1.0" encoding="UTF-8"?>
                <container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
                  <rootfiles>
                    <rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/>
                  </rootfiles>
                </container>
            """.trimIndent())
            putZipText(zip, "OEBPS/content.opf", """
                <?xml version="1.0" encoding="UTF-8"?>
                <package version="2.0" xmlns="http://www.idpf.org/2007/opf">
                  <manifest>
                    <item id="chapter" href="chapter.xhtml" media-type="application/xhtml+xml"/>
                  </manifest>
                  <spine>
                    <itemref idref="chapter"/>
                  </spine>
                </package>
            """.trimIndent())
            putZipText(zip, "OEBPS/chapter.xhtml", """
                <html xmlns="http://www.w3.org/1999/xhtml">
                  <head><title>Chapter</title></head>
                  <body>$chapterBody</body>
                </html>
            """.trimIndent())
        }
        return tempFile
    }

    private fun putZipText(zip: ZipOutputStream, entryName: String, text: String) {
        zip.putNextEntry(ZipEntry(entryName))
        zip.write(text.toByteArray(Charsets.UTF_8))
        zip.closeEntry()
    }
}
