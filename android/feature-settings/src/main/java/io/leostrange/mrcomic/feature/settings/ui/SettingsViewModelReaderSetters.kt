package io.leostrange.mrcomic.feature.settings.ui

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
internal fun SettingsSettersController.setReaderPreset(presetName: String) {
        scope.launch {
            val preset = ReadingPreset.fromStored(presetName.uppercase())
            preferences.set(PreferencesKeys.READER_PRESET, preset.name)
            if (preset == ReadingPreset.CUSTOM) return@launch

            val style = preset.style()
            preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
            preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
            preferences.set(PreferencesKeys.READER_PAGE_SOUND, false)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
            preferences.set(PreferencesKeys.GRAPHIC_COLOR_SCHEME, style.textColorScheme)
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

private fun SettingsSettersController.markReaderPresetCustom() {
        scope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        }
    }

internal fun SettingsSettersController.setReadingMode(mode: ReadingMode) {
        scope.launch {
            preferences.set(PreferencesKeys.READING_MODE, mode.name)
        }
    }

internal fun SettingsSettersController.setBrightness(value: Float) {
    setSlider("brightness") {
        preferences.set(
            PreferencesKeys.READING_BRIGHTNESS,
            if (value <= 0.01f) -1f else value.coerceIn(0.05f, 1f)
        )
    }
}

internal fun SettingsSettersController.setKeepScreenOnInReader(enabled: Boolean) {
    scope.launch {
        preferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
    }
}

internal fun SettingsSettersController.setReaderScreenTimeoutMode(mode: String) {
    scope.launch {
        preferences.set(
            PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
            ReaderScreenTimeoutMode.fromStored(mode).storedValue
        )
    }
}

internal fun SettingsSettersController.setReaderLandscapeSpreadEnabled(enabled: Boolean) {
    scope.launch {
        preferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
    }
}

internal fun SettingsSettersController.setReaderPreloadPages(count: Int) {
    setSlider("preloadPages") { preferences.set(PreferencesKeys.READER_PRELOAD_PAGES, count.coerceIn(2, 8)) }
}

internal fun SettingsSettersController.setReaderImageScaleMode(mode: String) {
    val resolved = ReaderImageScaleMode.fromStored(mode)
    scope.launch {
        preferences.set(PreferencesKeys.READER_IMAGE_SCALE_MODE, resolved.storedValue)
    }
}

internal fun SettingsSettersController.setReaderImageMarginCropHorizontal(value: Float) {
    setSlider("readerImageMarginCropHorizontal") {
        val safe = value.coerceIn(0f, 0.22f)
        // Symmetric pair write: the reader stores per-side values.
        preferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_LEFT, safe)
        preferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_RIGHT, safe)
        // Moving a crop slider in settings implies wanting the crop active.
        if (safe > 0f) {
            preferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_ENABLED, true)
        }
    }
}

internal fun SettingsSettersController.setReaderImageMarginCropVertical(value: Float) {
    setSlider("readerImageMarginCropVertical") {
        val safe = value.coerceIn(0f, 0.22f)
        preferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_TOP, safe)
        preferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_BOTTOM, safe)
        if (safe > 0f) {
            preferences.set(PreferencesKeys.READER_PAGE_MARGIN_CROP_ENABLED, true)
        }
    }
}

internal fun SettingsSettersController.setReaderImmersiveMode(enabled: Boolean) {
    markReaderPresetCustom()
    scope.launch { preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled) }
}

internal fun SettingsSettersController.setReaderChromeAutoHide(enabled: Boolean) = settingsPreferencesController.setReaderChromeAutoHide(enabled)

internal fun SettingsSettersController.setReaderTopToolbarOpacity(value: Float) {
    setSlider("readerTopToolbarOpacity") {
        preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
    }
}

internal fun SettingsSettersController.setReaderBottomToolbarOpacity(value: Float) {
    setSlider("readerBottomToolbarOpacity") {
        preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
    }
}

internal fun SettingsSettersController.setReaderToolbarOpacity(value: Float) {
    val safe = value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f)
    setSlider("readerToolbarOpacity") {
        preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe)
        preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe)
    }
}

internal fun SettingsSettersController.setReaderToolbarBlur(value: Float) {
    setSlider("readerToolbarBlur") {
        preferences.set(PreferencesKeys.READER_TOOLBAR_BLUR, value.coerceIn(0f, 1.0f))
    }
}

internal fun SettingsSettersController.setReaderPageAnimation(animation: String) {
    markReaderPresetCustom()
    scope.launch { preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, animation) }
}

internal fun SettingsSettersController.setAppNavTransitionStyle(style: String) {
    scope.launch {
        preferences.set(
            PreferencesKeys.APP_NAV_TRANSITION_STYLE,
            when (style.uppercase()) {
                "NONE", "FADE", "SLIDE", "LIFT" -> style.uppercase()
                else -> "FADE"
            }
        )
    }
}

internal fun SettingsSettersController.setReaderPageSound(enabled: Boolean) {
    scope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND, enabled) }
}

internal fun SettingsSettersController.setReaderEyeRestEnabled(enabled: Boolean) = settingsPreferencesController.setReaderEyeRestEnabled(enabled)

internal fun SettingsSettersController.setReaderEyeRestMinutes(minutes: Int) {
    scope.launch {
        preferences.set(PreferencesKeys.READER_EYE_REST_MINUTES, minutes.coerceIn(10, 60))
    }
}

internal fun SettingsSettersController.setReaderPageSoundStyle(style: String) {
    scope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND_STYLE, style) }
}
