package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.map

// Phase W-Z (2026-08-07): Base UI state flow builders extracted from SettingsViewModelFlows.

internal fun SettingsViewModel.createBaseUiStateLeftCore() = combine(
        themePreferencesRepository.themeConfig,
        themePreferencesRepository.themePreset,
        preferences.get(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name).map { stored ->
            runCatching { ReadingMode.valueOf(stored) }.getOrDefault(ReadingMode.PAGE_LTR)
        },
        preferences.get(PreferencesKeys.READING_BRIGHTNESS, -1f).map { stored ->
            if (stored < 0f) -1f else stored.coerceIn(0.05f, 1f)
        },
        preferences.get(PreferencesKeys.READER_KEEP_SCREEN_ON, false)
    ) { themeConfig, preset, readingMode, brightness, keepScreenOn ->
        listOf(themeConfig, preset, readingMode, brightness, keepScreenOn)
    }

internal fun SettingsViewModel.createBaseUiStateLeft() = combine(
        createBaseUiStateLeftCore(),
        preferences.get(
            PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
            ReaderScreenTimeoutMode.SYSTEM.storedValue
        ).map { ReaderScreenTimeoutMode.fromStored(it).storedValue }
    ) { left, screenTimeoutMode ->
        left + screenTimeoutMode
    }

internal fun SettingsViewModel.createBaseUiState() = combine(
        createBaseUiStateLeft(),
        preferences.get(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, true)
    ) { left, landscapeSpreadEnabled ->
        val themeConfig = left[0] as io.leostrange.mrcomic.core.ui.theme.ThemeConfig
        val preset = left[1] as ThemePreset
        val readingMode = left[2] as ReadingMode
        val brightness = left[3] as Float
        val keepScreenOn = left[4] as Boolean
        val screenTimeoutMode = left[5] as String
        SettingsUiState(
            themeMode = themeConfig.themeMode,
            useDynamicColor = themeConfig.useDynamicColor,
            useAmoledDark = themeConfig.useAmoledDark,
            themePreset = preset.name,
            readingMode = readingMode,
            brightness = brightness,
            keepScreenOnInReader = keepScreenOn,
            readerScreenTimeoutMode = screenTimeoutMode,
            readerLandscapeSpreadEnabled = landscapeSpreadEnabled,
            customPrimaryColor = themeConfig.customPrimaryColor,
            customSecondaryColor = themeConfig.customSecondaryColor,
            customBackgroundColor = themeConfig.customBackgroundColor,
            customSurfaceColor = themeConfig.customSurfaceColor,
            surfaceOpacity = themeConfig.surfaceOpacity
        )
    }
