package com.example.core.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

/**
 * Dark theme colors based on UI mockups analysis
 * Inspired by themes_screen_dark_new.png and other dark mockups
 */
object DarkThemeColors {
    // Primary colors - Comic book inspired blues
    val Primary = Color(0xFF6366F1) // Indigo
    val OnPrimary = Color(0xFFFFFFFF)
    val PrimaryContainer = Color(0xFF4F46E5)
    val OnPrimaryContainer = Color(0xFFE0E7FF)
    
    // Secondary colors - Complementary purple
    val Secondary = Color(0xFF8B5CF6) // Purple
    val OnSecondary = Color(0xFFFFFFFF)
    val SecondaryContainer = Color(0xFF7C3AED)
    val OnSecondaryContainer = Color(0xFFEDE9FE)
    
    // Tertiary colors - Accent orange
    val Tertiary = Color(0xFFF59E0B) // Amber
    val OnTertiary = Color(0xFF000000)
    val TertiaryContainer = Color(0xFFD97706)
    val OnTertiaryContainer = Color(0xFFFEF3C7)
    
    // Background colors - Deep comic book theme
    val Background = Color(0xFF0F0F23) // Very dark blue-black
    val OnBackground = Color(0xFFE2E8F0)
    val Surface = Color(0xFF1E1E2E) // Dark surface
    val OnSurface = Color(0xFFE2E8F0)
    
    // Surface variants
    val SurfaceVariant = Color(0xFF2D2D40)
    val OnSurfaceVariant = Color(0xFFCBD5E1)
    val SurfaceTint = Primary
    
    // Outline colors
    val Outline = Color(0xFF475569)
    val OutlineVariant = Color(0xFF334155)
    
    // Error colors
    val Error = Color(0xFFEF4444) // Red
    val OnError = Color(0xFFFFFFFF)
    val ErrorContainer = Color(0xFFDC2626)
    val OnErrorContainer = Color(0xFFFEE2E2)
    
    // Inverse colors
    val InverseSurface = Color(0xFFE2E8F0)
    val InverseOnSurface = Color(0xFF1E1E2E)
    val InversePrimary = Color(0xFF3730A3)
    
    // Scrim
    val Scrim = Color(0xFF000000)
}

/**
 * Light theme colors optimized for comic reading
 */
object LightThemeColors {
    // Primary colors - Fresh blue scheme
    val Primary = Color(0xFF3B82F6) // Blue
    val OnPrimary = Color(0xFFFFFFFF)
    val PrimaryContainer = Color(0xFFDBEAFE)
    val OnPrimaryContainer = Color(0xFF1E40AF)
    
    // Secondary colors
    val Secondary = Color(0xFF8B5CF6) // Purple
    val OnSecondary = Color(0xFFFFFFFF)
    val SecondaryContainer = Color(0xFFEDE9FE)
    val OnSecondaryContainer = Color(0xFF5B21B6)
    
    // Tertiary colors
    val Tertiary = Color(0xFFF59E0B) // Amber
    val OnTertiary = Color(0xFFFFFFFF)
    val TertiaryContainer = Color(0xFFFEF3C7)
    val OnTertiaryContainer = Color(0xFF92400E)
    
    // Background colors - Clean and crisp
    val Background = Color(0xFFFAFAFA) // Very light gray
    val OnBackground = Color(0xFF1F2937)
    val Surface = Color(0xFFFFFFFF) // Pure white
    val OnSurface = Color(0xFF1F2937)
    
    // Surface variants
    val SurfaceVariant = Color(0xFFF1F5F9)
    val OnSurfaceVariant = Color(0xFF64748B)
    val SurfaceTint = Primary
    
    // Outline colors
    val Outline = Color(0xFFCBD5E1)
    val OutlineVariant = Color(0xFFE2E8F0)
    
    // Error colors
    val Error = Color(0xFFDC2626) // Red
    val OnError = Color(0xFFFFFFFF)
    val ErrorContainer = Color(0xFFFEE2E2)
    val OnErrorContainer = Color(0xFF991B1B)
    
    // Inverse colors
    val InverseSurface = Color(0xFF374151)
    val InverseOnSurface = Color(0xFFF9FAFB)
    val InversePrimary = Color(0xFF60A5FA)
    
    // Scrim
    val Scrim = Color(0xFF000000)
}

private val DarkColorScheme = darkColorScheme(
    primary = DarkThemeColors.Primary,
    onPrimary = DarkThemeColors.OnPrimary,
    primaryContainer = DarkThemeColors.PrimaryContainer,
    onPrimaryContainer = DarkThemeColors.OnPrimaryContainer,
    secondary = DarkThemeColors.Secondary,
    onSecondary = DarkThemeColors.OnSecondary,
    secondaryContainer = DarkThemeColors.SecondaryContainer,
    onSecondaryContainer = DarkThemeColors.OnSecondaryContainer,
    tertiary = DarkThemeColors.Tertiary,
    onTertiary = DarkThemeColors.OnTertiary,
    tertiaryContainer = DarkThemeColors.TertiaryContainer,
    onTertiaryContainer = DarkThemeColors.OnTertiaryContainer,
    background = DarkThemeColors.Background,
    onBackground = DarkThemeColors.OnBackground,
    surface = DarkThemeColors.Surface,
    onSurface = DarkThemeColors.OnSurface,
    surfaceVariant = DarkThemeColors.SurfaceVariant,
    onSurfaceVariant = DarkThemeColors.OnSurfaceVariant,
    surfaceTint = DarkThemeColors.SurfaceTint,
    outline = DarkThemeColors.Outline,
    outlineVariant = DarkThemeColors.OutlineVariant,
    error = DarkThemeColors.Error,
    onError = DarkThemeColors.OnError,
    errorContainer = DarkThemeColors.ErrorContainer,
    onErrorContainer = DarkThemeColors.OnErrorContainer,
    inverseSurface = DarkThemeColors.InverseSurface,
    inverseOnSurface = DarkThemeColors.InverseOnSurface,
    inversePrimary = DarkThemeColors.InversePrimary,
    scrim = DarkThemeColors.Scrim
)

private val LightColorScheme = lightColorScheme(
    primary = LightThemeColors.Primary,
    onPrimary = LightThemeColors.OnPrimary,
    primaryContainer = LightThemeColors.PrimaryContainer,
    onPrimaryContainer = LightThemeColors.OnPrimaryContainer,
    secondary = LightThemeColors.Secondary,
    onSecondary = LightThemeColors.OnSecondary,
    secondaryContainer = LightThemeColors.SecondaryContainer,
    onSecondaryContainer = LightThemeColors.OnSecondaryContainer,
    tertiary = LightThemeColors.Tertiary,
    onTertiary = LightThemeColors.OnTertiary,
    tertiaryContainer = LightThemeColors.TertiaryContainer,
    onTertiaryContainer = LightThemeColors.OnTertiaryContainer,
    background = LightThemeColors.Background,
    onBackground = LightThemeColors.OnBackground,
    surface = LightThemeColors.Surface,
    onSurface = LightThemeColors.OnSurface,
    surfaceVariant = LightThemeColors.SurfaceVariant,
    onSurfaceVariant = LightThemeColors.OnSurfaceVariant,
    surfaceTint = LightThemeColors.SurfaceTint,
    outline = LightThemeColors.Outline,
    outlineVariant = LightThemeColors.OutlineVariant,
    error = LightThemeColors.Error,
    onError = LightThemeColors.OnError,
    errorContainer = LightThemeColors.ErrorContainer,
    onErrorContainer = LightThemeColors.OnErrorContainer,
    inverseSurface = LightThemeColors.InverseSurface,
    inverseOnSurface = LightThemeColors.InverseOnSurface,
    inversePrimary = LightThemeColors.InversePrimary,
    scrim = LightThemeColors.Scrim
)

/**
 * Mr.Comic theme with automatic dark/light switching
 */
@Composable
fun MrComicTheme(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit
) {
    val colorScheme = if (darkTheme) DarkColorScheme else LightColorScheme

    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        content = content
    )
}

/**
 * Force dark theme regardless of system setting
 */
@Composable
fun MrComicDarkTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = DarkColorScheme,
        typography = Typography,
        content = content
    )
}

/**
 * Force light theme regardless of system setting
 */
@Composable
fun MrComicLightTheme(
    content: @Composable () -> Unit
) {
    MaterialTheme(
        colorScheme = LightColorScheme,
        typography = Typography,
        content = content
    )
}