package io.leostrange.mrcomic.core.ui.theme

import android.os.Build
import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.ColorScheme
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
import io.leostrange.mrcomic.core.ui.designsystem.MrComicColorTokens
import io.leostrange.mrcomic.core.ui.designsystem.MrComicRadiusTokens
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode

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

/**
 * WCAG-aware contrast color selection.
 * At luminance ≈ 0.18 both black and white give ~4.5:1 contrast ratio (WCAG AA).
 * Above 0.18 → dark text is preferred; below → light text.
 */
private fun Color.contrastingOnColor(): Color =
    if (luminance() > 0.18f) Color(0xFF000000) else Color(0xFFFFFFFF)

private fun deriveContainerColor(base: Color, background: Color, isDark: Boolean): Color =
    lerp(background, base, if (isDark) 0.34f else 0.18f)

fun argbLongToThemeColor(value: Long): Color {
    val argb = if (value in 0x000000L..0x00FFFFFFL) {
        value or 0xFF000000L
    } else {
        value
    }
    return Color(argb.toInt())
}

internal fun applyCustomThemeColors(
    baseColorScheme: ColorScheme,
    themeConfig: ThemeConfig,
    isDarkTheme: Boolean
): ColorScheme {
    var result = baseColorScheme
    val backgroundColor = themeConfig.customBackgroundColor?.let(::argbLongToThemeColor) ?: result.background
    val surfaceBaseColor = themeConfig.customSurfaceColor?.let(::argbLongToThemeColor) ?: result.surface
    // Neutral anchor for surface container hierarchy — derived from surface, not background.
    // Prevents accent-tinted background (dynamic colors or customBackgroundColor) from leaking
    // into surfaceContainer*, surfaceDim, and surfaceBright via lerp().
    val surfaceAnchorBackground = lerp(
        baseColorScheme.surface,
        if (isDarkTheme) Color.Black else Color.White,
        if (isDarkTheme) 0.4f else 0.2f
    )
    val surfaceAlpha = themeConfig.surfaceOpacity.coerceIn(0.35f, 1f)
    val effectiveSurface = surfaceBaseColor.copy(alpha = surfaceAlpha)
    val onBackground = backgroundColor.contrastingOnColor()
    val onSurface = surfaceBaseColor.contrastingOnColor()

    // Stored as unsigned ARGB (toUInt().toLong()), reconstruct via toInt() for Color(Int) constructor.
    themeConfig.customPrimaryColor?.let {
        val primary = argbLongToThemeColor(it)
        val primaryContainer = deriveContainerColor(primary, backgroundColor, isDarkTheme)
        result = result.copy(
            primary = primary,
            onPrimary = primary.contrastingOnColor(),
            primaryContainer = primaryContainer,
            onPrimaryContainer = primaryContainer.contrastingOnColor()
        )
    }
    themeConfig.customSecondaryColor?.let {
        val secondary = argbLongToThemeColor(it)
        val secondaryContainer = deriveContainerColor(secondary, backgroundColor, isDarkTheme)
        result = result.copy(
            secondary = secondary,
            onSecondary = secondary.contrastingOnColor(),
            secondaryContainer = secondaryContainer,
            onSecondaryContainer = secondaryContainer.contrastingOnColor()
        )
    }
    if (themeConfig.customBackgroundColor != null) {
        result = result.copy(
            background = backgroundColor,
            onBackground = onBackground
        )
    }
    if (themeConfig.customSurfaceColor != null || themeConfig.surfaceOpacity < 0.999f) {
        val surfaceVariant = lerp(effectiveSurface, onSurface, if (isDarkTheme) 0.14f else 0.08f)
            .copy(alpha = surfaceAlpha)
        val surfaceDim = lerp(surfaceAnchorBackground, surfaceBaseColor, if (isDarkTheme) 0.78f else 0.9f)
            .copy(alpha = surfaceAlpha)
        val surfaceBright = lerp(surfaceBaseColor, onSurface, if (isDarkTheme) 0.1f else 0.04f)
            .copy(alpha = surfaceAlpha)
        val surfaceContainerLowest = lerp(surfaceAnchorBackground, surfaceBaseColor, if (isDarkTheme) 0.35f else 0.55f)
            .copy(alpha = surfaceAlpha)
        val surfaceContainerLow = lerp(surfaceAnchorBackground, surfaceBaseColor, if (isDarkTheme) 0.5f else 0.68f)
            .copy(alpha = surfaceAlpha)
        val surfaceContainer = lerp(surfaceAnchorBackground, surfaceBaseColor, if (isDarkTheme) 0.62f else 0.78f)
            .copy(alpha = surfaceAlpha)
        val surfaceContainerHigh = lerp(surfaceAnchorBackground, surfaceBaseColor, if (isDarkTheme) 0.72f else 0.86f)
            .copy(alpha = surfaceAlpha)
        val surfaceContainerHighest = lerp(surfaceBaseColor, onSurface, if (isDarkTheme) 0.08f else 0.05f)
            .copy(alpha = surfaceAlpha)
        result = result.copy(
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
            onSurfaceVariant = surfaceVariant.contrastingOnColor()
        )
    }
    return result
}

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

private val InkPaperLightColorScheme = MrComicColorTokens.inkPaperLight.let { p ->
    lightColorScheme(
        primary = p.primary,
        onPrimary = p.onPrimary,
        primaryContainer = p.primaryContainer,
        onPrimaryContainer = p.onPrimaryContainer,
        secondary = p.secondary,
        onSecondary = p.onSecondary,
        secondaryContainer = p.secondaryContainer,
        onSecondaryContainer = p.onSecondaryContainer,
        tertiary = p.tertiary,
        onTertiary = p.onTertiary,
        tertiaryContainer = p.tertiaryContainer,
        onTertiaryContainer = p.onTertiaryContainer,
        background = p.background,
        onBackground = p.onBackground,
        surface = p.surface,
        onSurface = p.onSurface,
        surfaceVariant = p.surfaceVariant,
        onSurfaceVariant = p.onSurfaceVariant,
        surfaceContainerLowest  = p.surfaceContainerLowest,
        surfaceContainerLow     = p.surfaceContainerLow,
        surfaceContainer        = p.surfaceContainer,
        surfaceContainerHigh    = p.surfaceContainerHigh,
        surfaceContainerHighest = p.surfaceContainerHighest,
        outline = p.outline,
        outlineVariant = p.outlineVariant,
        error = p.error,
        onError = p.onError,
        errorContainer = p.errorContainer,
        onErrorContainer = p.onErrorContainer
    )
}

private val InkPaperDarkColorScheme = MrComicColorTokens.inkPaperDark.let { p ->
    darkColorScheme(
        primary = p.primary,
        onPrimary = p.onPrimary,
        primaryContainer = p.primaryContainer,
        onPrimaryContainer = p.onPrimaryContainer,
        secondary = p.secondary,
        onSecondary = p.onSecondary,
        secondaryContainer = p.secondaryContainer,
        onSecondaryContainer = p.onSecondaryContainer,
        tertiary = p.tertiary,
        onTertiary = p.onTertiary,
        tertiaryContainer = p.tertiaryContainer,
        onTertiaryContainer = p.onTertiaryContainer,
        background = p.background,
        onBackground = p.onBackground,
        surface = p.surface,
        onSurface = p.onSurface,
        surfaceVariant = p.surfaceVariant,
        onSurfaceVariant = p.onSurfaceVariant,
        surfaceContainerLowest  = p.surfaceContainerLowest,
        surfaceContainerLow     = p.surfaceContainerLow,
        surfaceContainer        = p.surfaceContainer,
        surfaceContainerHigh    = p.surfaceContainerHigh,
        surfaceContainerHighest = p.surfaceContainerHighest,
        outline = p.outline,
        outlineVariant = p.outlineVariant,
        error = p.error,
        onError = p.onError,
        errorContainer = p.errorContainer,
        onErrorContainer = p.onErrorContainer
    )
}

@Composable
fun MrComicTheme(
    themeConfig: ThemeConfig = ThemeConfig(),
    cornerRadius: Int = MrComicRadiusTokens.DefaultCornerRadius,
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

        applyCustomThemeColors(
            baseColorScheme = baseColorScheme,
            themeConfig = themeConfig,
            isDarkTheme = darkTheme || themeConfig.useAmoledDark
        )
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
        typography = MrComicTypography,
        shapes = shapes,
        content = content
    )
}
