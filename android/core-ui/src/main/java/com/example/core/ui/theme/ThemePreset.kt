package com.example.core.ui.theme

import androidx.compose.ui.graphics.Color

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
        primaryColor  = 0xFF5D4037L,   // deep brown
        secondaryColor = 0xFF8D6E63L,  // light brown
        backgroundColor = 0xFFFFF8F0L  // warm off-white
    )
    ThemePreset.GLASS -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor = 0xFF6F94C9L,
        secondaryColor = 0xFFC9D9F1L,
        backgroundColor = 0xFFF2F7FDL
    )
    ThemePreset.AMOLED -> ThemePresetConfig(
        themeMode = ThemeMode.DARK,
        useDynamicColor = false,
        useAmoledDark = true,
        primaryColor  = 0xFFAEC8EFL,   // soft ink blue
        secondaryColor = null,
        backgroundColor = null         // pure black via useAmoledDark
    )
    ThemePreset.NEON -> ThemePresetConfig(
        themeMode = ThemeMode.DARK,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor  = 0xFFE91E63L,   // neon pink
        secondaryColor = 0xFF00BCD4L,  // neon cyan
        backgroundColor = 0xFF0D0D1AL  // very dark navy
    )
    ThemePreset.GRAY -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor  = 0xFF455A64L,   // blue-gray
        secondaryColor = null,
        backgroundColor = 0xFFF5F5F5L  // near-white
    )
    ThemePreset.SEPIA -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor  = 0xFF8B6914L,   // gold-brown
        secondaryColor = 0xFFBC8B2AL,  // lighter gold
        backgroundColor = 0xFFF4ECD8L  // sepia parchment
    )
    ThemePreset.EINK -> ThemePresetConfig(
        themeMode = ThemeMode.LIGHT,
        useDynamicColor = false,
        useAmoledDark = false,
        primaryColor  = 0xFF000000L,   // pure black
        secondaryColor = 0xFF333333L,  // dark gray
        backgroundColor = 0xFFFFFFFFL  // pure white
    )
}

/** Preview colors shown on the preset card thumbnail */
data class ThemePresetPreview(
    val bg: Color,
    val primary: Color,
    val secondary: Color
)

fun ThemePreset.previewColors(): ThemePresetPreview = when (this) {
    ThemePreset.CUSTOM  -> ThemePresetPreview(Color(0xFFF6F1E7), Color(0xFF26415F), Color(0xFF9A7241))
    ThemePreset.PAPER   -> ThemePresetPreview(Color(0xFFFFF8F0), Color(0xFF5D4037), Color(0xFF8D6E63))
    ThemePreset.GLASS   -> ThemePresetPreview(Color(0xFFF2F7FD), Color(0xFF6F94C9), Color(0xFFC9D9F1))
    ThemePreset.AMOLED  -> ThemePresetPreview(Color(0xFF000000), Color(0xFFAEC8EF), Color(0xFFE6C79B))
    ThemePreset.NEON    -> ThemePresetPreview(Color(0xFF0D0D1A), Color(0xFFE91E63), Color(0xFF00BCD4))
    ThemePreset.GRAY    -> ThemePresetPreview(Color(0xFFF5F5F5), Color(0xFF455A64), Color(0xFF78909C))
    ThemePreset.SEPIA   -> ThemePresetPreview(Color(0xFFF4ECD8), Color(0xFF8B6914), Color(0xFFBC8B2A))
    ThemePreset.EINK    -> ThemePresetPreview(Color(0xFFFFFFFF), Color(0xFF000000), Color(0xFF333333))
}
