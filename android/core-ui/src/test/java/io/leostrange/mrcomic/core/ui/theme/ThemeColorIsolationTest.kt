package io.leostrange.mrcomic.core.ui.theme

import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import io.leostrange.mrcomic.core.ui.designsystem.MrComicColorTokens
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
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

    /**
     * Surface containers must not leak accent tint from a custom background.
     * When customBackgroundColor is a saturated color AND surfaceOpacity < 1 (triggering
     * the surface recalculation), surfaceContainer* should be neutral — derived from
     * the base surface, not from the accent-tinted background.
     */
    @Test
    fun customBackgroundDoesNotTintSurfaceContainers() {
        val base = lightColorScheme(
            surface = Color(0xFFFFFFFF),
            background = Color(0xFFF7F3EE)
        )
        // Bright green background + low opacity triggers surface recalculation
        val result = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(
                customBackgroundColor = 0xFF1B5E20,  // saturated green
                surfaceOpacity = 0.85f
            ),
            isDarkTheme = false
        )
        // surfaceContainer should be close to white (from surface), not green-tinted
        val containerLuminance = result.surfaceContainer.luminance()
        assertTrue(
            "surfaceContainer luminance $containerLuminance should be > 0.7 (neutral light)",
            containerLuminance > 0.7f
        )
        // Background should be green
        assertTrue(
            "background should be dark green",
            result.background.luminance() < 0.2f
        )
    }

    /**
     * Dark mode: surface containers must stay neutral when background is accent-tinted.
     */
    @Test
    fun darkModeCustomBackgroundDoesNotTintSurfaceContainers() {
        val base = darkColorScheme(
            surface = Color(0xFF151C24),
            background = Color(0xFF10161D)
        )
        val result = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(
                customBackgroundColor = 0xFF6A1B9A,  // saturated purple
                surfaceOpacity = 0.8f
            ),
            isDarkTheme = true
        )
        // Surface containers should be dark/neutral, not purple-tinted
        val containerLuminance = result.surfaceContainer.luminance()
        assertTrue(
            "dark surfaceContainer luminance $containerLuminance should be < 0.15 (neutral dark)",
            containerLuminance < 0.15f
        )
    }

    /**
     * Custom primary color's onPrimary must have WCAG AA contrast (≥ 4.5:1).
     * Tests a bright yellow primary where old luminance threshold (0.58) would give
     * black text (correct) and a mid-lavender where old threshold gave wrong result.
     */
    @Test
    fun customPrimaryOnContrastMeetsWcag() {
        val base = lightColorScheme()

        // Bright yellow — luminance > 0.18 → onPrimary should be black
        val yellow = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(customPrimaryColor = 0xFFFFEB3B),  // Material yellow
            isDarkTheme = false
        )
        assertEquals(Color(0xFF000000), yellow.onPrimary)

        // Deep purple — luminance < 0.18 → onPrimary should be white
        val purple = applyCustomThemeColors(
            baseColorScheme = base,
            themeConfig = ThemeConfig(customPrimaryColor = 0xFF4A148C),  // Material deep purple
            isDarkTheme = false
        )
        assertEquals(Color(0xFFFFFFFF), purple.onPrimary)
    }
}
