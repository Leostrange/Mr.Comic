package io.leostrange.mrcomic.engine.formats.base

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class UnifiedReaderCssBuilderTest {

    @Test
    fun baseDocumentCss_containsBodyDefaults() {
        val css = READER_BASE_DOCUMENT_CSS
        assertTrue("max-width: 720px", css.contains("max-width: 720px"))
        assertTrue("padding: 0 1.5em", css.contains("padding: 0 1.5em"))
        assertTrue("font-size: 18px", css.contains("font-size: 18px"))
        assertTrue("line-height: 1.6", css.contains("line-height: 1.6"))
        assertTrue("text-align: justify", css.contains("text-align: justify"))
        assertTrue("box-sizing: border-box", css.contains("box-sizing: border-box"))
        assertTrue(
            "ordinary reader text inherits selected font",
            css.contains("""body:not([data-mrcomic-preserve-layout="true"]) *""") &&
                css.contains("font-family: inherit !important")
        )
        assertFalse("no user-select: none on body", css.contains("user-select: none"))
    }

    @Test
    fun baseDocumentCss_containsTypography() {
        val css = READER_BASE_DOCUMENT_CSS
        assertTrue("p paragraph rules", css.contains("p, div.paragraph"))
        assertTrue("text-indent: 1.5em", css.contains("text-indent: 1.5em"))
        assertTrue("h1 heading", css.contains("h1"))
        assertTrue("h2 heading", css.contains("h2"))
        assertTrue("h3 heading", css.contains("h3"))
    }

    @Test
    fun baseDocumentCss_containsRichElements() {
        val css = READER_BASE_DOCUMENT_CSS
        assertTrue("table styles", css.contains("table"))
        assertTrue("pre/code styles", css.contains("pre, code"))
        assertTrue("blockquote styles", css.contains("blockquote"))
        assertTrue("figure styles", css.contains("figure"))
        assertTrue("list styles", css.contains("ul, ol"))
    }

    @Test
    fun baseDocumentCss_containsLinksAndBorders() {
        val css = READER_BASE_DOCUMENT_CSS
        assertTrue("accent color", css.contains("--mrcomic-reader-accent-color"))
        assertTrue("border: none", css.contains("border: none"))
        assertTrue("text-decoration: underline", css.contains("text-decoration: underline"))
    }

    @Test
    fun mobiDocumentCss_hasDifferentMaxWidth() {
        val css = READER_MOBI_DOCUMENT_CSS
        assertTrue("max-width: 680px", css.contains("max-width: 680px"))
        assertTrue("font-size: 1.05rem", css.contains("font-size: 1.05rem"))
        assertTrue("line-height: 1.7", css.contains("line-height: 1.7"))
    }

    @Test
    fun mobiDocumentCss_hasPageBreakRules() {
        val css = READER_MOBI_DOCUMENT_CSS
        assertTrue("page-break-before", css.contains("page-break-before: always"))
        assertTrue("break-before: page", css.contains("break-before: page"))
        assertTrue(".chapter class", css.contains(".chapter"))
    }

    @Test
    fun preserveLayoutCss_isMinimal() {
        val css = READER_PRESERVE_LAYOUT_DOCUMENT_CSS
        assertTrue("margin: 0", css.contains("margin: 0;"))
        assertTrue("padding: 8px 16px 44px", css.contains("padding: 8px 16px 44px"))
        assertTrue("word-wrap: break-word", css.contains("word-wrap: break-word"))
        assertFalse("no text-align: justify", !css.contains("text-align: justify"))
        assertFalse("no text-indent in preserve layout", css.contains("text-indent"))
    }

    @Test
    fun preserveLayoutCss_hasSafetyRules() {
        val css = READER_PRESERVE_LAYOUT_DOCUMENT_CSS
        assertTrue("img max-width", css.contains("max-width: 100%"))
        assertTrue("pre/code wrap", css.contains("white-space: pre-wrap"))
        assertTrue("table max-width", css.contains("max-width: 100%"))
        assertTrue("border: none", css.contains("border: none"))
    }

    @Test
    fun epubDocumentCss_hasDarkMode() {
        val css = EPUB_READER_DOCUMENT_CSS
        assertTrue("dark mode media query", css.contains("@media (prefers-color-scheme: dark)"))
        assertTrue("dark background", css.contains("background: #1a1a1a"))
        assertTrue("dark color", css.contains("color: #e8e8e8"))
    }

    @Test
    fun epubDocumentCss_hasFootnoteRules() {
        val css = EPUB_READER_DOCUMENT_CSS
        assertTrue("a.fn footnote", css.contains("a.fn"))
        assertTrue("epub noteref", css.contains("epub"))
        assertTrue("note-num class", css.contains(".note-num"))
        assertTrue("footnote-label class", css.contains(".footnote-label"))
    }

    @Test
    fun epubDocumentCss_hasCiteRules() {
        val css = EPUB_READER_DOCUMENT_CSS
        assertTrue("cite display: block", css.contains("cite") && css.contains("display: block"))
        assertTrue("cite font-style: italic", css.contains("font-style: italic"))
    }

    @Test
    fun buildReaderDocumentCss_customMaxWidth() {
        val css = buildReaderDocumentCss(maxWidth = "600px")
        assertTrue("custom max-width", css.contains("max-width: 600px"))
    }

    @Test
    fun buildReaderDocumentCss_noTypography() {
        val css = buildReaderDocumentCss(includeTypography = false)
        assertFalse("no p rules", css.contains("p, div.paragraph"))
        assertFalse("no h1 rules", css.contains("h1 { font-size:"))
    }

    @Test
    fun buildReaderDocumentCss_noRichElements() {
        val css = buildReaderDocumentCss(includeRichElements = false)
        assertFalse("no table rules", css.contains("table { width: 100%"))
        assertFalse("no pre rules", css.contains("pre {"))
        assertFalse("no figure rules", css.contains("figure {"))
    }

    @Test
    fun buildReaderDocumentCss_noHyphens() {
        val css = buildReaderDocumentCss(includeHyphens = false)
        assertFalse("no hyphens", css.contains("hyphens: auto"))
        assertFalse("no webkit-hyphens", css.contains("-webkit-hyphens: auto"))
        assertTrue("manual hyphens", css.contains("hyphens: manual"))
        assertTrue("manual webkit hyphens", css.contains("-webkit-hyphens: manual"))
    }

    @Test
    fun buildReaderDocumentCss_hyphensManualByDefault() {
        val css = buildReaderDocumentCss()
        assertTrue("hyphens: manual", css.contains("hyphens: manual"))
        assertTrue("-webkit-hyphens: manual", css.contains("-webkit-hyphens: manual"))
        assertFalse("no hyphens auto by default", css.contains("hyphens: auto"))
    }

    @Test
    fun buildReaderDocumentCss_hyphensAutoWhenRequested() {
        val css = buildReaderDocumentCss(includeHyphens = true)
        assertTrue("hyphens: auto", css.contains("hyphens: auto"))
        assertTrue("-webkit-hyphens: auto", css.contains("-webkit-hyphens: auto"))
    }

    @Test
    fun buildReaderDocumentCss_customExtraCss() {
        val extra = ".custom { color: red; }"
        val css = buildReaderDocumentCss(extraCss = extra)
        assertTrue("extra css included", css.contains(extra))
    }

    @Test
    fun buildReaderDocumentCss_textAlignOnParagraph() {
        val css = buildReaderDocumentCss(textAlignOnBody = false)
        assertTrue("text-align on p uses CSS custom property", css.contains("text-align: var(--mrcomic-text-align)"))
    }

    @Test
    fun allConstants_areNotEmpty() {
        assertTrue("BASE not empty", READER_BASE_DOCUMENT_CSS.isNotBlank())
        assertTrue("MOBI not empty", READER_MOBI_DOCUMENT_CSS.isNotBlank())
        assertTrue("PRESERVE not empty", READER_PRESERVE_LAYOUT_DOCUMENT_CSS.isNotBlank())
        assertTrue("EPUB not empty", EPUB_READER_DOCUMENT_CSS.isNotBlank())
    }
}
