package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class TextWebtoonDocumentBuilderTest {

    @Test
    fun buildsValidHtmlDocument() {
        val pages = listOf(
            CachedHtmlPage(html = "<html><head><style>body{color:red;}</style></head><body><p>Page 1</p></body></html>", assetBasePath = null),
            CachedHtmlPage(html = "<html><head></head><body><p>Page 2</p></body></html>", assetBasePath = null)
        )
        val result = TextWebtoonDocumentBuilder.build(pages)
        assertTrue(result.html.contains("<!doctype html>"))
        assertTrue(result.html.contains("data-mrcomic-text-webtoon-document"))
        assertTrue(result.html.contains("Page 1"))
        assertTrue(result.html.contains("Page 2"))
    }

    @Test
    fun preservesOriginalCssFromFirstPage() {
        val pages = listOf(
            CachedHtmlPage(
                html = "<html><head><style>.cover{display:flex;align-items:center;}</style></head><body><div class='cover'>Cover</div></body></html>",
                assetBasePath = null
            )
        )
        val result = TextWebtoonDocumentBuilder.build(pages)
        assertTrue(result.html.contains(".cover{display:flex;align-items:center;}"))
    }

    @Test
    fun sectionsHaveCorrectIndices() {
        val pages = listOf(
            CachedHtmlPage(html = "<html><body><p>First</p></body></html>", assetBasePath = null),
            CachedHtmlPage(html = "<html><body><p>Second</p></body></html>", assetBasePath = null),
            CachedHtmlPage(html = "<html><body><p>Third</p></body></html>", assetBasePath = null)
        )
        val result = TextWebtoonDocumentBuilder.build(pages)
        assertTrue(result.html.contains("data-mrcomic-page-index=\"0\""))
        assertTrue(result.html.contains("data-mrcomic-page-index=\"1\""))
        assertTrue(result.html.contains("data-mrcomic-page-index=\"2\""))
    }

    @Test
    fun sectionCssPreventsGaps() {
        val pages = listOf(
            CachedHtmlPage(html = "<html><body><p>Content</p></body></html>", assetBasePath = null)
        )
        val result = TextWebtoonDocumentBuilder.build(pages)
        assertTrue(result.html.contains("margin:0"))
        assertTrue(result.html.contains("padding:0"))
        assertTrue(result.html.contains("margin-top:0!important"))
        assertTrue(result.html.contains("margin-bottom:0!important"))
    }

    @Test
    fun usesFirstPageAssetBasePath() {
        val pages = listOf(
            CachedHtmlPage(html = "<html><body><p>A</p></body></html>", assetBasePath = "OEBPS/chapter1.xhtml"),
            CachedHtmlPage(html = "<html><body><p>B</p></body></html>", assetBasePath = "OEBPS/chapter2.xhtml")
        )
        val result = TextWebtoonDocumentBuilder.build(pages)
        assertEquals("OEBPS/chapter1.xhtml", result.assetBasePath)
    }

    @Test
    fun consistentHeadAcrossBatches() {
        // Simulate batch 1 and batch 2 — head should be identical
        val batch1 = listOf(
            CachedHtmlPage(html = "<html><head><style>.x{}</style></head><body><p>1</p></body></html>", assetBasePath = null)
        )
        val batch2 = listOf(
            CachedHtmlPage(html = "<html><head><style>.x{}</style></head><body><p>1</p></body></html>", assetBasePath = null),
            CachedHtmlPage(html = "<html><head><style>.y{}</style></head><body><p>2</p></body></html>", assetBasePath = null)
        )
        val result1 = TextWebtoonDocumentBuilder.build(batch1)
        val result2 = TextWebtoonDocumentBuilder.build(batch2)
        // Both should have the same fixed head structure
        assertTrue(result1.html.contains("<meta name=\"viewport\""))
        assertTrue(result2.html.contains("<meta name=\"viewport\""))
        // Both should extract CSS from first page
        assertTrue(result1.html.contains(".x{}"))
        assertTrue(result2.html.contains(".x{}"))
    }

    @Test
    fun handlesEmptyStyleBlocks() {
        val pages = listOf(
            CachedHtmlPage(html = "<html><head><style></style></head><body><p>Content</p></body></html>", assetBasePath = null)
        )
        val result = TextWebtoonDocumentBuilder.build(pages)
        assertTrue(result.html.contains("data-mrcomic-text-webtoon-document"))
    }

    private fun assertEquals(expected: Any?, actual: Any?) {
        org.junit.Assert.assertEquals(expected, actual)
    }
}
