package io.leostrange.mrcomic.core.ui.theme

import androidx.compose.ui.graphics.Color

/**
 * UI-05: single source of truth for the reader content colors
 * (background to onBackground).
 *
 * Used by the real reader scheme (`readerMaterialColorScheme` in
 * feature-reader) and by the settings preview cards, so a preview always
 * shows exactly the colors the reader will use.
 *
 * The priority mirrors the reader scheme exactly:
 * 1. graphic reader → its own DAY/SEPIA/NIGHT palettes;
 * 2. preset overrides (OLED_BLACK, SEPIA_BOOK, NEWSPAPER);
 * 3. the DAY/SEPIA/NIGHT text color scheme switch
 *    (NIGHT_INK resolves through its "NIGHT" scheme);
 * 4. remaining presets (PAPER, EINK);
 * 5. default DAY pair.
 */
fun resolveReaderContentColors(
    isTextReader: Boolean,
    readerPreset: ReadingPreset,
    textColorScheme: String,
): Pair<Color, Color> {
    if (!isTextReader) {
        return when (textColorScheme.uppercase()) {
            "DAY" -> Color(0xFFF5F5F2) to Color(0xFF15171A)
            "SEPIA" -> Color(0xFFEFE3C8) to Color(0xFF33261A)
            else -> Color(0xFF090B0E) to Color(0xFFF2F2F2)
        }
    }
    val scheme = textColorScheme.uppercase()
    return when {
        readerPreset == ReadingPreset.OLED_BLACK -> Color(0xFF000000) to Color(0xFFF2F5F7)
        readerPreset == ReadingPreset.SEPIA_BOOK -> Color(0xFFF4ECD8) to Color(0xFF352618)
        readerPreset == ReadingPreset.NEWSPAPER -> Color(0xFFF1EEE7) to Color(0xFF202020)
        scheme == "NIGHT" -> Color(0xFF16181C) to Color(0xFFE8E2D8)
        scheme == "SEPIA" -> Color(0xFFF4ECD8) to Color(0xFF372719)
        readerPreset == ReadingPreset.PAPER -> Color(0xFFF6F1E7) to Color(0xFF2F241A)
        readerPreset == ReadingPreset.EINK -> Color(0xFFF0EFE9) to Color(0xFF111111)
        else -> Color(0xFFFAFAF8) to Color(0xFF171717)
    }
}
