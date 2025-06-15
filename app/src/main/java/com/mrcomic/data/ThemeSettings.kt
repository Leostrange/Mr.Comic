package com.example.mrcomic.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.themeDataStore: DataStore<Preferences> by preferencesDataStore(name = "theme_settings")

data class ThemeSettings(
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val dynamicColors: Boolean = true,
    val primaryColor: String? = null
)

enum class ThemeMode { LIGHT, DARK, SYSTEM }

object ThemeSettingsManager {
    private val THEME_MODE_KEY = stringPreferencesKey("theme_mode")
    private val DYNAMIC_COLORS_KEY = stringPreferencesKey("dynamic_colors")
    private val PRIMARY_COLOR_KEY = stringPreferencesKey("primary_color")

    fun getThemeSettings(context: Context): Flow<ThemeSettings> {
        return context.themeDataStore.data.map { preferences ->
            ThemeSettings(
                themeMode = ThemeMode.valueOf(preferences[THEME_MODE_KEY] ?: ThemeMode.SYSTEM.name),
                dynamicColors = preferences[DYNAMIC_COLORS_KEY]?.toBoolean() ?: true,
                primaryColor = preferences[PRIMARY_COLOR_KEY]
            )
        }
    }

    suspend fun saveThemeSettings(context: Context, settings: ThemeSettings) {
        context.themeDataStore.edit { preferences ->
            preferences[THEME_MODE_KEY] = settings.themeMode.name
            preferences[DYNAMIC_COLORS_KEY] = settings.dynamicColors.toString()
            settings.primaryColor?.let { preferences[PRIMARY_COLOR_KEY] = it }
        }
    }
} 