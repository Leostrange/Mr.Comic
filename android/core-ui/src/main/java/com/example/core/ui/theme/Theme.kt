package com.example.core.ui.theme

import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Shapes
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.dynamicDarkColorScheme
import androidx.compose.material3.dynamicLightColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.dp
import com.example.core.ui.eink.LocalEInkMode

enum class ThemeMode {
    SYSTEM,
    LIGHT,
    DARK,
    DYNAMIC
}

data class ThemeConfig(
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val useDynamicColor: Boolean = true,
    val useAmoledDark: Boolean = false,
    /** Stored as ARGB Long (e.g. 0xFF6200EE). null = use Material default */
    val customPrimaryColor: Long? = null,
    val customSecondaryColor: Long? = null,
    val customBackgroundColor: Long? = null,
    val customSurfaceColor: Long? = null,
    val surfaceOpacity: Float = 1f
)

private fun Color.contentColorForBackground(): Color =
    if (luminance() > 0.58f) Color(0xFF171717) else Color(0xFFF8F7F3)

private fun deriveContainerColor(base: Color, background: Color, isDark: Boolean): Color =
    lerp(background, base, if (isDark) 0.34f else 0.18f)

/**
 * High-contrast grayscale color scheme for e-ink / e-paper displays.
 * No saturated colors — only black, white, and dark gray shades.
 * Maximises readability on monochrome / limited-color e-ink panels.
 */
private val EInkColorScheme = lightColorScheme(
    primary              = Color.Black,
    onPrimary            = Color.White,
    primaryContainer     = Color(0xFFDDDDDD),
    onPrimaryContainer   = Color.Black,
    secondary            = Color(0xFF333333),
    onSecondary          = Color.White,
    secondaryContainer   = Color(0xFFEEEEEE),
    onSecondaryContainer = Color.Black,
    tertiary             = Color(0xFF555555),
    onTertiary           = Color.White,
    background           = Color.White,
    onBackground         = Color.Black,
    surface              = Color.White,
    onSurface            = Color.Black,
    surfaceVariant       = Color(0xFFEEEEEE),
    onSurfaceVariant     = Color(0xFF333333),
    outline              = Color(0xFF888888),
    error                = Color(0xFF880000),
    onError              = Color.White,
)

private val InkPaperLightColorScheme = lightColorScheme(
    primary = Color(0xFF26415F),
    onPrimary = Color(0xFFFFFBF5),
    primaryContainer = Color(0xFFDCE7F6),
    onPrimaryContainer = Color(0xFF10243D),
    secondary = Color(0xFF9A7241),
    onSecondary = Color(0xFFFFF8EF),
    secondaryContainer = Color(0xFFF2E3CC),
    onSecondaryContainer = Color(0xFF3A2710),
    tertiary = Color(0xFF50684B),
    onTertiary = Color.White,
    tertiaryContainer = Color(0xFFD7E8CF),
    onTertiaryContainer = Color(0xFF10200D),
    background = Color(0xFFF6F1E7),
    onBackground = Color(0xFF1B1B18),
    surface = Color(0xFFFFFBF5),
    onSurface = Color(0xFF1B1B18),
    surfaceVariant = Color(0xFFE7DED0),
    onSurfaceVariant = Color(0xFF4C473F),
    outline = Color(0xFF7C756A),
    outlineVariant = Color(0xFFCBC3B8),
    error = Color(0xFFB3261E),
    onError = Color.White,
    errorContainer = Color(0xFFF9DEDC),
    onErrorContainer = Color(0xFF410E0B)
)

private val InkPaperDarkColorScheme = darkColorScheme(
    primary = Color(0xFFAEC8EF),
    onPrimary = Color(0xFF10243D),
    primaryContainer = Color(0xFF294567),
    onPrimaryContainer = Color(0xFFDCE7F6),
    secondary = Color(0xFFE6C79B),
    onSecondary = Color(0xFF463117),
    secondaryContainer = Color(0xFF5D4422),
    onSecondaryContainer = Color(0xFFF7E3CC),
    tertiary = Color(0xFFB7CFB1),
    onTertiary = Color(0xFF243421),
    tertiaryContainer = Color(0xFF384D34),
    onTertiaryContainer = Color(0xFFD7E8CF),
    background = Color(0xFF10161D),
    onBackground = Color(0xFFE8E1D4),
    surface = Color(0xFF151C24),
    onSurface = Color(0xFFE8E1D4),
    surfaceVariant = Color(0xFF3A444F),
    onSurfaceVariant = Color(0xFFC0C7CF),
    outline = Color(0xFF89929B),
    outlineVariant = Color(0xFF414B55),
    error = Color(0xFFF2B8B5),
    onError = Color(0xFF601410),
    errorContainer = Color(0xFF8C1D18),
    onErrorContainer = Color(0xFFF9DEDC)
)

@Composable
fun MrComicTheme(
    themeConfig: ThemeConfig = ThemeConfig(),
    cornerRadius: Int = 12,
    content: @Composable () -> Unit
) {
    val isEInk = LocalEInkMode.current
    val context = LocalContext.current
    val systemDark = isSystemInDarkTheme()

    val colorScheme = if (isEInk) {
        // On e-ink: always use the high-contrast grayscale scheme.
        // Ignore user theme settings — e-ink panels are typically monochrome
        // or have a very limited color gamut where Material colors are meaningless.
        EInkColorScheme
    } else {
        val darkTheme = when (themeConfig.themeMode) {
            ThemeMode.SYSTEM  -> systemDark
            ThemeMode.LIGHT   -> false
            ThemeMode.DARK    -> true
            ThemeMode.DYNAMIC -> systemDark
        }

        val baseColorScheme = when {
            themeConfig.useDynamicColor && Build.VERSION.SDK_INT >= Build.VERSION_CODES.S -> {
                if (darkTheme) dynamicDarkColorScheme(context) else dynamicLightColorScheme(context)
            }
            darkTheme && themeConfig.useAmoledDark -> {
                InkPaperDarkColorScheme.copy(
                    background = Color.Black,
                    surface = Color.Black
                )
            }
            darkTheme -> InkPaperDarkColorScheme
            else -> InkPaperLightColorScheme
        }

        // Apply per-element custom colors on top of the base scheme
        baseColorScheme.let { s ->
            var result = s
            val isDarkTheme = darkTheme || themeConfig.useAmoledDark
            val backgroundColor = themeConfig.customBackgroundColor?.let { Color(it.toInt()) } ?: result.background
            val surfaceBaseColor = themeConfig.customSurfaceColor?.let { Color(it.toInt()) }
                ?: lerp(backgroundColor, if (isDarkTheme) Color.White else Color.Black, if (isDarkTheme) 0.06f else 0.03f)
            val surfaceAlpha = themeConfig.surfaceOpacity.coerceIn(0.55f, 1f)
            val effectiveSurface = surfaceBaseColor.copy(alpha = surfaceAlpha)
            val onBackground = backgroundColor.contentColorForBackground()
            val onSurface = surfaceBaseColor.contentColorForBackground()

            // Stored as unsigned ARGB (toUInt().toLong()), reconstruct via toInt() for Color(Int) constructor
            themeConfig.customPrimaryColor?.let {
                val primary = Color(it.toInt())
                val primaryContainer = deriveContainerColor(primary, backgroundColor, isDarkTheme)
                result = result.copy(
                    primary = primary,
                    onPrimary = primary.contentColorForBackground(),
                    primaryContainer = primaryContainer,
                    onPrimaryContainer = primaryContainer.contentColorForBackground()
                )
            }
            themeConfig.customSecondaryColor?.let {
                val secondary = Color(it.toInt())
                val secondaryContainer = deriveContainerColor(secondary, backgroundColor, isDarkTheme)
                result = result.copy(
                    secondary = secondary,
                    onSecondary = secondary.contentColorForBackground(),
                    secondaryContainer = secondaryContainer,
                    onSecondaryContainer = secondaryContainer.contentColorForBackground()
                )
            }
            if (themeConfig.customBackgroundColor != null || themeConfig.customSurfaceColor != null || themeConfig.surfaceOpacity < 0.999f) {
                val surfaceVariant = lerp(effectiveSurface, onSurface, if (isDarkTheme) 0.14f else 0.08f)
                    .copy(alpha = surfaceAlpha)
                val surfaceDim = lerp(backgroundColor, surfaceBaseColor, if (isDarkTheme) 0.78f else 0.9f)
                    .copy(alpha = surfaceAlpha)
                val surfaceBright = lerp(surfaceBaseColor, onSurface, if (isDarkTheme) 0.1f else 0.04f)
                    .copy(alpha = surfaceAlpha)
                val surfaceContainerLowest = lerp(backgroundColor, surfaceBaseColor, if (isDarkTheme) 0.35f else 0.55f)
                    .copy(alpha = surfaceAlpha)
                val surfaceContainerLow = lerp(backgroundColor, surfaceBaseColor, if (isDarkTheme) 0.5f else 0.68f)
                    .copy(alpha = surfaceAlpha)
                val surfaceContainer = lerp(backgroundColor, surfaceBaseColor, if (isDarkTheme) 0.62f else 0.78f)
                    .copy(alpha = surfaceAlpha)
                val surfaceContainerHigh = lerp(backgroundColor, surfaceBaseColor, if (isDarkTheme) 0.72f else 0.86f)
                    .copy(alpha = surfaceAlpha)
                val surfaceContainerHighest = lerp(surfaceBaseColor, onSurface, if (isDarkTheme) 0.08f else 0.05f)
                    .copy(alpha = surfaceAlpha)
                result = result.copy(
                    background = backgroundColor,
                    onBackground = onBackground,
                    surfaceDim = surfaceDim,
                    surface = effectiveSurface,
                    surfaceBright = surfaceBright,
                    surfaceContainerLowest = surfaceContainerLowest,
                    surfaceContainerLow = surfaceContainerLow,
                    surfaceContainer = surfaceContainer,
                    surfaceContainerHigh = surfaceContainerHigh,
                    surfaceContainerHighest = surfaceContainerHighest,
                    onSurface = onSurface,
                    surfaceVariant = surfaceVariant,
                    onSurfaceVariant = surfaceVariant.contentColorForBackground(),
                    outline = lerp(backgroundColor, onBackground, if (isDarkTheme) 0.48f else 0.28f),
                    outlineVariant = lerp(backgroundColor, onBackground, if (isDarkTheme) 0.28f else 0.16f)
                )
            }
            result
        }
    }

    val r = cornerRadius.dp
    val shapes = Shapes(
        extraSmall = RoundedCornerShape(r * 0.33f),
        small       = RoundedCornerShape(r * 0.5f),
        medium      = RoundedCornerShape(r),
        large       = RoundedCornerShape(r * 1.33f),
        extraLarge  = RoundedCornerShape(r * 2f)
    )

    MaterialTheme(
        colorScheme = colorScheme,
        shapes = shapes,
        content = content
    )
}
