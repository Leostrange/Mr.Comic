package com.example.core.ui.theme

import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.ColorScheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.runtime.CompositionLocalProvider
import androidx.compose.runtime.compositionLocalOf
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.platform.LocalContext

/**
 * Theme preference options for the app
 */
enum class ThemeMode {
    SYSTEM,    // Follow system theme
    LIGHT,     // Always light
    DARK,      // Always dark
    DYNAMIC    // Use Material You dynamic colors (Android 12+)
}

/**
 * Theme configuration data class
 */
data class ThemeConfig(
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val useDynamicColor: Boolean = true,
    val useAmoledDark: Boolean = false
)

/**
 * Local composition for theme configuration
 */
val LocalThemeConfig = compositionLocalOf { ThemeConfig() }

/**
 * Main MrComic theme composable with full Material Design 3 support
 * 
 * Features:
 * - Material You dynamic colors (Android 12+)
 * - Custom comic-inspired color schemes
 * - AMOLED dark theme option
 * - Proper typography and shapes
 * - Theme persistence support
 */
@Composable
fun MrComicTheme(
    themeConfig: ThemeConfig = ThemeConfig(),
    content: @Composable () -> Unit
) {
    val context = LocalContext.current
    val isSystemDark = isSystemInDarkTheme()
    
    // Determine if we should use dark theme
    val useDarkTheme = when (themeConfig.themeMode) {
        ThemeMode.SYSTEM -> isSystemDark
        ThemeMode.LIGHT -> false
        ThemeMode.DARK -> true
        ThemeMode.DYNAMIC -> isSystemDark
    }
    
    // Determine color scheme
    val colorScheme = when {
        // Use dynamic colors on Android 12+ if enabled
        themeConfig.useDynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
            if (useDarkTheme) {
                dynamicDarkColorScheme(context)
            } else {
                dynamicLightColorScheme(context)
            }
        }
        // Use AMOLED dark theme if enabled
        themeConfig.useAmoledDark && useDarkTheme -> {
            createAmoledDarkColorScheme()
        }
        // Use custom color schemes
        useDarkTheme -> DarkColorScheme
        else -> LightColorScheme
    }
    
    // Apply theme
    CompositionLocalProvider(LocalThemeConfig provides themeConfig) {
        MaterialTheme(
            colorScheme = colorScheme,
            typography = Typography,
            shapes = Shapes,
            content = {
                // Применяем тему к системным панелям
                SystemBarsTheme(
                    darkTheme = useDarkTheme,
                    statusBarColor = colorScheme.surface.copy(alpha = 0.8f),
                    navigationBarColor = colorScheme.surface.copy(alpha = 0.9f)
                )
                content()
            }
        )
    }
}

/**
 * Creates AMOLED-friendly dark color scheme with pure black background
 */
private fun createAmoledDarkColorScheme(): ColorScheme {
    return DarkColorScheme.copy(
        background = androidx.compose.ui.graphics.Color.Black,
        surface = androidx.compose.ui.graphics.Color.Black,
        surfaceVariant = androidx.compose.ui.graphics.Color(0xFF0A0A0A)
    )
}

/**
 * Creates sepia color scheme for comfortable reading
 */
fun createSepiaColorScheme(): ColorScheme {
    return LightColorScheme.copy(
        background = androidx.compose.ui.graphics.Color(0xFFF5F1E8), // Sepia background
        surface = androidx.compose.ui.graphics.Color(0xFFF5F1E8),
        surfaceVariant = androidx.compose.ui.graphics.Color(0xFFEDE8DF),
        onBackground = androidx.compose.ui.graphics.Color(0xFF3D3D3D), // Dark brown text
        onSurface = androidx.compose.ui.graphics.Color(0xFF3D3D3D),
        onSurfaceVariant = androidx.compose.ui.graphics.Color(0xFF5D5D5D),
        primary = androidx.compose.ui.graphics.Color(0xFF8B4513), // Saddle brown
        onPrimary = androidx.compose.ui.graphics.Color.White,
        primaryContainer = androidx.compose.ui.graphics.Color(0xFFD2B48C), // Tan
        onPrimaryContainer = androidx.compose.ui.graphics.Color(0xFF3D3D3D)
    )
}

/**
 * Creates pure black color scheme for reader AMOLED mode
 */
fun createReaderBlackColorScheme(): ColorScheme {
    return DarkColorScheme.copy(
        background = androidx.compose.ui.graphics.Color.Black,
        surface = androidx.compose.ui.graphics.Color.Black,
        surfaceVariant = androidx.compose.ui.graphics.Color(0xFF000000),
        onBackground = androidx.compose.ui.graphics.Color.White,
        onSurface = androidx.compose.ui.graphics.Color.White,
        primary = androidx.compose.ui.graphics.Color(0xFF808080), // Gray
        onPrimary = androidx.compose.ui.graphics.Color.Black
    )
}

/**
 * Preview theme for development
 */
@Composable
fun MrComicThemePreview(
    darkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit
) {
    val themeConfig = ThemeConfig(
        themeMode = if (darkTheme) ThemeMode.DARK else ThemeMode.LIGHT,
        useDynamicColor = false
    )
    
    MrComicTheme(
        themeConfig = themeConfig,
        content = content
    )
}

/**
 * Force dark theme for specific screens (like reader)
 */
@Composable
fun MrComicDarkTheme(
    useAmoled: Boolean = false,
    content: @Composable () -> Unit
) {
    val themeConfig = ThemeConfig(
        themeMode = ThemeMode.DARK,
        useDynamicColor = false,
        useAmoledDark = useAmoled
    )
    
    MrComicTheme(
        themeConfig = themeConfig,
        content = content
    )
}

/**
 * Force light theme for specific screens
 */
@Composable
fun MrComicLightTheme(
    content: @Composable () -> Unit
) {
    val themeConfig = ThemeConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false
    )
    
    MrComicTheme(
        themeConfig = themeConfig,
        content = content
    )
}

/**
 * Dynamic theme that respects user preferences
 */
@Composable
fun MrComicDynamicTheme(
    content: @Composable () -> Unit
) {
    val themeConfig = ThemeConfig(
        themeMode = ThemeMode.DYNAMIC,
        useDynamicColor = true
    )
    
    MrComicTheme(
        themeConfig = themeConfig,
        content = content
    )
}

/**
 * Reader-specific theme composable
 * Applies appropriate color scheme based on reader theme preferences
 */
@Composable
fun MrComicReaderTheme(
    readerThemeConfig: ReaderThemeConfig,
    appThemeConfig: ThemeConfig = ThemeConfig(),
    content: @Composable () -> Unit
) {
    val context = LocalContext.current
    val isSystemDark = isSystemInDarkTheme()
    
    // Determine color scheme based on reader theme mode
    val colorScheme = when (readerThemeConfig.themeMode) {
        ReaderThemeMode.SYSTEM -> {
            // Follow app theme
            when (appThemeConfig.themeMode) {
                ThemeMode.SYSTEM -> if (isSystemDark) DarkColorScheme else LightColorScheme
                ThemeMode.LIGHT -> LightColorScheme
                ThemeMode.DARK -> if (readerThemeConfig.useAmoled) createAmoledDarkColorScheme() else DarkColorScheme
                ThemeMode.DYNAMIC -> {
                    if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.S && appThemeConfig.useDynamicColor) {
                        if (isSystemDark) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
                    } else {
                        if (isSystemDark) DarkColorScheme else LightColorScheme
                    }
                }
            }
        }
        ReaderThemeMode.LIGHT -> LightColorScheme
        ReaderThemeMode.DARK -> {
            if (readerThemeConfig.useAmoled) createAmoledDarkColorScheme() else DarkColorScheme
        }
        ReaderThemeMode.SEPIA -> createSepiaColorScheme()
        ReaderThemeMode.BLACK -> createReaderBlackColorScheme()
    }
    
    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        shapes = Shapes,
        content = {
            // Apply reader-specific system bars
            SystemBarsTheme(
                darkTheme = colorScheme.background.luminance() < 0.5f,
                statusBarColor = colorScheme.surface.copy(alpha = 0.3f),
                navigationBarColor = colorScheme.surface.copy(alpha = 0.3f)
            )
            content()
        }
    )
}
