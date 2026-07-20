package com.example.feature.reader.ui.gesture

import com.example.core.ui.theme.ReadingPreset
import org.junit.Assert.assertEquals
import org.junit.Assert.assertNull
import org.junit.Test

/**
 * Characterization tests for [ReaderColorScheme].
 */
class ReaderColorSchemeTest {

    @Test
    fun palette_dayReturnsLightColors() {
        val (bg, fg) = ReaderColorScheme.palette("DAY")
        assertEquals("#fafafa", bg)
        assertEquals("#1a1a1a", fg)
    }

    @Test
    fun palette_sepiaReturnsWarmColors() {
        val (bg, fg) = ReaderColorScheme.palette("SEPIA")
        assertEquals("#f4ecd8", bg)
        assertEquals("#3b2a1a", fg)
    }

    @Test
    fun palette_nightReturnsDarkColors() {
        val (bg, fg) = ReaderColorScheme.palette("NIGHT")
        assertEquals("#1a1a1a", bg)
        assertEquals("#e8e8e8", fg)
    }

    @Test
    fun palette_unknownSchemeReturnsDayColors() {
        val (bg, fg) = ReaderColorScheme.palette("UNKNOWN")
        assertEquals("#fafafa", bg)
        assertEquals("#1a1a1a", fg)
    }

    @Test
    fun paletteForPreset_oledBlackOverridesNight() {
        val (bg, fg) = ReaderColorScheme.paletteForPreset("NIGHT", ReadingPreset.OLED_BLACK)
        assertEquals("#000000", bg)
        assertEquals("#f2f5f7", fg)
    }

    @Test
    fun paletteForPreset_newspaperOverridesDay() {
        val (bg, fg) = ReaderColorScheme.paletteForPreset("DAY", ReadingPreset.NEWSPAPER)
        assertEquals("#f1eee7", bg)
        assertEquals("#202020", fg)
    }

    @Test
    fun paletteForPreset_fallsBackToBaseScheme() {
        val (bg, fg) = ReaderColorScheme.paletteForPreset("NIGHT", ReadingPreset.PAPER)
        assertEquals("#1a1a1a", bg)
        assertEquals("#e8e8e8", fg)
    }

    @Test
    fun defaultAccentColor_darkBackgroundReturnsLightAccent() {
        assertEquals("#5ab4dc", ReaderColorScheme.defaultAccentColor("#1a1a1a"))
        assertEquals("#5ab4dc", ReaderColorScheme.defaultAccentColor("#000000"))
    }

    @Test
    fun defaultAccentColor_lightBackgroundReturnsDarkAccent() {
        assertEquals("#1a6f9a", ReaderColorScheme.defaultAccentColor("#fafafa"))
    }

    @Test
    fun overrideHex_nullReturnsNull() {
        assertNull(ReaderColorScheme.overrideHex(null))
    }

    @Test
    fun overrideHex_validColorReturnsFormattedHex() {
        assertEquals("#FF112233", ReaderColorScheme.overrideHex(0xFF112233))
    }

    // ── normalizeOverrideColor ──────────────────────────────────────────

    @Test
    fun normalizeOverrideColor_validHex() {
        assertEquals("#FF112233", ReaderColorScheme.normalizeOverrideColor("#FF112233"))
        assertEquals("#abc", ReaderColorScheme.normalizeOverrideColor("#abc"))
    }

    @Test
    fun normalizeOverrideColor_nullReturnsNull() {
        assertNull(ReaderColorScheme.normalizeOverrideColor(null))
    }

    @Test
    fun normalizeOverrideColor_blankReturnsNull() {
        assertNull(ReaderColorScheme.normalizeOverrideColor(""))
        assertNull(ReaderColorScheme.normalizeOverrideColor("   "))
    }

    @Test
    fun normalizeOverrideColor_invalidFormatReturnsNull() {
        assertNull(ReaderColorScheme.normalizeOverrideColor("red"))
        assertNull(ReaderColorScheme.normalizeOverrideColor("#GGHHII"))
        assertNull(ReaderColorScheme.normalizeOverrideColor("#12"))
    }
}
