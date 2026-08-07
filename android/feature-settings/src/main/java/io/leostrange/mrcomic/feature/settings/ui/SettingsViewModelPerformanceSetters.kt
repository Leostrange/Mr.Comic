package io.leostrange.mrcomic.feature.settings.ui

import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PerfProfile
import io.leostrange.mrcomic.core.data.preferences.PerfRenderQuality
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import kotlinx.coroutines.launch

internal fun SettingsViewModel.setUiSoundEnabled(enabled: Boolean) = settingsPreferencesController.setUiSoundEnabled(enabled)

internal fun SettingsViewModel.setUiSoundsVolume(vol: Float) {
        setSlider("uiVolume") { preferences.set(PreferencesKeys.UI_SOUNDS_VOLUME, vol.coerceIn(0f, 1f)) }
    }

internal fun SettingsViewModel.setUiFontScale(scale: Float) {
        setSlider("fontScale") { preferences.set(PreferencesKeys.UI_FONT_SCALE, scale) }
    }

internal fun SettingsViewModel.setUiDensityScale(scale: Float) {
        setSlider("uiDensity") { preferences.set(PreferencesKeys.UI_DENSITY_SCALE, scale.coerceIn(0.82f, 1.18f)) }
    }

internal fun SettingsViewModel.setUiCornerRadius(radius: Int) {
        setSlider("cornerRadius") { preferences.set(PreferencesKeys.UI_CORNER_RADIUS, radius.coerceIn(0, 32)) }
    }

internal fun SettingsViewModel.setPerformanceReducedMotion(enabled: Boolean) = settingsPreferencesController.setPerformanceReducedMotion(enabled)

internal fun SettingsViewModel.setPerformanceReducedVisualEffects(enabled: Boolean) = settingsPreferencesController.setPerformanceReducedVisualEffects(enabled)

internal fun SettingsViewModel.setPerfProfile(profile: String) {
        viewModelScope.launch {
            preferences.set(
                PerformancePreferencesKeys.PERF_PROFILE,
                PerfProfile.fromStored(profile).storedValue
            )
            when (PerfProfile.fromStored(profile)) {
                PerfProfile.QUALITY -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.HIGH.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 8)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 512)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, false)
                }
                PerfProfile.BALANCED -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.AUTO.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 5)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 256)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, false)
                }
                PerfProfile.ECONOMY -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.LOW.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 3)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 64)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, true)
                }
                PerfProfile.AUTO -> Unit
            }
        }
    }

internal fun SettingsViewModel.setPerfRenderQuality(quality: String) {
        viewModelScope.launch {
            preferences.set(
                PerformancePreferencesKeys.PERF_RENDER_QUALITY,
                PerfRenderQuality.fromStored(quality).storedValue
            )
        }
    }

internal fun SettingsViewModel.setPerfCoverCacheMb(mb: Int) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, mb.coerceIn(64, 512))
        }
    }

internal fun SettingsViewModel.setPerfPageCacheCount(count: Int) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, count.coerceIn(3, 10))
        }
    }

internal fun SettingsViewModel.setPerfFtsSearchEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setPerfStartupPreloadEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, enabled)
        }
    }

internal fun SettingsViewModel.setPerfReducedAnimations(reduced: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, reduced)
        }
    }

internal fun SettingsViewModel.resetPerfSettings() {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_PROFILE, PerformanceDefaults.PROFILE)
            preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerformanceDefaults.RENDER_QUALITY)
            preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, PerformanceDefaults.COVER_CACHE_MB)
            preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, PerformanceDefaults.PAGE_CACHE_COUNT)
            preferences.set(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, PerformanceDefaults.FTS_SEARCH)
            preferences.set(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, PerformanceDefaults.STARTUP_PRELOAD)
            preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, PerformanceDefaults.REDUCED_ANIM)
        }
    }
