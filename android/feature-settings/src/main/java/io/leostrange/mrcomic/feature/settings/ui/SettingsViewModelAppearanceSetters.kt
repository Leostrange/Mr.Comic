package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import kotlinx.coroutines.launch

internal fun SettingsSettersController.setAppLanguage(code: String) = settingsPreferencesController.setAppLanguage(code)

    /** Applies a complete preset as one observable DataStore snapshot. */
internal fun SettingsSettersController.setThemePreset(preset: ThemePreset) {
    scope.launch {
        themePreferencesRepository.applyThemePreset(preset)
    }
}

internal fun SettingsSettersController.setThemeMode(mode: ThemeMode) {
        scope.launch {
            // Manual change = exit preset
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setThemeMode(mode)
        }
    }

internal fun SettingsSettersController.setUseDynamicColor(enabled: Boolean) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setUseDynamicColor(enabled)
        }
    }

internal fun SettingsSettersController.setUseAmoledDark(enabled: Boolean) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setUseAmoledDark(enabled)
        }
    }

internal fun SettingsSettersController.setCustomPrimaryColor(color: Long?) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomPrimaryColor(color)
        }
    }

internal fun SettingsSettersController.setCustomSecondaryColor(color: Long?) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomSecondaryColor(color)
        }
    }

internal fun SettingsSettersController.setCustomBackgroundColor(color: Long?) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomBackgroundColor(color)
        }
    }

internal fun SettingsSettersController.setCustomSurfaceColor(color: Long?) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomSurfaceColor(color)
        }
    }

internal fun SettingsSettersController.setSurfaceOpacity(value: Float) {
        scope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setSurfaceOpacity(value)
        }
    }
