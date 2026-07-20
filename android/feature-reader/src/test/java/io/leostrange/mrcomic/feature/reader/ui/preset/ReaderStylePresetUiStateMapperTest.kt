package io.leostrange.mrcomic.feature.reader.ui.preset

import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.ui.ReaderUiState
import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderStylePresetUiStateMapperTest {
    @Test
    fun toReaderStylePresetSnapshot_normalizesDisplayNameAndCapturesTypography() {
        val snapshot = ReaderUiState(
            readerPreset = "night",
            textFontSize = 23,
            textColorScheme = "NIGHT",
            textFontFamily = "Literata",
            textLineHeight = 2.0f,
            textBold = true,
            brightness = 0.6f,
            immersiveMode = true,
            readerPageAnimation = "FADE"
        ).toReaderStylePresetSnapshot("  Bedtime  ")

        assertEquals("Bedtime", snapshot.displayName)
        assertEquals("NIGHT_INK", snapshot.readerPreset)
        assertEquals(23, snapshot.textFontSize)
        assertEquals("Literata", snapshot.textFontFamily)
        assertEquals(2.0f, snapshot.textLineHeight)
        assertEquals(true, snapshot.textBold)
        assertEquals(0.6f, snapshot.brightness)
        assertEquals(true, snapshot.immersiveMode)
        assertEquals("FADE", snapshot.pageAnimation)
    }

    @Test
    fun applyReaderStylePreset_replacesTypographyAndKeepsUnrelatedReaderState() {
        val state = ReaderUiState(currentPage = 14, totalPages = 120, chromeState = ReaderChromeState.HIDDEN)
        val snapshot = ReaderStylePresetSnapshot(
            displayName = "Night",
            readerPreset = "CUSTOM",
            textFontSize = 22,
            textColorScheme = "NIGHT",
            textFontFamily = "Literata",
            textLineHeight = 2.1f,
            textLetterSpacing = 0.04f,
            textWordSpacing = 0.2f,
            textParagraphSpacing = 0.5f,
            textAlignment = "justify",
            textBold = true,
            textCustomTextColor = 0xFFECECEC,
            textCustomBackgroundColor = 0xFF101010,
            textCustomAccentColor = 0xFFFFAA00,
            brightness = 0.7f,
            immersiveMode = true,
            pageAnimation = "FADE"
        )

        val applied = state.applyReaderStylePreset(snapshot)

        assertEquals(14, applied.currentPage)
        assertEquals(120, applied.totalPages)
        assertEquals("NIGHT", applied.textColorScheme)
        assertEquals(22, applied.textFontSize)
        assertEquals("Literata", applied.textFontFamily)
        assertEquals(0xFF101010, applied.textCustomBackgroundColor)
        assertEquals("FADE", applied.readerPageAnimation)
        assertEquals(ReaderChromeState.EXPANDED, applied.chromeState)
    }
}
