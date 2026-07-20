package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertEquals
import org.junit.Test

class ReaderTextFontCatalogTest {

    @Test
    fun prettifyFontDisplayName_replacesSeparatorsAndExtension() {
        assertEquals(
            "My Fancy Font Regular",
            ReaderTextFontCatalog.prettifyFontDisplayName("My_Fancy-Font__Regular.otf")
        )
    }

    @Test
    fun prettifyFontDisplayName_stripsUnsupportedPunctuation() {
        assertEquals(
            "PT Serif New",
            ReaderTextFontCatalog.prettifyFontDisplayName("PT@Serif!'New'.ttf")
        )
    }

    @Test
    fun readerTypographyExportFileName_sanitizesPresetName() {
        assertEquals(
            "mrcomic_reader_style_sepia_book.json",
            readerTypographyExportFileName(ReaderUiState(readerPreset = "SEPIA BOOK"))
        )
    }
}
