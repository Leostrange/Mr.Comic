package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.material3.ColorScheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

/**
 * Material3 [ColorScheme] builder for the text reader.
 *
 * Extracted from ReaderScreen to reduce its size.
 * Pure function: takes parameters, returns a [ColorScheme]. No state dependency.
 */
internal fun readerMaterialColorScheme(
    isTextReader: Boolean,
    readerPreset: ReadingPreset,
    textColorScheme: String,
    fallback: ColorScheme
): ColorScheme {
    val surfaceAlpha = fallback.surface.alpha
    val baseScheme = if (!isTextReader) {
        // Raster reader: preset-based tinting so DAY/SEPIA/NIGHT/OLED change the page
        // gutter AND the chrome controls. BUG-UI-05: light presets previously wrapped
        // their colors into a darkColorScheme, so switches, sliders, progress bars and
        // chrome containers kept dark companions and did not follow the Day/Sepia
        // presets in light themes. Light presets now resolve to complete
        // lightColorSchemes; dark presets stay dark. Background/surface roles keep the
        // exact values pinned by ReaderMaterialColorSchemeTest.
        val presetScheme = when {
            readerPreset == ReadingPreset.OLED_BLACK -> rasterOledDarkScheme()
            readerPreset == ReadingPreset.SEPIA_BOOK || textColorScheme == "SEPIA" -> rasterSepiaLightScheme()
            readerPreset == ReadingPreset.NIGHT_INK || textColorScheme == "NIGHT" -> rasterNightDarkScheme()
            readerPreset == ReadingPreset.NEWSPAPER -> rasterNewspaperLightScheme()
            readerPreset == ReadingPreset.EINK -> rasterEinkLightScheme()
            readerPreset == ReadingPreset.PAPER || textColorScheme == "DAY" -> rasterDayLightScheme()
            else -> rasterFallbackDarkScheme()
        }
        presetScheme.copy(error = fallback.error, onError = fallback.onError)
    } else {
        when {
            readerPreset == ReadingPreset.OLED_BLACK -> darkColorScheme(
                primary = Color(0xFFB8D3FF),
                onPrimary = Color(0xFF091019),
                primaryContainer = Color(0xFF152231),
                onPrimaryContainer = Color(0xFFE2ECFA),
                secondary = Color(0xFF98A2B1),
                onSecondary = Color(0xFF0F141B),
                secondaryContainer = Color(0xFF1A222C),
                onSecondaryContainer = Color(0xFFE4E7EB),
                background = Color(0xFF000000),
                onBackground = Color(0xFFF2F5F7),
                surface = Color(0xFF050505),
                onSurface = Color(0xFFF2F5F7),
                surfaceVariant = Color(0xFF121212),
                onSurfaceVariant = Color(0xFFBAC0C7),
                outline = Color(0xFF525860),
                outlineVariant = Color(0xFF22262B)
            )
            readerPreset == ReadingPreset.SEPIA_BOOK -> lightColorScheme(
                primary = Color(0xFF835D2F),
                onPrimary = Color(0xFFFFF7EA),
                primaryContainer = Color(0xFFF0DEC2),
                onPrimaryContainer = Color(0xFF43280A),
                secondary = Color(0xFF966B3A),
                onSecondary = Color(0xFFFFF7EA),
                secondaryContainer = Color(0xFFF5E3C7),
                onSecondaryContainer = Color(0xFF45270C),
                background = Color(0xFFF4ECD8),
                onBackground = Color(0xFF352618),
                surface = Color(0xFFEEE2C8),
                onSurface = Color(0xFF352618),
                surfaceVariant = Color(0xFFE5D4B1),
                onSurfaceVariant = Color(0xFF6C5337),
                outline = Color(0xFF9A7B58),
                outlineVariant = Color(0xFFD2BC95)
            )
            readerPreset == ReadingPreset.NEWSPAPER -> lightColorScheme(
                primary = Color(0xFF31404F),
                onPrimary = Color(0xFFF7F7F5),
                primaryContainer = Color(0xFFDCE1E6),
                onPrimaryContainer = Color(0xFF19232D),
                secondary = Color(0xFF5E6975),
                onSecondary = Color(0xFFF7F7F5),
                secondaryContainer = Color(0xFFE2E6EA),
                onSecondaryContainer = Color(0xFF242C34),
                background = Color(0xFFF1EEE7),
                onBackground = Color(0xFF202020),
                surface = Color(0xFFE9E5DD),
                onSurface = Color(0xFF202020),
                surfaceVariant = Color(0xFFDED8D0),
                onSurfaceVariant = Color(0xFF55504A),
                outline = Color(0xFF80776E),
                outlineVariant = Color(0xFFC3BBB1)
            )
            textColorScheme == "NIGHT" -> darkColorScheme(
                primary = Color(0xFF7DB7E8),
                onPrimary = Color(0xFF0F1C29),
                primaryContainer = Color(0xFF253748),
                onPrimaryContainer = Color(0xFFE2F0FD),
                secondary = Color(0xFFD4B384),
                onSecondary = Color(0xFF3F2A11),
                secondaryContainer = Color(0xFF594225),
                onSecondaryContainer = Color(0xFFF3E2C6),
                background = Color(0xFF16181C),
                onBackground = Color(0xFFE8E2D8),
                surface = Color(0xFF1F2328),
                onSurface = Color(0xFFE8E2D8),
                surfaceVariant = Color(0xFF2A2F36),
                onSurfaceVariant = Color(0xFFC5C0B6),
                outline = Color(0xFF716A60),
                outlineVariant = Color(0xFF3B403E)
            )
            textColorScheme == "SEPIA" -> lightColorScheme(
                primary = Color(0xFF2F6B94),
                onPrimary = Color(0xFFF7F1E4),
                primaryContainer = Color(0xFFD5E7F4),
                onPrimaryContainer = Color(0xFF11344A),
                secondary = Color(0xFF8E6335),
                onSecondary = Color(0xFFF9F1E4),
                secondaryContainer = Color(0xFFEFDDBB),
                onSecondaryContainer = Color(0xFF3D2910),
                background = Color(0xFFF4ECD8),
                onBackground = Color(0xFF372719),
                surface = Color(0xFFEADFC2),
                onSurface = Color(0xFF372719),
                surfaceVariant = Color(0xFFE3D4B4),
                onSurfaceVariant = Color(0xFF6A543B),
                outline = Color(0xFF94785A),
                outlineVariant = Color(0xFFC7B08C)
            )
            readerPreset == ReadingPreset.PAPER -> lightColorScheme(
                primary = Color(0xFF345C7C),
                onPrimary = Color(0xFFF9F4EA),
                primaryContainer = Color(0xFFDCE6ED),
                onPrimaryContainer = Color(0xFF142D3D),
                secondary = Color(0xFF8B6841),
                onSecondary = Color(0xFFF9F1E7),
                secondaryContainer = Color(0xFFE8D8BF),
                onSecondaryContainer = Color(0xFF382411),
                background = Color(0xFFF6F1E7),
                onBackground = Color(0xFF2F241A),
                surface = Color(0xFFEEE6D7),
                onSurface = Color(0xFF2F241A),
                surfaceVariant = Color(0xFFE2D6C3),
                onSurfaceVariant = Color(0xFF675745),
                outline = Color(0xFF8F7D67),
                outlineVariant = Color(0xFFCDBEAA)
            )
            readerPreset == ReadingPreset.EINK -> lightColorScheme(
                primary = Color(0xFF1A1A1A),
                onPrimary = Color(0xFFF3F3F1),
                primaryContainer = Color(0xFFD7D7D3),
                onPrimaryContainer = Color(0xFF111111),
                secondary = Color(0xFF4C4C4C),
                onSecondary = Color(0xFFF5F5F3),
                secondaryContainer = Color(0xFFE0E0DC),
                onSecondaryContainer = Color(0xFF1E1E1E),
                background = Color(0xFFF0EFE9),
                onBackground = Color(0xFF111111),
                surface = Color(0xFFE4E3DD),
                onSurface = Color(0xFF111111),
                surfaceVariant = Color(0xFFD7D6D0),
                onSurfaceVariant = Color(0xFF4A4A47),
                outline = Color(0xFF777773),
                outlineVariant = Color(0xFFBDBCB7)
            )
            else -> lightColorScheme(
                primary = Color(0xFF1A6F9A),
                onPrimary = Color(0xFFF5FAFD),
                primaryContainer = Color(0xFFD3EAF5),
                onPrimaryContainer = Color(0xFF0E3346),
                secondary = Color(0xFF7B5A33),
                onSecondary = Color(0xFFFEF8F2),
                secondaryContainer = Color(0xFFF0E3D1),
                onSecondaryContainer = Color(0xFF34220F),
                background = Color(0xFFFAFAF8),
                onBackground = Color(0xFF171717),
                surface = Color(0xFFF0F0EC),
                onSurface = Color(0xFF171717),
                surfaceVariant = Color(0xFFE6E5DF),
                onSurfaceVariant = Color(0xFF52504A),
                outline = Color(0xFF7C7A73),
                outlineVariant = Color(0xFFC9C7C0)
            )
        }.copy(error = fallback.error, onError = fallback.onError)
    }

    val withAlpha = baseScheme.copy(
        surface = baseScheme.surface.copy(alpha = surfaceAlpha),
        surfaceVariant = baseScheme.surfaceVariant.copy(alpha = surfaceAlpha),
        surfaceContainer = baseScheme.surfaceContainer.copy(alpha = surfaceAlpha),
        surfaceContainerLow = baseScheme.surfaceContainerLow.copy(alpha = surfaceAlpha),
        surfaceContainerHigh = baseScheme.surfaceContainerHigh.copy(alpha = surfaceAlpha)
    )

    // Contrast guards: ensure readable foreground colors against their backgrounds.
    // WCAG AA requires ≥ 4.5:1 for normal text; we use 3:1 as a floor to avoid
    // forcing pure black/white on borderline cases.
    return withAlpha.copy(
        onBackground = ensureContrast(withAlpha.onBackground, withAlpha.background),
        onSurface = ensureContrast(withAlpha.onSurface, withAlpha.surface),
        onSurfaceVariant = ensureContrast(withAlpha.onSurfaceVariant, withAlpha.surfaceVariant)
    )
}

/**
 * Returns [foreground] if it has sufficient contrast against [background];
 * otherwise falls back to black or white, whichever has higher contrast.
 */
private fun ensureContrast(
    foreground: Color,
    background: Color,
    minRatio: Float = 3f
): Color {
    val bgLum = background.luminance().coerceIn(0.001f, 0.999f)
    val fgLum = foreground.luminance().coerceIn(0.001f, 0.999f)
    val ratio = if (bgLum > fgLum) (bgLum + 0.05f) / (fgLum + 0.05f)
                else (fgLum + 0.05f) / (bgLum + 0.05f)
    if (ratio >= minRatio) return foreground
    // Pick the higher-contrast fallback
    val blackRatio = (bgLum + 0.05f) / (0.0f + 0.05f)
    val whiteRatio = (1.0f + 0.05f) / (bgLum + 0.05f)
    return if (blackRatio >= whiteRatio) Color.Black else Color.White
}

// ── Raster-reader preset schemes ─────────────────────────────────────────────
// Background/surface roles keep the exact values pinned by
// ReaderMaterialColorSchemeTest; companion roles (primary/secondary/containers/
// outline*) mirror the matching text-reader palettes so switches, sliders,
// progress bars and chrome containers track the preset in light themes too.

private fun rasterOledDarkScheme() = darkColorScheme(
    primary = Color(0xFF7DB7E8),
    onPrimary = Color(0xFF0F1C29),
    primaryContainer = Color(0xFF243748),
    onPrimaryContainer = Color(0xFFE3F1FE),
    secondary = Color(0xFFD9B982),
    onSecondary = Color(0xFF36250D),
    secondaryContainer = Color(0xFF544122),
    onSecondaryContainer = Color(0xFFF7E7CA),
    background = Color(0xFF000000),
    onBackground = Color(0xFFF2F2F2),
    surface = Color(0xFF050505),
    onSurface = Color(0xFFF2F2F2),
    surfaceVariant = Color(0xFF121212),
    onSurfaceVariant = Color(0xFFC5CBD2),
    outline = Color(0xFF5B6772),
    outlineVariant = Color(0xFF313A44)
)

private fun rasterNightDarkScheme() = darkColorScheme(
    primary = Color(0xFF7DB7E8),
    onPrimary = Color(0xFF0F1C29),
    primaryContainer = Color(0xFF253748),
    onPrimaryContainer = Color(0xFFE2F0FD),
    secondary = Color(0xFFD4B384),
    onSecondary = Color(0xFF3F2A11),
    secondaryContainer = Color(0xFF594225),
    onSecondaryContainer = Color(0xFFF3E2C6),
    background = Color(0xFF16181C),
    onBackground = Color(0xFFE8E2D8),
    surface = Color(0xFF1F2328),
    onSurface = Color(0xFFE8E2D8),
    surfaceVariant = Color(0xFF2A2F36),
    onSurfaceVariant = Color(0xFFC5C0B6),
    outline = Color(0xFF716A60),
    outlineVariant = Color(0xFF3B403E)
)

private fun rasterFallbackDarkScheme() = darkColorScheme(
    primary = Color(0xFF7DB7E8),
    onPrimary = Color(0xFF0F1C29),
    primaryContainer = Color(0xFF243748),
    onPrimaryContainer = Color(0xFFE3F1FE),
    secondary = Color(0xFFD9B982),
    onSecondary = Color(0xFF36250D),
    secondaryContainer = Color(0xFF544122),
    onSecondaryContainer = Color(0xFFF7E7CA),
    background = Color(0xFF090B0E),
    onBackground = Color(0xFFF2F2F2),
    surface = Color(0xFF14181D),
    onSurface = Color(0xFFF2F2F2),
    surfaceVariant = Color(0xFF232A31),
    onSurfaceVariant = Color(0xFFC5CBD2),
    outline = Color(0xFF5B6772),
    outlineVariant = Color(0xFF313A44)
)

private fun rasterSepiaLightScheme() = lightColorScheme(
    primary = Color(0xFF835D2F),
    onPrimary = Color(0xFFFFF7EA),
    primaryContainer = Color(0xFFF0DEC2),
    onPrimaryContainer = Color(0xFF43280A),
    secondary = Color(0xFF966B3A),
    onSecondary = Color(0xFFFFF7EA),
    secondaryContainer = Color(0xFFF5E3C7),
    onSecondaryContainer = Color(0xFF45270C),
    background = Color(0xFFEADFC2),
    onBackground = Color(0xFF372719),
    surface = Color(0xFFF4ECD8),
    onSurface = Color(0xFF372719),
    surfaceVariant = Color(0xFFE3D4B4),
    onSurfaceVariant = Color(0xFF6A543B),
    outline = Color(0xFF94785A),
    outlineVariant = Color(0xFFC7B08C)
)

private fun rasterDayLightScheme() = lightColorScheme(
    primary = Color(0xFF345C7C),
    onPrimary = Color(0xFFF9F4EA),
    primaryContainer = Color(0xFFDCE6ED),
    onPrimaryContainer = Color(0xFF142D3D),
    secondary = Color(0xFF8B6841),
    onSecondary = Color(0xFFF9F1E7),
    secondaryContainer = Color(0xFFE8D8BF),
    onSecondaryContainer = Color(0xFF382411),
    background = Color(0xFFF6F1E7),
    onBackground = Color(0xFF2B2118),
    surface = Color(0xFFEEE6D7),
    onSurface = Color(0xFF2B2118),
    surfaceVariant = Color(0xFFE2D6C3),
    onSurfaceVariant = Color(0xFF675745),
    outline = Color(0xFF8F7D67),
    outlineVariant = Color(0xFFCDBEAA)
)

private fun rasterNewspaperLightScheme() = lightColorScheme(
    primary = Color(0xFF31404F),
    onPrimary = Color(0xFFF7F7F5),
    primaryContainer = Color(0xFFDCE1E6),
    onPrimaryContainer = Color(0xFF19232D),
    secondary = Color(0xFF5E6975),
    onSecondary = Color(0xFFF7F7F5),
    secondaryContainer = Color(0xFFE2E6EA),
    onSecondaryContainer = Color(0xFF242C34),
    background = Color(0xFFF1EEE7),
    onBackground = Color(0xFF202020),
    surface = Color(0xFFE9E5DD),
    onSurface = Color(0xFF202020),
    surfaceVariant = Color(0xFFDED8D0),
    onSurfaceVariant = Color(0xFF55504A),
    outline = Color(0xFF80776E),
    outlineVariant = Color(0xFFC3BBB1)
)

private fun rasterEinkLightScheme() = lightColorScheme(
    primary = Color(0xFF1A1A1A),
    onPrimary = Color(0xFFF3F3F1),
    primaryContainer = Color(0xFFD7D7D3),
    onPrimaryContainer = Color(0xFF111111),
    secondary = Color(0xFF4C4C4C),
    onSecondary = Color(0xFFF5F5F3),
    secondaryContainer = Color(0xFFE0E0DC),
    onSecondaryContainer = Color(0xFF1E1E1E),
    background = Color(0xFFF0EFE9),
    onBackground = Color(0xFF121212),
    surface = Color(0xFFE8E7E1),
    onSurface = Color(0xFF121212),
    surfaceVariant = Color(0xFFDDDCDA),
    onSurfaceVariant = Color(0xFF50504D),
    outline = Color(0xFF777773),
    outlineVariant = Color(0xFFBDBCB7)
)
