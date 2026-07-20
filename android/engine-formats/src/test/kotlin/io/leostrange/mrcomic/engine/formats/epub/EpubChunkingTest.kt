package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class EpubChunkingTest {

    @Test
    fun groupsHtmlBlocksWithoutCreatingEmptyTrailingPages() {
        val chunks = resolveEpubHtmlChunkCount(
            blockCharCounts = listOf(11, 802, 761, 1747, 1887, 1919, 1078, 519, 1648, 1302, 1029),
            charsPerPage = 2_000
        )

        assertEquals(4, chunks)
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
}
