package io.leostrange.mrcomic.feature.reader.domain.progress

import io.leostrange.mrcomic.engine.api.TextDocumentSection
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Rule
import org.junit.Test
import org.junit.rules.TemporaryFolder

class ReaderSectionWeightsTest {

    @get:Rule
    val temp = TemporaryFolder()

    @Test
    fun visibleTextLength_countsTextNodesLikeTheDom() {
        val html = "<html><head><title>T</title><style>p{}</style></head><body><!--n-->" +
            "<h1>Ab</h1><p>c &amp; d<script>x()</script></p><img src='x.png'/></body></html>"
        assertEquals("Abc & d".length, ReaderSectionWeights.visibleTextLength(html))
    }

    @Test
    fun fromSections_sumsSplitsPerEngineSection() {
        val sections = listOf(
            TextDocumentSection(index = 0, html = "<p>aaaa</p>"),
            TextDocumentSection(index = 1, html = "<p>bb</p>", splitIndex = 0),
            TextDocumentSection(index = 1, html = "<p>bbb</p>", splitIndex = 1),
        )
        assertEquals(listOf(4, 5, 0), ReaderSectionWeights.fromSections(sections, sectionCount = 3))
    }

    @Test
    fun fromSections_rejectsMismatchedOrEmptyDocuments() {
        assertNull(ReaderSectionWeights.fromSections(listOf(TextDocumentSection(index = 3, html = "x")), 2))
        assertNull(ReaderSectionWeights.fromSections(listOf(TextDocumentSection(index = 0, html = "<img/>")), 1))
        assertNull(ReaderSectionWeights.fromSections(emptyList(), 1))
    }

    @Test
    fun cache_roundTripsOnlyForMatchingKey() {
        val cache = ReaderSectionWeightsCache(temp.newFolder("weights"))
        val key = ReaderSectionWeightsCache.key("/books/a.epub", 10L, 3)
        cache.write("comic/1", key, listOf(1, 2, 3))
        assertEquals(listOf(1, 2, 3), cache.read("comic/1", key))
        assertNull(cache.read("comic/1", ReaderSectionWeightsCache.key("/books/a.epub", 11L, 3)))
        assertNull(cache.read("missing", key))
    }
}
