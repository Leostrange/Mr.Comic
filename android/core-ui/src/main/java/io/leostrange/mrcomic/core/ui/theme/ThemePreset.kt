package io.leostrange.mrcomic.core.ui.theme

import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.ui.designsystem.MrComicColorTokens
import io.leostrange.mrcomic.core.ui.designsystem.MrComicThemePresetTokens
import io.leostrange.mrcomic.core.ui.designsystem.mrComicArgbColor

// ─────────────────────────────────────────────────────────────────────────────
// Theme presets — ready-made color configurations.
// CUSTOM = user's manual settings (no preset applied).
// ─────────────────────────────────────────────────────────────────────────────

enum class ThemePreset {
    CUSTOM,
    PAPER,   // Classic warm paper — light, brown accents
    GLASS,   // Pale glassy surfaces with cool blue accents
    AMOLED,  // Pure-black AMOLED dark
    NEON,    // Dark with neon pink & cyan
    GRAY,    // Minimal gray — neutral and calm
    SEPIA,   // Warm sepia tones
    EINK     // High-contrast black & white
}

data class ThemePresetConfig(
    val themeMode: ThemeMode,
    val useDynamicColor: Boolean,
    val useAmoledDark: Boolean,
    /** null = keep Material default for this slot */
    val primaryColor: Long?,
    val secondaryColor: Long?,
    val backgroundColor: Long?
)

fun ThemePreset.toConfig(): ThemePresetConfig = when (this) {
    ThemePreset.CUSTOM -> ThemePresetConfig(
        themeMode = ThemeMode.SYSTEM,
        useDynamicColor = true,
        useAmoledDark = false,
        primaryColor = null,
        secondaryColor = null,
        backgroundColor = null
    )
    ThemePreset.PAPER -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = MrComicThemePresetTokens.paper.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.paper.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.paper.backgroundArgb
    )
    ThemePreset.GLASS -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = MrComicThemePresetTokens.glass.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.glass.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.glass.backgroundArgb
    )
    ThemePreset.AMOLED -> ThemePresetConfig(
        themeMode = ThemeMode.DARK,
        useDynamicColor = false,
        useAmoledDark = true,
        primaryColor = MrComicThemePresetTokens.amoled.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.amoled.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.amoled.backgroundArgb
    )
    ThemePreset.NEON -> ThemePresetConfig(
        themeMode = ThemeMode.DARK,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = MrComicThemePresetTokens.neon.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.neon.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.neon.backgroundArgb
    )
    ThemePreset.GRAY -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = MrComicThemePresetTokens.gray.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.gray.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.gray.backgroundArgb
    )
    ThemePreset.SEPIA -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = MrComicThemePresetTokens.sepia.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.sepia.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.sepia.backgroundArgb
    )
    ThemePreset.EINK -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = MrComicThemePresetTokens.eink.primaryArgb,
        secondaryColor = MrComicThemePresetTokens.eink.secondaryArgb,
        backgroundColor = MrComicThemePresetTokens.eink.backgroundArgb
    )
}

/** Preview colors shown on the preset card thumbnail */
data class ThemePresetPreview(
    val bg: Color,
    val primary: Color,
    val secondary: Color
)

fun ThemePreset.previewColors(): ThemePresetPreview = when (this) {
    ThemePreset.CUSTOM -> ThemePresetPreview(
        mrComicArgbColor(MrComicColorTokens.InkPaperBackgroundArgb),
        mrComicArgbColor(MrComicColorTokens.InkPaperPrimaryArgb),
        mrComicArgbColor(MrComicColorTokens.InkPaperSecondaryArgb)
    )
    ThemePreset.PAPER -> MrComicThemePresetTokens.paper.toPreview()
    ThemePreset.GLASS -> MrComicThemePresetTokens.glass.toPreview()
    // AMOLED preview intentionally keeps a pure black background instead of
    // deriving from the regular dark token surface.
    ThemePreset.AMOLED -> ThemePresetPreview(
        Color(0xFF000000),
        mrComicArgbColor(MrComicColorTokens.InkPaperDarkPrimaryArgb),
        mrComicArgbColor(MrComicColorTokens.InkPaperDarkSecondaryArgb)
    )
    ThemePreset.NEON -> MrComicThemePresetTokens.neon.toPreview()
    ThemePreset.GRAY -> MrComicThemePresetTokens.gray.toPreview()
    ThemePreset.SEPIA -> MrComicThemePresetTokens.sepia.toPreview()
    ThemePreset.EINK -> MrComicThemePresetTokens.eink.toPreview()
}

private fun io.leostrange.mrcomic.core.ui.designsystem.MrComicThemePresetToken.toPreview(): ThemePresetPreview =
    ThemePresetPreview(
        bg = mrComicArgbColor(backgroundArgb ?: 0xFF000000L),
        primary = mrComicArgbColor(primaryArgb ?: MrComicColorTokens.InkPaperPrimaryArgb),
        secondary = mrComicArgbColor(secondaryArgb ?: MrComicColorTokens.InkPaperSecondaryArgb)
    )
