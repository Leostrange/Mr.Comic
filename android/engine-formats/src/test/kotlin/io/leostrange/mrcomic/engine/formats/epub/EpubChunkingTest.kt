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

    @Test
    fun splitEstimatedCharCount_splitsIntoPageSizedParts() {
        assertEquals(listOf(4000, 4000, 2000), splitEstimatedCharCount(10_000, charsPerPage = 4_000))
        assertEquals(listOf(4_000), splitEstimatedCharCount(4_000, charsPerPage = 4_000))
        assertEquals(listOf(10), splitEstimatedCharCount(10, charsPerPage = 4_000))
        assertEquals(listOf(1), splitEstimatedCharCount(0, charsPerPage = 4_000))
    }

    @Test
    fun estimateChunkCount_returnsOneForSmallContent() {
        val body = "<p>Предисловие</p><p>Первый абзац.</p>"

        assertEquals(1, estimateChunkCount(body, visibleCharCount = 30, charsPerPage = 4_000))
    }

    @Test
    fun estimateChunkCount_splitsOversizedBlocksAcrossPages() {
        // One paragraph larger than a page splits into [4000,4000,2000], which
        // then groups as two structural chunks under the 8000-char budget.
        val body = "<p>${'а'.toString().repeat(10_000)}</p>"

        assertEquals(2, estimateChunkCount(body, visibleCharCount = 10_000, charsPerPage = 4_000))
    }

    @Test
    fun extractChunk_emptyBodyReturnsHeadAndSkeleton() {
        val html = "<html><head><style>p{color:red}</style></head><body></body></html>"

        val chunk = extractChunk(html, chunkIndex = 0, totalChunks = 1)

        assertTrue("head must be preserved", chunk.contains("<style>p{color:red}</style>"))
        assertTrue("body skeleton must be present", chunk.contains("<body></body></html>"))
    }

    @Test
    fun extractChunk_keepsWholeParagraphsInsideEachChunk() {
        // Each paragraph must stay under CHUNK_CHARS_PER_PAGE (4000) so
        // splitOversizedEpubBlock does not cut it — only page-level chunking applies.
        val p1 = "Слово один ".repeat(400) // ~3000 chars
        val p2 = "Слово два ".repeat(400)
        val p3 = "Слово три ".repeat(400)
        val html = "<html><head><style>p{margin:0}</style></head><body>" +
            "<p>$p1</p><p>$p2</p><p>$p3</p></body></html>"

        val first = extractChunk(html, chunkIndex = 0, totalChunks = 3)
        val second = extractChunk(html, chunkIndex = 1, totalChunks = 3)

        assertTrue("first chunk keeps head css", first.contains("<style>p{margin:0}</style>"))
        assertTrue("first chunk opens body", first.contains("<body>"))
        assertTrue("first chunk closes document", first.contains("</body></html>"))
        listOf(first, second).forEach { chunk ->
            val body = chunk.substringAfter("<body>").substringBefore("</body>")
            val opens = Regex("<p>").findAll(body).count()
            val closes = Regex("</p>").findAll(body).count()
            assertTrue(
                "a chunk boundary must not leave a paragraph unclosed (opens=$opens closes=$closes)",
                opens == closes && opens >= 1
            )
        }
        assertTrue("first chunk carries the first paragraph", first.contains("Слово один"))
        assertTrue("second chunk carries the second paragraph", second.contains("Слово два"))
        assertFalse("chunks must differ", first == second)
    }

    @Test
    fun extractChunk_oversizedParagraphSplitsAtWordBoundary() {
        // Fully unique words so no two chunks can ever be byte-identical.
        val wholeWord = Regex("слово\\d{1,4}")
        val words = List(2_000) { index -> "слово${index}" }
        val longParagraph = words.joinToString(" ")
        val html = "<html><head></head><body><p>$longParagraph</p></body></html>"

        // Collect every distinct chunk the extractor produces. The tail pair is
        // rebalanced, so the chunk count is not a fixed constant.
        val chunks = buildList {
            var previous = ""
            var index = 0
            while (index < 10) {
                val chunk = extractChunk(html, chunkIndex = index, totalChunks = 5)
                if (chunk == previous) break
                add(chunk)
                previous = chunk
                index++
            }
        }

        val allWords = chunks.flatMap { chunk ->
            chunk.substringAfter("<p>").substringBefore("</p>")
                .split(' ')
                .filter { it.isNotBlank() }
        }

        assertTrue("chunks must be produced", chunks.size >= 3)
        assertTrue("every chunk must contain whole words", chunks.all { chunk ->
            val chunkWords = chunk.substringAfter("<p>").substringBefore("</p>").split(' ').filter { it.isNotBlank() }
            chunkWords.isNotEmpty() && chunkWords.all { it.matches(wholeWord) }
        })
        assertEquals(
            "all chunks together must preserve every word exactly once",
            2_000,
            allWords.size
        )
    }

    @Test
    fun extractChunkBlocks_preservesSectionOrder() {
        val body = "<h1>Глава 1</h1><p>Первый абзац</p><h2>Глава 2</h2><p>Второй абзац</p>"

        val blocks = extractChunkBlocks(body)

        assertTrue(blocks.size >= 4)
        val joined = blocks.joinToString("") { it.html }
        assertTrue(
            "sections must keep their document order",
            joined.indexOf("Глава 1") < joined.indexOf("Первый абзац") &&
                joined.indexOf("Первый абзац") < joined.indexOf("Глава 2") &&
                joined.indexOf("Глава 2") < joined.indexOf("Второй абзац")
        )
    }

    @Test
    fun extractChunkBlocks_keepsFootnoteContentInBlocks() {
        val body = """
            <p>Основной текст<a id="n1" href="#fn1">[1]</a></p>
            <aside epub:type="footnote" id="fn1"><p>Текст сноски</p></aside>
        """.trimIndent()

        val blocks = extractChunkBlocks(body)

        assertTrue("footnote body must survive chunking", blocks.any { it.html.contains("Текст сноски") })
        assertTrue("footnote id must survive chunking", blocks.any { it.html.contains("fn1") })
    }
}
