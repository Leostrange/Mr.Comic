package com.example.mrcomic.splash

import android.content.Context
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.dataStore
import com.example.core.ui.eink.isEInkDevice
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.runBlocking

internal fun Context.isStartupVideoSplashEnabled(): Boolean = runBlocking {
    UserPreferences(dataStore)
        .get(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, !isEInkDevice())
        .first()
}
