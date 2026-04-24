package com.example.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderContinuousHtmlDocumentTest {

    @Test
    fun buildContinuousReaderHtmlDocumentWaitsUntilCurrentPageIsLoaded() {
        val document = buildContinuousReaderHtmlDocument(
            htmlPages = mapOf(
                0 to ReaderHtmlPageContent(
                    html = "<html><head><style>body{font-size:18px;}</style></head><body><p>Page zero</p></body></html>",
                    assetBasePath = "text-book/page-0000.html"
                )
            ),
            totalPages = 2,
            currentPage = 1
        )

        assertNull(document)
    }

    @Test
    fun buildContinuousReaderHtmlDocumentBuildsFromAvailablePagesAroundCurrentPage() {
        val document = buildContinuousReaderHtmlDocument(
            htmlPages = mapOf(
                1 to ReaderHtmlPageContent(
                    html = "<html><head><style>.chapter{font-weight:bold;}</style></head><body><h2>Second page</h2><p>beta token</p></body></html>",
                    assetBasePath = "text-book/page-0001.html"
                ),
                0 to ReaderHtmlPageContent(
                    html = "<html><head><style>body{font-size:18px;}</style></head><body><h1>First page</h1><p>alpha token</p></body></html>",
                    assetBasePath = "text-book/page-0000.html"
                )
            ),
            totalPages = 3,
            currentPage = 1
        )

        assertNotNull(document)
        val combined = requireNotNull(document)
        assertEquals("text-book/page-0001.html", combined.assetBasePath)
        assertTrue(combined.html.contains(readerContinuousPageAnchorId(0)))
        assertTrue(combined.html.contains(readerContinuousPageAnchorId(1)))
        assertTrue(!combined.html.contains(readerContinuousPageAnchorId(2)))
        assertTrue(combined.html.indexOf("First page") < combined.html.indexOf("Second page"))
        assertTrue(combined.html.contains("alpha token"))
        assertTrue(combined.html.contains("beta token"))
    }
}
