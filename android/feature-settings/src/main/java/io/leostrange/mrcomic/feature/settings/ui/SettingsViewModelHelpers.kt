// Phase L (2026-08-03): stateless-хелперы вынесены из тела SettingsViewModel.

package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.ui.library.LibraryThemePresetSnapshot
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import kotlinx.coroutines.flow.map
import org.json.JSONObject

/**
 * Stateless helper functions extracted from SettingsViewModel.
 * Phase L (2026-08-03): JSONObject ext, normalizeImported*, formatSize, preset keys, snapshot converters.
 * Phase V (2026-08-04): persist* helpers, apply*PresetSnapshot functions.
 */

/* ──── firstString ──── */
internal fun JSONObject.firstString(vararg keys: String): String? = keys.firstNotNullOfOrNull { key ->
    if (!has(key)) return@firstNotNullOfOrNull null
    optString(key).trim().takeIf { it.isNotEmpty() && it != "null" }
}

/* ──── firstInt ──── */
internal fun JSONObject.firstInt(vararg keys: String): Int? = keys.firstNotNullOfOrNull { key ->
    optFlexibleFloat(key)?.toInt()
}

/* ──── firstFloat ──── */
internal fun JSONObject.firstFloat(vararg keys: String): Float? = keys.firstNotNullOfOrNull { key ->
    optFlexibleFloat(key)
}

/* ──── firstBoolean ──── */
internal fun JSONObject.firstBoolean(vararg keys: String): Boolean? = keys.firstNotNullOfOrNull { key ->
    if (!has(key)) return@firstNotNullOfOrNull null
    when (val raw = opt(key)) {
        is Boolean -> raw
        is Number -> raw.toInt() != 0
        is String -> when (raw.trim().lowercase()) {
            "true", "1", "yes", "on" -> true
            "false", "0", "no", "off" -> false
            else -> null
        }
        else -> null
    }
}

/* ──── optFlexibleFloat ──── */
internal fun JSONObject.optFlexibleFloat(key: String): Float? {
    if (!has(key)) return null
    return when (val raw = opt(key)) {
        is Number -> raw.toFloat()
        is String -> raw.trim().replace(',', '.').toFloatOrNull()
        else -> null
    }
}

/* ──── normalizeImportedTextColorScheme ──── */
internal fun normalizeImportedTextColorScheme(raw: String?): String? = when (raw?.trim()?.uppercase()) {
    "DAY", "LIGHT", "PAPER", "DEFAULT" -> "DAY"
    "SEPIA", "WARM" -> "SEPIA"
    "NIGHT", "DARK", "OLED", "AMOLED", "BLACK" -> "NIGHT"
    else -> null
}

/* ──── normalizeImportedTextAlignment ──── */
internal fun normalizeImportedTextAlignment(raw: String?): String? = when (raw?.trim()?.lowercase()) {
    "justify", "justified" -> "justify"
    "left", "start" -> "left"
    "right", "end" -> "right"
    "center", "centre", "middle" -> "center"
    else -> null
}

/* ──── normalizeImportedPageAnimation ──── */
internal fun normalizeImportedPageAnimation(raw: String?): String? = when (raw?.trim()?.uppercase()) {
    "NONE", "OFF" -> "NONE"
    "SLIDE", "PAGE", "SWIPE" -> "SLIDE"
    "FADE", "DISSOLVE" -> "FADE"
    else -> null
}

/* ──── formatSize ──── */
internal fun formatSize(bytes: Long): String {
    if (bytes < 1024) return "$bytes B"
    val kb = bytes / 1024.0
    if (kb < 1024) return String.format("%.1f KB", kb)
    val mb = kb / 1024.0
    if (mb < 1024) return String.format("%.1f MB", mb)
    val gb = mb / 1024.0
    return String.format("%.2f GB", gb)
}

/* ──── libraryThemePresetKey ──── */
internal fun libraryThemePresetKey(slot: Int) = when (slot.coerceIn(1, 3)) {
    1 -> PreferencesKeys.LIBRARY_THEME_PRESET_1
    2 -> PreferencesKeys.LIBRARY_THEME_PRESET_2
    else -> PreferencesKeys.LIBRARY_THEME_PRESET_3
}

/* ──── appThemePresetKey ──── */
internal fun appThemePresetKey(slot: Int) = when (slot.coerceIn(1, 3)) {
    1 -> PreferencesKeys.APP_THEME_PRESET_1
    2 -> PreferencesKeys.APP_THEME_PRESET_2
    else -> PreferencesKeys.APP_THEME_PRESET_3
}

/* ──── readerStylePresetKey ──── */
internal fun readerStylePresetKey(slot: Int) = when (slot.coerceIn(1, 3)) {
    1 -> PreferencesKeys.READER_STYLE_PRESET_1
    2 -> PreferencesKeys.READER_STYLE_PRESET_2
    else -> PreferencesKeys.READER_STYLE_PRESET_3
}

/* ──── settingsReaderStyleFallbackName ──── */
internal fun settingsReaderStyleFallbackName(index: Int): String = "Style $index"

/* ──── toLegacyReaderStyleSlots ──── */
internal fun List<ReaderStylePresetEntry>.toLegacyReaderStyleSlots(): List<ReaderStylePresetSlot> =
    (1..3).map { index ->
        ReaderStylePresetSlot(
            index = index,
            serialized = getOrNull(index - 1)?.snapshot?.serialize()
        )
    }

/* ──── toLibraryThemePresetSnapshot ──── */
internal fun SettingsUiState.toLibraryThemePresetSnapshot(): LibraryThemePresetSnapshot =
    LibraryThemePresetSnapshot(
        backgroundStyle = libraryBackgroundStyle,
        backgroundImageUri = libraryBackgroundImageUri,
        backdropStrength = libraryBackdropStrength,
        backgroundBlur = libraryBackgroundBlur,
        backgroundVeil = libraryBackgroundVeil,
        shelfStyle = libraryShelfStyle,
        shelfDepth = libraryShelfDepth,
        cardShadow = libraryCardShadow,
        titleScale = libraryTitleScale,
        titleLines = libraryTitleLines,
        cardStroke = libraryCardStroke,
        cardCornerRadius = libraryCardCornerRadius,
        titlePanelOpacity = libraryTitlePanelOpacity,
        cardStyle = libraryCardStyle,
        thumbnailMode = libraryThumbnailMode,
        graphicCoverStyle = libraryGraphicCoverStyle,
        coverScale = libraryCoverScale,
        surfaceOpacity = surfaceOpacity
    )

/* ──── toAppThemePresetSnapshot ──── */
internal fun SettingsUiState.toAppThemePresetSnapshot(): AppThemePresetSnapshot =
    AppThemePresetSnapshot(
        themePreset = themePreset,
        themeMode = themeMode.name,
        useDynamicColor = useDynamicColor,
        useAmoledDark = useAmoledDark,
        customPrimaryColor = customPrimaryColor,
        customSecondaryColor = customSecondaryColor,
        customBackgroundColor = customBackgroundColor,
        customSurfaceColor = customSurfaceColor,
        surfaceOpacity = surfaceOpacity,
        uiFontScale = uiFontScale,
        uiDensityScale = uiDensityScale,
        uiCornerRadius = uiCornerRadius
    )

/* ──── toReaderStylePresetSnapshot ──── */
internal fun SettingsUiState.toReaderStylePresetSnapshot(
    displayName: String? = null
): ReaderStylePresetSnapshot =
    ReaderStylePresetSnapshot(
        displayName = displayName?.trim()?.takeIf { it.isNotEmpty() },
        readerPreset = ReadingPreset.fromStored(readerPreset).name,
        textFontSize = textFontSize,
        textColorScheme = textColorScheme,
        textFontFamily = textFontFamily,
        textLineHeight = textLineHeight,
        textLetterSpacing = textLetterSpacing,
        textWordSpacing = textWordSpacing,
        textParagraphSpacing = textParagraphSpacing,
        textAlignment = textAlignment,
        textBold = textBold,
        textCustomTextColor = textCustomTextColor,
        textCustomBackgroundColor = textCustomBackgroundColor,
        textCustomAccentColor = textCustomAccentColor,
        brightness = brightness,
        immersiveMode = readerImmersiveMode,
        pageAnimation = readerPageAnimation
    )

// ──────────── Phase V (2026-08-04): extracted from SettingsViewModel ────────────

/* ──── persistNullableReaderColor ──── */
internal suspend fun SettingsViewModel.persistNullableReaderColor(key: Preferences.Key<Long>, value: Long?) {
    context.dataStore.edit { prefs ->
        if (value == null) prefs.remove(key) else prefs[key] = value
    }
}



