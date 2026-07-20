package io.leostrange.mrcomic.core.ui.theme

import androidx.compose.material3.Typography
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontWeight
import io.leostrange.mrcomic.core.ui.designsystem.MrComicTypographyTokens

/**
 * Material 3 Typography wired to the Mr.Comic design-system type scale.
 *
 * The design system uses Roboto for all UI chrome (body, labels, titles, display),
 * which is Material 3's default font family — so no custom font download is required.
 * Sizes, weights, line-heights, and letter-spacings are taken verbatim from
 * `colors_and_type.css` / `Tokens.jsx` in the design-system handoff.
 */
val MrComicTypography = Typography(
    displayLarge = TextStyle(
        fontSize = MrComicTypographyTokens.x4l,
        fontWeight = FontWeight.Black,
        lineHeight = MrComicTypographyTokens.x4l * MrComicTypographyTokens.LineHeight.tight,
        letterSpacing = MrComicTypographyTokens.LetterSpacing.display
    ),
    displayMedium = TextStyle(
        fontSize = MrComicTypographyTokens.x3l,
        fontWeight = FontWeight.Bold,
        lineHeight = MrComicTypographyTokens.x3l * MrComicTypographyTokens.LineHeight.tight,
        letterSpacing = MrComicTypographyTokens.LetterSpacing.display
    ),
    displaySmall = TextStyle(
        fontSize = MrComicTypographyTokens.x2l,
        fontWeight = FontWeight.Bold,
        lineHeight = MrComicTypographyTokens.x2l * MrComicTypographyTokens.LineHeight.snug
    ),
    headlineLarge = TextStyle(
        fontSize = MrComicTypographyTokens.x3l,
        fontWeight = FontWeight.Bold,
        lineHeight = MrComicTypographyTokens.x3l * MrComicTypographyTokens.LineHeight.tight
    ),
    headlineMedium = TextStyle(
        fontSize = MrComicTypographyTokens.x2l,
        fontWeight = FontWeight.Bold,
        lineHeight = MrComicTypographyTokens.x2l * MrComicTypographyTokens.LineHeight.snug
    ),
    headlineSmall = TextStyle(
        fontSize = MrComicTypographyTokens.xl,
        fontWeight = FontWeight.SemiBold,
        lineHeight = MrComicTypographyTokens.xl * MrComicTypographyTokens.LineHeight.snug
    ),
    titleLarge = TextStyle(
        fontSize = MrComicTypographyTokens.xl,
        fontWeight = FontWeight.SemiBold,
        lineHeight = MrComicTypographyTokens.xl * MrComicTypographyTokens.LineHeight.snug
    ),
    titleMedium = TextStyle(
        fontSize = MrComicTypographyTokens.lg,
        fontWeight = FontWeight.Medium,
        lineHeight = MrComicTypographyTokens.lg * MrComicTypographyTokens.LineHeight.normal
    ),
    titleSmall = TextStyle(
        fontSize = MrComicTypographyTokens.md,
        fontWeight = FontWeight.Medium,
        lineHeight = MrComicTypographyTokens.md * MrComicTypographyTokens.LineHeight.normal
    ),
    bodyLarge = TextStyle(
        fontSize = MrComicTypographyTokens.md,
        fontWeight = FontWeight.Normal,
        lineHeight = MrComicTypographyTokens.md * MrComicTypographyTokens.LineHeight.normal
    ),
    bodyMedium = TextStyle(
        fontSize = MrComicTypographyTokens.base,
        fontWeight = FontWeight.Normal,
        lineHeight = MrComicTypographyTokens.base * MrComicTypographyTokens.LineHeight.relaxed
    ),
    bodySmall = TextStyle(
        fontSize = MrComicTypographyTokens.sm,
        fontWeight = FontWeight.Normal,
        lineHeight = MrComicTypographyTokens.sm * MrComicTypographyTokens.LineHeight.normal
    ),
    labelLarge = TextStyle(
        fontSize = MrComicTypographyTokens.base,
        fontWeight = FontWeight.Medium,
        lineHeight = MrComicTypographyTokens.base * MrComicTypographyTokens.LineHeight.tight
    ),
    labelMedium = TextStyle(
        fontSize = MrComicTypographyTokens.sm,
        fontWeight = FontWeight.Medium,
        lineHeight = MrComicTypographyTokens.sm * MrComicTypographyTokens.LineHeight.tight
    ),
    labelSmall = TextStyle(
        fontSize = MrComicTypographyTokens.xs,
        fontWeight = FontWeight.Medium,
        lineHeight = MrComicTypographyTokens.xs * MrComicTypographyTokens.LineHeight.tight
    )
)
