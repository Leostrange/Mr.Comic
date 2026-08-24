package io.leostrange.mrcomic.core.ui.theme

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map
import javax.inject.Inject
import javax.inject.Singleton

private val Context.themeDataStore: DataStore<Preferences> by preferencesDataStore(
    name = "theme_preferences"
)

@Singleton
class ThemePreferencesRepository @Inject constructor(
    @ApplicationContext context: Context
) {
    private val dataStore = context.themeDataStore

    companion object {
        private val THEME_MODE_KEY = stringPreferencesKey("theme_mode")
        private val USE_DYNAMIC_COLOR_KEY = booleanPreferencesKey("use_dynamic_color")
        private val USE_AMOLED_KEY = booleanPreferencesKey("use_amoled_dark")
        // Custom per-element colors are stored as decimal strings via Long.toString().
        private val CUSTOM_PRIMARY_COLOR_KEY = stringPreferencesKey("custom_primary_color")
        private val CUSTOM_SECONDARY_COLOR_KEY = stringPreferencesKey("custom_secondary_color")
        private val CUSTOM_BACKGROUND_COLOR_KEY = stringPreferencesKey("custom_background_color")
        private val CUSTOM_SURFACE_COLOR_KEY = stringPreferencesKey("custom_surface_color")
        private val SURFACE_OPACITY_KEY = floatPreferencesKey("surface_opacity")
        private val THEME_PRESET_KEY = stringPreferencesKey("theme_preset")
    }

    val themePreset: Flow<ThemePreset> = dataStore.data.map { prefs ->
        runCatching { ThemePreset.valueOf(prefs[THEME_PRESET_KEY] ?: ThemePreset.CUSTOM.name) }
            .getOrDefault(ThemePreset.CUSTOM)
    }

    val themeConfig: Flow<ThemeConfig> = dataStore.data.map { prefs ->
        ThemeConfig(
            themeMode = runCatching {
                ThemeMode.valueOf(prefs[THEME_MODE_KEY] ?: ThemeMode.SYSTEM.name)
            }.getOrDefault(ThemeMode.SYSTEM),
            useDynamicColor = prefs[USE_DYNAMIC_COLOR_KEY] ?: true,
            useAmoledDark = prefs[USE_AMOLED_KEY] ?: false,
            // Parsed from the decimal strings written by the setters below.
            customPrimaryColor = prefs[CUSTOM_PRIMARY_COLOR_KEY]?.toLongOrNull(),
            customSecondaryColor = prefs[CUSTOM_SECONDARY_COLOR_KEY]?.toLongOrNull(),
            customBackgroundColor = prefs[CUSTOM_BACKGROUND_COLOR_KEY]?.toLongOrNull(),
            customSurfaceColor = prefs[CUSTOM_SURFACE_COLOR_KEY]?.toLongOrNull(),
            surfaceOpacity = prefs[SURFACE_OPACITY_KEY] ?: 1f
        )
    }

    suspend fun setThemeMode(mode: ThemeMode) {
        dataStore.edit { prefs -> prefs[THEME_MODE_KEY] = mode.name }
    }

    suspend fun setUseDynamicColor(enabled: Boolean) {
        dataStore.edit { prefs -> prefs[USE_DYNAMIC_COLOR_KEY] = enabled }
    }

    suspend fun setUseAmoledDark(enabled: Boolean) {
        dataStore.edit { prefs -> prefs[USE_AMOLED_KEY] = enabled }
    }

    suspend fun setThemePreset(preset: ThemePreset) {
        dataStore.edit { prefs -> prefs[THEME_PRESET_KEY] = preset.name }
    }

    /**
     * Writes a preset and every value it owns in one DataStore transaction.
     * A preset must never be observed as a mixture of its old and new colors.
     */
    suspend fun applyThemePreset(preset: ThemePreset) {
        dataStore.edit { prefs ->
            prefs[THEME_PRESET_KEY] = preset.name
            if (preset == ThemePreset.CUSTOM) return@edit

            val config = preset.toConfig()
            prefs[THEME_MODE_KEY] = config.themeMode.name
            prefs[USE_DYNAMIC_COLOR_KEY] = config.useDynamicColor
            prefs[USE_AMOLED_KEY] = config.useAmoledDark
            if (config.primaryColor == null) prefs.remove(CUSTOM_PRIMARY_COLOR_KEY)
            else prefs[CUSTOM_PRIMARY_COLOR_KEY] = config.primaryColor.toString()
            if (config.secondaryColor == null) prefs.remove(CUSTOM_SECONDARY_COLOR_KEY)
            else prefs[CUSTOM_SECONDARY_COLOR_KEY] = config.secondaryColor.toString()
            if (config.backgroundColor == null) prefs.remove(CUSTOM_BACKGROUND_COLOR_KEY)
            else prefs[CUSTOM_BACKGROUND_COLOR_KEY] = config.backgroundColor.toString()
            prefs.remove(CUSTOM_SURFACE_COLOR_KEY)
            prefs[SURFACE_OPACITY_KEY] = 1f
        }
    }

    /** Pass null to reset to theme default. Non-null values are persisted as decimal Long strings. */
    suspend fun setCustomPrimaryColor(color: Long?) {
        dataStore.edit { prefs ->
            if (color == null) prefs.remove(CUSTOM_PRIMARY_COLOR_KEY)
            else prefs[CUSTOM_PRIMARY_COLOR_KEY] = color.toString()
        }
    }

    suspend fun setCustomSecondaryColor(color: Long?) {
        dataStore.edit { prefs ->
            if (color == null) prefs.remove(CUSTOM_SECONDARY_COLOR_KEY)
            else prefs[CUSTOM_SECONDARY_COLOR_KEY] = color.toString()
        }
    }

    suspend fun setCustomBackgroundColor(color: Long?) {
        dataStore.edit { prefs ->
            if (color == null) prefs.remove(CUSTOM_BACKGROUND_COLOR_KEY)
            else prefs[CUSTOM_BACKGROUND_COLOR_KEY] = color.toString()
        }
    }

    suspend fun setCustomSurfaceColor(color: Long?) {
        dataStore.edit { prefs ->
            if (color == null) prefs.remove(CUSTOM_SURFACE_COLOR_KEY)
            else prefs[CUSTOM_SURFACE_COLOR_KEY] = color.toString()
        }
    }

    suspend fun setSurfaceOpacity(value: Float) {
        dataStore.edit { prefs -> prefs[SURFACE_OPACITY_KEY] = value.coerceIn(0.35f, 1f) }
    }
}
