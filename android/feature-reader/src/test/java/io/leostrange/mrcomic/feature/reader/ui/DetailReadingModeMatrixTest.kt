package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.engine.formats.text.pagination.DocumentTextPaginator
import io.leostrange.mrcomic.engine.api.TextPaginationConstraints
import io.leostrange.mrcomic.engine.api.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-09: paged vs webtoon mode invariants.
 *
 * The reader offers two modes for text content:
 *   * paged — every sub-page is its own HTML page rendered one at a time,
 *   * webtoon (vertical strip) — every sub-page is concatenated into a
 *     single HTML document that the WebView scrolls.
 *
 * Both modes must:
 *   1. use the same sub-page boundaries (the page break is the page break,
 *      whatever the rendering mode),
 *   2. preserve every paragraph once across the whole document,
 *   3. provide a stable anchor numbering so progress restarts work.
 */
class DetailReadingModeMatrixTest {

    private fun constraints() = TextPaginationConstraints(
        viewportWidthPx = 360,
        viewportHeightPx = 640,
        fontSizeSp = 18,
        lineHeight = 1.6f
    )

    private fun hundredParagraphs() =
        (1..100).joinToString("") { "<p>PARA-${it.toString().padStart(3, '0')}</p>" }

    @Test
    fun pagedAndWebtoonAgreeOnNumberOfSubPages() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "chap-1", html = hundredParagraphs())
        )
        val result = DocumentTextPaginator().paginateSections(sections, constraints())
        val pageCount = result.pages.size

        // Webtoon builder wraps every sub-page in its own <section> block, so
        // the webtoon "page count" is the same as the paged count.
        val paged = result.pages.mapIndexed { idx, page ->
            CachedHtmlPage(html = page.html, assetBasePath = null)
        }
        val webtoon = TextWebtoonDocumentBuilder.build(paged)

        val sectionCount = Regex(
            "class=\"mrcomic-text-webtoon-section\""
        ).findAll(webtoon.html).count()

        assertEquals(
            "Paged sub-page count must equal webtoon section count",
            pageCount,
            sectionCount
        )
    }

    @Test
    fun pagedAndWebtoonCoverEveryParagraphOnce() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "chap-1", html = hundredParagraphs())
        )
        val result = DocumentTextPaginator().paginateSections(sections, constraints())

        // Paged coverage — extract markers per page, then check the joined stream
        // is strictly monotonic and covers every paragraph once.
        val pagedPages = result.pages.map { p ->
            org.jsoup.Jsoup.parse(p.html).text().replace('\u00A0', ' ').trim()
        }
        val pagedMarkers = Regex("PARA-\\d{3}").findAll(pagedPages.joinToString("\n"))
            .map { it.value }.toList()
        assertMonotonicSequence(pagedMarkers, label = "paged")

        // Webtoon coverage — wrap each sub-page into a single scrolling document.
        val webtoonPages = result.pages.map { p ->
            CachedHtmlPage(html = p.html, assetBasePath = null)
        }
        val webtoon = TextWebtoonDocumentBuilder.build(webtoonPages)
        val webtoonMarkers = Regex("PARA-\\d{3}").findAll(webtoon.html)
            .map { it.value }.toList()
        assertMonotonicSequence(webtoonMarkers, label = "webtoon")

        assertEquals(
            "Paged and webtoon must list paragraphs in the same order",
            pagedMarkers,
            webtoonMarkers
        )
    }

    private fun assertMonotonicSequence(markers: List<String>, label: String) {
        val seen = mutableSetOf<String>()
        var previous = 0
        for (marker in markers) {
            assertFalse(
                "[$label] paragraph marker $marker must not repeat (already seen)",
                marker in seen
            )
            seen += marker
            val value = marker.substringAfter("-").toInt()
            assertTrue(
                "[$label] paragraph sequence must be strictly increasing ($previous → $value at $marker)",
                value > previous
            )
            previous = value
        }
        assertEquals(
            "[$label] every PARA-001..PARA-100 must appear",
            (0..99).toSet(),
            seen.map { it.substringAfter("-").toInt() - 1 }.toSet()
        )
    }

    @Test
    fun webtoonAppendPagesAddsOnlyNewSections() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "chap-1", html = hundredParagraphs())
        )
        val first = DocumentTextPaginator().paginateSections(sections, constraints()).pages
        val firstDoc = TextWebtoonDocumentBuilder.build(
            first.map { CachedHtmlPage(html = it.html, assetBasePath = null) }
        )
        val firstSectionCount = Regex("mrcomic-text-webtoon-section").findAll(firstDoc.html).count()

        // Add a fresh chapter (1 paragraph). Append into the existing doc.
        val secondChapter = listOf(
            TextDocumentSection(
                index = 1,
                id = "chap-2",
                html = "<p>PARA-999</p>"
            )
        )
        val second = DocumentTextPaginator().paginateSections(secondChapter, constraints()).pages
        val appended = TextWebtoonDocumentBuilder.appendPages(
            existingHtml = firstDoc.html,
            newPages = second.map { CachedHtmlPage(html = it.html, assetBasePath = null) },
            startIndex = firstSectionCount
        )

        val appendedSectionCount = Regex("mrcomic-text-webtoon-section").findAll(appended.html).count()
        assertEquals(
            "Appending one chapter must add exactly one section, not rebuild from scratch",
            firstSectionCount + 1,
            appendedSectionCount
        )

        assertTrue(
            "Original chapter content must remain present after append",
            appended.html.contains("PARA-001")
        )
        assertTrue(
            "New chapter paragraph must appear in the appended document",
            appended.html.contains("PARA-999")
        )
        assertFalse(
            "Append must not produce duplicate section blocks",
            Regex("PARA-001").findAll(appended.html).toList().size > 1
        )
    }

    @Test
    fun webtoonSectionCarriesPageIndexDataAttribute() = runBlocking {
        val sections = listOf(
            TextDocumentSection(index = 0, id = "chap-1", html = hundredParagraphs())
        )
        val result = DocumentTextPaginator().paginateSections(sections, constraints()).pages
        val doc = TextWebtoonDocumentBuilder.build(
            result.map { CachedHtmlPage(html = it.html, assetBasePath = null) }
        )
        val indices = Regex("data-mrcomic-page-index=\"(\\d+)\"").findAll(doc.html)
            .map { it.groupValues[1].toInt() }.toList()
        assertEquals(
            "Every webtoon section must carry its zero-based page index in order",
            (0 until result.size).toList(),
            indices
        )
    }
}
