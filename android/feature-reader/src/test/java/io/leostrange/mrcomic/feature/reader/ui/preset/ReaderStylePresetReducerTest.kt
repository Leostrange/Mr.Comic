package io.leostrange.mrcomic.feature.reader.ui.preset

import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.ui.ReaderContainerKind
import io.leostrange.mrcomic.feature.reader.ui.ReaderUiState
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Characterization tests for [ReaderStylePresetReducer].
 *
 * These tests pin down the current behavior of preset application, custom-marking,
 * and reset so that the extraction from ReaderViewModel is provably side-effect-free.
 */
class ReaderStylePresetReducerTest {

    // ── Apply built-in preset ──────────────────────────────────────────────

    @Test
    fun applyBuiltInPreset_setsColorSchemeAndClearsCustomColors() {
        val before = ReaderUiState(
            readerPreset = ReadingPreset.CUSTOM.name,
            textFontSize = 30,
            textColorScheme = "NIGHT",
            textFontFamily = "Monospace",
            textLineHeight = 2.5f,
            textLetterSpacing = 0.1f,
            textWordSpacing = 0.2f,
            textParagraphSpacing = 0.5f,
            textAlignment = "center",
            textBold = true,
            textCustomTextColor = 0xFF000000,
            textCustomBackgroundColor = 0xFFFFFFFF,
            textCustomAccentColor = 0xFFFF0000,
            immersiveMode = true,
            readerPageAnimation = "FADE",
            chromeState = ReaderChromeState.HIDDEN
        )

        val after = ReaderStylePresetReducer.applyBuiltInPreset(before, ReadingPreset.PAPER)

        assertEquals(ReadingPreset.PAPER.name, after.readerPreset)
        val style = ReadingPreset.PAPER.style()
        // Color scheme is updated to preset (both text and graphic for global presets)
        assertEquals(style.textColorScheme, after.textColorScheme)
        assertEquals(style.textColorScheme, after.graphicColorScheme)
        // Typography is PRESERVED from the current state (BUG-PAGED-02 / T3)
        assertEquals(before.textFontFamily, after.textFontFamily)
        assertEquals(before.textLineHeight, after.textLineHeight, 0.001f)
        assertEquals(before.textLetterSpacing, after.textLetterSpacing, 0.001f)
        assertEquals(before.textWordSpacing, after.textWordSpacing, 0.001f)
        assertEquals(before.textParagraphSpacing, after.textParagraphSpacing, 0.001f)
        assertEquals(before.textAlignment, after.textAlignment)
        assertEquals(before.textBold, after.textBold)
        assertEquals(style.immersiveMode, after.immersiveMode)
        assertEquals(style.pageAnimation, after.readerPageAnimation)
        // Built-in presets clear custom colors
        assertNull(after.textCustomTextColor)
        assertNull(after.textCustomBackgroundColor)
        assertNull(after.textCustomAccentColor)
        // Chrome is expanded after preset application
        assertEquals(ReaderChromeState.EXPANDED, after.chromeState)
    }

    @Test
    fun applyBuiltInPreset_doesNotTouchUnrelatedFields() {
        val before = ReaderUiState(
            currentPage = 42,
            totalPages = 200,
            textFontSize = 18,
            brightness = 0.7f,
            bookmarkedPages = setOf(1, 5, 10)
        )

        val after = ReaderStylePresetReducer.applyBuiltInPreset(before, ReadingPreset.SEPIA_BOOK)

        assertEquals(42, after.currentPage)
        assertEquals(200, after.totalPages)
        assertEquals(0.7f, after.brightness, 0.001f)
        assertEquals(setOf(1, 5, 10), after.bookmarkedPages)
    }

    @Test
    fun applyBuiltInPreset_customPresetMarkAsCustom() {
        val before = ReaderUiState(readerPreset = ReadingPreset.PAPER.name)

        val after = ReaderStylePresetReducer.applyBuiltInPreset(before, ReadingPreset.CUSTOM)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
    }

    // ── Mark custom on individual change ───────────────────────────────────

    @Test
    fun markCustom_changesPresetNameOnly() {
        val before = ReaderUiState(
            readerPreset = ReadingPreset.NIGHT_INK.name,
            textFontSize = 22,
            textColorScheme = "NIGHT",
            textFontFamily = "Georgia"
        )

        val after = ReaderStylePresetReducer.markCustom(before)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        // All other fields unchanged
        assertEquals(22, after.textFontSize)
        assertEquals("NIGHT", after.textColorScheme)
        assertEquals("Georgia", after.textFontFamily)
    }

    @Test
    fun markCustom_onAlreadyCustom_isIdempotent() {
        val before = ReaderUiState(readerPreset = ReadingPreset.CUSTOM.name, textFontSize = 16)

        val after = ReaderStylePresetReducer.markCustom(before)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertEquals(16, after.textFontSize)
    }

    // ── Reset to defaults ──────────────────────────────────────────────────

    @Test
    fun resetTextSettings_returnsAllStyleFieldsToDefaults() {
        val before = ReaderUiState(
            readerPreset = ReadingPreset.NIGHT_INK.name,
            textFontSize = 30,
            textColorScheme = "NIGHT",
            textCustomTextColor = 0xFF000000,
            textCustomBackgroundColor = 0xFFFFFFFF,
            textCustomAccentColor = 0xFFFF0000,
            textFontFamily = "Monospace",
            textLineHeight = 2.5f,
            textLetterSpacing = 0.1f,
            textWordSpacing = 0.2f,
            textParagraphSpacing = 0.5f,
            textAlignment = "center",
            textBold = true,
            currentPage = 10,
            totalPages = 100
        )

        val after = ReaderStylePresetReducer.resetTextSettings(before)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertEquals(ReaderStylePresetReducer.DEFAULT_FONT_SIZE, after.textFontSize)
        assertEquals(ReaderStylePresetReducer.DEFAULT_COLOR_SCHEME, after.textColorScheme)
        assertEquals(io.leostrange.mrcomic.feature.reader.ui.DEFAULT_GRAPHIC_COLOR_SCHEME, after.graphicColorScheme)
        assertNull(after.textCustomTextColor)
        assertNull(after.textCustomBackgroundColor)
        assertNull(after.textCustomAccentColor)
        assertEquals(ReaderStylePresetReducer.DEFAULT_FONT_FAMILY, after.textFontFamily)
        assertEquals(ReaderStylePresetReducer.DEFAULT_LINE_HEIGHT, after.textLineHeight, 0.001f)
        assertEquals(ReaderStylePresetReducer.DEFAULT_LETTER_SPACING, after.textLetterSpacing, 0.001f)
        assertEquals(ReaderStylePresetReducer.DEFAULT_WORD_SPACING, after.textWordSpacing, 0.001f)
        assertEquals(ReaderStylePresetReducer.DEFAULT_PARAGRAPH_SPACING, after.textParagraphSpacing, 0.001f)
        assertEquals(ReaderStylePresetReducer.DEFAULT_ALIGNMENT, after.textAlignment)
        assertEquals(ReaderStylePresetReducer.DEFAULT_BOLD, after.textBold)
        // Unrelated fields preserved
        assertEquals(10, after.currentPage)
        assertEquals(100, after.totalPages)
    }

    // ── Apply snapshot ─────────────────────────────────────────────────────

    @Test
    fun applySnapshot_replacesTypographyAndExpandsChrome() {
        val before = ReaderUiState(
            currentPage = 7,
            totalPages = 50,
            chromeState = ReaderChromeState.HIDDEN
        )
        val snapshot = ReaderStylePresetSnapshot(
            displayName = "My Style",
            readerPreset = ReadingPreset.OLED_BLACK.name,
            textFontSize = 20,
            textColorScheme = "NIGHT",
            textFontFamily = "Roboto",
            textLineHeight = 1.6f,
            textLetterSpacing = 0.02f,
            textWordSpacing = 0.05f,
            textParagraphSpacing = 0.15f,
            textAlignment = "left",
            textBold = false,
            textCustomTextColor = 0xFFE0E0E0,
            textCustomBackgroundColor = 0xFF000000,
            textCustomAccentColor = 0xFF00FF00,
            brightness = 0.3f,
            immersiveMode = true,
            pageAnimation = "NONE"
        )

        val after = ReaderStylePresetReducer.applySnapshot(before, snapshot)

        assertEquals(ReadingPreset.OLED_BLACK.name, after.readerPreset)
        assertEquals(20, after.textFontSize)
        assertEquals("NIGHT", after.textColorScheme)
        assertEquals("NIGHT", after.graphicColorScheme)
        assertEquals("Roboto", after.textFontFamily)
        assertEquals(1.6f, after.textLineHeight, 0.001f)
        assertEquals(0.02f, after.textLetterSpacing, 0.001f)
        assertEquals(0.05f, after.textWordSpacing, 0.001f)
        assertEquals(0.15f, after.textParagraphSpacing, 0.001f)
        assertEquals("left", after.textAlignment)
        assertEquals(false, after.textBold)
        assertEquals(0xFFE0E0E0, after.textCustomTextColor)
        assertEquals(0xFF000000, after.textCustomBackgroundColor)
        assertEquals(0xFF00FF00, after.textCustomAccentColor)
        assertEquals(0.3f, after.brightness, 0.001f)
        assertEquals(true, after.immersiveMode)
        assertEquals("NONE", after.readerPageAnimation)
        assertEquals(ReaderChromeState.EXPANDED, after.chromeState)
        // Unrelated fields preserved
        assertEquals(7, after.currentPage)
        assertEquals(50, after.totalPages)
    }

    // ── Individual setter helpers ───────────────────────────────────────────

    @Test
    fun setFontSize_marksCustomAndUpdatesValue() {
        val before = ReaderUiState(readerPreset = ReadingPreset.PAPER.name, textFontSize = 18)

        val after = ReaderStylePresetReducer.setFontSize(before, 24)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertEquals(24, after.textFontSize)
    }

    @Test
    fun setColorScheme_marksCustomAndUpdatesValue() {
        // Text reader: setTextScheme updates textColorScheme
        val textState = ReaderUiState(
            readerPreset = ReadingPreset.PAPER.name,
            textColorScheme = "DAY",
            readerContainerKind = ReaderContainerKind.TEXT_PAGE
        )
        val textAfter = ReaderStylePresetReducer.setColorScheme(textState, "SEPIA")
        assertEquals(ReadingPreset.CUSTOM.name, textAfter.readerPreset)
        assertEquals("SEPIA", textAfter.textColorScheme)
    }

    @Test
    fun setColorScheme_graphicReaderUpdatesGraphicColorScheme() {
        // Graphic (raster) reader: setColorScheme updates graphicColorScheme, not textColorScheme
        val graphicState = ReaderUiState(
            readerPreset = ReadingPreset.PAPER.name,
            textColorScheme = "DAY",
            graphicColorScheme = "NIGHT",
            readerContainerKind = ReaderContainerKind.RASTER_PAGE
        )
        val graphicAfter = ReaderStylePresetReducer.setColorScheme(graphicState, "SEPIA")
        assertEquals(ReadingPreset.CUSTOM.name, graphicAfter.readerPreset)
        // textColorScheme stays "DAY" — only graphicColorScheme changes
        assertEquals("DAY", graphicAfter.textColorScheme)
        assertEquals("SEPIA", graphicAfter.graphicColorScheme)
    }

    @Test
    fun setFontFamily_marksCustomAndUpdatesValue() {
        val before = ReaderUiState(readerPreset = ReadingPreset.PAPER.name, textFontFamily = "Georgia")

        val after = ReaderStylePresetReducer.setFontFamily(before, "Literata")

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertEquals("Literata", after.textFontFamily)
    }

    @Test
    fun setLineHeight_marksCustomAndUpdatesValue() {
        val before = ReaderUiState(readerPreset = ReadingPreset.PAPER.name, textLineHeight = 1.8f)

        val after = ReaderStylePresetReducer.setLineHeight(before, 2.2f)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertEquals(2.2f, after.textLineHeight, 0.001f)
    }

    @Test
    fun setCustomTextColor_marksCustomAndUpdatesValue() {
        val before = ReaderUiState(
            readerPreset = ReadingPreset.SEPIA_BOOK.name,
            textCustomTextColor = null
        )

        val after = ReaderStylePresetReducer.setCustomTextColor(before, 0xFF123456)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertEquals(0xFF123456, after.textCustomTextColor)
    }

    @Test
    fun setCustomBackgroundColor_marksCustomAndClearsToNull() {
        val before = ReaderUiState(
            readerPreset = ReadingPreset.SEPIA_BOOK.name,
            textCustomBackgroundColor = 0xFFFF0000
        )

        val after = ReaderStylePresetReducer.setCustomBackgroundColor(before, null)

        assertEquals(ReadingPreset.CUSTOM.name, after.readerPreset)
        assertNull(after.textCustomBackgroundColor)
    }

    // ── Round-trip: built-in → custom → built-in preserves unrelated state ──

    @Test
    fun roundTrip_builtinCustomBuiltin_preservesUnrelatedState() {
        val original = ReaderUiState(
            currentPage = 15,
            totalPages = 300,
            brightness = 0.65f,
            bookmarkedPages = setOf(3, 7),
            textFontSize = 20
        )

        // Apply PAPER
        val step1 = ReaderStylePresetReducer.applyBuiltInPreset(original, ReadingPreset.PAPER)
        assertEquals(ReadingPreset.PAPER.name, step1.readerPreset)

        // Change font size → CUSTOM
        val step2 = ReaderStylePresetReducer.setFontSize(step1, 28)
        assertEquals(ReadingPreset.CUSTOM.name, step2.readerPreset)
        assertEquals(28, step2.textFontSize)

        // Apply SEPIA_BOOK
        val step3 = ReaderStylePresetReducer.applyBuiltInPreset(step2, ReadingPreset.SEPIA_BOOK)
        assertEquals(ReadingPreset.SEPIA_BOOK.name, step3.readerPreset)

        // Unrelated state survived all transitions
        assertEquals(15, step3.currentPage)
        assertEquals(300, step3.totalPages)
        assertEquals(0.65f, step3.brightness, 0.001f)
        assertEquals(setOf(3, 7), step3.bookmarkedPages)
    }
}
