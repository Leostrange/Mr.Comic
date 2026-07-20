package io.leostrange.mrcomic.engine.formats.epub

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * Characterization tests for [EpubCssSanitizer].
 *
 * Pins down the CSS sanitization behavior extracted from EpubFormatReader.
 */
class EpubCssSanitizerTest {

    // ── Inline sanitization ────────────────────────────────────────────────

    @Test
    fun sanitizeInline_stripsFontFace() {
        val css = """
            body { color: #111; }
            @font-face { font-family: 'X'; src: url(x.otf); }
            .title { font-weight: bold; }
        """.trimIndent()

        val result = EpubCssSanitizer.sanitizeInline(css)

        assertFalse(result.contains("@font-face"))
        assertTrue(result.contains("body { color: #111; }"))
        assertTrue(result.contains(".title { font-weight: bold; }"))
    }

    @Test
    fun sanitizeInline_stripsDominantIdScope() {
        // Build CSS where #sbo-rt-content appears >= 10 times
        val rules = (1..12).joinToString("\n") { "#sbo-rt-content .rule$it { color: red; }" }
        val css = "body { color: #111; }\n$rules"

        val result = EpubCssSanitizer.sanitizeInline(css)

        assertFalse(result.contains("#sbo-rt-content"))
        assertTrue(result.contains(".rule1"))
        assertTrue(result.contains(".rule12"))
    }

    @Test
    fun sanitizeInline_keepsRareIdSelectors() {
        // Only 2 occurrences → not dominant, keep as-is
        val css = "#myid .a { color: red; }\n#myid .b { color: blue; }"

        val result = EpubCssSanitizer.sanitizeInline(css)

        assertTrue(result.contains("#myid"))
    }

    @Test
    fun sanitizeInline_clampsDangerouslySmallLineHeight() {
        val css = ".footnote { line-height: 0.1; }\n.body { line-height: 1.5; }"

        val result = EpubCssSanitizer.sanitizeInline(css)

        assertTrue(result.contains("line-height: 1.2"))
        assertFalse(result.contains("line-height: 0.1"))
        assertTrue(result.contains("line-height: 1.5"))
    }

    // ── Asset-backed sanitization ──────────────────────────────────────────

    @Test
    fun sanitizeAssetBacked_keepsResolvableFontFace() {
        val css = """@font-face { font-family: "Book"; src: url('../fonts/book.woff2') format('woff2'); }"""

        val result = EpubCssSanitizer.sanitizeAssetBacked(
            css = css,
            cssEntryPath = "OPS/styles/main.css",
            assetExists = { it == "OPS/fonts/book.woff2" }
        )

        assertTrue(result.contains("@font-face"))
        assertTrue(result.contains("book.woff2"))
    }

    @Test
    fun sanitizeAssetBacked_stripsBrokenFontFace() {
        val css = """@font-face { font-family: "X"; src: url('../missing.woff2') format('woff2'); }"""

        val result = EpubCssSanitizer.sanitizeAssetBacked(
            css = css,
            cssEntryPath = "OPS/styles/main.css",
            assetExists = { false }
        )

        assertFalse(result.contains("@font-face"))
    }

    @Test
    fun sanitizeAssetBacked_stripsOtfTtfFonts() {
        val css = """@font-face { font-family: "X"; src: url('fonts/book.otf') format('opentype'), url('fonts/book.woff2') format('woff2'); }"""

        val result = EpubCssSanitizer.sanitizeAssetBacked(
            css = css,
            cssEntryPath = "OPS/styles/main.css",
            assetExists = { true }
        )

        assertFalse(result.contains(".otf"))
        assertTrue(result.contains(".woff2"))
    }

    @Test
    fun sanitizeAssetBacked_stripsUnsafeUrls() {
        val css = """@font-face { font-family: "X"; src: url('javascript:alert(1)'); }"""

        val result = EpubCssSanitizer.sanitizeAssetBacked(css = css)

        assertFalse(result.contains("javascript:"))
        assertFalse(result.contains("@font-face"))
    }

    // ── normalizeAssetPath ─────────────────────────────────────────────────

    @Test
    fun normalizeAssetPath_resolvesDotDot() {
        assertEquals("OPS/fonts/book.woff2",
            EpubCssSanitizer.normalizeAssetPath("OPS/styles/../fonts/book.woff2"))
    }

    @Test
    fun normalizeAssetPath_stripsLeadingSlash() {
        assertEquals("fonts/book.woff2",
            EpubCssSanitizer.normalizeAssetPath("/fonts/book.woff2"))
    }

    @Test
    fun normalizeAssetPath_handlesDoubleDots() {
        assertEquals("fonts/book.woff2",
            EpubCssSanitizer.normalizeAssetPath("OPS/styles/../../fonts/book.woff2"))
    }

    @Test
    fun normalizeAssetPath_stripsDots() {
        assertEquals("fonts/book.woff2",
            EpubCssSanitizer.normalizeAssetPath("./fonts/book.woff2"))
    }

    // ── isSafeAssetBackedCssUrl ────────────────────────────────────────────

    @Test
    fun isSafeAssetBackedCssUrl_rejectsBlank() {
        assertFalse(EpubCssSanitizer.isSafeAssetBackedCssUrl("", null, { true }))
    }

    @Test
    fun isSafeAssetBackedCssUrl_rejectsJavascript() {
        assertFalse(EpubCssSanitizer.isSafeAssetBackedCssUrl("javascript:alert(1)", null, { true }))
    }

    @Test
    fun isSafeAssetBackedCssUrl_rejectsFile() {
        assertFalse(EpubCssSanitizer.isSafeAssetBackedCssUrl("file:///etc/passwd", null, { true }))
    }

    @Test
    fun isSafeAssetBackedCssUrl_acceptsDataUri() {
        assertTrue(EpubCssSanitizer.isSafeAssetBackedCssUrl("data:image/png;base64,abc", null, { true }))
    }

    @Test
    fun isSafeAssetBackedCssUrl_acceptsHttp() {
        assertTrue(EpubCssSanitizer.isSafeAssetBackedCssUrl("https://example.com/font.woff2", null, { true }))
    }

    @Test
    fun isSafeAssetBackedCssUrl_checksAssetExists() {
        assertFalse(EpubCssSanitizer.isSafeAssetBackedCssUrl("fonts/missing.woff2", "OPS/styles/main.css", { false }))
        assertTrue(EpubCssSanitizer.isSafeAssetBackedCssUrl("fonts/exists.woff2", "OPS/styles/main.css", { true }))
    }
}
