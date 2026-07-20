package io.leostrange.mrcomic.core.ui.theme

import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.ui.designsystem.MrComicColorTokens
import org.junit.Assert.assertEquals
import org.junit.Test

class ThemeColorIsolationTest {

    @Test
    fun designSystemArgbLongTokensResolveToOpaqueColors() {
        assertEquals(Color(0xFFF6F1E7), MrComicColorTokens.inkPaperLight.background)
        assertEquals(Color(0xFFFFFBF5), MrComicColorTokens.inkPaperLight.surface)
        assertEquals(Color(0xFF10161D), MrComicColorTokens.inkPaperDark.background)
        assertEquals(Color(0xFF151C24), MrComicColorTokens.inkPaperDark.surface)
    }

    @Test
    fun themePresetPreviewUsesArgbLongsAsColors() {
        assertEquals(Color(0xFFFFF8F0), ThemePreset.PAPER.previewColors().bg)
        assertEquals(Color(0xFFF2F7FD), ThemePreset.GLASS.previewColors().bg)
        assertEquals(Color(0xFFF5F5F5), ThemePreset.GRAY.previewColors().bg)
        assertEquals(Color(0xFFFFFFFF), ThemePreset.EINK.previewColors().bg)
    }

    @Test
    fun customBackgroundDoesNotMutateSurfaceOrControlColors() {
        val base = lightColorScheme(
            primary = Color(0xFF1565C0),
            secondary = Color(0xFF6A4C93),
            background = Color(0xFFF7F3EE),
            surface = Color(0xFFFFFFFF),
            surfaceVariant = Color(0xFFE8E0D8),
            surfaceContainer = Color(0xFFF2EEE9),
            surfaceContainerHigh = Color(0xFFEDE8E1)
        )

        val result = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(customBackgroundColor = 0xFF0D47A1),
            isDarkTheme = false
        )

        assertEquals(Color(0xFF0D47A1), result.background)
        assertEquals(base.primary, result.primary)
        assertEquals(base.secondary, result.secondary)
        assertEquals(base.surface, result.surface)
        assertEquals(base.surfaceVariant, result.surfaceVariant)
        assertEquals(base.surfaceContainer, result.surfaceContainer)
        assertEquals(base.surfaceContainerHigh, result.surfaceContainerHigh)
    }

    @Test
    fun rgbOnlyCustomBackgroundIsTreatedAsOpaque() {
        val base = lightColorScheme(
            background = Color(0xFFF7F3EE),
            surface = Color(0xFFFFFFFF)
        )

        val result = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(customBackgroundColor = 0x0000FF),
            isDarkTheme = false
        )

        assertEquals(Color(0xFF0000FF), result.background)
    }

    @Test
    fun surfaceOpacityDoesNotRecalculateSurfaceFamilyFromCustomBackground() {
        val base = lightColorScheme(
            background = Color(0xFFF7F3EE),
            surface = Color(0xFFFFFFFF),
            surfaceVariant = Color(0xFFE8E0D8),
            surfaceContainer = Color(0xFFF2EEE9),
            surfaceContainerHigh = Color(0xFFEDE8E1)
        )

        val blueBackground = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(
                customBackgroundColor = 0xFF0D47A1,
                surfaceOpacity = 0.72f
            ),
            isDarkTheme = false
        )
        val greenBackground = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(
                customBackgroundColor = 0xFF1B5E20,
                surfaceOpacity = 0.72f
            ),
            isDarkTheme = false
        )

        assertEquals(Color(0xFF0D47A1), blueBackground.background)
        assertEquals(Color(0xFF1B5E20), greenBackground.background)
        assertEquals(blueBackground.surface, greenBackground.surface)
        assertEquals(blueBackground.surfaceVariant, greenBackground.surfaceVariant)
        assertEquals(blueBackground.surfaceContainer, greenBackground.surfaceContainer)
        assertEquals(blueBackground.surfaceContainerHigh, greenBackground.surfaceContainerHigh)
    }
}
