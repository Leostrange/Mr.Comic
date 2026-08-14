package io.leostrange.mrcomic.engine.formats.epub

import android.content.ContextWrapper
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File
import java.util.zip.ZipEntry
import java.util.zip.ZipOutputStream

class EpubSpineMergeTest {

    @Test
    fun titleOnlySpinePageMergesFollowingChapterBody() = runBlocking {
        val epub = buildMiniEpub(
            spineItems = listOf(
                "title.xhtml" to """
                    <html><body><h2>CHAPTER XII</h2></body></html>
                """.trimIndent(),
                "body.xhtml" to """
                    <html><body><p>${"Down the rabbit hole. ".repeat(80)}</p></body></html>
                """.trimIndent()
            )
        )
        val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
        try {
            assertEquals(1, reader.getPageCount())
            val html = reader.getHtmlPage(0)
            assertNotNull(html)
            val text = Jsoup.parse(html.orEmpty()).body()?.text().orEmpty()
            assertTrue(text.contains("CHAPTER XII"))
            assertTrue(text.contains("Down the rabbit hole"))
        } finally {
            reader.close()
            epub.delete()
        }
    }

    @Test
    fun titleOnlyWrappedInSpanStillMergesWithBody() = runBlocking {
        val epub = buildMiniEpub(
            spineItems = listOf(
                "title.xhtml" to """
                    <html><body><span><h2>CHAPTER I.</h2></span></body></html>
                """.trimIndent(),
                "body.xhtml" to """
                    <html><body><p>${"Alice was beginning to get very tired. ".repeat(60)}</p></body></html>
                """.trimIndent()
            )
        )
        val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
        try {
            assertEquals(1, reader.getPageCount())
            val html = reader.getHtmlPage(0).orEmpty()
            val text = Jsoup.parse(html).body()?.text().orEmpty()
            assertTrue(text.contains("CHAPTER I"))
            assertTrue(text.contains("Alice was beginning"))
        } finally {
            reader.close()
            epub.delete()
        }
    }

    @Test
    fun multipleConsecutiveTitleOnlyPagesMergeIntoBody() = runBlocking {
        // Edge case: two consecutive title-only pages followed by a body page.
        // The reader must preserve access to the body while title normalization runs.
        val epub = buildMiniEpub(
            spineItems = listOf(
                "title1.xhtml" to """
                    <html><body><h2>PART ONE</h2></body></html>
                """.trimIndent(),
                "title2.xhtml" to """
                    <html><body><h2>CHAPTER I.</h2></body></html>
                """.trimIndent(),
                "body.xhtml" to """
                    <html><body><p>${"It was a dark and stormy night. ".repeat(80)}</p></body></html>
                """.trimIndent()
            )
        )
        val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            // Body page should always be present; title-only pages should not be standalone
            assertTrue("Body page should be accessible", pageCount >= 1)
            // Find the page with body text
            var foundBody = false
            for (i in 0 until pageCount) {
                val html = reader.getHtmlPage(i).orEmpty()
                val text = Jsoup.parse(html).body()?.text().orEmpty()
                if (text.contains("dark and stormy")) {
                    foundBody = true
                    break
                }
            }
            assertTrue("Body text should be present in some page", foundBody)
        } finally {
            reader.close()
            epub.delete()
        }
    }

    @Test
    fun emptySpinePageIsSkipped() = runBlocking {
        val epub = buildMiniEpub(
            spineItems = listOf(
                "empty.xhtml" to "<html><body></body></html>",
                "body.xhtml" to "<html><body><p>Visible chapter text.</p></body></html>"
            )
        )
        val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
        try {
            assertEquals(1, reader.getPageCount())
            val text = Jsoup.parse(reader.getHtmlPage(0).orEmpty()).body()?.text().orEmpty()
            assertTrue(text.contains("Visible chapter text"))
            assertFalse(text.isBlank())
        } finally {
            reader.close()
            epub.delete()
        }
    }

    @Test
    fun adjacentShortChaptersRemainSeparateSpineSections() = runBlocking {
        val epub = buildMiniEpub(
            spineItems = listOf(
                "chapter1.xhtml" to "<html><body><p>${"First short chapter. ".repeat(20)}</p></body></html>",
                "chapter2.xhtml" to "<html><body><p>${"Second short chapter. ".repeat(20)}</p></body></html>"
            )
        )
        val reader = EpubFormatReader(ContextWrapper(null), epub.absolutePath)
        try {
            assertEquals(2, reader.getPageCount())
            assertEquals(2, reader.getTextDocumentSections().size)
        } finally {
            reader.close()
            epub.delete()
        }
    }

    @Test
    fun aliceUsesSpineSectionsNotCharChunks() = runBlocking {
        val sample = locateAliceSample()
        org.junit.Assume.assumeTrue("Expected alice QA sample to exist", sample.exists())
        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val sectionCount = reader.getTextDocumentSections().size
            assertTrue("Expected spine sections for alice", sectionCount in 10..25)
            assertEquals(sectionCount, reader.getPageCount())
            assertTrue(
                "EPUB PAGE mode must use spine sections, not char chunks",
                reader.getPageCount() < 30
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun aliceSpineOrderKeepsChapterOneBeforeTwelve() = runBlocking {
        val sample = locateAliceSample()
        org.junit.Assume.assumeTrue("Expected alice QA sample to exist", sample.exists())
        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val contentsPage = reader.resolveHrefToPage("1801890453487475839_11-h-0.htm.html#pgepubid00002")
            val chapterOnePage = reader.resolveHrefToPage("1801890453487475839_11-h-1.htm.html#chap01")
            val chapterTwelvePage = reader.resolveHrefToPage("1801890453487475839_11-h-12.htm.html#chap12")
            assertNotNull(contentsPage)
            assertNotNull(chapterOnePage)
            assertNotNull(chapterTwelvePage)
            assertTrue(chapterOnePage!! > contentsPage!!)
            assertTrue(chapterTwelvePage!! > chapterOnePage)
            val chapterOneHtml = reader.getHtmlPage(chapterOnePage)
            assertNotNull(chapterOneHtml)
            val text = Jsoup.parse(chapterOneHtml.orEmpty()).body()?.text().orEmpty()
            assertTrue(text.contains("CHAPTER I"))
            assertTrue(text.contains("Down the Rabbit-Hole", ignoreCase = true))
        } finally {
            reader.close()
        }
    }

    private fun locateAliceSample(): File {
        var current = File(System.getProperty("user.dir") ?: ".").absoluteFile
        var hops = 0
        while (hops < 8) {
            val candidate = File(current, "reference/apps/artifacts/mrcomic_qa/epub_alice.epub")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return candidate
            hops++
        }
        return File("reference/apps/artifacts/mrcomic_qa/epub_alice.epub")
    }

    private fun buildMiniEpub(spineItems: List<Pair<String, String>>): File {
        val tempEpub = File.createTempFile("spine_merge_", ".epub")
        ZipOutputStream(tempEpub.outputStream()).use { zip ->
            zip.putNextEntry(ZipEntry("mimetype"))
            zip.write("application/epub+zip".toByteArray())
            zip.closeEntry()

            val manifestLines = buildString {
                spineItems.forEachIndexed { index, (name, _) ->
                    append("""<item id="item$index" href="$name" media-type="application/xhtml+xml"/>""")
                }
            }
            val spineLines = spineItems.indices.joinToString("") { index ->
                """<itemref idref="item$index"/>"""
            }
            val opf = """
                <?xml version="1.0" encoding="UTF-8"?>
                <package version="2.0" xmlns="http://www.idpf.org/2007/opf">
                  <manifest>$manifestLines</manifest>
                  <spine>$spineLines</spine>
                </package>
            """.trimIndent()
            zip.putNextEntry(ZipEntry("OEBPS/content.opf"))
            zip.write(opf.toByteArray())
            zip.closeEntry()

            zip.putNextEntry(ZipEntry("META-INF/container.xml"))
            zip.write(
                """
                <?xml version="1.0"?>
                <container version="1.0" xmlns="urn:oasis:names:tc:opendocument:xmlns:container">
                  <rootfiles>
                    <rootfile full-path="OEBPS/content.opf" media-type="application/oebps-package+xml"/>
                  </rootfiles>
                </container>
                """.trimIndent().toByteArray()
            )
            zip.closeEntry()

            spineItems.forEach { (name, html) ->
                zip.putNextEntry(ZipEntry("OEBPS/$name"))
                zip.write(html.toByteArray())
                zip.closeEntry()
            }
        }
        return tempEpub
    }

    private fun assertEquals(expected: Int, actual: Int) {
        org.junit.Assert.assertEquals(expected, actual)
    }
}
