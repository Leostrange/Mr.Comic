package io.leostrange.mrcomic.feature.settings.ui

import androidx.datastore.preferences.core.Preferences
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.model.ReaderTtsConfig
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.map

// Phase W-Z (2026-08-07): Reader TTS, style presets, and performance flows
// extracted from SettingsViewModelFlows.

internal fun SettingsViewModel.createReaderStylePresetSlotsFlow() = combine(
        preferences.get(PreferencesKeys.READER_STYLE_PRESET_1, ""),
        preferences.get(PreferencesKeys.READER_STYLE_PRESET_2, ""),
        preferences.get(PreferencesKeys.READER_STYLE_PRESET_3, "")
    ) { preset1, preset2, preset3 ->
        listOf(
            ReaderStylePresetSlot(index = 1, serialized = preset1.ifBlank { null }),
            ReaderStylePresetSlot(index = 2, serialized = preset2.ifBlank { null }),
            ReaderStylePresetSlot(index = 3, serialized = preset3.ifBlank { null })
        )
    }

internal fun SettingsViewModel.createReaderStylePresetEntriesFlow() = combine(
        preferences.get(PreferencesKeys.READER_STYLE_PRESET_LIST, ""),
        createReaderStylePresetSlotsFlow()
    ) { serializedList, slots ->
        parseReaderStylePresetEntries(serializedList).ifEmpty {
            migrateLegacyReaderStyleSlotsToEntries(slots)
        }
    }

internal fun SettingsViewModel.createReaderTtsFlowA() = combine(
        preferences.get(
            PreferencesKeys.READER_TTS_PROVIDER,
            ReaderTtsProviderType.SYSTEM.storedValue
        ),
        preferences.get(PreferencesKeys.READER_TTS_SPEED, 1.0f).map { it.coerceIn(0.5f, 2.0f) },
        preferences.get(PreferencesKeys.READER_TTS_PITCH, 1.0f).map { it.coerceIn(0.5f, 2.0f) }
    ) { provider, speed, pitch ->
        listOf<Any>(provider, speed, pitch)
    }

internal fun SettingsViewModel.createReaderTtsFlowB() = combine(
        preferences.get(PreferencesKeys.READER_TTS_VOLUME, 1.0f).map { it.coerceIn(0f, 1.0f) },
        preferences.get(PreferencesKeys.READER_TTS_VOICE_NAME, "").map { it.ifBlank { null } },
        preferences.get(
            PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE,
            ReaderTtsSleepTimerMode.OFF.storedValue
        )
    ) { volume, voiceName, sleepTimerMode ->
        listOf<Any>(volume, voiceName ?: "", sleepTimerMode)
    }

internal fun SettingsViewModel.createReaderTtsFlow() = combine(createReaderTtsFlowA(), createReaderTtsFlowB()) { left, right ->
        ReaderTtsConfig.fromStored(
            provider = left[0] as String,
            speed = left[1] as Float,
            pitch = left[2] as Float,
            volume = right[0] as Float,
            voiceName = right[1] as String,
            sleepTimerMode = right[2] as String
        )
    }

internal fun SettingsViewModel.createPerfFlow() = combine(
        preferences.get(PerformancePreferencesKeys.PERF_PROFILE, PerformanceDefaults.PROFILE),
        preferences.get(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerformanceDefaults.RENDER_QUALITY),
        preferences.get(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, PerformanceDefaults.COVER_CACHE_MB),
        preferences.get(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, PerformanceDefaults.PAGE_CACHE_COUNT),
        preferences.get(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, PerformanceDefaults.FTS_SEARCH),
        preferences.get(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, PerformanceDefaults.STARTUP_PRELOAD),
        preferences.get(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, PerformanceDefaults.REDUCED_ANIM)
    ) { values ->
        val profile = values[0] as String
        val renderQuality = values[1] as String
        val coverCacheMb = values[2] as Int
        val pageCacheCount = values[3] as Int
        val ftsEnabled = values[4] as Boolean
        val startupPreload = values[5] as Boolean
        val reducedAnim = values[6] as Boolean
        { state: SettingsUiState ->
            state.copy(
                perfProfile = profile,
                perfRenderQuality = renderQuality,
                perfCoverCacheMb = coverCacheMb,
                perfPageCacheCount = pageCacheCount,
                perfFtsSearchEnabled = ftsEnabled,
                perfStartupPreloadEnabled = startupPreload,
                perfReducedAnimations = reducedAnim
            )
        }
    }
