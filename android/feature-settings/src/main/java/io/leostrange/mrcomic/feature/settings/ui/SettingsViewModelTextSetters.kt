package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import org.json.JSONObject

internal fun SettingsViewModel.setTextFontSize(size: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_SIZE, size.coerceIn(12, 32))
        }
    }

internal fun SettingsViewModel.setTextColorScheme(scheme: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, scheme.uppercase())
        }
    }

internal fun SettingsViewModel.setTextCustomTextColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, color)
        }
    }

internal fun SettingsViewModel.setTextCustomBackgroundColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, color)
        }
    }

internal fun SettingsViewModel.setTextCustomAccentColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, color)
        }
    }

internal fun SettingsViewModel.setTextFontFamily(family: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, family)
        }
    }

internal fun SettingsViewModel.setTextLineHeight(height: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, height.coerceIn(1.0f, 3.0f))
        }
    }

internal fun SettingsViewModel.setTextLetterSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, spacing.coerceIn(0f, 0.2f))
        }
    }

internal fun SettingsViewModel.setTextWordSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, spacing.coerceIn(0f, 0.6f))
        }
    }

internal fun SettingsViewModel.setTextParagraphSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, spacing.coerceIn(0.1f, 1.2f))
        }
    }

internal fun SettingsViewModel.setTextAlignment(alignment: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, alignment.lowercase())
        }
    }

internal fun SettingsViewModel.setTextBold(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_BOLD, enabled)
        }
    }

internal fun SettingsViewModel.resetReaderTextStyle() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_SIZE, 18)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY")
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia")
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, 0f)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, 0f)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, "justify")
            preferences.set(PreferencesKeys.TEXT_BOLD, false)
        }
    }

internal suspend fun SettingsViewModel.importReaderTypographyFromJson(rawJson: String): String? = kotlinx.coroutines.withContext(Dispatchers.IO) {
        val imported = parseImportedReaderTypography(JSONObject(rawJson)) ?: return@withContext null
        preferences.set(PreferencesKeys.READER_PRESET, imported.readerPreset.name)
        preferences.set(PreferencesKeys.TEXT_FONT_SIZE, imported.textFontSize)
        preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, imported.textColorScheme)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, imported.textCustomTextColor)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, imported.textCustomBackgroundColor)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, imported.textCustomAccentColor)
        preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, imported.textFontFamily)
        preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, imported.textLineHeight)
        preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, imported.textLetterSpacing)
        preferences.set(PreferencesKeys.TEXT_WORD_SPACING, imported.textWordSpacing)
        preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, imported.textParagraphSpacing)
        preferences.set(PreferencesKeys.TEXT_ALIGNMENT, imported.textAlignment)
        preferences.set(PreferencesKeys.TEXT_BOLD, imported.textBold)
        preferences.set(PreferencesKeys.READING_BRIGHTNESS, imported.brightness)
        preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, imported.immersiveMode)
        preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, imported.pageAnimation)
        imported.displayName
    }
