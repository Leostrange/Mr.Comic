package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Test

class EpubPageResolverTest {

    private val samplePages = listOf(
        EpubPage.Image(entry = "OEBPS/images/cover.jpg"),
        EpubPage.Html(entry = "OEBPS/text/title.xhtml", opfDir = "OEBPS", chunkIndex = 0, totalChunks = 1),
        EpubPage.Html(entry = "OEBPS/text/ch1.xhtml", opfDir = "OEBPS", chunkIndex = 0, totalChunks = 2),
        EpubPage.Html(entry = "OEBPS/text/ch1.xhtml", opfDir = "OEBPS", chunkIndex = 1, totalChunks = 2),
        EpubPage.Html(entry = "OEBPS/text/ch2.xhtml", opfDir = "OEBPS", chunkIndex = 0, totalChunks = 1),
        EpubPage.SyntheticHtml(
            entry = "synthetic_notes_0.html",
            html = "<html><body>notes</body></html>",
            sourceEntries = listOf("OEBPS/text/notes1.xhtml", "OEBPS/text/notes2.xhtml"),
            chunkIndex = 0,
            totalChunks = 1
        )
    )

    @Test
    fun `mapLegacyPageIndexToSectionIndex maps spine index to resolved index`() {
        // spine index 0 = first Html page = title.xhtml at resolved index 1
        assertEquals(1, EpubPageResolver.mapLegacyPageIndexToSectionIndex(0, samplePages))
        // spine index 1 = second Html page = ch1.xhtml at resolved index 2
        assertEquals(2, EpubPageResolver.mapLegacyPageIndexToSectionIndex(1, samplePages))
    }

    @Test
    fun `mapLegacyPageIndexToSectionIndex returns -1 for out-of-range`() {
        assertEquals(-1, EpubPageResolver.mapLegacyPageIndexToSectionIndex(99, samplePages))
        assertEquals(-1, EpubPageResolver.mapLegacyPageIndexToSectionIndex(-1, samplePages))
    }

    @Test
    fun `mapLegacyPageIndexToSectionIndex returns -1 for empty pages`() {
        assertEquals(-1, EpubPageResolver.mapLegacyPageIndexToSectionIndex(0, emptyList()))
    }

    @Test
    fun `resolveFileNameToPageIndex matches by file name suffix`() {
        assertEquals(2, EpubPageResolver.resolveFileNameToPageIndex("text/ch1.xhtml", samplePages))
        assertEquals(2, EpubPageResolver.resolveFileNameToPageIndex("ch1.xhtml", samplePages))
        assertEquals(4, EpubPageResolver.resolveFileNameToPageIndex("ch2.xhtml", samplePages))
    }

    @Test
    fun `resolveFileNameToPageIndex returns -1 for non-existent file`() {
        assertEquals(-1, EpubPageResolver.resolveFileNameToPageIndex("missing.xhtml", samplePages))
    }

    @Test
    fun `buildEntryCandidates strips directory prefixes`() {
        val candidates = EpubPageResolver.buildEntryCandidates("OEBPS/text/ch1.xhtml")
        assertEquals(3, candidates.size)
        assertEquals("OEBPS/text/ch1.xhtml", candidates[0])
        assertEquals("text/ch1.xhtml", candidates[1])
        assertEquals("ch1.xhtml", candidates[2])
    }

    @Test
    fun `buildEntryCandidates with no directories returns single candidate`() {
        val candidates = EpubPageResolver.buildEntryCandidates("ch1.xhtml")
        assertEquals(1, candidates.size)
        assertEquals("ch1.xhtml", candidates[0])
    }

    @Test
    fun `findPageIndexByEntryCandidates matches by suffix`() {
        assertEquals(
            2,
            EpubPageResolver.findPageIndexByEntryCandidates("OEBPS/text/ch1.xhtml", samplePages)
        )
        assertEquals(
            2,
            EpubPageResolver.findPageIndexByEntryCandidates("text/ch1.xhtml", samplePages)
        )
        assertEquals(
            2,
            EpubPageResolver.findPageIndexByEntryCandidates("ch1.xhtml", samplePages)
        )
    }

    @Test
    fun `findPageIndexByEntryCandidates returns -1 for no match`() {
        assertEquals(
            -1,
            EpubPageResolver.findPageIndexByEntryCandidates("missing.xhtml", samplePages)
        )
    }

    @Test
    fun `pageMatchesEntryCandidates matches Html page by suffix`() {
        val htmlPage = samplePages[2] as EpubPage.Html
        assert(EpubPageResolver.pageMatchesEntryCandidates(htmlPage, listOf("ch1.xhtml")))
        assert(EpubPageResolver.pageMatchesEntryCandidates(htmlPage, listOf("OEBPS/text/ch1.xhtml")))
    }

    @Test
    fun `pageMatchesEntryCandidates does not match Image page`() {
        val imagePage = samplePages[0]
        assert(!EpubPageResolver.pageMatchesEntryCandidates(imagePage, listOf("cover.jpg")))
    }
}
