package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.toConfig
import kotlinx.coroutines.launch

internal fun SettingsSettersController.setAppLanguage(code: String) = settingsPreferencesController.setAppLanguage(code)

    /**
     * Applies a theme preset: writes all preset color values and flags into DataStore,
     * then marks the active preset. Selecting CUSTOM only marks the preset key.
     */
internal fun SettingsSettersController.setThemePreset(preset: ThemePreset) {
        scope.launch {
            themePreferencesRepository.setThemePreset(preset)
            if (preset != ThemePreset.CUSTOM) {
                val cfg = preset.toConfig()
                themePreferencesRepository.setThemeMode(cfg.themeMode)
                themePreferencesRepository.setUseDynamicColor(cfg.useDynamicColor)
                themePreferencesRepository.setUseAmoledDark(cfg.useAmoledDark)
                themePreferencesRepository.setCustomPrimaryColor(cfg.primaryColor)
                themePreferencesRepository.setCustomSecondaryColor(cfg.secondaryColor)
                themePreferencesRepository.setCustomBackgroundColor(cfg.backgroundColor)
                themePreferencesRepository.setCustomSurfaceColor(null)
                themePreferencesRepository.setSurfaceOpacity(1f)
            }
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
