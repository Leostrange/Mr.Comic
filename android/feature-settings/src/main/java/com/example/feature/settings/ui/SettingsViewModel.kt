package com.example.feature.settings.ui

import android.content.Context
import android.net.Uri
import android.os.Environment
import android.provider.DocumentsContract
import android.util.Log
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.booleanPreferencesKey
import androidx.datastore.preferences.core.doublePreferencesKey
import androidx.datastore.preferences.core.floatPreferencesKey
import androidx.datastore.preferences.core.intPreferencesKey
import androidx.datastore.preferences.core.longPreferencesKey
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.core.stringSetPreferencesKey
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.core.data.preferences.APP_ICON_PREFERENCE_KEY
import com.example.core.data.preferences.DEFAULT_APP_ICON_ID
import com.example.core.data.preferences.PreferencesKeys
import com.example.core.data.preferences.UserPreferences
import com.example.core.data.preferences.appIconDataStore
import com.example.core.data.preferences.dataStore
import com.example.core.data.repository.ComicRepository
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import com.example.core.model.ReadingMode
import com.example.core.model.TranslationTransportPreference
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_SHADOW
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_COVER_SCALE
import com.example.core.ui.library.DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_SHELF_DEPTH
import com.example.core.ui.library.DEFAULT_LIBRARY_SHELF_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_THUMBNAIL_MODE
import com.example.core.ui.library.LibraryThemePresetSnapshot
import com.example.core.ui.library.libraryQuickPresetSpec
import com.example.core.ui.library.normalizeLibraryBackgroundStyle
import com.example.core.ui.library.normalizeLibraryGraphicCoverStyle
import com.example.core.ui.library.normalizeLibraryShelfStyle
import com.example.core.ui.library.parseLibraryThemePreset
import com.example.core.ui.locale.normalizeAppLanguageCode
import com.example.core.ui.theme.ReadingPreset
import com.example.core.ui.theme.ThemeMode
import com.example.core.ui.theme.ThemePreferencesRepository
import com.example.core.ui.theme.ThemePreset
import com.example.core.ui.theme.style
import com.example.core.ui.theme.toConfig
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.net.URLDecoder
import javax.inject.Inject

data class LibraryThemePresetSlot(
    val index: Int,
    val serialized: String? = null
)

data class SettingsUiState(
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val useDynamicColor: Boolean = true,
    val useAmoledDark: Boolean = false,
    val readingMode: ReadingMode = ReadingMode.PAGE_LTR,
    val brightness: Float = 0.5f,
    val keepScreenOnInReader: Boolean = false,
    // Библиотека
    val libraryGridColumns: Int = 3,
    val libraryViewGrid: Boolean = true,
    // Ридер (расширенные)
    val readerPreloadPages: Int = 3,
    val readerImmersiveMode: Boolean = false,
    val readerPageAnimation: String = "SLIDE",
    val readerPageSound: Boolean = false,
    val readerEyeRestEnabled: Boolean = false,
    val readerEyeRestMinutes: Int = 20,
    val libraryTileSize: Int = 150,
    val readerPageSoundStyle: String = "PAPER",
    val uiSoundEnabled: Boolean = false,
    val uiSoundsVolume: Float = 0.6f,
    // Язык и пресеты
    val appLanguage: String = "ru",
    val themePreset: String = ThemePreset.CUSTOM.name,
    val readerPreset: String = ReadingPreset.CUSTOM.name,
    // Кастомизация
    val uiFontScale: Float = 1.0f,
    val uiDensityScale: Float = 1.0f,
    val uiCornerRadius: Int = 12,
    /** Custom per-element colors as ARGB Long; null = use theme default */
    val customPrimaryColor: Long? = null,
    val customSecondaryColor: Long? = null,
    val customBackgroundColor: Long? = null,
    val customSurfaceColor: Long? = null,
    val surfaceOpacity: Float = 1.0f,
    val libraryCardStyle: String = DEFAULT_LIBRARY_CARD_STYLE,
    val libraryRecentStripPosition: String = "TOP",
    val libraryShowProgress: Boolean = true,
    val libraryCoverScale: String = DEFAULT_LIBRARY_COVER_SCALE,
    val libraryBackdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    val libraryBackgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    val libraryBackgroundImageUri: String? = null,
    val libraryShelfStyle: String = DEFAULT_LIBRARY_SHELF_STYLE,
    val libraryBackgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL,
    val libraryShelfDepth: Float = DEFAULT_LIBRARY_SHELF_DEPTH,
    val libraryCardShadow: Float = DEFAULT_LIBRARY_CARD_SHADOW,
    val libraryThumbnailMode: String = DEFAULT_LIBRARY_THUMBNAIL_MODE,
    val libraryGraphicCoverStyle: String = DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE,
    val librarySortOrder: String = "DATE_ADDED_DESC",
    val libraryGroupBy: String = "FOLDER",
    val libraryThemePresetSlots: List<LibraryThemePresetSlot> = emptyList(),
    // Перевод
    val translationMode: String = "OFF",
    val translationSourceLanguage: String = "AUTO",
    val translationTargetLanguage: String = "APP",
    val translationTransport: String = TranslationTransportPreference.AUTO.name,
    val translationExplainEnabled: Boolean = false,
    val ocrLanguage: String = "JA",
    val ocrDialoguesOnly: Boolean = false,
    val ocrIncludeSfx: Boolean = true,
    val ocrOverlayOpacity: Float = 0.85f,
    val ocrOverlayFontScale: Float = 1.0f,
    val ocrOverlayStyle: String = "AUTO",
    // Бэкап
    val autoBackupEnabled: Boolean = false,
    val isClearingCache: Boolean = false,
    val isExporting: Boolean = false,
    val isImporting: Boolean = false,
    val isRepairingLibraryAccess: Boolean = false,
    val pendingLibraryRepairLaunchToken: Long = 0L,
    val cacheMessage: String? = null,
    // Для отображения достижений в настройках
    val totalComics: Int = 0,
    val completedComics: Int = 0,
    val bookmarkedComics: Int = 0,
    val rawAuthors: List<String?> = emptyList(),
    val rawGenres: List<String?> = emptyList()
)

// Internal state for all async operations to avoid exceeding combine()'s 5-flow limit
private data class StatusState(
    val isClearingCache: Boolean = false,
    val isExporting: Boolean = false,
    val isImporting: Boolean = false,
    val isRepairingLibraryAccess: Boolean = false,
    val pendingLibraryRepairLaunchToken: Long = 0L,
    val message: String? = null
)

@HiltViewModel
class SettingsViewModel @Inject constructor(
    @ApplicationContext private val context: Context,
    private val themePreferencesRepository: ThemePreferencesRepository,
    private val comicRepository: ComicRepository
) : ViewModel() {

    private val preferences = UserPreferences(context.dataStore)
    private val statusState = MutableStateFlow(StatusState())

    // Debounce jobs for continuous slider inputs — avoids a DataStore write on every drag tick.
    private val sliderJobs = mutableMapOf<String, Job>()
    private fun setSlider(key: String, block: suspend () -> Unit) {
        sliderJobs[key]?.cancel()
        sliderJobs[key] = viewModelScope.launch { delay(300); block() }
    }

    private val baseUiState = combine(
        themePreferencesRepository.themeConfig,
        themePreferencesRepository.themePreset,
        preferences.get(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name).map { stored ->
            runCatching { ReadingMode.valueOf(stored) }.getOrDefault(ReadingMode.PAGE_LTR)
        },
        preferences.get(PreferencesKeys.READING_BRIGHTNESS, 0.5f).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.READER_KEEP_SCREEN_ON, false)
    ) { themeConfig, preset, readingMode, brightness, keepScreenOn ->
        SettingsUiState(
            themeMode = themeConfig.themeMode,
            useDynamicColor = themeConfig.useDynamicColor,
            useAmoledDark = themeConfig.useAmoledDark,
            themePreset = preset.name,
            readingMode = readingMode,
            brightness = brightness,
            keepScreenOnInReader = keepScreenOn,
            customPrimaryColor = themeConfig.customPrimaryColor,
            customSecondaryColor = themeConfig.customSecondaryColor,
            customBackgroundColor = themeConfig.customBackgroundColor,
            customSurfaceColor = themeConfig.customSurfaceColor,
            surfaceOpacity = themeConfig.surfaceOpacity
        )
    }

    // Extras 1: библиотека + базовые настройки ридера
    private val extrasFlow1 = combine(
        preferences.get(PreferencesKeys.LIBRARY_GRID_COLUMNS, 3).map { it.coerceIn(2, 4) },
        preferences.get(PreferencesKeys.LIBRARY_VIEW_GRID, true),
        preferences.get(PreferencesKeys.READER_PRELOAD_PAGES, 3).map { it.coerceIn(2, 8) },
        preferences.get(PreferencesKeys.READER_IMMERSIVE_MODE, false),
        preferences.get(PreferencesKeys.READER_PAGE_ANIMATION, "SLIDE")
    ) { columns, viewGrid, preload, immersive, animation ->
        listOf<Any>(columns, viewGrid, preload, immersive, animation)
    }

    private val extrasFlow2 = combine(
        preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").map(::normalizeAppLanguageCode),
        preferences.get(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            .map { ReadingPreset.fromStored(it).name },
        preferences.get(PreferencesKeys.UI_FONT_SCALE, 1.0f),
        preferences.get(PreferencesKeys.UI_DENSITY_SCALE, 1.0f).map { it.coerceIn(0.9f, 1.1f) },
        preferences.get(PreferencesKeys.UI_CORNER_RADIUS, 12)
    ) { lang, readerPreset, fontScale, uiDensityScale, cornerRadius ->
        listOf<Any>(lang, readerPreset, fontScale, uiDensityScale, cornerRadius)
    }

    private val extrasFlow12 = combine(extrasFlow1, extrasFlow2) { e1, e2 -> e1 + e2 }

    private val extrasFlow3a = combine(
        preferences.get(PreferencesKeys.TRANSLATION_MODE, "OFF"),
        preferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO"),
        preferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP"),
        preferences.get(PreferencesKeys.TRANSLATION_TRANSPORT, TranslationTransportPreference.AUTO.name)
    ) { translationMode, sourceLanguage, targetLanguage, transport ->
        listOf<Any>(
            translationMode,
            sourceLanguage,
            targetLanguage,
            transport
        )
    }

    private val extrasFlow3a2 = combine(
        preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false),
        preferences.get(PreferencesKeys.OCR_DIALOGUES_ONLY, false),
        preferences.get(PreferencesKeys.OCR_INCLUDE_SFX, true)
    ) { explainEnabled, ocrDialoguesOnly, ocrIncludeSfx ->
        listOf<Any>(
            explainEnabled,
            ocrDialoguesOnly,
            ocrIncludeSfx
        )
    }

    private val extrasFlow3a3 = combine(
        preferences.get(PreferencesKeys.OCR_OVERLAY_OPACITY, 0.85f).map { it.coerceIn(0.45f, 1.0f) },
        preferences.get(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, 1.0f).map { it.coerceIn(0.85f, 1.3f) },
        preferences.get(PreferencesKeys.OCR_OVERLAY_STYLE, "AUTO")
    ) { overlayOpacity, overlayFontScale, overlayStyle ->
        listOf<Any>(overlayOpacity, overlayFontScale, overlayStyle)
    }

    private val extrasFlow3b = combine(
        preferences.get(PreferencesKeys.OCR_LANGUAGE, "JA"),
        preferences.get(PreferencesKeys.AUTO_BACKUP_ENABLED, false),
        preferences.get(PreferencesKeys.READER_PAGE_SOUND, false),
        preferences.get(PreferencesKeys.LIBRARY_TILE_SIZE_DP, 150)
    ) { ocrLanguage, autoBackup, pageSound, tileSize ->
        listOf<Any>(ocrLanguage, autoBackup, pageSound, tileSize)
    }

    private val extrasFlow3 = combine(extrasFlow3a, extrasFlow3a2, extrasFlow3a3, extrasFlow3b) { left, middle, overlay, right ->
        left + middle + overlay + right
    }

    private val extrasFlow4 = combine(
        preferences.get(PreferencesKeys.READER_PAGE_SOUND_STYLE, "PAPER"),
        preferences.get(PreferencesKeys.UI_SOUND_ENABLED, false),
        preferences.get(PreferencesKeys.UI_SOUNDS_VOLUME, 0.6f).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_STYLE, DEFAULT_LIBRARY_CARD_STYLE),
        preferences.get(PreferencesKeys.LIBRARY_RECENT_STRIP_POSITION, "TOP")
    ) { soundStyle, uiSoundEnabled, uiSoundsVolume, libraryCardStyle, libraryRecentStripPosition ->
        listOf<Any>(soundStyle, uiSoundEnabled, uiSoundsVolume, libraryCardStyle, libraryRecentStripPosition)
    }

    private val extrasFlow5 = combine(
        preferences.get(PreferencesKeys.LIBRARY_SHOW_PROGRESS, true),
        preferences.get(PreferencesKeys.LIBRARY_COVER_SCALE, DEFAULT_LIBRARY_COVER_SCALE),
        preferences.get(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, DEFAULT_LIBRARY_BACKDROP_STRENGTH).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_SORT_ORDER, "DATE_ADDED_DESC"),
        preferences.get(PreferencesKeys.LIBRARY_GROUP_BY, "FOLDER")
    ) { libraryShowProgress, libraryCoverScale, libraryBackdropStrength, librarySortOrder, libraryGroupBy ->
        listOf<Any>(
            libraryShowProgress,
            libraryCoverScale,
            libraryBackdropStrength,
            librarySortOrder,
            libraryGroupBy
        )
    }

    private val extrasFlow6a = combine(
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE),
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, ""),
        preferences.get(PreferencesKeys.LIBRARY_SHELF_STYLE, DEFAULT_LIBRARY_SHELF_STYLE),
        preferences.get(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, DEFAULT_LIBRARY_THUMBNAIL_MODE),
        preferences.get(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE)
    ) { backgroundStyle, backgroundImageUri, shelfStyle, thumbnailMode, graphicCoverStyle ->
        listOf<Any>(backgroundStyle, backgroundImageUri, shelfStyle, thumbnailMode, graphicCoverStyle)
    }

    private val extrasFlow6b = combine(
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, DEFAULT_LIBRARY_BACKGROUND_VEIL).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_SHELF_DEPTH, DEFAULT_LIBRARY_SHELF_DEPTH).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_SHADOW, DEFAULT_LIBRARY_CARD_SHADOW).map { it.coerceIn(0f, 1f) }
    ) { backgroundVeil, shelfDepth, cardShadow ->
        listOf<Any>(backgroundVeil, shelfDepth, cardShadow)
    }

    private val extrasFlow6c = combine(
        preferences.get(PreferencesKeys.LIBRARY_THEME_PRESET_1, ""),
        preferences.get(PreferencesKeys.LIBRARY_THEME_PRESET_2, ""),
        preferences.get(PreferencesKeys.LIBRARY_THEME_PRESET_3, "")
    ) { preset1, preset2, preset3 ->
        listOf<Any>(
            LibraryThemePresetSlot(index = 1, serialized = preset1.ifBlank { null }),
            LibraryThemePresetSlot(index = 2, serialized = preset2.ifBlank { null }),
            LibraryThemePresetSlot(index = 3, serialized = preset3.ifBlank { null })
        )
    }

    private val extrasFlow345 = combine(extrasFlow3, extrasFlow4, extrasFlow5) { e3, e4, e5 -> e3 + e4 + e5 }
    private val extrasFlow6 = combine(extrasFlow6a, extrasFlow6b, extrasFlow6c) { left, middle, right ->
        left + middle + right
    }
    private val extrasFlow3456 = combine(extrasFlow345, extrasFlow6) { left, right -> left + right }
    private val extrasFlow7 = combine(
        preferences.get(PreferencesKeys.READER_EYE_REST_ENABLED, false),
        preferences.get(PreferencesKeys.READER_EYE_REST_MINUTES, 20).map { it.coerceIn(10, 60) }
    ) { eyeRestEnabled, eyeRestMinutes ->
        listOf<Any>(eyeRestEnabled, eyeRestMinutes)
    }

    val uiState: StateFlow<SettingsUiState> = combine(
        baseUiState,
        extrasFlow12,
        extrasFlow3456,
        extrasFlow7,
        statusState,
    ) { state, e12, e345, e7, status ->
        state.copy(
            libraryGridColumns   = e12[0] as Int,
            libraryViewGrid      = e12[1] as Boolean,
            readerPreloadPages   = e12[2] as Int,
            readerImmersiveMode  = e12[3] as Boolean,
            readerPageAnimation  = e12[4] as String,
            appLanguage          = e12[5] as String,
            readerPreset         = e12[6] as String,
            uiFontScale          = e12[7] as Float,
            uiDensityScale       = e12[8] as Float,
            uiCornerRadius       = e12[9] as Int,
            translationMode      = e345[0] as String,
            translationSourceLanguage = e345[1] as String,
            translationTargetLanguage = e345[2] as String,
            translationTransport = e345[3] as String,
            translationExplainEnabled = e345[4] as Boolean,
            ocrDialoguesOnly     = e345[5] as Boolean,
            ocrIncludeSfx        = e345[6] as Boolean,
            ocrOverlayOpacity    = e345[7] as Float,
            ocrOverlayFontScale  = e345[8] as Float,
            ocrOverlayStyle      = e345[9] as String,
            ocrLanguage          = e345[10] as String,
            autoBackupEnabled    = e345[11] as Boolean,
            isClearingCache      = status.isClearingCache,
            isExporting          = status.isExporting,
            isImporting          = status.isImporting,
            isRepairingLibraryAccess = status.isRepairingLibraryAccess,
            pendingLibraryRepairLaunchToken = status.pendingLibraryRepairLaunchToken,
            cacheMessage         = status.message,
            readerPageSound      = e345[12] as Boolean,
            libraryTileSize      = e345[13] as Int,
            readerPageSoundStyle = e345[14] as String,
            uiSoundEnabled       = e345[15] as Boolean,
            uiSoundsVolume       = e345[16] as Float,
            libraryCardStyle     = e345[17] as String,
            libraryRecentStripPosition = e345[18] as String,
            libraryShowProgress  = e345[19] as Boolean,
            libraryCoverScale    = e345[20] as String,
            libraryBackdropStrength = e345[21] as Float,
            librarySortOrder     = e345[22] as String,
            libraryGroupBy       = e345[23] as String,
            libraryBackgroundStyle = normalizeLibraryBackgroundStyle(e345[24] as String),
            libraryBackgroundImageUri = (e345[25] as String).ifBlank { null },
            libraryShelfStyle    = normalizeLibraryShelfStyle(e345[26] as String),
            libraryThumbnailMode = e345[27] as String,
            libraryGraphicCoverStyle = normalizeLibraryGraphicCoverStyle(e345[28] as String),
            libraryBackgroundVeil = e345[29] as Float,
            libraryShelfDepth = e345[30] as Float,
            libraryCardShadow = e345[31] as Float,
            libraryThemePresetSlots = listOf(
                e345[32] as LibraryThemePresetSlot,
                e345[33] as LibraryThemePresetSlot,
                e345[34] as LibraryThemePresetSlot
            ),
            readerEyeRestEnabled = e7[0] as Boolean,
            readerEyeRestMinutes = e7[1] as Int
        )
    }.combine(comicRepository.getAllComics()) { state, comics ->
        state.copy(
            totalComics       = comics.size,
            completedComics   = comics.count { it.isCompleted },
            bookmarkedComics  = comics.count { it.isBookmarked },
            rawAuthors        = comics.map { it.author },
            rawGenres         = comics.map { it.genre }
        )
    }.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5_000),
        initialValue = SettingsUiState()
    )

    fun setAppLanguage(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.APP_LANGUAGE, normalizeAppLanguageCode(code)) }
    }

    /**
     * Applies a theme preset: writes all preset color values and flags into DataStore,
     * then marks the active preset. Selecting CUSTOM only marks the preset key.
     */
    fun setThemePreset(preset: ThemePreset) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(preset)
            if (preset != ThemePreset.CUSTOM) {
                val cfg = preset.toConfig()
                themePreferencesRepository.setThemeMode(cfg.themeMode)
                themePreferencesRepository.setUseDynamicColor(cfg.useDynamicColor)
                themePreferencesRepository.setUseAmoledDark(cfg.useAmoledDark)
                themePreferencesRepository.setCustomPrimaryColor(cfg.primaryColor)
                themePreferencesRepository.setCustomSecondaryColor(cfg.secondaryColor)
                themePreferencesRepository.setCustomBackgroundColor(cfg.backgroundColor)
                themePreferencesRepository.setCustomSurfaceColor(null)
                themePreferencesRepository.setSurfaceOpacity(1f)
            }
        }
    }

    /**
     * Applies a reader preset: sets multiple reader settings at once.
     * CUSTOM only marks the preset key without changing other settings.
     */
    fun setReaderPreset(presetName: String) {
        viewModelScope.launch {
            val preset = ReadingPreset.fromStored(presetName.uppercase())
            preferences.set(PreferencesKeys.READER_PRESET, preset.name)
            if (preset == ReadingPreset.CUSTOM) return@launch

            val style = preset.style()
            preferences.set(PreferencesKeys.READING_BRIGHTNESS, style.brightness)
            preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, style.immersiveMode)
            preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, style.pageAnimation)
            preferences.set(PreferencesKeys.READER_PAGE_SOUND, false)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, style.textColorScheme)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
            preferences.set(PreferencesKeys.TEXT_BOLD, false)
        }
    }

    private fun markReaderPresetCustom() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        }
    }

    fun setThemeMode(mode: ThemeMode) {
        viewModelScope.launch {
            // Manual change = exit preset
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setThemeMode(mode)
        }
    }

    fun setUseDynamicColor(enabled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setUseDynamicColor(enabled)
        }
    }

    fun setUseAmoledDark(enabled: Boolean) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setUseAmoledDark(enabled)
        }
    }

    fun setCustomPrimaryColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomPrimaryColor(color)
        }
    }

    fun setCustomSecondaryColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomSecondaryColor(color)
        }
    }

    fun setCustomBackgroundColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomBackgroundColor(color)
        }
    }

    fun setCustomSurfaceColor(color: Long?) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setCustomSurfaceColor(color)
        }
    }

    fun setSurfaceOpacity(value: Float) {
        viewModelScope.launch {
            themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
            themePreferencesRepository.setSurfaceOpacity(value)
        }
    }

    fun setReadingMode(mode: ReadingMode) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READING_MODE, mode.name)
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
        }
    }

    fun setBrightness(value: Float) {
        markReaderPresetCustom()
        setSlider("brightness") { preferences.set(PreferencesKeys.READING_BRIGHTNESS, value.coerceIn(0f, 1f)) }
    }

    fun setKeepScreenOnInReader(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
        }
    }

    fun setLibraryGridColumns(count: Int) {
        setSlider("gridColumns") { preferences.set(PreferencesKeys.LIBRARY_GRID_COLUMNS, count.coerceIn(2, 4)) }
    }

    fun setLibraryViewGrid(grid: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, grid) }
    }

    fun setReaderPreloadPages(count: Int) {
        setSlider("preloadPages") { preferences.set(PreferencesKeys.READER_PRELOAD_PAGES, count.coerceIn(2, 8)) }
    }

    fun setReaderImmersiveMode(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled) }
    }

    fun setReaderPageAnimation(animation: String) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, animation) }
    }

    fun setReaderPageSound(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND, enabled) }
    }

    fun setReaderEyeRestEnabled(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_EYE_REST_ENABLED, enabled) }
    }

    fun setReaderEyeRestMinutes(minutes: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_EYE_REST_MINUTES, minutes.coerceIn(10, 60))
        }
    }

    fun setLibraryTileSize(size: Int) {
        setSlider("tileSize") { preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, size.coerceIn(80, 200)) }
    }

    fun setReaderPageSoundStyle(style: String) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND_STYLE, style) }
    }

    fun setUiSoundEnabled(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.UI_SOUND_ENABLED, enabled) }
    }

    fun setUiSoundsVolume(vol: Float) {
        setSlider("uiVolume") { preferences.set(PreferencesKeys.UI_SOUNDS_VOLUME, vol.coerceIn(0f, 1f)) }
    }

    fun setUiFontScale(scale: Float) {
        setSlider("fontScale") { preferences.set(PreferencesKeys.UI_FONT_SCALE, scale) }
    }

    fun setUiDensityScale(scale: Float) {
        setSlider("uiDensity") { preferences.set(PreferencesKeys.UI_DENSITY_SCALE, scale.coerceIn(0.9f, 1.1f)) }
    }

    fun setUiCornerRadius(radius: Int) {
        setSlider("cornerRadius") { preferences.set(PreferencesKeys.UI_CORNER_RADIUS, radius) }
    }

    fun setTranslationMode(mode: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_MODE, mode) }
    }

    fun setTranslationSourceLanguage(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, code.uppercase()) }
    }

    fun setTranslationTargetLanguage(code: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, code.uppercase()) }
    }

    fun setTranslationTransport(value: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_TRANSPORT, value.uppercase()) }
    }

    fun setTranslationExplainEnabled(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, enabled) }
    }

    fun setOcrLanguage(lang: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_LANGUAGE, lang) }
    }

    fun setOcrDialoguesOnly(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_DIALOGUES_ONLY, enabled) }
    }

    fun setOcrIncludeSfx(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_INCLUDE_SFX, enabled) }
    }

    fun setOcrOverlayOpacity(value: Float) {
        setSlider("ocrOverlayOpacity") {
            preferences.set(PreferencesKeys.OCR_OVERLAY_OPACITY, value.coerceIn(0.45f, 1.0f))
        }
    }

    fun setOcrOverlayFontScale(value: Float) {
        setSlider("ocrOverlayFontScale") {
            preferences.set(PreferencesKeys.OCR_OVERLAY_FONT_SCALE, value.coerceIn(0.85f, 1.3f))
        }
    }

    fun setOcrOverlayStyle(value: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.OCR_OVERLAY_STYLE, value.uppercase()) }
    }

    fun setLibraryCardStyle(style: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, style) }
    }

    fun setLibraryRecentStripPosition(position: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_RECENT_STRIP_POSITION, position) }
    }

    fun setLibraryShowProgress(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SHOW_PROGRESS, enabled) }
    }

    fun setLibraryCoverScale(scale: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_COVER_SCALE, scale) }
    }

    fun setLibraryBackdropStrength(value: Float) {
        setSlider("libraryBackdrop") {
            preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, value.coerceIn(0f, 1f))
        }
    }

    fun setLibraryBackgroundStyle(style: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, normalizeLibraryBackgroundStyle(style))
        }
    }

    fun saveLibraryThemePreset(slot: Int) {
        val snapshot = uiState.value.toLibraryThemePresetSnapshot()
        viewModelScope.launch {
            preferences.set(libraryThemePresetKey(slot), snapshot.serialize())
        }
    }

    fun applyLibraryThemePreset(slot: Int) {
        val snapshot = parseLibraryThemePreset(
            uiState.value.libraryThemePresetSlots.firstOrNull { it.index == slot }?.serialized
        ) ?: return
        viewModelScope.launch {
            applyLibraryPresetSnapshot(snapshot)
        }
    }

    fun clearLibraryThemePreset(slot: Int) {
        viewModelScope.launch {
            preferences.set(libraryThemePresetKey(slot), "")
        }
    }

    fun applyLibraryZonePreset(style: String) {
        viewModelScope.launch {
            when (normalizeLibraryBackgroundStyle(style)) {
                "DARK_STUDY" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "DARK_STUDY")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "WALNUT")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "INK")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.58f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.46f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.62f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.64f)
                }
                "LIGHT_GREENHOUSE" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "LIGHT_GREENHOUSE")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "OAK")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "BALANCED")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "MINIMAL")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.4f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.24f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.28f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.44f)
                }
                "SCIENCE_LAB" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "SCIENCE_LAB")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "GLASS")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "POSTER")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.54f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.32f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.5f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.56f)
                }
                "CITY_LIBRARY" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "CITY_LIBRARY")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "STEEL")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "BALANCED")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "POSTER")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.44f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.28f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.42f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.52f)
                }
                else -> Unit
            }
        }
    }

    fun applyLibraryLookPreset(presetId: String) {
        viewModelScope.launch {
            val preset = libraryQuickPresetSpec(presetId) ?: return@launch
            applyLibraryPresetSnapshot(preset.snapshot, preset.useAmoledDark)
        }
    }

    fun setLibraryBackgroundVeil(value: Float) {
        setSlider("libraryVeil") {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, value.coerceIn(0f, 1f))
        }
    }

    fun setLibraryBackgroundImageUri(uri: String?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, uri.orEmpty())
            if (uri.isNullOrBlank()) {
                val currentStyle = preferences
                    .get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE)
                    .first()
                if (currentStyle == "IMAGE") {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE)
                }
            } else {
                preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "IMAGE")
            }
        }
    }

    fun setLibraryShelfStyle(style: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, normalizeLibraryShelfStyle(style))
        }
    }

    fun setLibraryShelfDepth(value: Float) {
        setSlider("libraryShelfDepth") {
            preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, value.coerceIn(0f, 1f))
        }
    }

    fun setLibraryCardShadow(value: Float) {
        setSlider("libraryCardShadow") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, value.coerceIn(0f, 1f))
        }
    }

    fun setLibraryThumbnailMode(mode: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, mode) }
    }

    fun setLibraryGraphicCoverStyle(style: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE,
                normalizeLibraryGraphicCoverStyle(style)
            )
        }
    }

    fun setLibrarySortOrder(order: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, order) }
    }

    fun setLibraryGroupBy(mode: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, mode) }
    }

    fun setAutoBackupEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.AUTO_BACKUP_ENABLED, enabled)
            // Immediately create a backup when user enables the feature so they see it works.
            if (enabled) autoBackupToDocuments()
        }
    }

    /**
     * Writes library progress JSON to
     * `Documents/MrComic/mrcomic_backup_<date>.json`.
     * Called on: (a) enable toggle, (b) app lifecycle onStop via [triggerAutoBackupIfEnabled].
     */
    suspend fun autoBackupToDocuments() = kotlinx.coroutines.withContext(Dispatchers.IO) {
        try {
            val docsDir = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOCUMENTS)
            val backupDir = File(docsDir, "MrComic").apply { mkdirs() }
            if (!backupDir.exists()) return@withContext  // no external storage

            val date = java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.US)
                .format(java.util.Date())
            val backupFile = File(backupDir, "mrcomic_backup_$date.json")

            val comics = comicRepository.getAllComics().first()
            val root = buildBackupJson(comics)
            backupFile.writeText(root.toString(2), Charsets.UTF_8)
            Log.i("SettingsVM", "Auto-backup written: ${backupFile.absolutePath}")
        } catch (e: Exception) {
            Log.w("SettingsVM", "Auto-backup failed", e)
        }
    }

    // ── Cache ────────────────────────────────────────────────────────────────

    fun clearImageCache() {
        if (statusState.value.isClearingCache) return
        statusState.update { it.copy(isClearingCache = true, message = null) }
        viewModelScope.launch(Dispatchers.IO) {
            val removedBytes = removeCacheDir("covers") +
                removeCacheDir("cbz_cache") +
                removeCacheDir("rar_cache") +
                removeCacheDir("import_tmp") +
                removeCacheDir("epub_cache")
            val message = if (removedBytes > 0L) {
                "Кэш очищен (${formatSize(removedBytes)})"
            } else {
                "Кэш уже пуст"
            }
            statusState.update { it.copy(isClearingCache = false, message = message) }
        }
    }

    fun consumeCacheMessage() {
        statusState.update { it.copy(message = null) }
    }

    fun consumePendingLibraryRepairLaunch() {
        statusState.update { it.copy(pendingLibraryRepairLaunchToken = 0L) }
    }

    // ── Export / Import reading progress ─────────────────────────────────────

    fun exportProgress(uri: Uri) {
        if (statusState.value.isExporting) return
        statusState.update { it.copy(isExporting = true, message = null) }
        viewModelScope.launch(Dispatchers.IO) {
            try {
                val comics = comicRepository.getAllComics().first()
                val root = buildBackupJson(comics)

                context.contentResolver.openOutputStream(uri)?.use { out ->
                    out.write(root.toString(2).toByteArray(Charsets.UTF_8))
                }
                statusState.update {
                    it.copy(
                        isExporting = false,
                        message = "Экспортировано: ${comics.size} книг/комиксов и все настройки"
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Export failed", e)
                statusState.update {
                    it.copy(isExporting = false, message = "Ошибка экспорта: ${e.localizedMessage}")
                }
            }
        }
    }

    fun importProgress(uri: Uri) {
        if (statusState.value.isImporting) return
        statusState.update { it.copy(isImporting = true, message = null) }
        viewModelScope.launch(Dispatchers.IO) {
            try {
                val jsonString = context.contentResolver.openInputStream(uri)?.use { stream ->
                    stream.readBytes().toString(Charsets.UTF_8)
                } ?: throw IllegalStateException("Не удалось прочитать файл")

                val root = JSONObject(jsonString)
                val entries = root.getJSONArray("entries")
                var updated = 0
                var restored = 0
                var skipped = 0
                var unresolvedAccess = 0
                val restoredMainPreferences = restorePreferencesFromBackup(root.optJSONObject("preferences"))
                val restoredThemePreferences = restoreThemePreferencesFromBackup(root.optJSONObject("themePreferences"))
                val restoredAppIcon = restoreAppIconFromBackup(root.optJSONObject("appIcon"))
                val restoredSettings = restoredMainPreferences + restoredThemePreferences + restoredAppIcon

                for (i in 0 until entries.length()) {
                    val entry = entries.getJSONObject(i)
                    val backupComic = parseComicBackupEntry(entry)
                    if (backupComic == null) {
                        skipped++
                        continue
                    }

                    val result = comicRepository.restoreComicFromBackup(backupComic)
                    if (result != null) {
                        if (result.inserted) {
                            restored++
                        } else {
                            updated++
                        }
                        if (!result.isReadable) {
                            unresolvedAccess++
                        }
                    } else {
                        skipped++
                    }
                }

                val message = buildString {
                    append("Импортировано в библиотеку: $restored, обновлено: $updated, пропущено: $skipped, настроек восстановлено: $restoredSettings")
                    if (unresolvedAccess > 0) {
                        append(". Ещё $unresolvedAccess файлов требуют перепривязки доступа через исходную папку.")
                    }
                }
                statusState.update {
                    it.copy(
                        isImporting = false,
                        pendingLibraryRepairLaunchToken = if (unresolvedAccess > 0) System.currentTimeMillis() else 0L,
                        message = message
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Import failed", e)
                statusState.update {
                    it.copy(isImporting = false, message = "Ошибка импорта: ${e.localizedMessage}")
                }
            }
        }
    }

    fun repairLibraryAccess(treeUri: Uri) {
        if (statusState.value.isRepairingLibraryAccess) return
        statusState.update { it.copy(isRepairingLibraryAccess = true, message = null) }
        viewModelScope.launch(Dispatchers.IO) {
            try {
                val result = comicRepository.repairLibraryAccess(treeUri)
                val message = when {
                    result.repaired > 0 -> {
                        buildString {
                            append("Перепривязано: ${result.repaired}")
                            if (result.alreadyReadable > 0) append(", уже в порядке: ${result.alreadyReadable}")
                            if (result.missing > 0) append(", не найдены в выбранной папке: ${result.missing}")
                            if (result.skipped > 0) append(", не относятся к этой папке: ${result.skipped}")
                        }
                    }
                    result.alreadyReadable > 0 -> {
                        "В выбранной папке новых проблем не найдено. Уже доступны: ${result.alreadyReadable}"
                    }
                    result.missing > 0 || result.skipped > 0 -> {
                        "Ничего не удалось перепривязать. Если часть книг всё ещё не открывается, выберите другую исходную папку."
                    }
                    else -> {
                        "Не удалось сопоставить книги с выбранной папкой."
                    }
                }
                statusState.update {
                    it.copy(
                        isRepairingLibraryAccess = false,
                        message = message
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Repair library access failed", e)
                statusState.update {
                    it.copy(
                        isRepairingLibraryAccess = false,
                        message = "Ошибка перепривязки доступа: ${e.localizedMessage}"
                    )
                }
            }
        }
    }

    // ── Helpers ───────────────────────────────────────────────────────────────

    private suspend fun buildBackupJson(
        comics: List<com.example.core.model.Comic>
    ): JSONObject {
        val root = JSONObject()
        root.put("version", 4)
        root.put("exportedAt", System.currentTimeMillis())
        root.put("preferences", exportPreferencesJson())
        root.put("themePreferences", exportThemePreferencesJson())
        root.put("appIcon", exportAppIconJson())

        val entries = JSONArray()
        for (comic in comics) {
            val sourcePath = resolveBackupSourcePath(comic)
            entries.put(JSONObject().apply {
                put("id", comic.id)
                put("path", comic.path)
                put("sourcePath", sourcePath)
                put("title", comic.title)
                put("format", comic.format.name)
                put("treeUri", comic.treeUri)
                put("documentId", comic.documentId)
                put("currentPage", comic.currentPage)
                put("pageCount", comic.pageCount)
                put("fileSize", comic.fileSize)
                put("addedDate", comic.addedDate)
                put("lastModified", comic.lastModified)
                put("folderId", comic.folderId)
                put("readingProgress", comic.readingProgress.toDouble())
                put("lastReadDate", comic.lastReadDate ?: 0L)
                put("isBookmarked", comic.isBookmarked)
                put("tags", comic.tags)
                put("series", comic.series)
                put("volume", comic.volume)
                put("issue", comic.issue)
                put("year", comic.year)
                put("publisher", comic.publisher)
                put("author", comic.author)
                put("artist", comic.artist)
                put("genre", comic.genre)
                put("language", comic.language)
                put("isCompleted", comic.isCompleted)
            })
        }
        root.put("entries", entries)
        return root
    }

    private suspend fun exportPreferencesJson(): JSONObject {
        val snapshot = context.dataStore.data.first()
        val preferencesObject = JSONObject()
        snapshot.asMap().forEach { (key, value) ->
            preferencesObject.put(key.name, serializePreferenceValue(value))
        }
        return preferencesObject
    }

    private fun serializePreferenceValue(value: Any): JSONObject = JSONObject().apply {
        when (value) {
            is Boolean -> {
                put("type", "boolean")
                put("value", value)
            }
            is Int -> {
                put("type", "int")
                put("value", value)
            }
            is Long -> {
                put("type", "long")
                put("value", value)
            }
            is Float -> {
                put("type", "float")
                put("value", value.toDouble())
            }
            is Double -> {
                put("type", "double")
                put("value", value)
            }
            is Set<*> -> {
                put("type", "string_set")
                put("value", JSONArray(value.filterIsInstance<String>()))
            }
            else -> {
                put("type", "string")
                put("value", value.toString())
            }
        }
    }

    private fun parseComicBackupEntry(entry: JSONObject): Comic? {
        val path = entry.optString("sourcePath", "")
            .ifBlank { entry.optString("path", "") }
            .trim()
        if (path.isBlank()) return null

        val format = parseBackupComicFormat(entry.optString("format", ""), path)
        val pageCount = entry.optInt("pageCount", 0).coerceAtLeast(0)
        val currentPage = if (pageCount > 0) {
            entry.optInt("currentPage", 0).coerceIn(0, (pageCount - 1).coerceAtLeast(0))
        } else {
            entry.optInt("currentPage", 0).coerceAtLeast(0)
        }
        val storedProgress = entry.optDouble("readingProgress", 0.0).toFloat().coerceIn(0f, 1f)
        val effectiveProgress = when {
            pageCount > 0 -> ((currentPage + 1).toFloat() / pageCount.toFloat()).coerceIn(0f, 1f)
            else -> storedProgress
        }

        return Comic(
            id = entry.optString("id", "").ifBlank { java.util.UUID.randomUUID().toString() },
            title = entry.optString("title", "").ifBlank { deriveBackupTitle(path) },
            path = path,
            format = format,
            coverPath = null,
            treeUri = entry.optString("treeUri", "").ifBlank { null },
            documentId = entry.optString("documentId", "").ifBlank { null },
            pageCount = pageCount,
            fileSize = entry.optLong("fileSize", 0L).coerceAtLeast(0L),
            addedDate = entry.optLong("addedDate", 0L).takeIf { it > 0L } ?: System.currentTimeMillis(),
            lastModified = entry.optLong("lastModified", 0L).takeIf { it > 0L } ?: System.currentTimeMillis(),
            folderId = entry.optString("folderId", "").ifBlank { null },
            lastReadDate = entry.optLong("lastReadDate", 0L).takeIf { it > 0L },
            readingProgress = effectiveProgress,
            currentPage = currentPage,
            isBookmarked = entry.optBoolean("isBookmarked", false),
            tags = entry.optString("tags", ""),
            series = entry.optString("series", "").ifBlank { null },
            volume = entry.optInt("volume").takeIf { entry.has("volume") && !entry.isNull("volume") },
            issue = entry.optInt("issue").takeIf { entry.has("issue") && !entry.isNull("issue") },
            year = entry.optInt("year").takeIf { entry.has("year") && !entry.isNull("year") },
            publisher = entry.optString("publisher", "").ifBlank { null },
            author = entry.optString("author", "").ifBlank { null },
            artist = entry.optString("artist", "").ifBlank { null },
            genre = entry.optString("genre", "").ifBlank { null },
            language = entry.optString("language", "en").ifBlank { "en" },
            isCompleted = entry.optBoolean("isCompleted", false)
        )
    }

    private fun resolveBackupSourcePath(comic: Comic): String {
        val appLibraryDir = File(context.filesDir, "library").absolutePath
        val currentPath = comic.path.trim()
        if (currentPath.isBlank()) return currentPath
        if (!currentPath.startsWith(appLibraryDir, ignoreCase = true)) return currentPath

        val storedSource = comic.treeUri?.trim().orEmpty()
        if (storedSource.startsWith("content://")) {
            return storedSource
        }

        val documentId = comic.documentId?.trim().orEmpty()
        if (documentId.isBlank()) return currentPath

        val persistedMatch = context.contentResolver.persistedUriPermissions
            .asSequence()
            .map { it.uri }
            .firstOrNull { uri ->
                runCatching {
                    when {
                        DocumentsContract.isDocumentUri(context, uri) ->
                            DocumentsContract.getDocumentId(uri) == documentId
                        DocumentsContract.isTreeUri(uri) -> {
                            val rebuilt = DocumentsContract.buildDocumentUriUsingTree(uri, documentId)
                            context.contentResolver.openInputStream(rebuilt)?.use { true } ?: false
                        }
                        else -> false
                    }
                }.getOrDefault(false)
            }

        return when {
            persistedMatch == null -> currentPath
            DocumentsContract.isTreeUri(persistedMatch) ->
                runCatching { DocumentsContract.buildDocumentUriUsingTree(persistedMatch, documentId).toString() }
                    .getOrDefault(currentPath)
            else -> persistedMatch.toString()
        }
    }

    private fun parseBackupComicFormat(raw: String, path: String): ComicFormat {
        val explicit = runCatching { ComicFormat.valueOf(raw.trim()) }.getOrNull()
        if (explicit != null) return explicit
        return when (path.substringAfterLast('.', "").lowercase()) {
            "cbz" -> ComicFormat.CBZ
            "zip" -> ComicFormat.ZIP
            "cbr" -> ComicFormat.CBR
            "rar" -> ComicFormat.RAR
            "cb7", "7z" -> ComicFormat.SEVENZ
            "tar" -> ComicFormat.TAR
            "pdf" -> ComicFormat.PDF
            "epub" -> ComicFormat.EPUB
            "fb2" -> ComicFormat.FB2
            "txt" -> ComicFormat.TXT
            "html", "htm", "xhtml" -> ComicFormat.HTML
            "md", "markdown" -> ComicFormat.MARKDOWN
            "rtf" -> ComicFormat.RTF
            "mobi" -> ComicFormat.MOBI
            "azw3" -> ComicFormat.AZW3
            "docx" -> ComicFormat.DOCX
            "odt" -> ComicFormat.ODT
            "djvu", "djv" -> ComicFormat.DJVU
            else -> ComicFormat.UNKNOWN
        }
    }

    private fun deriveBackupTitle(path: String): String {
        val raw = path.substringAfterLast('/').substringAfterLast('\\')
        val decoded = runCatching { URLDecoder.decode(raw, "UTF-8") }.getOrDefault(raw)
        return decoded.substringBeforeLast('.').ifBlank { "Untitled" }
    }

    private suspend fun restorePreferencesFromBackup(preferencesJson: JSONObject?): Int {
        if (preferencesJson == null) return 0
        var restored = 0
        context.dataStore.edit { prefs ->
            preferencesJson.keys().forEach { keyName ->
                val entry = preferencesJson.optJSONObject(keyName) ?: return@forEach
                val type = entry.optString("type")
                when (type) {
                    "boolean" -> {
                        prefs[booleanPreferencesKey(keyName)] = entry.optBoolean("value")
                        restored++
                    }
                    "int" -> {
                        prefs[intPreferencesKey(keyName)] = entry.optInt("value")
                        restored++
                    }
                    "long" -> {
                        prefs[longPreferencesKey(keyName)] = entry.optLong("value")
                        restored++
                    }
                    "float" -> {
                        prefs[floatPreferencesKey(keyName)] = entry.optDouble("value").toFloat()
                        restored++
                    }
                    "double" -> {
                        prefs[doublePreferencesKey(keyName)] = entry.optDouble("value")
                        restored++
                    }
                    "string_set" -> {
                        val values = entry.optJSONArray("value")
                        val restoredSet = buildSet {
                            if (values != null) {
                                for (index in 0 until values.length()) {
                                    add(values.optString(index))
                                }
                            }
                        }
                        prefs[stringSetPreferencesKey(keyName)] = restoredSet
                        restored++
                    }
                    "string" -> {
                        prefs[stringPreferencesKey(keyName)] = entry.optString("value")
                        restored++
                    }
                }
            }
        }
        return restored
    }

    private suspend fun exportThemePreferencesJson(): JSONObject {
        val themeConfig = themePreferencesRepository.themeConfig.first()
        val themePreset = themePreferencesRepository.themePreset.first()
        return JSONObject().apply {
            put("themePreset", themePreset.name)
            put("themeMode", themeConfig.themeMode.name)
            put("useDynamicColor", themeConfig.useDynamicColor)
            put("useAmoledDark", themeConfig.useAmoledDark)
            put("customPrimaryColor", themeConfig.customPrimaryColor?.toString())
            put("customSecondaryColor", themeConfig.customSecondaryColor?.toString())
            put("customBackgroundColor", themeConfig.customBackgroundColor?.toString())
            put("customSurfaceColor", themeConfig.customSurfaceColor?.toString())
            put("surfaceOpacity", themeConfig.surfaceOpacity.toDouble())
        }
    }

    private suspend fun restoreThemePreferencesFromBackup(themeJson: JSONObject?): Int {
        if (themeJson == null) return 0
        var restored = 0
        themeJson.optString("themePreset").takeIf { it.isNotBlank() }?.let { preset ->
            runCatching { ThemePreset.valueOf(preset) }.getOrNull()?.let {
                themePreferencesRepository.setThemePreset(it)
                restored++
            }
        }
        themeJson.optString("themeMode").takeIf { it.isNotBlank() }?.let { mode ->
            runCatching { ThemeMode.valueOf(mode) }.getOrNull()?.let {
                themePreferencesRepository.setThemeMode(it)
                restored++
            }
        }
        if (themeJson.has("useDynamicColor")) {
            themePreferencesRepository.setUseDynamicColor(themeJson.optBoolean("useDynamicColor"))
            restored++
        }
        if (themeJson.has("useAmoledDark")) {
            themePreferencesRepository.setUseAmoledDark(themeJson.optBoolean("useAmoledDark"))
            restored++
        }
        restoreNullableThemeColor(themeJson, "customPrimaryColor", themePreferencesRepository::setCustomPrimaryColor)?.let { restored++ }
        restoreNullableThemeColor(themeJson, "customSecondaryColor", themePreferencesRepository::setCustomSecondaryColor)?.let { restored++ }
        restoreNullableThemeColor(themeJson, "customBackgroundColor", themePreferencesRepository::setCustomBackgroundColor)?.let { restored++ }
        restoreNullableThemeColor(themeJson, "customSurfaceColor", themePreferencesRepository::setCustomSurfaceColor)?.let { restored++ }
        if (themeJson.has("surfaceOpacity")) {
            themePreferencesRepository.setSurfaceOpacity(themeJson.optDouble("surfaceOpacity").toFloat())
            restored++
        }
        return restored
    }

    private suspend fun restoreNullableThemeColor(
        themeJson: JSONObject,
        key: String,
        setter: suspend (Long?) -> Unit
    ): Boolean? {
        if (!themeJson.has(key)) return null
        val rawValue = themeJson.optString(key)
        setter(rawValue.takeIf { it.isNotBlank() && it != "null" }?.toLongOrNull())
        return true
    }

    private suspend fun exportAppIconJson(): JSONObject {
        val iconId = context.appIconDataStore.data
            .map { it[APP_ICON_PREFERENCE_KEY] ?: DEFAULT_APP_ICON_ID }
            .first()
        return JSONObject().apply {
            put("currentIcon", iconId)
        }
    }

    private suspend fun restoreAppIconFromBackup(iconJson: JSONObject?): Int {
        if (iconJson == null) return 0
        val iconId = iconJson.optString("currentIcon")
        if (iconId.isBlank()) return 0
        context.appIconDataStore.edit { prefs ->
            prefs[APP_ICON_PREFERENCE_KEY] = iconId
        }
        return 1
    }

    private fun removeCacheDir(dirName: String): Long {
        val dir = File(context.cacheDir, dirName)
        if (!dir.exists()) return 0L
        val sizeBefore = dir.walkBottomUp()
            .filter { it.isFile }
            .map { it.length() }
            .sum()
        dir.deleteRecursively()
        return sizeBefore
    }

    private fun formatSize(bytes: Long): String {
        if (bytes < 1024) return "$bytes B"
        val kb = bytes / 1024.0
        if (kb < 1024) return String.format("%.1f KB", kb)
        val mb = kb / 1024.0
        if (mb < 1024) return String.format("%.1f MB", mb)
        val gb = mb / 1024.0
        return String.format("%.2f GB", gb)
    }

    private fun libraryThemePresetKey(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> PreferencesKeys.LIBRARY_THEME_PRESET_1
        2 -> PreferencesKeys.LIBRARY_THEME_PRESET_2
        else -> PreferencesKeys.LIBRARY_THEME_PRESET_3
    }

    private suspend fun applyLibraryPresetSnapshot(
        snapshot: LibraryThemePresetSnapshot,
        useAmoledDark: Boolean? = null
    ) {
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, snapshot.backgroundStyle)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, snapshot.backgroundImageUri ?: "")
        preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, snapshot.backdropStrength)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, snapshot.backgroundVeil)
        preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, snapshot.shelfStyle)
        preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, snapshot.shelfDepth)
        preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, snapshot.cardShadow)
        preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, snapshot.cardStyle)
        preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, snapshot.thumbnailMode)
        preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, snapshot.graphicCoverStyle)
        preferences.set(PreferencesKeys.LIBRARY_COVER_SCALE, snapshot.coverScale)
        themePreferencesRepository.setThemePreset(ThemePreset.CUSTOM)
        themePreferencesRepository.setSurfaceOpacity(snapshot.surfaceOpacity)
        if (useAmoledDark != null) {
            themePreferencesRepository.setUseAmoledDark(useAmoledDark)
        }
    }

    private fun SettingsUiState.toLibraryThemePresetSnapshot(): LibraryThemePresetSnapshot =
        LibraryThemePresetSnapshot(
            backgroundStyle = libraryBackgroundStyle,
            backgroundImageUri = libraryBackgroundImageUri,
            backdropStrength = libraryBackdropStrength,
            backgroundVeil = libraryBackgroundVeil,
            shelfStyle = libraryShelfStyle,
            shelfDepth = libraryShelfDepth,
            cardShadow = libraryCardShadow,
            cardStyle = libraryCardStyle,
            thumbnailMode = libraryThumbnailMode,
            graphicCoverStyle = libraryGraphicCoverStyle,
            coverScale = libraryCoverScale,
            surfaceOpacity = surfaceOpacity
        )
}
