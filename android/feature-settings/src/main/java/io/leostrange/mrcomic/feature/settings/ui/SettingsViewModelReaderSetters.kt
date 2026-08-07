package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style
import kotlinx.coroutines.launch

    /**
     * Applies a reader preset: sets multiple reader settings at once.
     * CUSTOM only marks the preset key without changing other settings.
     */
internal fun SettingsViewModel.setReaderPreset(presetName: String) {
        viewModelScope.launch {
            val preset = ReadingPreset.fromStored(presetName.uppercase())
            preferences.set(PreferencesKeys.READER_PRESET, preset.name)
            if (preset == ReadingPreset.CUSTOM) return@launch

            val style = preset.style()
            preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
            preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
            preferences.set(PreferencesKeys.READER_PAGE_SOUND, false)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, style.letterSpacing)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, style.wordSpacing)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, style.paragraphSpacing)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, style.textAlignment)
            preferences.set(PreferencesKeys.TEXT_BOLD, style.textBold)
        }
    }

private fun SettingsViewModel.markReaderPresetCustom() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        }
    }

internal fun SettingsViewModel.setReadingMode(mode: ReadingMode) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READING_MODE, mode.name)
        }
    }

internal fun SettingsViewModel.setBrightness(value: Float) {
        markReaderPresetCustom()
        setSlider("brightness") {
            preferences.set(
                PreferencesKeys.READING_BRIGHTNESS,
                if (value <= 0.01f) -1f else value.coerceIn(0.05f, 1f)
            )
        }
    }

internal fun SettingsViewModel.setKeepScreenOnInReader(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
        }
    }

internal fun SettingsViewModel.setReaderScreenTimeoutMode(mode: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
                ReaderScreenTimeoutMode.fromStored(mode).storedValue
            )
        }
    }

internal fun SettingsViewModel.setReaderLandscapeSpreadEnabled(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setReaderPreloadPages(count: Int) {
        setSlider("preloadPages") { preferences.set(PreferencesKeys.READER_PRELOAD_PAGES, count.coerceIn(2, 8)) }
    }

internal fun SettingsViewModel.setReaderImageScaleMode(mode: String) {
        val resolved = ReaderImageScaleMode.fromStored(mode)
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_IMAGE_SCALE_MODE, resolved.storedValue)
        }
    }

internal fun SettingsViewModel.setReaderImageMarginCropHorizontal(value: Float) {
        markReaderPresetCustom()
        setSlider("readerImageMarginCropHorizontal") {
            preferences.set(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL,
                value.coerceIn(0f, 0.22f)
            )
        }
    }

internal fun SettingsViewModel.setReaderImageMarginCropVertical(value: Float) {
        markReaderPresetCustom()
        setSlider("readerImageMarginCropVertical") {
            preferences.set(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL,
                value.coerceIn(0f, 0.22f)
            )
        }
    }

internal fun SettingsViewModel.setReaderImmersiveMode(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled) }
    }

internal fun SettingsViewModel.setReaderChromeAutoHide(enabled: Boolean) = settingsPreferencesController.setReaderChromeAutoHide(enabled)

internal fun SettingsViewModel.setReaderTopToolbarOpacity(value: Float) {
        setSlider("readerTopToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderBottomToolbarOpacity(value: Float) {
        setSlider("readerBottomToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderToolbarOpacity(value: Float) {
        val safe = value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f)
        setSlider("readerToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe)
            preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe)
        }
    }

internal fun SettingsViewModel.setReaderToolbarBlur(value: Float) {
        setSlider("readerToolbarBlur") {
            preferences.set(PreferencesKeys.READER_TOOLBAR_BLUR, value.coerceIn(0f, 1.0f))
        }
    }

internal fun SettingsViewModel.setReaderPageAnimation(animation: String) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, animation) }
    }

internal fun SettingsViewModel.setAppNavTransitionStyle(style: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.APP_NAV_TRANSITION_STYLE,
                when (style.uppercase()) {
                    "NONE", "FADE", "SLIDE", "LIFT" -> style.uppercase()
                    else -> "FADE"
                }
            )
        }
    }

internal fun SettingsViewModel.setReaderPageSound(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND, enabled) }
    }

internal fun SettingsViewModel.setReaderEyeRestEnabled(enabled: Boolean) = settingsPreferencesController.setReaderEyeRestEnabled(enabled)

internal fun SettingsViewModel.setReaderEyeRestMinutes(minutes: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_EYE_REST_MINUTES, minutes.coerceIn(10, 60))
        }
    }

internal fun SettingsViewModel.setReaderPageSoundStyle(style: String) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND_STYLE, style) }
    }
