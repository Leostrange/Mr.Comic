package com.example.core.ui.theme

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

/**
 * DataStore extension for theme preferences
 */
private val Context.themeDataStore: DataStore<Preferences> by preferencesDataStore(
    name = "theme_preferences"
)

/**
 * Repository for managing theme preferences using DataStore
 * 
 * Handles:
 * - Theme mode selection (system, light, dark, dynamic)
 * - Dynamic color preference
 * - AMOLED dark theme option
 * - Reader-specific theme settings
 */
@Singleton
class ThemePreferencesRepository @Inject constructor(
    @ApplicationContext private val context: Context
) {
    
    companion object {
        private val THEME_MODE_KEY = stringPreferencesKey("theme_mode")
        private val USE_DYNAMIC_COLOR_KEY = booleanPreferencesKey("use_dynamic_color")
        private val USE_AMOLED_DARK_KEY = booleanPreferencesKey("use_amoled_dark")
        private val READER_THEME_MODE_KEY = stringPreferencesKey("reader_theme_mode")
        private val READER_USE_AMOLED_KEY = booleanPreferencesKey("reader_use_amoled")
    }
    
    private val dataStore = context.themeDataStore
    
    /**
     * Flow of current theme configuration
     */
    val themeConfig: Flow<ThemeConfig> = dataStore.data.map { preferences ->
        ThemeConfig(
            themeMode = ThemeMode.valueOf(
                preferences[THEME_MODE_KEY] ?: ThemeMode.SYSTEM.name
            ),
            useDynamicColor = preferences[USE_DYNAMIC_COLOR_KEY] ?: true,
            useAmoledDark = preferences[USE_AMOLED_DARK_KEY] ?: false
        )
    }
    
    /**
     * Flow of reader-specific theme configuration
     */
    val readerThemeConfig: Flow<ReaderThemeConfig> = dataStore.data.map { preferences ->
        ReaderThemeConfig(
            themeMode = ReaderThemeMode.valueOf(
                preferences[READER_THEME_MODE_KEY] ?: ReaderThemeMode.SYSTEM.name
            ),
            useAmoled = preferences[READER_USE_AMOLED_KEY] ?: false
        )
    }
    
    /**
     * Update theme mode
     */
    suspend fun setThemeMode(themeMode: ThemeMode) {
        dataStore.edit { preferences ->
            preferences[THEME_MODE_KEY] = themeMode.name
        }
    }
    
    /**
     * Update dynamic color preference
     */
    suspend fun setUseDynamicColor(useDynamicColor: Boolean) {
        dataStore.edit { preferences ->
            preferences[USE_DYNAMIC_COLOR_KEY] = useDynamicColor
        }
    }
    
    /**
     * Update AMOLED dark theme preference
     */
    suspend fun setUseAmoledDark(useAmoledDark: Boolean) {
        dataStore.edit { preferences ->
            preferences[USE_AMOLED_DARK_KEY] = useAmoledDark
        }
    }
    
    /**
     * Update reader theme mode
     */
    suspend fun setReaderThemeMode(themeMode: ReaderThemeMode) {
        dataStore.edit { preferences ->
            preferences[READER_THEME_MODE_KEY] = themeMode.name
        }
    }
    
    /**
     * Update reader AMOLED preference
     */
    suspend fun setReaderUseAmoled(useAmoled: Boolean) {
        dataStore.edit { preferences ->
            preferences[READER_USE_AMOLED_KEY] = useAmoled
        }
    }
}

/**
 * Reader-specific theme modes
 */
enum class ReaderThemeMode {
    SYSTEM,     // Follow app theme
    LIGHT,      // Always light for reading
    DARK,       // Always dark for reading
    SEPIA,      // Sepia tone for comfortable reading
    BLACK       // Pure black for AMOLED displays
}

/**
 * Reader theme configuration
 */
data class ReaderThemeConfig(
    val themeMode: ReaderThemeMode = ReaderThemeMode.SYSTEM,
    val useAmoled: Boolean = false
)