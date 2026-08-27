package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderMaterialColorSchemeTest {

    private fun contrastRatio(fg: Color, bg: Color): Float {
        val fgL = fg.luminance().coerceIn(0.001f, 0.999f)
        val bgL = bg.luminance().coerceIn(0.001f, 0.999f)
        return if (bgL > fgL) (bgL + 0.05f) / (fgL + 0.05f)
        else (fgL + 0.05f) / (bgL + 0.05f)
    }

    @Test
    fun `DAY preset onBackground contrasts with background`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = true,
            readerPreset = ReadingPreset.PAPER,
            textColorScheme = "DAY",
            fallback = lightColorScheme()
        )
        val ratio = contrastRatio(scheme.onBackground, scheme.background)
        assertTrue("Expected ≥ 3:1, got $ratio", ratio >= 3f)
    }

    @Test
    fun `NIGHT preset onBackground contrasts with background`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = true,
            readerPreset = ReadingPreset.PAPER,
            textColorScheme = "NIGHT",
            fallback = darkColorScheme()
        )
        val ratio = contrastRatio(scheme.onBackground, scheme.background)
        assertTrue("Expected ≥ 3:1, got $ratio", ratio >= 3f)
    }

    @Test
    fun `OLED_BLACK preset onSurface contrasts with surface`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = true,
            readerPreset = ReadingPreset.OLED_BLACK,
            textColorScheme = "DAY",
            fallback = darkColorScheme()
        )
        val ratio = contrastRatio(scheme.onSurface, scheme.surface)
        assertTrue("Expected ≥ 3:1, got $ratio", ratio >= 3f)
    }

    @Test
    fun `SEPIA preset onSurface contrasts with surface`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = true,
            readerPreset = ReadingPreset.SEPIA_BOOK,
            textColorScheme = "SEPIA",
            fallback = lightColorScheme()
        )
        val ratio = contrastRatio(scheme.onSurface, scheme.surface)
        assertTrue("Expected ≥ 3:1, got $ratio", ratio >= 3f)
    }

    @Test
    fun `non-text reader onBackground contrasts with background`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.PAPER,
            textColorScheme = "DAY",
            fallback = lightColorScheme()
        )
        val ratio = contrastRatio(scheme.onBackground, scheme.background)
        assertTrue("Expected ≥ 3:1, got $ratio", ratio >= 3f)
    }

    @Test
    fun `raster SEPIA preset changes background to warm tone`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.SEPIA_BOOK,
            textColorScheme = "SEPIA",
            fallback = darkColorScheme()
        )
        // Sepia background should be warm (R > B)
        assertTrue("Expected warm background", scheme.background.red > scheme.background.blue)
    }

    @Test
    fun `raster NIGHT preset changes background to dark`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.NIGHT_INK,
            textColorScheme = "NIGHT",
            fallback = darkColorScheme()
        )
        assertTrue("Expected dark background", scheme.background.luminance() < 0.1f)
        val ratio = contrastRatio(scheme.onBackground, scheme.background)
        assertTrue("Expected ≥ 3:1, got $ratio", ratio >= 3f)
    }

    @Test
    fun `raster OLED preset uses pure black background`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.OLED_BLACK,
            textColorScheme = "DAY",
            fallback = darkColorScheme()
        )
        assertTrue("Expected pure black", scheme.background == Color(0xFF000000))
    }

    @Test
    fun `raster default preset differs from SEPIA`() {
        val default = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.PAPER,
            textColorScheme = "DAY",
            fallback = darkColorScheme()
        )
        val sepia = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.SEPIA_BOOK,
            textColorScheme = "SEPIA",
            fallback = darkColorScheme()
        )
        assertTrue("Backgrounds should differ", default.background != sepia.background)
    }

    // ── BUG-UI-02: DAY-scheme presets must have distinct backgrounds in raster reader ──

    @Test
    fun `raster PAPER, NEWSPAPER, and EINK have distinct backgrounds`() {
        val paper = readerMaterialColorScheme(
            isTextReader = false, readerPreset = ReadingPreset.PAPER,
            textColorScheme = "DAY", fallback = darkColorScheme()
        )
        val newspaper = readerMaterialColorScheme(
            isTextReader = false, readerPreset = ReadingPreset.NEWSPAPER,
            textColorScheme = "DAY", fallback = darkColorScheme()
        )
        val eink = readerMaterialColorScheme(
            isTextReader = false, readerPreset = ReadingPreset.EINK,
            textColorScheme = "DAY", fallback = darkColorScheme()
        )
        assertTrue("PAPER background ≠ NEWSPAPER background", paper.background != newspaper.background)
        assertTrue("PAPER background ≠ EINK background", paper.background != eink.background)
        assertTrue("NEWSPAPER background ≠ EINK background", newspaper.background != eink.background)
    }

    @Test
    fun `EINK preset maintains high contrast`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = true,
            readerPreset = ReadingPreset.EINK,
            textColorScheme = "DAY",
            fallback = lightColorScheme()
        )
        val bgRatio = contrastRatio(scheme.onBackground, scheme.background)
        val surfaceRatio = contrastRatio(scheme.onSurface, scheme.surface)
        assertTrue("Background contrast ≥ 4.5:1, got $bgRatio", bgRatio >= 4.5f)
        assertTrue("Surface contrast ≥ 4.5:1, got $surfaceRatio", surfaceRatio >= 4.5f)
    }

    // ── BUG-UI-05: raster light presets must resolve to LIGHT color schemes so
    // switches, sliders and progress bars follow the Day/Sepia preset ─────────────

    private fun isLightScheme(scheme: androidx.compose.material3.ColorScheme): Boolean =
        scheme.primaryContainer.luminance() > 0.5f &&
            scheme.secondaryContainer.luminance() > 0.5f &&
            scheme.surfaceContainerHigh.luminance() > 0.5f

    @Test
    fun `raster DAY preset resolves to a light scheme`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.PAPER,
            textColorScheme = "DAY",
            fallback = darkColorScheme()
        )
        assertTrue(
            "Expected light companions for raster DAY, primaryContainer lum=${scheme.primaryContainer.luminance()}",
            isLightScheme(scheme)
        )
    }

    @Test
    fun `raster SEPIA preset resolves to a light scheme`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.SEPIA_BOOK,
            textColorScheme = "SEPIA",
            fallback = darkColorScheme()
        )
        assertTrue("Expected light companions for raster SEPIA", isLightScheme(scheme))
    }

    @Test
    fun `raster NIGHT preset stays a dark scheme`() {
        val scheme = readerMaterialColorScheme(
            isTextReader = false,
            readerPreset = ReadingPreset.NIGHT_INK,
            textColorScheme = "NIGHT",
            fallback = darkColorScheme()
        )
        assertTrue(
            "Expected dark companions for raster NIGHT",
            scheme.primaryContainer.luminance() < 0.3f
        )
    }
}
