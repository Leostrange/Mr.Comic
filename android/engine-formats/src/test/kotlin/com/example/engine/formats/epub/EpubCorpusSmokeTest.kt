package com.example.engine.formats.epub

import android.content.ContextWrapper
import com.example.core.data.db.EpubStructureCacheDao
import com.example.core.data.db.EpubStructureCacheEntity
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class EpubCorpusSmokeTest {

    private class FakeEpubStructureCacheDao : EpubStructureCacheDao {
        var stored: EpubStructureCacheEntity? = null
        var getCount: Int = 0
        var upsertCount: Int = 0

        override suspend fun getByPath(filePath: String): EpubStructureCacheEntity? {
            getCount++
            return stored?.takeIf { it.filePath == filePath }
        }

        override suspend fun upsert(entry: EpubStructureCacheEntity) {
            upsertCount++
            stored = entry
        }

        override suspend fun deleteOlderThan(updatedBefore: Long) = Unit
    }

    @Test
    fun skottSampleBuildsVisibleHtmlPages() = runBlocking {
        val sample = locateSample("S_Skott_Protiv_zerna_glubinnaya_istoriya_drevneyshih_gosudarstv.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected multiple EPUB pages, got $pageCount", pageCount > 5)

            val firstPages = (0 until minOf(pageCount, 4))
                .mapNotNull { index -> reader.getHtmlPage(index) }

            assertTrue("Expected at least one visible HTML page", firstPages.isNotEmpty())
            val joined = firstPages.joinToString("\n")
            val visibleText = joined
                .replace(Regex("<[^>]+>"), " ")
                .replace(Regex("\\s+"), " ")
                .trim()
            assertTrue(
                "Expected visible text or cover media in rendered HTML",
                visibleText.length > 120 || joined.contains("<img", ignoreCase = true)
            )
            assertTrue(
                "Expected rendered EPUB markup to be normalized",
                !joined.contains("<span><div", ignoreCase = true)
            )
            assertTrue(
                "Expected first Skott pages to keep readable Cyrillic text",
                Regex("[А-Яа-яЁё]").containsMatchIn(joined)
            )
            assertTrue("Expected first Skott pages to avoid mojibake", !joined.contains("РџР"))
            assertTrue(
                "Expected cover page media to remain visible",
                joined.contains("<img", ignoreCase = true) ||
                    joined.contains("<svg", ignoreCase = true) ||
                    joined.contains("cover-svg", ignoreCase = true)
            )
            val joinedFrontMatter = firstPages.take(3).joinToString("\n")
            assertTrue(
                "Expected opening EPUB pages to keep the cover",
                joinedFrontMatter.contains("cover-svg", ignoreCase = true) ||
                    joinedFrontMatter.contains("cover.jpg", ignoreCase = true)
            )
            assertTrue(
                "Expected opening EPUB pages to keep the title page",
                joinedFrontMatter.contains("Джеймс Скотт")
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun skottSampleResolvesMergedFrontMatterEntries() = runBlocking {
        val sample = locateSample("S_Skott_Protiv_zerna_glubinnaya_istoriya_drevneyshih_gosudarstv.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val coverPage = reader.resolveHrefToPage("cover.xhtml")
            val titlePage = reader.resolveHrefToPage("ch1.xhtml")
            assertNotNull("Expected cover.xhtml to resolve", coverPage)
            assertNotNull("Expected ch1.xhtml to resolve", titlePage)
            assertTrue("Expected title page to come after or with the cover", titlePage!! >= coverPage!!)
        } finally {
            reader.close()
        }
    }

    @Test
    fun sample6177KeepsUtf8CyrillicReadable() = runBlocking {
        val sample = locateSample("6177.zip")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 5)

            val firstPages = (0 until minOf(pageCount, 4))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue("Expected readable UTF-8 title text", firstPages.contains("Атлантида"))
            assertTrue("Expected UTF-8 body text to stay readable", !firstPages.contains("РђС"))
        } finally {
            reader.close()
        }
    }

    @Test
    fun sample6177ExposesStylesheetsThroughAssetBackedHtml() = runBlocking {
        val sample = locateSample("6177.zip")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val firstPages = (0 until minOf(reader.getPageCount(), 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(
                "Expected stylesheet links to stay in HTML for asset-backed loading",
                firstPages.contains("<link", ignoreCase = true)
            )
            val firstAssetBackedPage = (0 until reader.getPageCount())
                .firstOrNull { index -> reader.htmlAssetBasePath(index) != null }
            assertNotNull("Expected at least one asset-backed HTML page", firstAssetBackedPage)
            assertTrue(
                "Expected stylesheet asset path for an XHTML page",
                reader.htmlAssetBasePath(firstAssetBackedPage!!)?.contains(".xhtml", ignoreCase = true) == true
            )
            val stylesheet = reader.openHtmlAsset("stylesheet.css")
            assertNotNull("Expected EPUB stylesheet to be exposed as an asset", stylesheet)
            assertTrue(
                "Expected stylesheet CSS content to remain readable",
                String(stylesheet!!.bytes, Charsets.UTF_8).contains(".calibre")
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun sample6177BuildsUsableTocEntries() = runBlocking {
        val sample = locateSample("6177.zip")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val toc = reader.getTableOfContents()

            assertTrue("Expected EPUB TOC to be populated", toc.size > 10)
            assertTrue(
                "Expected TOC to resolve chapter entries into page indices",
                toc.any { it.title.contains("ПРЕДИСЛОВИЕ", ignoreCase = true) && it.pageIndex >= 0 }
            )
            assertTrue(
                "Expected TOC to keep note entries as real targets",
                toc.any { it.title == "1" && it.pageIndex >= 0 }
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun sample6177KeepsSecondaryStylesheetAndFrontMatterTargetsAccessible() = runBlocking {
        val sample = locateSample("6177.zip")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            assertNotNull("Expected page_styles.css to be exposed as an EPUB asset", reader.openHtmlAsset("page_styles.css"))

            val coverPage = reader.resolveHrefToPage("index_split_000.xhtml")
            val secondPage = reader.resolveHrefToPage("index_split_001.xhtml")
            assertNotNull("Expected index_split_000.xhtml to resolve", coverPage)
            assertNotNull("Expected index_split_001.xhtml to resolve", secondPage)
            assertTrue("Expected later page to stay on or after the cover page", secondPage!! >= coverPage!!)
        } finally {
            reader.close()
        }
    }

    @Test
    fun epubTestTikaKeepsCoverTocAndChapters() = runBlocking {
        val sample = locateCorpusSample("epub_test_tika.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount >= 1)

            val firstPages = (0 until minOf(pageCount, 4))
                .mapNotNull { reader.getHtmlPage(it) }

            assertTrue(firstPages.isNotEmpty())
            val joined = firstPages.joinToString("\n")
            assertTrue(
                "Expected EPUB sample to render visible HTML",
                joined.isNotBlank()
            )
            assertTrue(
                "Expected EPUB TOC to stay available",
                reader.getTableOfContents().isNotEmpty()
            )
            assertTrue(
                "Expected EPUB sample to expose at least one asset-backed page or stylesheet",
                reader.htmlAssetBasePath(0) != null || reader.openHtmlAsset("style.css") != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun vibeSamplePersistsAndReusesStructureCache() = runBlocking {
        val sample = locateSample("vibe.coding.the.future.of.programming.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val cacheDao = FakeEpubStructureCacheDao()
        val firstReader = EpubFormatReader(ContextWrapper(null), sample.absolutePath, cacheDao)
        try {
            assertTrue(firstReader.getPageCount() > 5)
            assertTrue("Expected first EPUB open to persist cache", cacheDao.upsertCount >= 1)
            assertNotNull("Expected cached payload after first open", cacheDao.stored)
        } finally {
            firstReader.close()
        }

        val upsertsAfterFirstOpen = cacheDao.upsertCount
        val secondReader = EpubFormatReader(ContextWrapper(null), sample.absolutePath, cacheDao)
        try {
            assertTrue(secondReader.getPageCount() > 5)
            assertTrue("Expected second EPUB open to consult cache", cacheDao.getCount >= 2)
            assertEquals(
                "Expected second EPUB open to reuse existing cache without writing it again",
                upsertsAfterFirstOpen,
                cacheDao.upsertCount
            )
        } finally {
            secondReader.close()
        }
    }

    @Test
    fun vibeSampleKeepsRichPublisherMarkup() = runBlocking {
        val sample = locateSample("vibe.coding.the.future.of.programming.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 1)

            val firstPage = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .firstOrNull { html ->
                    html.contains("Vibe Coding", ignoreCase = true) ||
                        html.contains("Early Release Readers", ignoreCase = true)
                }

            assertNotNull("Expected a rich publisher page near the beginning", firstPage)
            assertTrue(
                "Expected publisher CSS classes/markup to survive rendering",
                firstPage!!.contains("class=", ignoreCase = true) ||
                    firstPage.contains("<section", ignoreCase = true) ||
                    firstPage.contains("<figure", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun vibeSampleKeepsTitleCopyrightAndPrefaceFrontMatter() = runBlocking {
        val sample = locateSample("vibe.coding.the.future.of.programming.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 3)

            val frontMatter = (0 until minOf(pageCount, 4))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(frontMatter.contains("Vibe Coding: The Future of Programming"))
            assertTrue(frontMatter.contains("Addy Osmani"))
            assertTrue(frontMatter.contains("Revision History for the Early Release"))
            assertTrue(frontMatter.contains("Brief Table of Contents"))
            assertTrue(
                "Expected EPUB front matter TOC to remain available",
                reader.getTableOfContents().isNotEmpty()
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun vibeSampleResolvesFrontMatterPagesAndAssetBackedBasePath() = runBlocking {
        val sample = locateSample("vibe.coding.the.future.of.programming.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val titlePage = reader.resolveHrefToPage("titlepage01.xhtml")
            val copyrightPage = reader.resolveHrefToPage("copyright-page01.xhtml")

            assertNotNull("Expected titlepage01.xhtml to resolve", titlePage)
            assertNotNull("Expected copyright-page01.xhtml to resolve", copyrightPage)
            assertTrue("Expected copyright page to stay on or after the title page", copyrightPage!! >= titlePage!!)

            val firstAssetBackedPage = (0 until reader.getPageCount())
                .firstOrNull { index -> reader.htmlAssetBasePath(index) != null }
            assertNotNull("Expected at least one asset-backed XHTML page", firstAssetBackedPage)
            assertTrue(
                "Expected first asset-backed page to preserve XHTML asset base path",
                reader.htmlAssetBasePath(firstAssetBackedPage!!)!!.endsWith(".xhtml") ||
                    reader.htmlAssetBasePath(firstAssetBackedPage)!!.endsWith(".html")
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusAliceSampleKeepsFrontMatterAndAssets() = runBlocking {
        val sample = locateCorpusSample("epub_alice_gutenberg.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 1)

            val firstPages = (0 until minOf(pageCount, 3))
                .mapNotNull { reader.getHtmlPage(it) }
                .joinToString("\n")

            assertTrue(firstPages.contains("Alice’s Adventures in Wonderland", ignoreCase = true))
            assertTrue(firstPages.contains("Project Gutenberg", ignoreCase = true))
            assertTrue(
                "Expected EPUB front matter to keep visible cover or title structure",
                firstPages.contains("<img", ignoreCase = true) ||
                    firstPages.contains("<svg", ignoreCase = true) ||
                    firstPages.contains("cover", ignoreCase = true)
            )
            assertTrue(
                "Expected EPUB TOC to stay available",
                reader.getTableOfContents().isNotEmpty()
            )
            assertTrue(
                "Expected EPUB stylesheet asset to stay accessible",
                reader.openHtmlAsset("pgepub.css") != null || reader.openHtmlAsset("0.css") != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusAliceSampleKeepsSecondaryStylesheetsAndAssetBackedChapterPages() = runBlocking {
        val sample = locateCorpusSample("epub_alice_gutenberg.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            assertNotNull("Expected pgepub.css to stay available as an EPUB asset", reader.openHtmlAsset("pgepub.css"))
            assertNotNull("Expected 0.css to stay available as an EPUB asset", reader.openHtmlAsset("0.css"))

            val firstChapter = reader.resolveHrefToPage("1801890453487475839_11-h-0.htm.html")
            val laterChapter = reader.resolveHrefToPage("1801890453487475839_11-h-13.htm.html")
            assertNotNull("Expected Alice EPUB first chapter to resolve", firstChapter)
            assertNotNull("Expected Alice EPUB later chapter to resolve", laterChapter)
            assertTrue("Expected later chapter to stay on or after the first chapter", laterChapter!! >= firstChapter!!)

            val firstAssetBackedPage = (0 until reader.getPageCount())
                .firstOrNull { index -> reader.htmlAssetBasePath(index) != null }
            assertNotNull("Expected Alice EPUB to expose asset-backed XHTML pages", firstAssetBackedPage)
            assertTrue(
                "Expected Alice EPUB asset-backed base path to keep XHTML naming",
                reader.htmlAssetBasePath(firstAssetBackedPage!!)!!.contains(".htm", ignoreCase = true) ||
                    reader.htmlAssetBasePath(firstAssetBackedPage)!!.contains(".html", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusTikaSampleKeepsResolvedTocTargetsAndAssetBackedPages() = runBlocking {
        val sample = locateCorpusSample("epub_test_tika.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount >= 1)

            val toc = reader.getTableOfContents()
            assertTrue("Expected EPUB TOC to stay available", toc.isNotEmpty())
            assertTrue(
                "Expected first EPUB TOC entry to point at a real page",
                toc.first().pageIndex >= 0
            )
            assertNotNull(
                "Expected EPUB opening page to be asset-backed",
                reader.htmlAssetBasePath(0)
            )
            assertTrue(
                "Expected EPUB stylesheet asset to stay accessible",
                reader.openHtmlAsset("style.css") != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusTikaSampleKeepsTocAndChapterTargets() = runBlocking {
        val sample = locateCorpusSample("epub_test_tika.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val tocPage = reader.resolveHrefToPage("TableOfContents.html")
            val chapterOnePage = reader.resolveHrefToPage("chapters/chapter1.html")
            val chapterTwoPage = reader.resolveHrefToPage("chapters/chapter2.html")
            assertNotNull("Expected TableOfContents.html to resolve", tocPage)
            assertNotNull("Expected chapters/chapter1.html to resolve", chapterOnePage)
            assertNotNull("Expected chapters/chapter2.html to resolve", chapterTwoPage)
            assertTrue("Expected chapter 2 to stay on or after chapter 1", chapterTwoPage!! >= chapterOnePage!!)
            assertTrue("Expected TOC page to stay on or before chapter 1", tocPage!! <= chapterOnePage)
            assertNotNull("Expected EPUB opening page to stay asset-backed", reader.htmlAssetBasePath(0))
            assertTrue(
                "Expected EPUB stylesheet asset to stay accessible",
                reader.openHtmlAsset("style.css") != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusAliceSampleResolvesChapterEntriesAndAssetBackedPages() = runBlocking {
        val sample = locateCorpusSample("epub_alice_gutenberg.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount > 10)

            val firstChapter = reader.resolveHrefToPage("1801890453487475839_11-h-0.htm.html")
            val laterChapter = reader.resolveHrefToPage("1801890453487475839_11-h-13.htm.html")
            assertNotNull("Expected Alice EPUB first chapter to resolve", firstChapter)
            assertNotNull("Expected Alice EPUB later chapter to resolve", laterChapter)
            assertTrue("Expected later chapter to stay on or after the first chapter", laterChapter!! >= firstChapter!!)

            val firstAssetBackedPage = (0 until pageCount).firstOrNull { index ->
                reader.htmlAssetBasePath(index) != null
            }
            assertNotNull("Expected Alice EPUB to expose asset-backed XHTML pages", firstAssetBackedPage)
            assertTrue(
                "Expected Alice EPUB first asset-backed page to keep XHTML asset base path",
                reader.htmlAssetBasePath(firstAssetBackedPage!!)!!.contains(".htm", ignoreCase = true) ||
                    reader.htmlAssetBasePath(firstAssetBackedPage)!!.contains(".html", ignoreCase = true)
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun realCorpusTikaSampleKeepsCoverTocAndReadableChapters() = runBlocking {
        val sample = locateCorpusSample("epub_test_tika.epub")
        assertTrue("Expected EPUB corpus sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            val pageCount = reader.getPageCount()
            assertTrue("Expected EPUB pages, got $pageCount", pageCount >= 1)

            val firstPages = (0 until minOf(pageCount, 4))
                .mapNotNull { reader.getHtmlPage(it) }
            val joined = firstPages.joinToString("\n")

            assertTrue(
                "Expected EPUB opening pages to render visible HTML",
                joined.isNotBlank()
            )
            assertTrue(
                "Expected EPUB TOC to stay available",
                reader.getTableOfContents().isNotEmpty()
            )
            assertTrue(
                "Expected inline scripts to stay sanitized out of rendered HTML",
                !joined.contains("<script", true)
            )

            assertTrue(
                "Expected EPUB stylesheet asset to be exposed through asset-backed path",
                reader.openHtmlAsset("style.css") != null
            )
        } finally {
            reader.close()
        }
    }

    @Test
    fun vibeSampleKeepsTocHtmlAssetAndFrontMatterTargetsAccessible() = runBlocking {
        val sample = locateSample("vibe.coding.the.future.of.programming.epub")
        assertTrue("Expected EPUB sample to exist", sample.exists())

        val reader = EpubFormatReader(ContextWrapper(null), sample.absolutePath)
        try {
            assertNotNull("Expected toc01.html to be exposed as an EPUB asset", reader.openHtmlAsset("toc01.html"))

            val titlePage = reader.resolveHrefToPage("titlepage01.xhtml")
            val copyrightPage = reader.resolveHrefToPage("copyright-page01.xhtml")
            val prefacePage = reader.resolveHrefToPage("preface01.xhtml")

            assertNotNull("Expected titlepage01.xhtml to resolve", titlePage)
            assertNotNull("Expected copyright-page01.xhtml to resolve", copyrightPage)
            assertNotNull("Expected preface01.xhtml to resolve", prefacePage)
            assertTrue("Expected copyright page to stay on or after the title page", copyrightPage!! >= titlePage!!)
            assertTrue("Expected preface to stay on or after the copyright page", prefacePage!! >= copyrightPage!!)
        } finally {
            reader.close()
        }
    }

    private fun locateSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "Epub bug/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }

    private fun locateCorpusSample(name: String): File {
        val userDir = System.getProperty("user.dir") ?: "."
        var current = File(userDir).absoluteFile
        repeat(6) {
            val candidate = File(current, "samples/format-real-corpus/$name")
            if (candidate.exists()) return candidate
            current = current.parentFile ?: return@repeat
        }
        return File(userDir, name)
    }
}
