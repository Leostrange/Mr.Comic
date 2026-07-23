package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

class EpubTypesTest {

    @Test
    fun cachedHtmlPageRoundTripPreservesChunkAndMergedEntries() {
        val page = EpubPage.Html(
            entry = "OEBPS/chapter.xhtml",
            opfDir = "OEBPS",
            chunkIndex = 2,
            totalChunks = 4,
            extraEntries = listOf("OEBPS/note-1.xhtml")
        )

        assertEquals(page, page.toCachedPage().toEpubPage())
    }

    @Test
    fun cachedSyntheticPageRoundTripPreservesSourceEntries() {
        val page = EpubPage.SyntheticHtml(
            entry = "notes.xhtml",
            html = "<p>Note</p>",
            chunkIndex = 1,
            totalChunks = 2,
            sourceEntries = listOf("note-1.xhtml", "note-2.xhtml")
        )

        assertEquals(page, page.toCachedPage().toEpubPage())
    }

    @Test
    fun invalidCachedPageIsDiscarded() {
        assertNull(CachedPage(type = "html", entry = "").toEpubPage())
        assertNull(CachedPage(type = "synthetic", entry = "notes.xhtml").toEpubPage())
        assertNull(CachedPage(type = "unknown", entry = "chapter.xhtml").toEpubPage())
    }
}
