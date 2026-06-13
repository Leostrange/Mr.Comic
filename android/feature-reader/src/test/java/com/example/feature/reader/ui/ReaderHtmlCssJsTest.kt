package com.example.feature.reader.ui

import com.example.core.ui.theme.ReadingPreset
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNotNull
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderHtmlCssJsTest {

    @Test
    fun normalizeReaderOverrideColor_validHex() {
        assertEquals("#FF0000", normalizeReaderOverrideColor("#FF0000"))
        assertEquals("#1a6f9a", normalizeReaderOverrideColor("#1a6f9a"))
        assertEquals("#abc", normalizeReaderOverrideColor("#abc"))
    }

    @Test
    fun normalizeReaderOverrideColor_invalidHex() {
        assertNull(normalizeReaderOverrideColor(null))
        assertNull(normalizeReaderOverrideColor(""))
        assertNull(normalizeReaderOverrideColor("not-a-color"))
        assertNull(normalizeReaderOverrideColor("red"))
        assertNull(normalizeReaderOverrideColor("#GGGGGG"))
    }

    @Test
    fun normalizeReaderOverrideColor_trimsWhitespace() {
        assertEquals("#FF0000", normalizeReaderOverrideColor("  #FF0000  "))
    }

    @Test
    fun defaultReaderAccentColor_darkBackground() {
        assertEquals("#5ab4dc", defaultReaderAccentColor("#1a1a1a"))
        assertEquals("#5ab4dc", defaultReaderAccentColor("#000000"))
    }

    @Test
    fun defaultReaderAccentColor_lightBackground() {
        assertEquals("#1a6f9a", defaultReaderAccentColor("#fafafa"))
        assertEquals("#1a6f9a", defaultReaderAccentColor("#ffffff"))
    }

    @Test
    fun colorSchemePalette_day() {
        val (bg, fg) = colorSchemePalette("DAY")
        assertEquals("#fafafa", bg)
        assertEquals("#1a1a1a", fg)
    }

    @Test
    fun colorSchemePalette_night() {
        val (bg, fg) = colorSchemePalette("NIGHT")
        assertEquals("#1a1a1a", bg)
        assertEquals("#e8e8e8", fg)
    }

    @Test
    fun colorSchemePalette_sepia() {
        val (bg, fg) = colorSchemePalette("SEPIA")
        assertEquals("#f4ecd8", bg)
        assertEquals("#3b2a1a", fg)
    }

    @Test
    fun colorSchemePaletteForPreset_presetsOverrideDefaults() {
        val (paperBg, paperFg) = colorSchemePaletteForPreset("DAY", ReadingPreset.PAPER)
        assertEquals("#f6f1e7", paperBg)
        assertEquals("#2b2118", paperFg)

        val (sepiaBg, sepiaFg) = colorSchemePaletteForPreset("SEPIA", ReadingPreset.SEPIA_BOOK)
        assertEquals("#f4ecd8", sepiaBg)
        assertEquals("#352618", sepiaFg)
    }

    @Test
    fun colorSchemePaletteForPreset_fallbackToBase() {
        val (bg, fg) = colorSchemePaletteForPreset("DAY", ReadingPreset.CUSTOM)
        assertEquals("#fafafa", bg)
        assertEquals("#1a1a1a", fg)
    }

    @Test
    fun textSettingsJs_containsThemeStyle() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a"
        )
        assertTrue("contains theme style", js.contains("__reader_theme_overrides"))
        assertTrue("contains root vars", js.contains("--mrcomic-reader-text-color"))
        assertTrue("contains background", js.contains("background-color:#fafafa"))
        assertTrue("contains font-size", js.contains("fontSize='18px'"))
    }

    @Test
    fun textSettingsJs_containsFontSettings() {
        val js = textSettingsJs(
            fontSize = 20,
            bg = "#fafafa",
            fg = "#1a1a1a",
            fontFamily = "Lora",
            lineHeight = 2.0f
        )
        assertTrue("font-size 20px", js.contains("fontSize='20px'"))
        assertTrue("font-family Lora", js.contains("fontFamily=\"Lora"))
        assertTrue("line-height 2.0", js.contains("lineHeight='2.0'"))
    }

    @Test
    fun textSettingsJs_containsSpacing() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a",
            letterSpacing = 0.05f,
            wordSpacing = 0.1f,
            paragraphSpacing = 0.3f
        )
        assertTrue("spacing style", js.contains("__reader_spacing_overrides"))
        assertTrue("letter-spacing", js.contains("letter-spacing:0.05em"))
        assertTrue("word-spacing", js.contains("word-spacing:0.1em"))
        assertTrue("paragraph-spacing", js.contains("margin-bottom:0.3em"))
    }

    @Test
    fun textSettingsJs_pagedModeSetsScrollLock() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a",
            pagedMode = true
        )
        assertTrue("paged scroll lock", js.contains("__mrcomicPagedModeScrollLock=true"))
        assertTrue("overflow hidden", js.contains("overflowY='hidden'"))
        assertTrue("page viewport", js.contains("__mrcomic_paged_viewport"))
    }

    @Test
    fun textSettingsJs_freeScrollModeClearsLock() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a",
            pagedMode = false
        )
        assertTrue("free scroll", js.contains("__mrcomicPagedModeScrollLock=false"))
        assertTrue("overflow-y removed", js.contains("removeProperty('overflow-y')"))
    }

    @Test
    fun textSettingsJs_customHorizontalPadding() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a",
            horizontalPaddingPx = 24
        )
        assertTrue("padding-left 24px", js.contains("padding-left:24px"))
        assertTrue("padding-right 24px", js.contains("padding-right:24px"))
    }

    @Test
    fun textSettingsJs_maxWidthPx() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a",
            maxWidthPx = 680
        )
        assertTrue("max-width 680px", js.contains("max-width:680px"))
        assertTrue("margin-left auto", js.contains("margin-left:auto"))
        assertTrue("margin-right auto", js.contains("margin-right:auto"))
    }

    @Test
    fun textSettingsJs_boldFontWeight() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#fafafa",
            fg = "#1a1a1a",
            bold = true
        )
        assertTrue("bold font-weight", js.contains("fontWeight='bold'"))
    }

    @Test
    fun textSettingsJs_nightThemeColors() {
        val js = textSettingsJs(
            fontSize = 18,
            bg = "#1a1a1a",
            fg = "#e8e8e8"
        )
        assertTrue("night heading border", js.contains("#5a5a5a"))
        assertTrue("night quote color", js.contains("#c9c9c9"))
        assertTrue("night selection", js.contains("#ffffff"))
    }

    @Test
    fun buildThemedHtmlDocument_injectsStyleInHead() {
        val html = "<html><head></head><body><p>Hello</p></body></html>"
        val result = buildThemedHtmlDocument(html, "#fff", "#000")
        assertTrue("has bootstrap style", result.contains("__reader_bootstrap_theme"))
        assertTrue("has background", result.contains("background: #fff !important"))
        assertTrue("has color", result.contains("color: #000 !important"))
        assertTrue("style before </head>", result.indexOf("__reader_bootstrap_theme") < result.indexOf("</head>"))
    }

    @Test
    fun buildThemedHtmlDocument_injectsStyleInBody() {
        val html = "<html><body><p>Hello</p></body></html>"
        val result = buildThemedHtmlDocument(html, "#fff", "#000")
        assertTrue("has bootstrap style", result.contains("__reader_bootstrap_theme"))
        assertTrue("style after <body>", result.indexOf("__reader_bootstrap_theme") > result.indexOf("<body"))
    }

    @Test
    fun buildThemedHtmlDocument_injectsStyleInHtml() {
        val html = "<html><p>Hello</p></html>"
        val result = buildThemedHtmlDocument(html, "#fff", "#000")
        assertTrue("has head wrapper", result.contains("<head>"))
        assertTrue("has bootstrap style", result.contains("__reader_bootstrap_theme"))
    }

    @Test
    fun buildThemedHtmlDocument_wrapsBareContent() {
        val html = "<p>Hello</p>"
        val result = buildThemedHtmlDocument(html, "#fff", "#000")
        assertTrue("has html tag", result.contains("<html>"))
        assertTrue("has body tag", result.contains("<body>"))
        assertTrue("has bootstrap style", result.contains("__reader_bootstrap_theme"))
        assertTrue("has content", result.contains("<p>Hello</p>"))
    }

    @Test
    fun injectBodyInsetCss_addsPadding() {
        val html = "<html><body></body></html>"
        val result = injectBodyInsetCss(html, 16, 24)
        assertTrue("top padding", result.contains("padding-top:16px!important"))
        assertTrue("bottom padding", result.contains("padding-bottom:24px!important"))
    }

    @Test
    fun injectBodyInsetCss_zeroPadding() {
        val html = "<html><body></body></html>"
        val result = injectBodyInsetCss(html, 0, 0)
        assertTrue("zero top", result.contains("padding-top:0px!important"))
        assertTrue("zero bottom", result.contains("padding-bottom:0px!important"))
    }

    @Test
    fun readerSelectionOverlayColor_validColor() {
        val rgba = readerSelectionOverlayColor("#1a6f9a", 0.3f)
        assertTrue("rgba format", rgba.startsWith("rgba("))
        assertTrue("contains alpha", rgba.contains("0.3"))
    }

    @Test
    fun readerSelectionOverlayColor_invalidColorFallsBack() {
        val rgba = readerSelectionOverlayColor("invalid", 0.5f)
        assertTrue("fallback rgba", rgba.startsWith("rgba("))
        assertTrue("fallback alpha", rgba.contains("0.5"))
    }
}
