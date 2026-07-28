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
}
