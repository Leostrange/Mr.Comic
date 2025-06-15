package com.example.mrcomic.data

import android.content.Context
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.map

val Context.readerDataStore: DataStore<Preferences> by preferencesDataStore(name = "reader_settings")

enum class ColorFilterType { NONE, SEPIA, GRAYSCALE }
enum class PageTransition { SLIDE, FADE, NONE }
enum class ReaderSoundType { FLIP, SOFT, NONE }
enum class ReaderVibrationPattern { SHORT, LONG, NONE }

data class ReaderSettings(
    val fontSize: Int = 16,
    val fontStyle: String = "Roboto",
    val brightness: Float = 1f,
    val colorFilter: ColorFilterType = ColorFilterType.NONE,
    val pageTransition: PageTransition = PageTransition.SLIDE,
    val pageMargin: Int = 16, // dp
    val columns: Int = 1, // для EPUB
    val customCss: String = "",
    val soundEnabled: Boolean = true,
    val soundType: ReaderSoundType = ReaderSoundType.FLIP,
    val vibrationEnabled: Boolean = true,
    val vibrationPattern: ReaderVibrationPattern = ReaderVibrationPattern.SHORT,
    val powerSavingMode: Boolean = false // энергосберегающий режим
)

object ReaderSettingsManager {
    private val FONT_SIZE_KEY = intPreferencesKey("font_size")
    private val FONT_STYLE_KEY = stringPreferencesKey("font_style")
    private val BRIGHTNESS_KEY = floatPreferencesKey("brightness")
    private val COLOR_FILTER_KEY = stringPreferencesKey("color_filter")
    private val PAGE_TRANSITION_KEY = stringPreferencesKey("page_transition")
    private val PAGE_MARGIN_KEY = intPreferencesKey("page_margin")
    private val COLUMNS_KEY = intPreferencesKey("columns")
    private val CUSTOM_CSS_KEY = stringPreferencesKey("custom_css")
    private val SOUND_ENABLED_KEY = booleanPreferencesKey("sound_enabled")
    private val SOUND_TYPE_KEY = stringPreferencesKey("sound_type")
    private val VIBRATION_ENABLED_KEY = booleanPreferencesKey("vibration_enabled")
    private val VIBRATION_PATTERN_KEY = stringPreferencesKey("vibration_pattern")
    private val POWER_SAVING_MODE_KEY = booleanPreferencesKey("power_saving_mode")

    fun getReaderSettings(context: Context): Flow<ReaderSettings> {
        return context.readerDataStore.data.map { preferences ->
            ReaderSettings(
                fontSize = preferences[FONT_SIZE_KEY] ?: 16,
                fontStyle = preferences[FONT_STYLE_KEY] ?: "Roboto",
                brightness = preferences[BRIGHTNESS_KEY] ?: 1f,
                colorFilter = ColorFilterType.valueOf(preferences[COLOR_FILTER_KEY] ?: ColorFilterType.NONE.name),
                pageTransition = PageTransition.valueOf(preferences[PAGE_TRANSITION_KEY] ?: PageTransition.SLIDE.name),
                pageMargin = preferences[PAGE_MARGIN_KEY] ?: 16,
                columns = preferences[COLUMNS_KEY] ?: 1,
                customCss = preferences[CUSTOM_CSS_KEY] ?: "",
                soundEnabled = preferences[SOUND_ENABLED_KEY] ?: true,
                soundType = ReaderSoundType.valueOf(preferences[SOUND_TYPE_KEY] ?: ReaderSoundType.FLIP.name),
                vibrationEnabled = preferences[VIBRATION_ENABLED_KEY] ?: true,
                vibrationPattern = ReaderVibrationPattern.valueOf(preferences[VIBRATION_PATTERN_KEY] ?: ReaderVibrationPattern.SHORT.name),
                powerSavingMode = preferences[POWER_SAVING_MODE_KEY] ?: false
            )
        }
    }

    suspend fun saveReaderSettings(context: Context, settings: ReaderSettings) {
        context.readerDataStore.edit { preferences ->
            preferences[FONT_SIZE_KEY] = settings.fontSize
            preferences[FONT_STYLE_KEY] = settings.fontStyle
            preferences[BRIGHTNESS_KEY] = settings.brightness
            preferences[COLOR_FILTER_KEY] = settings.colorFilter.name
            preferences[PAGE_TRANSITION_KEY] = settings.pageTransition.name
            preferences[PAGE_MARGIN_KEY] = settings.pageMargin
            preferences[COLUMNS_KEY] = settings.columns
            preferences[CUSTOM_CSS_KEY] = settings.customCss
            preferences[SOUND_ENABLED_KEY] = settings.soundEnabled
            preferences[SOUND_TYPE_KEY] = settings.soundType.name
            preferences[VIBRATION_ENABLED_KEY] = settings.vibrationEnabled
            preferences[VIBRATION_PATTERN_KEY] = settings.vibrationPattern.name
            preferences[POWER_SAVING_MODE_KEY] = settings.powerSavingMode
        }
    }
} 