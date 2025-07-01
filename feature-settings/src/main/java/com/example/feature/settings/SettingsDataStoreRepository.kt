package com.example.feature.settings

import android.content.Context
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.preferencesKey
import androidx.datastore.preferences.preferencesDataStore
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject

private val Context.dataStore by preferencesDataStore(name = "settings")

enum class ThemeMode { SYSTEM, LIGHT, DARK, CUSTOM }

class SettingsDataStoreRepository @Inject constructor(
    @ApplicationContext private val context: Context
) : SettingsRepository {
    companion object {
        private val THEME_KEY = preferencesKey<String>("theme")
        private val THEME_MODE_KEY = preferencesKey<String>("theme_mode")
        private const val DEFAULT_THEME = "Dark Theme"
        private val DEFAULT_THEME_MODE = ThemeMode.SYSTEM
    }

    override fun getTheme(): String = DEFAULT_THEME // Для совместимости, не используется

    fun themeFlow(): Flow<String> =
        context.dataStore.data.map { prefs -> prefs[THEME_KEY] ?: DEFAULT_THEME }

    fun themeModeFlow(): Flow<ThemeMode> =
        context.dataStore.data.map { prefs ->
            prefs[THEME_MODE_KEY]?.let { runCatching { ThemeMode.valueOf(it) }.getOrNull() } ?: DEFAULT_THEME_MODE
        }

    suspend fun setTheme(theme: String) {
        context.dataStore.edit { prefs -> prefs[THEME_KEY] = theme }
    }

    suspend fun setThemeMode(mode: ThemeMode) {
        context.dataStore.edit { prefs -> prefs[THEME_MODE_KEY] = mode.name }
    }
} 