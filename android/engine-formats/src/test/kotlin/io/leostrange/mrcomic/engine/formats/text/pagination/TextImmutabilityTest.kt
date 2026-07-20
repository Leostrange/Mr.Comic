package io.leostrange.mrcomic.engine.formats.text.pagination

import io.leostrange.mrcomic.engine.formats.text.TextDocumentSection
import kotlinx.coroutines.runBlocking
import org.jsoup.Jsoup
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * PAG-005: Text immutability tests.
 *
 * Verifies that the pagination pipeline preserves:
 * - Unicode characters (Cyrillic, CJK, Arabic, emoji)
 * - HTML entities (&#1090; etc.) — letters don't turn into digits
 * - Zero-width spaces and soft hyphens
 * - Non-breaking spaces
 * - Original word boundaries (no arbitrary splitting)
 */
class TextImmutabilityTest {

    private val constraints = TextPaginationConstraints(
        viewportWidthPx = 360,
        viewportHeightPx = 640,
        fontSizeSp = 18,
        lineHeight = 1.6f
    )

    // ── Cyrillic preservation ──────────────────────────────────────────────

    @Test
    fun cyrillicText_preservedThroughPagination() = runBlocking {
        val source = "Привет, мир! Это тестовый текст на русском языке с ё, ъ, ь символами."
        val html = "<html><body><p>$source</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        assertTrue("Cyrillic text preserved", allText.contains("Привет"))
        assertTrue("Yo preserved", allText.contains("ё"))
        assertTrue("Hard sign preserved", allText.contains("ъ"))
        assertTrue("Soft sign preserved", allText.contains("ь"))
    }

    // ── HTML entity preservation ───────────────────────────────────────────

    @Test
    fun htmlNumericEntities_decodedCorrectly() = runBlocking {
        // &#1090; = "т" (Cyrillic te), &#1072; = "а" (Cyrillic a)
        // These should NOT appear as "1090" or "1072" in the output.
        val html = "<html><body><p>&#1090;&#1072;&#1082;&#1089;&#1080;</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        // Should be "такси", not "10901072108210891080"
        assertTrue("Entities decoded to Cyrillic", allText.contains("такси"))
        assertFalse("No raw entity numbers", allText.contains("1090"))
    }

    @Test
    fun htmlNamedEntities_preserved() = runBlocking {
        val html = "<html><body><p>&amp; &lt; &gt; &quot; &apos; &nbsp;</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        assertTrue("Ampersand preserved", allText.contains("&"))
        assertTrue("Less-than preserved", allText.contains("<"))
        assertTrue("Greater-than preserved", allText.contains(">"))
    }

    // ── Zero-width and special spaces ──────────────────────────────────────

    @Test
    fun zeroWidthSpace_preservedInHtml() = runBlocking {
        // Zero-width space (U+200B) should be preserved in the HTML source.
        // Note: Jsoup.text() may strip it, so check raw HTML.
        val source = "word\u200Bword"
        val html = "<html><body><p>$source</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allRaw = result.pages.joinToString("") { it.html }

        assertTrue("Zero-width space preserved in HTML", allRaw.contains("\u200B"))
    }

    @Test
    fun nonBreakingSpace_preservedInHtml() = runBlocking {
        // Non-breaking space (U+00A0) should be preserved in HTML source.
        // Jsoup may convert it to &nbsp; entity, so check both forms.
        val source = "100\u00A0km"
        val html = "<html><body><p>$source</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allRaw = result.pages.joinToString("") { it.html }

        assertTrue("Non-breaking space preserved in HTML",
            allRaw.contains("\u00A0") || allRaw.contains("&nbsp;"))
    }

    @Test
    fun softHyphen_preservedInHtml() = runBlocking {
        // Soft hyphen (U+00AD) should be preserved in HTML source
        val source = "hy\u00ADphen\u00ADation"
        val html = "<html><body><p>$source</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allRaw = result.pages.joinToString("") { it.html }

        assertTrue("Soft hyphen preserved in HTML", allRaw.contains("\u00AD"))
    }

    // ── Word boundary preservation ─────────────────────────────────────────

    @Test
    fun wordsNotSplitAtArbitraryPoints() = runBlocking {
        // Long words should not be split at arbitrary character positions
        val longWord = "Donaudampfschifffahrtsgesellschaftskapitaenswitwe"
        val html = "<html><body><p>$longWord is a German word.</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        // The word should appear intact somewhere
        assertTrue("Long word preserved intact", allText.contains(longWord))
    }

    // ── Mixed script ───────────────────────────────────────────────────────

    @Test
    fun mixedScript_preserved() = runBlocking {
        val source = "Hello Мир 你好 مرحبا 🌍"
        val html = "<html><body><p>$source</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        assertTrue("Latin preserved", allText.contains("Hello"))
        assertTrue("Cyrillic preserved", allText.contains("Мир"))
        assertTrue("CJK preserved", allText.contains("你好"))
        assertTrue("Arabic preserved", allText.contains("مرحبا"))
        assertTrue("Emoji preserved", allText.contains("🌍"))
    }

    // ── Em dash and special punctuation ─────────────────────────────────────

    @Test
    fun specialPunctuation_preserved() = runBlocking {
        val source = "Em dash \u2014 en dash \u2013 ellipsis \u2026 quotes \u00AB\u00BB \u201E\u201C \u2018\u2019"
        val html = "<html><body><p>$source</p></body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        assertTrue("Em dash preserved", allText.contains("—"))
        assertTrue("En dash preserved", allText.contains("–"))
        assertTrue("Ellipsis preserved", allText.contains("…"))
        assertTrue("Guillemets preserved", allText.contains("«"))
    }

    // ── Entity in block splitting context ───────────────────────────────────

    @Test
    fun entityNotSplitByBlockBoundary() = runBlocking {
        // P2-1: If a block is split, entities should not be cut in half.
        // Create many paragraphs with entities to force pagination.
        val paragraphs = (1..50).map { i ->
            "<p>Абзац $i содержит кириллицу и entity: &#1090;&#1077;&#1089;&#1090; текст.</p>"
        }
        val html = "<html><body>${paragraphs.joinToString("")}</body></html>"
        val sections = listOf(TextDocumentSection(index = 0, id = "test", html = html))

        val result = DocumentTextPaginator().paginateSections(sections, constraints)
        val allText = result.pages.joinToString(" ") { Jsoup.parse(it.html).text() }

        // "тест" should appear, not "1090" or partial entities
        assertTrue("Entity decoded correctly", allText.contains("тест"))
        assertFalse("No raw entity numbers", allText.contains("1090"))
        assertFalse("No raw entity numbers", allText.contains("1077"))
    }
}
