package com.example.feature.reader.ui

import com.example.core.ui.theme.ReadingPreset
import com.example.feature.reader.domain.preset.ReaderStylePresetSlot
import com.example.feature.reader.domain.preset.ReaderStylePresetSnapshot
import com.example.feature.reader.domain.preset.parseReaderStylePreset
import org.json.JSONObject
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderStyleJsonExchangeTest {

    @Test
    fun buildReaderTypographyExportJson_producesExpectedKeysAndShape() {
        val json = JSONObject(
            buildReaderTypographyExportJson(
                ReaderUiState(
                    readerPreset = ReadingPreset.SEPIA_BOOK.name,
                    textFontSize = 24,
                    textColorScheme = "SEPIA",
                    textCustomTextColor = 0xFF241B14,
                    textCustomBackgroundColor = 0xFFF4ECD8,
                    textCustomAccentColor = 0xFF8E6335,
                    textFontFamily = "Literata",
                    textLineHeight = 1.9f,
                    textLetterSpacing = 0.04f,
                    textWordSpacing = 0.16f,
                    textParagraphSpacing = 0.33f,
                    textAlignment = "center",
                    textBold = true,
                    brightness = 0.78f,
                    immersiveMode = true,
                    readerPageAnimation = "FADE"
                )
            )
        )

        assertEquals("mrcomic.readerTypography", json.getString("format"))
        assertEquals(1, json.getInt("version"))
        assertTrue(json.has("exportedAt"))
        assertTrue(json.getLong("exportedAt") > 0)
        assertEquals("Reader style sepia_book", json.getString("name"))
        assertEquals("Reader style sepia_book", json.getString("displayName"))
        assertEquals(ReadingPreset.SEPIA_BOOK.name, json.getString("readerPreset"))
        assertEquals(24, json.getInt("textFontSize"))
        assertEquals("SEPIA", json.getString("textColorScheme"))
        assertEquals("Literata", json.getString("textFontFamily"))
        assertEquals(1.9, json.getDouble("textLineHeight"), 0.0001)
        assertEquals(0.04, json.getDouble("textLetterSpacing"), 0.0001)
        assertEquals(0.16, json.getDouble("textWordSpacing"), 0.0001)
        assertEquals(0.33, json.getDouble("textParagraphSpacing"), 0.0001)
        assertEquals("center", json.getString("textAlignment"))
        assertTrue(json.getBoolean("textBold"))
        assertEquals("#FF241B14", json.getString("textCustomTextColor"))
        assertEquals("#FFF4ECD8", json.getString("textCustomBackgroundColor"))
        assertEquals("#FF8E6335", json.getString("textCustomAccentColor"))
        assertEquals(0.78, json.getDouble("brightness"), 0.0001)
        assertTrue(json.getBoolean("immersiveMode"))
        assertEquals("FADE", json.getString("pageAnimation"))
        assertFalse(json.has("displayName") && json.getString("displayName").isBlank())
    }

    @Test
    fun parseReaderStylePreset_acceptsMultipleDisplayNameKeysAndClampsFields() {
        val displayNameVariants = listOf(
            """{"displayName":"Shelf A","readerPreset":"PAPER","textFontSize":40,"textColorScheme":"night","textFontFamily":"","textLineHeight":0.2,"textLetterSpacing":0.5,"textWordSpacing":0.9,"textParagraphSpacing":0.01,"textAlignment":"diagonal","textBold":true,"brightness":0.0,"immersiveMode":true,"pageAnimation":"BOUNCE"}""",
            """{"name":"Shelf B","readerPreset":"CUSTOM","textFontSize":8,"textColorScheme":"sepia","textFontFamily":"Merriweather","textLineHeight":4.0,"textLetterSpacing":-1.0,"textWordSpacing":-1.0,"textParagraphSpacing":2.0,"textAlignment":"left","textBold":false,"textCustomTextColor":"#FF112233","textCustomBackgroundColor":"#FFF5ECD8","textCustomAccentColor":"#FF556677","brightness":0.93,"immersiveMode":false,"pageAnimation":"NONE"}""",
            """{"title":"Shelf C","readerPreset":"SEPIA_BOOK","textFontSize":18,"textColorScheme":"DAY","textFontFamily":"Georgia","textLineHeight":1.5,"textLetterSpacing":0.1,"textWordSpacing":0.2,"textParagraphSpacing":0.4,"textAlignment":"right","textBold":false,"brightness":0.4,"immersiveMode":true,"pageAnimation":"SLIDE"}""",
            """{"presetName":"Shelf D","readerPreset":"NEWSPAPER","textFontSize":19,"textColorScheme":"DAY","textFontFamily":"Open Sans","textLineHeight":2.2,"textLetterSpacing":0.12,"textWordSpacing":0.21,"textParagraphSpacing":0.44,"textAlignment":"justify","textBold":true,"brightness":1.0,"immersiveMode":false,"pageAnimation":"FADE"}"""
        )

        val parsed = displayNameVariants.mapNotNull { parseReaderStylePreset(it) }

        assertEquals(4, parsed.size)

        assertEquals("Shelf A", parsed[0].displayName)
        assertEquals(ReadingPreset.PAPER.name, parsed[0].readerPreset)
        assertEquals(32, parsed[0].textFontSize)
        assertEquals("NIGHT", parsed[0].textColorScheme)
        assertEquals("Georgia", parsed[0].textFontFamily)
        assertEquals(1.0f, parsed[0].textLineHeight)
        assertEquals(0.2f, parsed[0].textLetterSpacing)
        assertEquals(0.6f, parsed[0].textWordSpacing)
        assertEquals(0.1f, parsed[0].textParagraphSpacing)
        assertEquals("left", parsed[0].textAlignment)
        assertTrue(parsed[0].textBold)
        assertEquals(-1f, parsed[0].brightness)
        assertTrue(parsed[0].immersiveMode)
        assertEquals("SLIDE", parsed[0].pageAnimation)

        assertEquals("Shelf B", parsed[1].displayName)
        assertEquals(ReadingPreset.CUSTOM.name, parsed[1].readerPreset)
        assertEquals(12, parsed[1].textFontSize)
        assertEquals("SEPIA", parsed[1].textColorScheme)
        assertEquals("Merriweather", parsed[1].textFontFamily)
        assertEquals(3.0f, parsed[1].textLineHeight)
        assertEquals(0.0f, parsed[1].textLetterSpacing)
        assertEquals(0.0f, parsed[1].textWordSpacing)
        assertEquals(1.2f, parsed[1].textParagraphSpacing)
        assertEquals("left", parsed[1].textAlignment)
        assertFalse(parsed[1].textBold)
        assertEquals(0xFF112233, parsed[1].textCustomTextColor)
        assertEquals(0xFFF5ECD8, parsed[1].textCustomBackgroundColor)
        assertEquals(0xFF556677, parsed[1].textCustomAccentColor)
        assertEquals(0.93f, parsed[1].brightness)
        assertFalse(parsed[1].immersiveMode)
        assertEquals("NONE", parsed[1].pageAnimation)

        assertEquals("Shelf C", parsed[2].displayName)
        assertEquals(ReadingPreset.SEPIA_BOOK.name, parsed[2].readerPreset)
        assertEquals("right", parsed[2].textAlignment)
        assertEquals("SLIDE", parsed[2].pageAnimation)

        assertEquals("Shelf D", parsed[3].displayName)
        assertEquals(ReadingPreset.NEWSPAPER.name, parsed[3].readerPreset)
        assertEquals("justify", parsed[3].textAlignment)
        assertEquals("FADE", parsed[3].pageAnimation)
    }

    @Test
    fun parseReaderStylePreset_prefersFirstNonBlankDisplayNameAlias() {
        val parsed = parseReaderStylePreset(
            """{"displayName":"   ","name":"Shelf B","title":"Shelf C","presetName":"Shelf D","readerPreset":"PAPER","textFontSize":21,"textColorScheme":"DAY","textFontFamily":"Georgia","textLineHeight":1.8,"textLetterSpacing":0.02,"textWordSpacing":0.08,"textParagraphSpacing":0.18,"textAlignment":"justify","textBold":false,"brightness":0.88,"immersiveMode":false,"pageAnimation":"SLIDE"}"""
        )

        assertEquals("Shelf B", parsed?.displayName)
        assertEquals(ReadingPreset.PAPER.name, parsed?.readerPreset)
        assertEquals(21, parsed?.textFontSize)
        assertEquals("Georgia", parsed?.textFontFamily)
    }

    @Test
    fun readerStylePresetSnapshot_serializesThroughSlotAndKeepsDisplayNameFallback() {
        val snapshot = ReaderStylePresetSnapshot(
            displayName = "Reading shelf",
            readerPreset = ReadingPreset.OLED_BLACK.name,
            textFontSize = 26,
            textColorScheme = "NIGHT",
            textFontFamily = "Literata",
            textLineHeight = 2.1f,
            textLetterSpacing = 0.05f,
            textWordSpacing = 0.12f,
            textParagraphSpacing = 0.24f,
            textAlignment = "center",
            textBold = true,
            brightness = 0.62f,
            immersiveMode = true,
            pageAnimation = "FADE"
        )
        val slot = ReaderStylePresetSlot(index = 2, serialized = snapshot.serialize())
        val parsed = parseReaderStylePreset(slot.serialized)

        assertEquals(2, slot.index)
        assertTrue(slot.serialized?.contains("\"displayName\":\"Reading shelf\"") == true)
        assertEquals("Reading shelf", parsed?.displayName)
        assertEquals(snapshot.readerPreset, parsed?.readerPreset)
        assertEquals(snapshot.textFontFamily, parsed?.textFontFamily)
        assertEquals(snapshot.pageAnimation, parsed?.pageAnimation)
    }

    @Test
    fun readerTypographyExportFileName_fallsBackToStyleForBlankPreset() {
        assertEquals(
            "mrcomic_reader_style_custom.json",
            readerTypographyExportFileName(ReaderUiState(readerPreset = ""))
        )
    }

    @Test
    fun readerTypographyExportFileName_sanitizesPresetName() {
        assertEquals(
            "mrcomic_reader_style_my_super_preset_2026.json",
            readerTypographyExportFileName(
                ReaderUiState(readerPreset = "My Super Preset! / 2026")
            )
        )
    }

    @Test
    fun readerStylePresetSnapshot_serializeSkipsBlankDisplayNameAndRoundTrips() {
        val snapshot = ReaderStylePresetSnapshot(
            displayName = "   ",
            readerPreset = ReadingPreset.PAPER.name,
            textFontSize = 20,
            textColorScheme = "DAY",
            textFontFamily = "Georgia",
            textLineHeight = 1.7f,
            textLetterSpacing = 0.03f,
            textWordSpacing = 0.09f,
            textParagraphSpacing = 0.22f,
            textAlignment = "justify",
            textBold = false,
            brightness = 0.9f,
            immersiveMode = false,
            pageAnimation = "SLIDE"
        )

        val serialized = snapshot.serialize()
        val parsed = parseReaderStylePreset(serialized)

        assertFalse(serialized.contains("displayName"))
        assertEquals(null, parsed?.displayName)
        assertEquals(snapshot.readerPreset, parsed?.readerPreset)
        assertEquals(snapshot.textFontFamily, parsed?.textFontFamily)
        assertEquals(snapshot.pageAnimation, parsed?.pageAnimation)
    }

    @Test
    fun readerStylePresetSnapshot_matchesUiState_requiresExactTypographyMatch() {
        val snapshot = ReaderStylePresetSnapshot(
            displayName = "Shelf A",
            readerPreset = ReadingPreset.NEWSPAPER.name,
            textFontSize = 18,
            textColorScheme = "DAY",
            textFontFamily = "Literata",
            textLineHeight = 1.9f,
            textLetterSpacing = 0.04f,
            textWordSpacing = 0.12f,
            textParagraphSpacing = 0.21f,
            textAlignment = "center",
            textBold = true,
            textCustomTextColor = 0xFF202020,
            textCustomBackgroundColor = 0xFFF1EEE7,
            textCustomAccentColor = 0xFF31404F,
            brightness = 0.8f,
            immersiveMode = true,
            pageAnimation = "FADE"
        )
        val matchingState = ReaderUiState(
            readerPreset = ReadingPreset.NEWSPAPER.name,
            textFontSize = 18,
            textColorScheme = "DAY",
            textCustomTextColor = 0xFF202020,
            textCustomBackgroundColor = 0xFFF1EEE7,
            textCustomAccentColor = 0xFF31404F,
            textFontFamily = "Literata",
            textLineHeight = 1.9f,
            textLetterSpacing = 0.04f,
            textWordSpacing = 0.12f,
            textParagraphSpacing = 0.21f,
            textAlignment = "center",
            textBold = true,
            brightness = 0.8f,
            immersiveMode = true,
            readerPageAnimation = "FADE"
        )
        val offByOneState = matchingState.copy(textParagraphSpacing = 0.24f)

        assertTrue(snapshot.matchesUiState(matchingState))
        assertFalse(snapshot.matchesUiState(offByOneState))
    }

    @Test
    fun parseReaderStylePreset_rejectsBlankAndInvalidJson() {
        assertEquals(null, parseReaderStylePreset(null))
        assertEquals(null, parseReaderStylePreset(""))
        assertEquals(null, parseReaderStylePreset("   "))
        assertEquals(null, parseReaderStylePreset("{not-json}"))
    }
}
