package com.example.core.ui.theme

import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.ui.graphics.Color

/**
 * Additional preset themes for Mr.Comic
 * Provides variety beyond the default dark/light themes
 */

/**
 * AMOLED Dark Theme - Pure black for OLED displays
 * Saves battery on AMOLED screens
 */
object AmoledThemeColors {
    val Primary = Color(0xFF82B1FF) // Light blue
    val OnPrimary = Color(0xFF000000)
    val PrimaryContainer = Color(0xFF2962FF)
    val OnPrimaryContainer = Color(0xFFD1E4FF)

    val Secondary = Color(0xFFB388FF) // Light purple
    val OnSecondary = Color(0xFF000000)
    val SecondaryContainer = Color(0xFF651FFF)
    val OnSecondaryContainer = Color(0xFFE1BEE7)

    val Tertiary = Color(0xFFFFD180) // Light orange
    val OnTertiary = Color(0xFF000000)
    val TertiaryContainer = Color(0xFFFF6F00)
    val OnTertiaryContainer = Color(0xFFFFE0B2)

    val Background = Color(0xFF000000) // Pure black
    val OnBackground = Color(0xFFE0E0E0)
    val Surface = Color(0xFF000000) // Pure black
    val OnSurface = Color(0xFFE0E0E0)

    val SurfaceVariant = Color(0xFF1A1A1A) // Slightly raised
    val OnSurfaceVariant = Color(0xFFBDBDBD)
    val SurfaceTint = Primary

    val Outline = Color(0xFF424242)
    val OutlineVariant = Color(0xFF2C2C2C)

    val Error = Color(0xFFFF5252)
    val OnError = Color(0xFF000000)
    val ErrorContainer = Color(0xFFD50000)
    val OnErrorContainer = Color(0xFFFFCDD2)

    val InverseSurface = Color(0xFFE0E0E0)
    val InverseOnSurface = Color(0xFF121212)
    val InversePrimary = Color(0xFF1976D2)

    val Scrim = Color(0xFF000000)
}

/**
 * Retro Comics Theme - Vintage comic book colors
 * Inspired by Golden Age comics (1930s-1950s)
 */
object RetroComicsThemeColors {
    val Primary = Color(0xFFE74C3C) // Classic red
    val OnPrimary = Color(0xFFFFFFFF)
    val PrimaryContainer = Color(0xFFC0392B)
    val OnPrimaryContainer = Color(0xFFFAEBD7)

    val Secondary = Color(0xFFF39C12) // Golden yellow
    val OnSecondary = Color(0xFF000000)
    val SecondaryContainer = Color(0xFFD68910)
    val OnSecondaryContainer = Color(0xFFFFF8DC)

    val Tertiary = Color(0xFF3498DB) // Sky blue
    val OnTertiary = Color(0xFFFFFFFF)
    val TertiaryContainer = Color(0xFF2980B9)
    val OnTertiaryContainer = Color(0xFFE0F2F7)

    val Background = Color(0xFFF4ECE6) // Aged paper
    val OnBackground = Color(0xFF2C2416)
    val Surface = Color(0xFFFFFAF0) // Cream surface
    val OnSurface = Color(0xFF2C2416)

    val SurfaceVariant = Color(0xFFE8DDD4)
    val OnSurfaceVariant = Color(0xFF5D4E40)
    val SurfaceTint = Primary

    val Outline = Color(0xFF8B7355)
    val OutlineVariant = Color(0xFFC8B7A6)

    val Error = Color(0xFFCD5C5C)
    val OnError = Color(0xFFFFFFFF)
    val ErrorContainer = Color(0xFFA94442)
    val OnErrorContainer = Color(0xFFFFF0F0)

    val InverseSurface = Color(0xFF3E2723)
    val InverseOnSurface = Color(0xFFEFEBE9)
    val InversePrimary = Color(0xFFFF6B6B)

    val Scrim = Color(0xFF000000)
}

/**
 * Mint Fresh Theme - Cool green-based palette
 * Easy on the eyes for long reading sessions
 */
object MintFreshThemeColors {
    val Primary = Color(0xFF00BFA5) // Teal
    val OnPrimary = Color(0xFFFFFFFF)
    val PrimaryContainer = Color(0xFF00897B)
    val OnPrimaryContainer = Color(0xFFB2DFDB)

    val Secondary = Color(0xFF26A69A) // Mint
    val OnSecondary = Color(0xFFFFFFFF)
    val SecondaryContainer = Color(0xFF00796B)
    val OnSecondaryContainer = Color(0xFFE0F2F1)

    val Tertiary = Color(0xFF66BB6A) // Green
    val OnTertiary = Color(0xFFFFFFFF)
    val TertiaryContainer = Color(0xFF388E3C)
    val OnTertiaryContainer = Color(0xFFC8E6C9)

    val Background = Color(0xFFF1F8F4) // Very light mint
    val OnBackground = Color(0xFF1B3329)
    val Surface = Color(0xFFFFFFFF)
    val OnSurface = Color(0xFF1B3329)

    val SurfaceVariant = Color(0xFFE0F2F1)
    val OnSurfaceVariant = Color(0xFF4E6B5E)
    val SurfaceTint = Primary

    val Outline = Color(0xFF80CBC4)
    val OutlineVariant = Color(0xFFB2DFDB)

    val Error = Color(0xFFE57373)
    val OnError = Color(0xFFFFFFFF)
    val ErrorContainer = Color(0xFFD32F2F)
    val OnErrorContainer = Color(0xFFFFCDD2)

    val InverseSurface = Color(0xFF263238)
    val InverseOnSurface = Color(0xFFECEFF1)
    val InversePrimary = Color(0xFF4DD0E1)

    val Scrim = Color(0xFF000000)
}

/**
 * Ocean Blue Theme - Calm blue theme for nighttime reading
 */
object OceanBlueThemeColors {
    val Primary = Color(0xFF1E88E5) // Ocean blue
    val OnPrimary = Color(0xFFFFFFFF)
    val PrimaryContainer = Color(0xFF1565C0)
    val OnPrimaryContainer = Color(0xFFBBDEFB)

    val Secondary = Color(0xFF26C6DA) // Cyan
    val OnSecondary = Color(0xFFFFFFFF)
    val SecondaryContainer = Color(0xFF0097A7)
    val OnSecondaryContainer = Color(0xFFB2EBF2)

    val Tertiary = Color(0xFF42A5F5) // Light blue
    val OnTertiary = Color(0xFFFFFFFF)
    val TertiaryContainer = Color(0xFF1976D2)
    val OnTertiaryContainer = Color(0xFFE3F2FD)

    val Background = Color(0xFF0D1B2A) // Deep ocean
    val OnBackground = Color(0xFFE3F2FD)
    val Surface = Color(0xFF1B263B) // Dark surface
    val OnSurface = Color(0xFFE3F2FD)

    val SurfaceVariant = Color(0xFF2C3E50)
    val OnSurfaceVariant = Color(0xFFAED6F1)
    val SurfaceTint = Primary

    val Outline = Color(0xFF34495E)
    val OutlineVariant = Color(0xFF2C3E50)

    val Error = Color(0xFFEF5350)
    val OnError = Color(0xFFFFFFFF)
    val ErrorContainer = Color(0xFFC62828)
    val OnErrorContainer = Color(0xFFFFCDD2)

    val InverseSurface = Color(0xFFECEFF1)
    val InverseOnSurface = Color(0xFF263238)
    val InversePrimary = Color(0xFF0277BD)

    val Scrim = Color(0xFF000000)
}

// Create ColorScheme instances
val AmoledDarkColorScheme = darkColorScheme(
    primary = AmoledThemeColors.Primary,
    onPrimary = AmoledThemeColors.OnPrimary,
    primaryContainer = AmoledThemeColors.PrimaryContainer,
    onPrimaryContainer = AmoledThemeColors.OnPrimaryContainer,
    secondary = AmoledThemeColors.Secondary,
    onSecondary = AmoledThemeColors.OnSecondary,
    secondaryContainer = AmoledThemeColors.SecondaryContainer,
    onSecondaryContainer = AmoledThemeColors.OnSecondaryContainer,
    tertiary = AmoledThemeColors.Tertiary,
    onTertiary = AmoledThemeColors.OnTertiary,
    tertiaryContainer = AmoledThemeColors.TertiaryContainer,
    onTertiaryContainer = AmoledThemeColors.OnTertiaryContainer,
    background = AmoledThemeColors.Background,
    onBackground = AmoledThemeColors.OnBackground,
    surface = AmoledThemeColors.Surface,
    onSurface = AmoledThemeColors.OnSurface,
    surfaceVariant = AmoledThemeColors.SurfaceVariant,
    onSurfaceVariant = AmoledThemeColors.OnSurfaceVariant,
    surfaceTint = AmoledThemeColors.SurfaceTint,
    outline = AmoledThemeColors.Outline,
    outlineVariant = AmoledThemeColors.OutlineVariant,
    error = AmoledThemeColors.Error,
    onError = AmoledThemeColors.OnError,
    errorContainer = AmoledThemeColors.ErrorContainer,
    onErrorContainer = AmoledThemeColors.OnErrorContainer,
    inverseSurface = AmoledThemeColors.InverseSurface,
    inverseOnSurface = AmoledThemeColors.InverseOnSurface,
    inversePrimary = AmoledThemeColors.InversePrimary,
    scrim = AmoledThemeColors.Scrim
)

val RetroComicsColorScheme = lightColorScheme(
    primary = RetroComicsThemeColors.Primary,
    onPrimary = RetroComicsThemeColors.OnPrimary,
    primaryContainer = RetroComicsThemeColors.PrimaryContainer,
    onPrimaryContainer = RetroComicsThemeColors.OnPrimaryContainer,
    secondary = RetroComicsThemeColors.Secondary,
    onSecondary = RetroComicsThemeColors.OnSecondary,
    secondaryContainer = RetroComicsThemeColors.SecondaryContainer,
    onSecondaryContainer = RetroComicsThemeColors.OnSecondaryContainer,
    tertiary = RetroComicsThemeColors.Tertiary,
    onTertiary = RetroComicsThemeColors.OnTertiary,
    tertiaryContainer = RetroComicsThemeColors.TertiaryContainer,
    onTertiaryContainer = RetroComicsThemeColors.OnTertiaryContainer,
    background = RetroComicsThemeColors.Background,
    onBackground = RetroComicsThemeColors.OnBackground,
    surface = RetroComicsThemeColors.Surface,
    onSurface = RetroComicsThemeColors.OnSurface,
    surfaceVariant = RetroComicsThemeColors.SurfaceVariant,
    onSurfaceVariant = RetroComicsThemeColors.OnSurfaceVariant,
    surfaceTint = RetroComicsThemeColors.SurfaceTint,
    outline = RetroComicsThemeColors.Outline,
    outlineVariant = RetroComicsThemeColors.OutlineVariant,
    error = RetroComicsThemeColors.Error,
    onError = RetroComicsThemeColors.OnError,
    errorContainer = RetroComicsThemeColors.ErrorContainer,
    onErrorContainer = RetroComicsThemeColors.OnErrorContainer,
    inverseSurface = RetroComicsThemeColors.InverseSurface,
    inverseOnSurface = RetroComicsThemeColors.InverseOnSurface,
    inversePrimary = RetroComicsThemeColors.InversePrimary,
    scrim = RetroComicsThemeColors.Scrim
)

val MintFreshColorScheme = lightColorScheme(
    primary = MintFreshThemeColors.Primary,
    onPrimary = MintFreshThemeColors.OnPrimary,
    primaryContainer = MintFreshThemeColors.PrimaryContainer,
    onPrimaryContainer = MintFreshThemeColors.OnPrimaryContainer,
    secondary = MintFreshThemeColors.Secondary,
    onSecondary = MintFreshThemeColors.OnSecondary,
    secondaryContainer = MintFreshThemeColors.SecondaryContainer,
    onSecondaryContainer = MintFreshThemeColors.OnSecondaryContainer,
    tertiary = MintFreshThemeColors.Tertiary,
    onTertiary = MintFreshThemeColors.OnTertiary,
    tertiaryContainer = MintFreshThemeColors.TertiaryContainer,
    onTertiaryContainer = MintFreshThemeColors.OnTertiaryContainer,
    background = MintFreshThemeColors.Background,
    onBackground = MintFreshThemeColors.OnBackground,
    surface = MintFreshThemeColors.Surface,
    onSurface = MintFreshThemeColors.OnSurface,
    surfaceVariant = MintFreshThemeColors.SurfaceVariant,
    onSurfaceVariant = MintFreshThemeColors.OnSurfaceVariant,
    surfaceTint = MintFreshThemeColors.SurfaceTint,
    outline = MintFreshThemeColors.Outline,
    outlineVariant = MintFreshThemeColors.OutlineVariant,
    error = MintFreshThemeColors.Error,
    onError = MintFreshThemeColors.OnError,
    errorContainer = MintFreshThemeColors.ErrorContainer,
    onErrorContainer = MintFreshThemeColors.OnErrorContainer,
    inverseSurface = MintFreshThemeColors.InverseSurface,
    inverseOnSurface = MintFreshThemeColors.InverseOnSurface,
    inversePrimary = MintFreshThemeColors.InversePrimary,
    scrim = MintFreshThemeColors.Scrim
)

val OceanBlueColorScheme = darkColorScheme(
    primary = OceanBlueThemeColors.Primary,
    onPrimary = OceanBlueThemeColors.OnPrimary,
    primaryContainer = OceanBlueThemeColors.PrimaryContainer,
    onPrimaryContainer = OceanBlueThemeColors.OnPrimaryContainer,
    secondary = OceanBlueThemeColors.Secondary,
    onSecondary = OceanBlueThemeColors.OnSecondary,
    secondaryContainer = OceanBlueThemeColors.SecondaryContainer,
    onSecondaryContainer = OceanBlueThemeColors.OnSecondaryContainer,
    tertiary = OceanBlueThemeColors.Tertiary,
    onTertiary = OceanBlueThemeColors.OnTertiary,
    tertiaryContainer = OceanBlueThemeColors.TertiaryContainer,
    onTertiaryContainer = OceanBlueThemeColors.OnTertiaryContainer,
    background = OceanBlueThemeColors.Background,
    onBackground = OceanBlueThemeColors.OnBackground,
    surface = OceanBlueThemeColors.Surface,
    onSurface = OceanBlueThemeColors.OnSurface,
    surfaceVariant = OceanBlueThemeColors.SurfaceVariant,
    onSurfaceVariant = OceanBlueThemeColors.OnSurfaceVariant,
    surfaceTint = OceanBlueThemeColors.SurfaceTint,
    outline = OceanBlueThemeColors.Outline,
    outlineVariant = OceanBlueThemeColors.OutlineVariant,
    error = OceanBlueThemeColors.Error,
    onError = OceanBlueThemeColors.OnError,
    errorContainer = OceanBlueThemeColors.ErrorContainer,
    onErrorContainer = OceanBlueThemeColors.OnErrorContainer,
    inverseSurface = OceanBlueThemeColors.InverseSurface,
    inverseOnSurface = OceanBlueThemeColors.InverseOnSurface,
    inversePrimary = OceanBlueThemeColors.InversePrimary,
    scrim = OceanBlueThemeColors.Scrim
)

/**
 * List of all available preset themes
 */
data class PresetTheme(
    val id: String,
    val name: String,
    val description: String,
    val isDark: Boolean
)

val AVAILABLE_PRESET_THEMES = listOf(
    PresetTheme("amoled_dark", "AMOLED Dark", "Pure black for OLED screens - saves battery", isDark = true),
    PresetTheme("retro_comics", "Retro Comics", "Vintage comic book colors from the Golden Age", isDark = false),
    PresetTheme("mint_fresh", "Mint Fresh", "Cool green palette - easy on the eyes", isDark = false),
    PresetTheme("ocean_blue", "Ocean Blue", "Calm blue theme for nighttime reading", isDark = true)
)
