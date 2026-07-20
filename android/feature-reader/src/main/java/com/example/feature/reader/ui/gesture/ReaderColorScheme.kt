package com.example.feature.reader.ui.gesture

import com.example.core.ui.theme.ReadingPreset

/**
 * Pure color-scheme mapping for the reader.
 *
 * Extracted from ReaderScreen so the color-palette logic can be tested
 * without Compose/Android dependencies. All functions are stateless.
 */
internal object ReaderColorScheme {

    /** Background → foreground color pair for a named color scheme. */
    fun palette(scheme: String): Pair<String, String> = when (scheme) {
        "SEPIA" -> "#f4ecd8" to "#3b2a1a"
        "NIGHT" -> "#1a1a1a" to "#e8e8e8"
        else    -> "#fafafa"  to "#1a1a1a"
    }

    /**
     * Background → foreground color pair for a named scheme + preset combination.
     * Preset-specific overrides (e.g. OLED_BLACK pure black) take priority.
     */
    fun paletteForPreset(
        scheme: String,
        readerPreset: ReadingPreset
    ): Pair<String, String> = when {
        scheme == "SEPIA" && readerPreset == ReadingPreset.SEPIA_BOOK -> "#f4ecd8" to "#352618"
        scheme == "DAY" && readerPreset == ReadingPreset.NEWSPAPER -> "#f1eee7" to "#202020"
        scheme == "NIGHT" && readerPreset == ReadingPreset.OLED_BLACK -> "#000000" to "#f2f5f7"
        scheme == "DAY" && readerPreset == ReadingPreset.PAPER -> "#f6f1e7" to "#2b2118"
        scheme == "DAY" && readerPreset == ReadingPreset.EINK -> "#f0efe9" to "#121212"
        else -> palette(scheme)
    }

    /** Default accent color based on background brightness. */
    fun defaultAccentColor(backgroundColor: String): String = when {
        backgroundColor.equals("#1a1a1a", ignoreCase = true) -> "#5ab4dc"
        backgroundColor.equals("#000000", ignoreCase = true) -> "#5ab4dc"
        else -> "#1a6f9a"
    }

    /** Hex override from a nullable Long color value. */
    fun overrideHex(value: Long?): String? =
        value?.let { String.format(java.util.Locale.US, "#%08X", it) }

    /** Validates and normalizes a color override string (e.g. "#FF112233"). */
    fun normalizeOverrideColor(value: String?): String? {
        val normalized = value?.trim().orEmpty()
        return normalized.takeIf { it.isNotEmpty() && COLOR_HEX_REGEX.matches(it) }
    }

    private val COLOR_HEX_REGEX = Regex("^#(?:[0-9a-fA-F]{3}|[0-9a-fA-F]{4}|[0-9a-fA-F]{6}|[0-9a-fA-F]{8})$")
}
