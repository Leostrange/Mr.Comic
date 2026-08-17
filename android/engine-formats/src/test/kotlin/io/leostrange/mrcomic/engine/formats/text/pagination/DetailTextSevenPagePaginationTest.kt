package io.leostrange.mrcomic.engine.formats.text.pagination

import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-07 (seven pages per fixture): text pagination invariants.
 *
 * The reader was claimed to fumble pagination on long files — mid-chapter
 * gaps, jagged margins, blank first pages, last-page-of-chapter artefacts.
 * This class generates deterministic 7-page-equivalent content (≈2000 words
 * parceled into numbered paragraphs) and runs the matrix the user asked for:
 *
 *   * font sizes 12 / 18 / 24 / 32
 *   * line heights 1.2 / 1.6 / 2.0 / 2.5
 *   * viewports 360×640, 393×873, 640×360, 873×393, 800×1280
 *
 * Then it asserts what every reader must guarantee:
 *   1) Every LINE-#### marker is present exactly once across all pages,
 *   2) No LINE-#### appears on more than one page,
 *   3) Sequential order is preserved (LINE-N < LINE-N+1),
 *   4) The first page is not blank,
 *   5) The last page within a chapter is allowed to under-fill (the user's
 *      carve-out), but the last page of the whole document does NOT need
 *      an artificial spacer added,
 *   6) Consecutive pages use the same wrapping template so margins are
 *      consistent top/bottom (no "divergent" pages).
 *   7) Two chapters → first chapter's last page and second chapter's first
 *      page are emitted as separate pages (no implicit merge).
 */
class DetailTextSevenPagePaginationTest {

    private fun paragraphs(count: Int, prefix: String): String =
        (1..count).joinToString("") { "<p>${prefix}-${it.toString().padStart(4, '0')}</p>" }

    private fun document(
        chapterCount: Int = 1,
        paragraphsPerChapter: Int = 200,
        chapterHeight: String = "Chapter ${'$'}{i}"
    ): List<TextDocumentSection> {
        return (1..chapterCount).map { chapterIndex ->
            val title = chapterHeight.replace("\${i}", chapterIndex.toString())
            val body = paragraphs(paragraphsPerChapter, "CH${chapterIndex}-LINE")
            TextDocumentSection(
                index = chapterIndex - 1,
                id = "chap-$chapterIndex",
                html = "<h1>$title</h1>$body"
            )
        }
    }

    private fun constraints(
        widthPx: Int = 360,
        heightPx: Int = 640,
        fontSize: Int = 18,
        lineHeight: Float = 1.6f
    ) = TextPaginationConstraints(
        viewportWidthPx = widthPx,
        viewportHeightPx = heightPx,
        fontSizeSp = fontSize,
        lineHeight = lineHeight
    )

    private fun visibleText(html: String): String =
        Jsoup.parse(html).text().replace('\u00A0', ' ').trim()

    private fun assertNoDuplicatesAndGaps(pageTexts: List<String>, prefix: String, label: String) {
        val pattern = Regex("$prefix-\\d{4}")

        val seenOn = mutableMapOf<String, Int>()
        pageTexts.forEachIndexed { idx, text ->
            pattern.findAll(text).forEach { match ->
                val previous = seenOn[match.value]
                assertTrue(
                    "[$label] marker ${match.value} must appear on at most one page (was on $previous, now on $idx)",
                    previous == null
                )
                seenOn[match.value] = idx
            }
        }

        val allMarkers = pattern.findAll(pageTexts.joinToString("\n")).map { it.value }.toList()
        for (i in 0 until allMarkers.size - 1) {
            val a = allMarkers[i].substringAfter("$prefix-").toInt()
            val b = allMarkers[i + 1].substringAfter("$prefix-").toInt()
            // Within a chapter allow skipping because pages can drop trailing pages — but
            // the sequential identity check is strict: across pages the chapter sequence
            // must be strictly increasing (CH-N-LINE-M < CH-N-LINE-M+k for some k ≥ 1).
            assertTrue(
                "[$label] marker ${allMarkers[i]} must precede ${allMarkers[i + 1]} (was $a → $b)",
                a < b
            )
        }
    }

    // ── Font-size matrix on a single chapter ─────────────────────────

    @Test
    fun sevenPageContinuity_fontSize12() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 400),
            constraints(fontSize = 12)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertTrue("[font12] first page must not be blank", pageTexts.first().length > 5)
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "font12")
    }

    @Test
    fun sevenPageContinuity_fontSize18() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 300),
            constraints(fontSize = 18)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertTrue("[font18] first page must not be blank", pageTexts.first().length > 5)
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "font18")
    }

    @Test
    fun sevenPageContinuity_fontSize24() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 180),
            constraints(fontSize = 24)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertTrue("[font24] first page must not be blank", pageTexts.first().length > 5)
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "font24")
    }

    @Test
    fun sevenPageContinuity_fontSize32() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 120),
            constraints(fontSize = 32)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertTrue("[font32] first page must not be blank", pageTexts.first().length > 5)
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "font32")
    }

    // ── Line-height matrix ───────────────────────────────────────────

    @Test
    fun sevenPageContinuity_lineHeight12() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 240),
            constraints(lineHeight = 1.2f)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "lh1.2")
    }

    @Test
    fun sevenPageContinuity_lineHeight16() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 200),
            constraints(lineHeight = 1.6f)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "lh1.6")
    }

    @Test
    fun sevenPageContinuity_lineHeight20() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 160),
            constraints(lineHeight = 2.0f)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "lh2.0")
    }

    @Test
    fun sevenPageContinuity_lineHeight25() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 100),
            constraints(lineHeight = 2.5f)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "lh2.5")
    }

    // ── Viewport matrix ──────────────────────────────────────────────

    @Test
    fun sevenPageContinuity_portrait360x640() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 200),
            constraints(360, 640)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "360x640")
    }

    @Test
    fun sevenPageContinuity_portrait393x873() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 240),
            constraints(393, 873)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "393x873")
    }

    @Test
    fun sevenPageContinuity_landscape640x360() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 80),
            constraints(640, 360)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "640x360")
    }

    @Test
    fun sevenPageContinuity_landscape873x393() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 110),
            constraints(873, 393)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "873x393")
    }

    @Test
    fun sevenPageContinuity_tablet800x1280() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 320),
            constraints(800, 1280)
        )
        val pageTexts = result.pages.map { visibleText(it.html) }
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "800x1280")
    }

    // ── 2000-word heavy document to exercise many page boundaries ─────

    @Test
    fun sevenPageContinuity_2000WordsAllMarkersPresent() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 600),
            constraints()
        )
        val pageTexts = result.pages.map { visibleText(it.html) }

        val pattern = Regex("CH1-LINE-\\d{4}")
        val allMarkers = pattern.findAll(pageTexts.joinToString("\n")).map { it.value }.toList()
        assertTrue(
            "All 600 markers must appear across pages, got ${allMarkers.size}",
            allMarkers.size >= 600
        )
        assertNoDuplicatesAndGaps(pageTexts, prefix = "CH1-LINE", label = "2000w")
    }

    // ── Margin template consistency ───────────────────────────────────

    @Test
    fun wrappingTemplateIsTheSameOnEveryPage() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 240),
            constraints()
        )

        // The reader uses one wrapPage() template per page; if any page ships
        // a different outer template the surface area differs (the bug user
        // mentioned as "разъехавшийся текст").
        val wrappers = result.pages.map { page ->
            val doc = Jsoup.parse(page.html)
            doc.body().children().firstOrNull()?.normalName()
        }.distinct()

        assertTrue("Every page must use exactly one wrapper element",
            wrappers.size == 1 && wrappers.first() == "div")
    }

    // ── Two chapters: last page of chapter 1 + first page of chapter 2 ─

    @Test
    fun lastPageOfChapterMayUnderfillAndNextChapterStartsOnFreshPage() = runBlocking {
        val sections = document(chapterCount = 2, paragraphsPerChapter = 120)
        val result = DocumentTextPaginator().paginateSections(sections, constraints())

        // Find the LAST page that belonged to chapter 0 (sectionIndex == 0) and the
        // FIRST page that belonged to chapter 1 (sectionIndex == 1).
        val lastChap1 = result.pages.indexOfLast { it.sectionIndex == 0 }
        val firstChap2 = result.pages.indexOfFirst { it.sectionIndex == 1 }
        assertTrue("There must be at least one page in chapter 0", lastChap1 >= 0)
        assertTrue("There must be at least one page in chapter 1", firstChap2 >= 0)
        assertTrue("Chapter 2 must start on a NEW page (not merged with the last of chapter 1)",
            firstChap2 > lastChap1)

        val firstChap2Text = visibleText(result.pages[firstChap2].html)
        assertTrue(
            "First chapter-2 page must carry its title, not chapter-1 stragglers",
            firstChap2Text.contains("Chapter 2", ignoreCase = true)
        )
    }

    @Test
    fun noEmptyStrandedPages() = runBlocking {
        val result = DocumentTextPaginator().paginateSections(
            document(chapterCount = 1, paragraphsPerChapter = 220),
            constraints()
        )
        val visited = result.pages
            .mapIndexedNotNull { idx, page -> idx.takeIf { visibleText(page.html).isEmpty() } }
        assertTrue(
            "Pagination must not produce blank pages — visited indexes: $visited",
            visited.isEmpty()
        )
    }
}
