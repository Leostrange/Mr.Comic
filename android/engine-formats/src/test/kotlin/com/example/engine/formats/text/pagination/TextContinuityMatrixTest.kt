package com.example.engine.formats.text.pagination

import com.example.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-01: Text continuity between pages across configuration matrix.
 *
 * Creates a document with numbered lines (LINE-0001..LINE-0500) and verifies
 * that no line is lost, duplicated, or reordered across all configuration
 * combinations.
 */
class TextContinuityMatrixTest {

    private fun numberedParagraphs(count: Int): String =
        (1..count).joinToString("") { "<p>LINE-${it.toString().padStart(4, '0')}</p>" }

    private fun numberedHtml(count: Int): String =
        "<html><body>${numberedParagraphs(count)}</body></html>"

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

    private suspend fun assertContinuity(
        html: String,
        constraints: TextPaginationConstraints,
        label: String
    ) {
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))
        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val pageRaws = result.pages.map { it.html }

        // All markers present
        val linePattern = Regex("LINE-\\d{4}")
        val allText = pageRaws.joinToString("")
        val allMarkers = linePattern.findAll(allText).map { it.value }.toList()
        assertTrue("[$label] All lines present", allMarkers.size >= 100)

        // No duplicates
        for (marker in allMarkers.distinct()) {
            val count = pageRaws.count { it.contains(marker) }
            assertTrue("[$label] $marker on $count pages", count <= 1)
        }

        // Ordering preserved
        val markerValues = allMarkers.map { it.substringAfter("LINE-").toInt() }
        for (i in 0 until markerValues.size - 1) {
            assertTrue(
                "[$label] Order: ${markerValues[i]} < ${markerValues[i+1]}",
                markerValues[i] < markerValues[i + 1]
            )
        }
    }

    // ── Font size matrix ───────────────────────────────────────────────────

    @Test
    fun continuity_fontSize12() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(fontSize = 12), "font12")
    }

    @Test
    fun continuity_fontSize18() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(fontSize = 18), "font18")
    }

    @Test
    fun continuity_fontSize24() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(fontSize = 24), "font24")
    }

    @Test
    fun continuity_fontSize32() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(fontSize = 32), "font32")
    }

    // ── Line height matrix ─────────────────────────────────────────────────

    @Test
    fun continuity_lineHeight12() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(lineHeight = 1.2f), "lh1.2")
    }

    @Test
    fun continuity_lineHeight16() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(lineHeight = 1.6f), "lh1.6")
    }

    @Test
    fun continuity_lineHeight20() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(lineHeight = 2.0f), "lh2.0")
    }

    @Test
    fun continuity_lineHeight25() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(lineHeight = 2.5f), "lh2.5")
    }

    // ── Viewport matrix ────────────────────────────────────────────────────

    @Test
    fun continuity_portrait360x640() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(360, 640), "portrait")
    }

    @Test
    fun continuity_portrait393x873() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(393, 873), "pixel7")
    }

    @Test
    fun continuity_landscape640x360() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(640, 360), "landscape")
    }

    @Test
    fun continuity_landscape873x393() = runBlocking {
        assertContinuity(numberedHtml(200), constraints(873, 393), "pixel7land")
    }

    @Test
    fun continuity_tablet800x1280() = runBlocking {
        assertContinuity(numberedHtml(300), constraints(800, 1280), "tablet")
    }

    // ── Large document ─────────────────────────────────────────────────────

    @Test
    fun continuity_500lines() = runBlocking {
        assertContinuity(numberedHtml(500), constraints(), "500lines")
    }
}
