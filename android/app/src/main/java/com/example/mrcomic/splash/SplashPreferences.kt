package com.example.mrcomic.splash

import android.content.Context
import com.example.core.data.preferences.PerformanceDefaults
import com.example.core.data.preferences.PerformancePreferencesKeys
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.ui.eink.isEInkDevice
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking

/**
 * Reads DataStore synchronously on the main thread during splash.
 * Wrapped in [runCatching] so a DataStore IOException or cold-start
 * latency does not ANR or crash the app — falls back to the safe default.
 */
internal fun Context.isStartupVideoSplashEnabled(): Boolean = runCatching {
    runBlocking {
        UserPreferences(dataStore)
            .get(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, !isEInkDevice())
            .first()
    }
}.getOrDefault(!isEInkDevice())

internal fun Context.isStartupPreloadEnabled(): Boolean = runCatching {
    runBlocking {
        UserPreferences(dataStore)
            .get(
                PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED,
                PerformanceDefaults.STARTUP_PRELOAD
            )
            .first()
    }
}.getOrDefault(PerformanceDefaults.STARTUP_PRELOAD)
