package com.example.feature.reader.ui.preset

import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.MutablePreferences
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.feature.reader.domain.preset.ReaderStylePresetSnapshot

internal suspend fun persistReaderStylePresetSnapshot(
    snapshot: ReaderStylePresetSnapshot,
    readerPreferences: UserPreferences,
    dataStore: DataStore<Preferences>
) {
    readerPreferences.set(PreferencesKeys.READER_PRESET, snapshot.readerPreset)
    readerPreferences.set(PreferencesKeys.TEXT_FONT_SIZE, snapshot.textFontSize)
    readerPreferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, snapshot.textColorScheme)
    readerPreferences.set(PreferencesKeys.TEXT_FONT_FAMILY, snapshot.textFontFamily)
    readerPreferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, snapshot.textLineHeight)
    readerPreferences.set(PreferencesKeys.TEXT_LETTER_SPACING, snapshot.textLetterSpacing)
    readerPreferences.set(PreferencesKeys.TEXT_WORD_SPACING, snapshot.textWordSpacing)
    readerPreferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, snapshot.textParagraphSpacing)
    readerPreferences.set(PreferencesKeys.TEXT_ALIGNMENT, snapshot.textAlignment)
    readerPreferences.set(PreferencesKeys.TEXT_BOLD, snapshot.textBold)
    readerPreferences.set(PreferencesKeys.READING_BRIGHTNESS, snapshot.brightness)
    readerPreferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, snapshot.immersiveMode)
    readerPreferences.set(PreferencesKeys.READER_PAGE_ANIMATION, snapshot.pageAnimation)
    dataStore.edit { preferences ->
        updateNullableColor(preferences, PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, snapshot.textCustomTextColor)
        updateNullableColor(preferences, PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, snapshot.textCustomBackgroundColor)
        updateNullableColor(preferences, PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, snapshot.textCustomAccentColor)
    }
}

private fun updateNullableColor(
    preferences: MutablePreferences,
    key: Preferences.Key<Long>,
    value: Long?
) {
    if (value == null) preferences.remove(key) else preferences[key] = value
}
