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
import com.example.core.data.repository.QuoteRepository
import com.example.core.domain.analytics.DailyReadingGoalStore
import com.example.core.domain.analytics.ReadingAnalyticsEvent
import com.example.core.domain.analytics.ReadingAnalyticsTracker
import com.example.core.model.Comic
import com.example.core.model.ComicFormat
import com.example.core.model.ReaderInfoSlot
import com.example.core.model.ReaderScreenTimeoutMode
import com.example.core.model.ReaderTapZoneAction
import com.example.core.model.ReaderTapZoneMode
import com.example.core.model.ReaderTtsConfig
import com.example.core.model.ReaderTtsProviderType
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.model.ReadingMode
import com.example.core.model.SavedQuote
import com.example.core.model.TranslationServiceConfig
import com.example.core.model.TranslationTransportPreference
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import com.example.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_SHADOW
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_CORNER_RADIUS
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_STROKE
import com.example.core.ui.library.DEFAULT_LIBRARY_CARD_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_COVER_SCALE
import com.example.core.ui.library.DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_SHELF_DEPTH
import com.example.core.ui.library.DEFAULT_LIBRARY_SHELF_STYLE
import com.example.core.ui.library.DEFAULT_LIBRARY_THUMBNAIL_MODE
import com.example.core.ui.library.DEFAULT_LIBRARY_TITLE_LINES
import com.example.core.ui.library.DEFAULT_LIBRARY_TITLE_PANEL_OPACITY
import com.example.core.ui.library.DEFAULT_LIBRARY_TITLE_SCALE
import com.example.core.ui.library.LibraryThemePresetSnapshot
import com.example.core.ui.library.libraryQuickPresetSpec
import com.example.core.ui.library.normalizeLibraryBackgroundStyle
import com.example.core.ui.library.normalizeLibraryGraphicCoverStyle
import com.example.core.ui.library.normalizeLibraryShelfStyle
import com.example.core.ui.library.parseLibraryThemePreset
import com.example.core.ui.eink.isEInkDevice
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

private fun normalizeTapZoneActionName(value: String?): String {
    val action = ReaderTapZoneAction.fromStored(value)
    return if (action == ReaderTapZoneAction.TOGGLE_UI) {
        ReaderTapZoneAction.MENU.name
    } else {
        action.name
    }
}

data class LibraryThemePresetSlot(
    val index: Int,
    val serialized: String? = null
)

data class AppThemePresetSlot(
    val index: Int,
    val serialized: String? = null
)

data class AppThemePresetSnapshot(
    val themePreset: String,
    val themeMode: String,
    val useDynamicColor: Boolean,
    val useAmoledDark: Boolean,
    val customPrimaryColor: Long?,
    val customSecondaryColor: Long?,
    val customBackgroundColor: Long?,
    val customSurfaceColor: Long?,
    val surfaceOpacity: Float,
    val uiFontScale: Float,
    val uiDensityScale: Float,
    val uiCornerRadius: Int
) {
    fun serialize(): String = JSONObject().apply {
        put("themePreset", themePreset)
        put("themeMode", themeMode)
        put("useDynamicColor", useDynamicColor)
        put("useAmoledDark", useAmoledDark)
        put("customPrimaryColor", customPrimaryColor?.toString())
        put("customSecondaryColor", customSecondaryColor?.toString())
        put("customBackgroundColor", customBackgroundColor?.toString())
        put("customSurfaceColor", customSurfaceColor?.toString())
        put("surfaceOpacity", surfaceOpacity.toDouble())
        put("uiFontScale", uiFontScale.toDouble())
        put("uiDensityScale", uiDensityScale.toDouble())
        put("uiCornerRadius", uiCornerRadius)
    }.toString()
}

fun parseAppThemePreset(serialized: String?): AppThemePresetSnapshot? = serialized
    ?.takeIf { it.isNotBlank() }
    ?.let { raw ->
        runCatching {
            val json = JSONObject(raw)
            AppThemePresetSnapshot(
                themePreset = json.optString("themePreset", ThemePreset.CUSTOM.name),
                themeMode = json.optString("themeMode", ThemeMode.SYSTEM.name),
                useDynamicColor = json.optBoolean("useDynamicColor", true),
                useAmoledDark = json.optBoolean("useAmoledDark", false),
                customPrimaryColor = json.optString("customPrimaryColor").takeIf { it.isNotBlank() }?.toLongOrNull(),
                customSecondaryColor = json.optString("customSecondaryColor").takeIf { it.isNotBlank() }?.toLongOrNull(),
                customBackgroundColor = json.optString("customBackgroundColor").takeIf { it.isNotBlank() }?.toLongOrNull(),
                customSurfaceColor = json.optString("customSurfaceColor").takeIf { it.isNotBlank() }?.toLongOrNull(),
                surfaceOpacity = json.optDouble("surfaceOpacity", 1.0).toFloat().coerceIn(0.35f, 1f),
                uiFontScale = json.optDouble("uiFontScale", 1.0).toFloat().coerceIn(0.85f, 1.3f),
                uiDensityScale = json.optDouble("uiDensityScale", 1.0).toFloat().coerceIn(0.82f, 1.18f),
                uiCornerRadius = json.optInt("uiCornerRadius", 12).coerceIn(0, 32)
            )
        }.getOrNull()
    }

data class SettingsUiState(
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val useDynamicColor: Boolean = true,
    val useAmoledDark: Boolean = false,
    val readingMode: ReadingMode = ReadingMode.PAGE_LTR,
    val brightness: Float = -1f,
    val keepScreenOnInReader: Boolean = false,
    val readerScreenTimeoutMode: String = ReaderScreenTimeoutMode.SYSTEM.storedValue,
    val readerLandscapeSpreadEnabled: Boolean = true,
    // Библиотека
    val libraryGridColumns: Int = 3,
    val libraryViewGrid: Boolean = true,
    // Ридер (расширенные)
    val readerPreloadPages: Int = 3,
    val readerImmersiveMode: Boolean = false,
    val readerChromeAutoHide: Boolean = true,
    val readerTopToolbarOpacity: Float = 0.86f,
    val readerBottomToolbarOpacity: Float = 0.9f,
    val readerToolbarBlur: Float = SETTINGS_READER_DEFAULT_TOOLBAR_BLUR,
    val readerPageAnimation: String = "SLIDE",
    val readerPageSound: Boolean = false,
    val readerEyeRestEnabled: Boolean = false,
    val readerEyeRestMinutes: Int = 20,
    val libraryTileSize: Int = 150,
    val readerPageSoundStyle: String = "PAPER",
    val uiSoundEnabled: Boolean = false,
    val uiSoundsVolume: Float = 0.6f,
    val appVideoSplashEnabled: Boolean = true,
    val textFontSize: Int = 18,
    val textColorScheme: String = "DAY",
    val textFontFamily: String = "Georgia",
    val textLineHeight: Float = 1.8f,
    val textAlignment: String = "justify",
    val textBold: Boolean = false,
    val readerTapZoneMode: String = ReaderTapZoneMode.SIMPLE.name,
    val readerTapZoneSwap: Boolean = false,
    val readerVolumeKeysPaging: Boolean = false,
    val readerTtsConfig: ReaderTtsConfig = ReaderTtsConfig(),
    val readerTapZoneLeftAction: String = ReaderTapZoneAction.PREVIOUS_PAGE.name,
    val readerTapZoneCenterAction: String = ReaderTapZoneAction.MENU.name,
    val readerTapZoneRightAction: String = ReaderTapZoneAction.NEXT_PAGE.name,
    val readerHeaderLeftSlot: String = ReaderInfoSlot.BOOK_TITLE.name,
    val readerHeaderCenterSlot: String = ReaderInfoSlot.NONE.name,
    val readerHeaderRightSlot: String = ReaderInfoSlot.TIME.name,
    val readerFooterLeftSlot: String = ReaderInfoSlot.CHAPTER_TITLE.name,
    val readerFooterCenterSlot: String = ReaderInfoSlot.PAGE.name,
    val readerFooterRightSlot: String = ReaderInfoSlot.PROGRESS.name,
    val readerHeaderFooterFontSize: Int = 12,
    val readerHeaderFooterVerticalPadding: Int = 6,
    val readerHeaderFooterLeftPadding: Int = 16,
    val readerHeaderFooterRightPadding: Int = 16,
    val mascotRecapEnabled: Boolean = true,
    val questPromptsEnabled: Boolean = true,
    val dailyReadingGoalEnabled: Boolean = false,
    val dailyReadingGoalTargetPages: Int = 20,
    val dailyReadingGoalProgressPages: Int = 0,
    val dailyReadingWeekProgressPages: Int = 0,
    val dailyReadingWeekTargetPages: Int = 140,
    val dailyReadingWeekCompletedDays: Int = 0,
    val dailyReadingRecentActiveDays: Int = 0,
    val dailyReadingRecentGoalDays: Int = 0,
    val dailyReadingStreakEnabled: Boolean = false,
    val dailyReadingGraceEnabled: Boolean = true,
    val dailyReadingCurrentStreak: Int = 0,
    val dailyReadingBestStreak: Int = 0,
    val dailyReadingGraceDaysRemainingThisWeek: Int = 0,
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
    val libraryShowCoverTitles: Boolean = true,
    val libraryCoverScale: String = DEFAULT_LIBRARY_COVER_SCALE,
    val libraryBackdropStrength: Float = DEFAULT_LIBRARY_BACKDROP_STRENGTH,
    val libraryBackgroundStyle: String = DEFAULT_LIBRARY_BACKGROUND_STYLE,
    val libraryBackgroundImageUri: String? = null,
    val libraryBackgroundBlur: Float = DEFAULT_LIBRARY_BACKGROUND_BLUR,
    val libraryShelfStyle: String = DEFAULT_LIBRARY_SHELF_STYLE,
    val libraryBackgroundVeil: Float = DEFAULT_LIBRARY_BACKGROUND_VEIL,
    val libraryShelfDepth: Float = DEFAULT_LIBRARY_SHELF_DEPTH,
    val libraryCardShadow: Float = DEFAULT_LIBRARY_CARD_SHADOW,
    val libraryTitleScale: Float = DEFAULT_LIBRARY_TITLE_SCALE,
    val libraryTitleLines: Int = DEFAULT_LIBRARY_TITLE_LINES,
    val libraryCardStroke: Float = DEFAULT_LIBRARY_CARD_STROKE,
    val libraryCardCornerRadius: Int = DEFAULT_LIBRARY_CARD_CORNER_RADIUS,
    val libraryTitlePanelOpacity: Float = DEFAULT_LIBRARY_TITLE_PANEL_OPACITY,
    val libraryThumbnailMode: String = DEFAULT_LIBRARY_THUMBNAIL_MODE,
    val libraryGraphicCoverStyle: String = DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE,
    val librarySortOrder: String = "DATE_ADDED_DESC",
    val libraryGroupBy: String = "FOLDER",
    val appThemePresetSlots: List<AppThemePresetSlot> = emptyList(),
    val libraryThemePresetSlots: List<LibraryThemePresetSlot> = emptyList(),
    // Перевод
    val translationConfig: TranslationServiceConfig = TranslationServiceConfig(),
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
) {
    val readerTtsProvider: String
        get() = readerTtsConfig.storedProvider

    val readerTtsSpeed: Float
        get() = readerTtsConfig.speed

    val readerTtsPitch: Float
        get() = readerTtsConfig.pitch

    val readerTtsVolume: Float
        get() = readerTtsConfig.volume

    val readerTtsVoiceName: String?
        get() = readerTtsConfig.voiceName

    val readerTtsSleepTimerMode: String
        get() = readerTtsConfig.storedSleepTimerMode

    val translationMode: String
        get() = translationConfig.mode

    val translationSourceLanguage: String
        get() = translationConfig.sourceLanguage

    val translationTargetLanguage: String
        get() = translationConfig.targetLanguage

    val translationTransport: String
        get() = translationConfig.storedTransport

    val translationExplainEnabled: Boolean
        get() = translationConfig.explainEnabled
}

// Internal state for all async operations to avoid exceeding combine()'s 5-flow limit
private data class StatusState(
    val isClearingCache: Boolean = false,
    val isExporting: Boolean = false,
    val isImporting: Boolean = false,
    val isRepairingLibraryAccess: Boolean = false,
    val pendingLibraryRepairLaunchToken: Long = 0L,
    val message: String? = null
)

private const val SETTINGS_READER_MIN_TOOLBAR_OPACITY = 0.72f
private const val SETTINGS_READER_DEFAULT_TOOLBAR_BLUR = 0f

@HiltViewModel
class SettingsViewModel @Inject constructor(
    @ApplicationContext private val context: Context,
    private val themePreferencesRepository: ThemePreferencesRepository,
    private val comicRepository: ComicRepository,
    private val quoteRepository: QuoteRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker
) : ViewModel() {

    private val preferences = UserPreferences(context.dataStore)
    private val statusState = MutableStateFlow(StatusState())

    private suspend fun updateToggleEnabledAt(
        key: Preferences.Key<Long>,
        wasEnabled: Boolean,
        enabled: Boolean,
        nowMillis: Long = System.currentTimeMillis()
    ) {
        if (wasEnabled == enabled) return
        preferences.set(key, if (enabled) nowMillis else 0L)
    }

    // Debounce jobs for continuous slider inputs — avoids a DataStore write on every drag tick.
    private val sliderJobs = mutableMapOf<String, Job>()
    private fun setSlider(key: String, block: suspend () -> Unit) {
        sliderJobs[key]?.cancel()
        sliderJobs[key] = viewModelScope.launch { delay(300); block() }
    }

    private val baseUiStateLeftCore = combine(
        themePreferencesRepository.themeConfig,
        themePreferencesRepository.themePreset,
        preferences.get(PreferencesKeys.READING_MODE, ReadingMode.PAGE_LTR.name).map { stored ->
            runCatching { ReadingMode.valueOf(stored) }.getOrDefault(ReadingMode.PAGE_LTR)
        },
        preferences.get(PreferencesKeys.READING_BRIGHTNESS, -1f).map { stored ->
            if (stored < 0f) -1f else stored.coerceIn(0.05f, 1f)
        },
        preferences.get(PreferencesKeys.READER_KEEP_SCREEN_ON, false)
    ) { themeConfig, preset, readingMode, brightness, keepScreenOn ->
        listOf(themeConfig, preset, readingMode, brightness, keepScreenOn)
    }

    private val baseUiStateLeft = combine(
        baseUiStateLeftCore,
        preferences.get(
            PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
            ReaderScreenTimeoutMode.SYSTEM.storedValue
        ).map { ReaderScreenTimeoutMode.fromStored(it).storedValue }
    ) { left, screenTimeoutMode ->
        left + screenTimeoutMode
    }

    private val baseUiState = combine(
        baseUiStateLeft,
        preferences.get(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, true)
    ) { left, landscapeSpreadEnabled ->
        val themeConfig = left[0] as com.example.core.ui.theme.ThemeConfig
        val preset = left[1] as ThemePreset
        val readingMode = left[2] as ReadingMode
        val brightness = left[3] as Float
        val keepScreenOn = left[4] as Boolean
        val screenTimeoutMode = left[5] as String
        SettingsUiState(
            themeMode = themeConfig.themeMode,
            useDynamicColor = themeConfig.useDynamicColor,
            useAmoledDark = themeConfig.useAmoledDark,
            themePreset = preset.name,
            readingMode = readingMode,
            brightness = brightness,
            keepScreenOnInReader = keepScreenOn,
            readerScreenTimeoutMode = screenTimeoutMode,
            readerLandscapeSpreadEnabled = landscapeSpreadEnabled,
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

    private val extrasFlow1b = combine(
        preferences.get(PreferencesKeys.READER_CHROME_AUTO_HIDE, true),
        preferences.get(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, 0.86f).map { it.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f) },
        preferences.get(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, 0.9f).map { it.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f) },
        preferences.get(PreferencesKeys.READER_TOOLBAR_BLUR, SETTINGS_READER_DEFAULT_TOOLBAR_BLUR).map { it.coerceIn(0f, 1f) }
    ) { autoHide, topOpacity, bottomOpacity, toolbarBlur ->
        listOf<Any>(autoHide, topOpacity, bottomOpacity, toolbarBlur)
    }

    private val extrasFlow2 = combine(
        preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").map(::normalizeAppLanguageCode),
        preferences.get(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            .map { ReadingPreset.fromStored(it).name },
        preferences.get(PreferencesKeys.UI_FONT_SCALE, 1.0f),
        preferences.get(PreferencesKeys.UI_DENSITY_SCALE, 1.0f).map { it.coerceIn(0.82f, 1.18f) },
        preferences.get(PreferencesKeys.UI_CORNER_RADIUS, 12).map { it.coerceIn(0, 32) }
    ) { lang, readerPreset, fontScale, uiDensityScale, cornerRadius ->
        listOf<Any>(lang, readerPreset, fontScale, uiDensityScale, cornerRadius)
    }

    private val extrasFlow12 = combine(extrasFlow1, extrasFlow1b, extrasFlow2) { e1, e1b, e2 -> e1 + e1b + e2 }

    private val translationConfigFlow = combine(
        preferences.get(PreferencesKeys.TRANSLATION_MODE, "OFF"),
        preferences.get(PreferencesKeys.TRANSLATION_SOURCE_LANGUAGE, "AUTO"),
        preferences.get(PreferencesKeys.TRANSLATION_TARGET_LANGUAGE, "APP"),
        preferences.get(PreferencesKeys.TRANSLATION_TRANSPORT, TranslationTransportPreference.AUTO.name),
        preferences.get(PreferencesKeys.TRANSLATION_EXPLAIN_ENABLED, false)
    ) { translationMode, sourceLanguage, targetLanguage, transport, explainEnabled ->
        TranslationServiceConfig.fromStored(
            mode = translationMode,
            sourceLanguage = sourceLanguage,
            targetLanguage = targetLanguage,
            preferredTransport = transport,
            explainEnabled = explainEnabled
        )
    }

    private val extrasFlow3a2 = combine(
        preferences.get(PreferencesKeys.OCR_DIALOGUES_ONLY, false),
        preferences.get(PreferencesKeys.OCR_INCLUDE_SFX, true)
    ) { ocrDialoguesOnly, ocrIncludeSfx ->
        listOf<Any>(
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

    private val extrasFlow3 = combine(translationConfigFlow, extrasFlow3a2, extrasFlow3a3, extrasFlow3b) { translationConfig, middle, overlay, right ->
        listOf<Any>(translationConfig) + middle + overlay + right
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
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, DEFAULT_LIBRARY_BACKGROUND_BLUR).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, DEFAULT_LIBRARY_BACKGROUND_VEIL).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_SHELF_DEPTH, DEFAULT_LIBRARY_SHELF_DEPTH).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_SHADOW, DEFAULT_LIBRARY_CARD_SHADOW).map { it.coerceIn(0f, 1f) }
    ) { backgroundBlur, backgroundVeil, shelfDepth, cardShadow ->
        listOf<Any>(backgroundBlur, backgroundVeil, shelfDepth, cardShadow)
    }

    private val extrasFlow6e = combine(
        preferences.get(PreferencesKeys.LIBRARY_TITLE_SCALE, DEFAULT_LIBRARY_TITLE_SCALE).map { it.coerceIn(0.85f, 1.3f) },
        preferences.get(PreferencesKeys.LIBRARY_TITLE_LINES, DEFAULT_LIBRARY_TITLE_LINES).map { it.coerceIn(1, 3) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_STROKE, DEFAULT_LIBRARY_CARD_STROKE).map { it.coerceIn(0f, 1f) },
        preferences.get(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, DEFAULT_LIBRARY_CARD_CORNER_RADIUS).map { it.coerceIn(6, 24) },
        preferences.get(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, DEFAULT_LIBRARY_TITLE_PANEL_OPACITY).map { it.coerceIn(0.18f, 0.78f) }
    ) { titleScale, titleLines, cardStroke, cardCornerRadius, titlePanelOpacity ->
        listOf<Any>(titleScale, titleLines, cardStroke, cardCornerRadius, titlePanelOpacity)
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

    private val extrasFlow6d = combine(
        preferences.get(PreferencesKeys.APP_THEME_PRESET_1, ""),
        preferences.get(PreferencesKeys.APP_THEME_PRESET_2, ""),
        preferences.get(PreferencesKeys.APP_THEME_PRESET_3, "")
    ) { preset1, preset2, preset3 ->
        listOf<Any>(
            AppThemePresetSlot(index = 1, serialized = preset1.ifBlank { null }),
            AppThemePresetSlot(index = 2, serialized = preset2.ifBlank { null }),
            AppThemePresetSlot(index = 3, serialized = preset3.ifBlank { null })
        )
    }

    private val extrasFlow345 = combine(extrasFlow3, extrasFlow4, extrasFlow5) { e3, e4, e5 -> e3 + e4 + e5 }
    private val extrasFlow6 = combine(extrasFlow6a, extrasFlow6b, extrasFlow6c, extrasFlow6e) { left, middle, right, style ->
        left + middle + right + style
    }
    private val extrasFlow3456 = combine(extrasFlow345, extrasFlow6, extrasFlow6d) { left, middle, right ->
        left + middle + right
    }
    private val extrasFlow7a = combine(
        preferences.get(PreferencesKeys.READER_EYE_REST_ENABLED, false),
        preferences.get(PreferencesKeys.READER_EYE_REST_MINUTES, 20).map { it.coerceIn(10, 60) },
        preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true),
        preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, true)
    ) { eyeRestEnabled, eyeRestMinutes, mascotRecapEnabled, questPromptsEnabled ->
        listOf<Any>(
            eyeRestEnabled,
            eyeRestMinutes,
            mascotRecapEnabled,
            questPromptsEnabled
        )
    }

    private val extrasFlow7b1 = combine(
        preferences.get(PreferencesKeys.TEXT_FONT_SIZE, 18).map { it.coerceIn(12, 32) },
        preferences.get(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY"),
        preferences.get(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia")
    ) { textFontSize, textColorScheme, textFontFamily ->
        listOf<Any>(
            textFontSize,
            textColorScheme,
            textFontFamily
        )
    }

    private val extrasFlow7b2 = combine(
        preferences.get(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f).map { it.coerceIn(1.0f, 3.0f) },
        preferences.get(PreferencesKeys.TEXT_ALIGNMENT, "justify"),
        preferences.get(PreferencesKeys.TEXT_BOLD, false)
    ) { textLineHeight, textAlignment, textBold ->
        listOf<Any>(
            textLineHeight,
            textAlignment,
            textBold
        )
    }

    private val extrasFlow7b = combine(extrasFlow7b1, extrasFlow7b2) { left, right -> left + right }
    private val extrasFlow7c1a = combine(
        preferences.get(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.SIMPLE.name)
            .map { ReaderTapZoneMode.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_TAP_ZONE_SWAP, false),
        preferences.get(PreferencesKeys.READER_VOLUME_KEYS_PAGING, false)
    ) { mode, swap, volumeKeysPaging ->
        listOf<Any>(mode, swap, volumeKeysPaging)
    }

    private val extrasFlow7c1b = combine(
        preferences.get(PreferencesKeys.READER_TAP_ZONE_LEFT, ReaderTapZoneAction.PREVIOUS_PAGE.name)
            .map { normalizeTapZoneActionName(it) },
        preferences.get(PreferencesKeys.READER_TAP_ZONE_CENTER, ReaderTapZoneAction.MENU.name)
            .map { normalizeTapZoneActionName(it) },
        preferences.get(PreferencesKeys.READER_TAP_ZONE_RIGHT, ReaderTapZoneAction.NEXT_PAGE.name)
            .map { normalizeTapZoneActionName(it) }
    ) { leftAction, centerAction, rightAction ->
        listOf<Any>(leftAction, centerAction, rightAction)
    }
    private val extrasFlow7c1 = combine(extrasFlow7c1a, extrasFlow7c1b) { left, right -> left + right }

    private val extrasFlow7c2a = combine(
        preferences.get(PreferencesKeys.READER_HEADER_LEFT_SLOT, ReaderInfoSlot.BOOK_TITLE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_HEADER_CENTER_SLOT, ReaderInfoSlot.NONE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_HEADER_RIGHT_SLOT, ReaderInfoSlot.TIME.name)
            .map { ReaderInfoSlot.fromStored(it).name },
    ) { headerLeft, headerCenter, headerRight ->
        listOf<Any>(headerLeft, headerCenter, headerRight)
    }

    private val extrasFlow7c2b = combine(
        preferences.get(PreferencesKeys.READER_FOOTER_LEFT_SLOT, ReaderInfoSlot.CHAPTER_TITLE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_FOOTER_CENTER_SLOT, ReaderInfoSlot.PAGE.name)
            .map { ReaderInfoSlot.fromStored(it).name },
        preferences.get(PreferencesKeys.READER_FOOTER_RIGHT_SLOT, ReaderInfoSlot.PROGRESS.name)
            .map { ReaderInfoSlot.fromStored(it).name }
    ) { footerLeft, footerCenter, footerRight ->
        listOf<Any>(footerLeft, footerCenter, footerRight)
    }

    private val extrasFlow7c3 = combine(
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, 12).map { it.coerceIn(10, 20) },
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, 6).map { it.coerceIn(4, 20) },
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, 16).map { it.coerceIn(8, 32) },
        preferences.get(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, 16).map { it.coerceIn(8, 32) }
    ) { fontSize, verticalPadding, leftPadding, rightPadding ->
        listOf<Any>(fontSize, verticalPadding, leftPadding, rightPadding)
    }

    private val extrasFlow7c2 = combine(extrasFlow7c2a, extrasFlow7c2b) { left, right -> left + right }
    private val extrasFlow7c = combine(extrasFlow7c1, extrasFlow7c2, extrasFlow7c3) { left, middle, right ->
        left + middle + right
    }
    private val extrasFlow7 = combine(extrasFlow7a, extrasFlow7b, extrasFlow7c) { left, middle, right -> left + middle + right }

    private val readerTtsFlowA = combine(
        preferences.get(
            PreferencesKeys.READER_TTS_PROVIDER,
            ReaderTtsProviderType.SYSTEM.storedValue
        ),
        preferences.get(PreferencesKeys.READER_TTS_SPEED, 1.0f).map { it.coerceIn(0.5f, 2.0f) },
        preferences.get(PreferencesKeys.READER_TTS_PITCH, 1.0f).map { it.coerceIn(0.5f, 2.0f) }
    ) { provider, speed, pitch ->
        listOf<Any>(provider, speed, pitch)
    }

    private val readerTtsFlowB = combine(
        preferences.get(PreferencesKeys.READER_TTS_VOLUME, 1.0f).map { it.coerceIn(0f, 1.0f) },
        preferences.get(PreferencesKeys.READER_TTS_VOICE_NAME, "").map { it.ifBlank { null } },
        preferences.get(
            PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE,
            ReaderTtsSleepTimerMode.OFF.storedValue
        )
    ) { volume, voiceName, sleepTimerMode ->
        listOf<Any>(volume, voiceName ?: "", sleepTimerMode)
    }

    private val readerTtsFlow = combine(readerTtsFlowA, readerTtsFlowB) { left, right ->
        ReaderTtsConfig.fromStored(
            provider = left[0] as String,
            speed = left[1] as Float,
            pitch = left[2] as Float,
            volume = right[0] as Float,
            voiceName = right[1] as String,
            sleepTimerMode = right[2] as String
        )
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
            readerChromeAutoHide = e12[5] as Boolean,
            readerTopToolbarOpacity = e12[6] as Float,
            readerBottomToolbarOpacity = e12[7] as Float,
            readerToolbarBlur    = e12[8] as Float,
            appLanguage          = e12[9] as String,
            readerPreset         = e12[10] as String,
            uiFontScale          = e12[11] as Float,
            uiDensityScale       = e12[12] as Float,
            uiCornerRadius       = e12[13] as Int,
            translationConfig    = e345[0] as TranslationServiceConfig,
            ocrDialoguesOnly     = e345[1] as Boolean,
            ocrIncludeSfx        = e345[2] as Boolean,
            ocrOverlayOpacity    = e345[3] as Float,
            ocrOverlayFontScale  = e345[4] as Float,
            ocrOverlayStyle      = e345[5] as String,
            ocrLanguage          = e345[6] as String,
            autoBackupEnabled    = e345[7] as Boolean,
            isClearingCache      = status.isClearingCache,
            isExporting          = status.isExporting,
            isImporting          = status.isImporting,
            isRepairingLibraryAccess = status.isRepairingLibraryAccess,
            pendingLibraryRepairLaunchToken = status.pendingLibraryRepairLaunchToken,
            cacheMessage         = status.message,
            readerPageSound      = e345[8] as Boolean,
            libraryTileSize      = e345[9] as Int,
            readerPageSoundStyle = e345[10] as String,
            uiSoundEnabled       = e345[11] as Boolean,
            uiSoundsVolume       = e345[12] as Float,
            libraryCardStyle     = e345[13] as String,
            libraryRecentStripPosition = e345[14] as String,
            libraryShowProgress  = e345[15] as Boolean,
            libraryCoverScale    = e345[16] as String,
            libraryBackdropStrength = e345[17] as Float,
            librarySortOrder     = e345[18] as String,
            libraryGroupBy       = e345[19] as String,
            libraryBackgroundStyle = normalizeLibraryBackgroundStyle(e345[20] as String),
            libraryBackgroundImageUri = (e345[21] as String).ifBlank { null },
            libraryShelfStyle    = normalizeLibraryShelfStyle(e345[22] as String),
            libraryThumbnailMode = e345[23] as String,
            libraryGraphicCoverStyle = normalizeLibraryGraphicCoverStyle(e345[24] as String),
            libraryBackgroundBlur = e345[25] as Float,
            libraryBackgroundVeil = e345[26] as Float,
            libraryShelfDepth = e345[27] as Float,
            libraryCardShadow = e345[28] as Float,
            libraryTitleScale = e345[32] as Float,
            libraryTitleLines = e345[33] as Int,
            libraryCardStroke = e345[34] as Float,
            libraryCardCornerRadius = e345[35] as Int,
            libraryTitlePanelOpacity = e345[36] as Float,
            appThemePresetSlots = listOf(
                e345[37] as AppThemePresetSlot,
                e345[38] as AppThemePresetSlot,
                e345[39] as AppThemePresetSlot
            ),
            libraryThemePresetSlots = listOf(
                e345[29] as LibraryThemePresetSlot,
                e345[30] as LibraryThemePresetSlot,
                e345[31] as LibraryThemePresetSlot
            ),
            readerEyeRestEnabled = e7[0] as Boolean,
            readerEyeRestMinutes = e7[1] as Int,
            mascotRecapEnabled = e7[2] as Boolean,
            questPromptsEnabled = e7[3] as Boolean,
            textFontSize = e7[4] as Int,
            textColorScheme = e7[5] as String,
            textFontFamily = e7[6] as String,
            textLineHeight = e7[7] as Float,
            textAlignment = e7[8] as String,
            textBold = e7[9] as Boolean,
            readerTapZoneMode = e7[10] as String,
            readerTapZoneSwap = e7[11] as Boolean,
            readerVolumeKeysPaging = e7[12] as Boolean,
            readerTapZoneLeftAction = e7[13] as String,
            readerTapZoneCenterAction = e7[14] as String,
            readerTapZoneRightAction = e7[15] as String,
            readerHeaderLeftSlot = e7[16] as String,
            readerHeaderCenterSlot = e7[17] as String,
            readerHeaderRightSlot = e7[18] as String,
            readerFooterLeftSlot = e7[19] as String,
            readerFooterCenterSlot = e7[20] as String,
            readerFooterRightSlot = e7[21] as String,
            readerHeaderFooterFontSize = e7[22] as Int,
            readerHeaderFooterVerticalPadding = e7[23] as Int,
            readerHeaderFooterLeftPadding = e7[24] as Int,
            readerHeaderFooterRightPadding = e7[25] as Int
        )
    }.combine(readerTtsFlow) { state, tts ->
        state.copy(
            readerTtsConfig = tts
        )
    }.combine(preferences.get(PreferencesKeys.LIBRARY_SHOW_COVER_TITLES, true)) { state, showCoverTitles ->
        state.copy(libraryShowCoverTitles = showCoverTitles)
    }.combine(
        preferences.get(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, !context.isEInkDevice())
    ) { state, appVideoSplashEnabled ->
        state.copy(appVideoSplashEnabled = appVideoSplashEnabled)
    }.combine(dailyReadingGoalStore.goalState) { state, goalState ->
        state.copy(
            dailyReadingGoalEnabled = goalState.enabled,
            dailyReadingGoalTargetPages = goalState.targetPages,
            dailyReadingGoalProgressPages = goalState.pagesReadToday,
            dailyReadingWeekProgressPages = goalState.pagesReadThisWeek,
            dailyReadingWeekTargetPages = goalState.weeklyTargetPages,
            dailyReadingWeekCompletedDays = goalState.completedDaysThisWeek,
            dailyReadingRecentActiveDays = goalState.recentActivity.count { it.pagesRead > 0 },
            dailyReadingRecentGoalDays = goalState.recentActivity.count { it.goalCompleted },
            dailyReadingStreakEnabled = goalState.streakEnabled,
            dailyReadingGraceEnabled = goalState.graceEnabled,
            dailyReadingCurrentStreak = goalState.currentStreak,
            dailyReadingBestStreak = goalState.bestStreak,
            dailyReadingGraceDaysRemainingThisWeek = goalState.graceDaysRemainingThisWeek
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
        setSlider("brightness") {
            preferences.set(
                PreferencesKeys.READING_BRIGHTNESS,
                if (value <= 0.01f) -1f else value.coerceIn(0.05f, 1f)
            )
        }
    }

    fun setKeepScreenOnInReader(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_KEEP_SCREEN_ON, enabled)
        }
    }

    fun setReaderScreenTimeoutMode(mode: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.READER_SCREEN_TIMEOUT_MODE,
                ReaderScreenTimeoutMode.fromStored(mode).storedValue
            )
        }
    }

    fun setReaderLandscapeSpreadEnabled(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_LANDSCAPE_SPREAD_ENABLED, enabled)
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

    fun setReaderChromeAutoHide(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_CHROME_AUTO_HIDE, enabled) }
    }

    fun setReaderTopToolbarOpacity(value: Float) {
        setSlider("readerTopToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
        }
    }

    fun setReaderBottomToolbarOpacity(value: Float) {
        setSlider("readerBottomToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f))
        }
    }

    fun setReaderToolbarOpacity(value: Float) {
        val safe = value.coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1.0f)
        setSlider("readerToolbarOpacity") {
            preferences.set(PreferencesKeys.READER_TOP_TOOLBAR_OPACITY, safe)
            preferences.set(PreferencesKeys.READER_BOTTOM_TOOLBAR_OPACITY, safe)
        }
    }

    fun setReaderToolbarBlur(value: Float) {
        setSlider("readerToolbarBlur") {
            preferences.set(PreferencesKeys.READER_TOOLBAR_BLUR, value.coerceIn(0f, 1.0f))
        }
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

    fun setMascotRecapEnabled(enabled: Boolean) {
        val wasEnabled = uiState.value.mascotRecapEnabled
        viewModelScope.launch {
            preferences.set(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED_AT,
                wasEnabled = wasEnabled,
                enabled = enabled
            )
        }
    }

    fun setQuestPromptsEnabled(enabled: Boolean) {
        val wasEnabled = uiState.value.questPromptsEnabled
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED_AT,
                wasEnabled = wasEnabled,
                enabled = enabled
            )
        }
    }

    fun setDailyReadingGoalEnabled(enabled: Boolean) {
        val currentState = uiState.value
        if (currentState.dailyReadingGoalEnabled == enabled) return
        viewModelScope.launch {
            dailyReadingGoalStore.setGoalEnabled(enabled)
            updateToggleEnabledAt(
                key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                wasEnabled = currentState.dailyReadingGoalEnabled,
                enabled = enabled
            )
            if (!enabled) {
                dailyReadingGoalStore.setStreakEnabled(false)
                dailyReadingGoalStore.setGraceEnabled(false)
            }
            analyticsTracker.track(
                ReadingAnalyticsEvent.GoalSet(
                    enabled = enabled,
                    targetPages = currentState.dailyReadingGoalTargetPages,
                    streakEnabled = if (enabled) currentState.dailyReadingStreakEnabled else false,
                    graceEnabled = if (enabled) currentState.dailyReadingGraceEnabled else false,
                    source = "goal_enabled_toggle"
                )
            )
        }
    }

    fun setDailyReadingGoalTargetPages(targetPages: Int) {
        val currentState = uiState.value
        if (currentState.dailyReadingGoalTargetPages == targetPages) return
        viewModelScope.launch {
            dailyReadingGoalStore.setTargetPages(targetPages)
            analyticsTracker.track(
                ReadingAnalyticsEvent.GoalSet(
                    enabled = currentState.dailyReadingGoalEnabled,
                    targetPages = targetPages,
                    streakEnabled = currentState.dailyReadingStreakEnabled,
                    graceEnabled = currentState.dailyReadingGraceEnabled,
                    source = "target_pages_changed"
                )
            )
        }
    }

    fun setDailyReadingStreakEnabled(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled && !uiState.value.dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(
                    key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                    wasEnabled = false,
                    enabled = true
                )
            }
            dailyReadingGoalStore.setStreakEnabled(enabled)
            if (!enabled) {
                dailyReadingGoalStore.setGraceEnabled(false)
            }
        }
    }

    fun setDailyReadingGraceEnabled(enabled: Boolean) {
        viewModelScope.launch {
            if (enabled && !uiState.value.dailyReadingGoalEnabled) {
                dailyReadingGoalStore.setGoalEnabled(true)
                updateToggleEnabledAt(
                    key = PreferencesKeys.DAILY_READING_GOAL_ENABLED_AT,
                    wasEnabled = false,
                    enabled = true
                )
            }
            if (enabled) {
                dailyReadingGoalStore.setStreakEnabled(true)
            }
            dailyReadingGoalStore.setGraceEnabled(enabled)
        }
    }

    fun setUiFontScale(scale: Float) {
        setSlider("fontScale") { preferences.set(PreferencesKeys.UI_FONT_SCALE, scale) }
    }

    fun setUiDensityScale(scale: Float) {
        setSlider("uiDensity") { preferences.set(PreferencesKeys.UI_DENSITY_SCALE, scale.coerceIn(0.82f, 1.18f)) }
    }

    fun setUiCornerRadius(radius: Int) {
        setSlider("cornerRadius") { preferences.set(PreferencesKeys.UI_CORNER_RADIUS, radius.coerceIn(0, 32)) }
    }

    fun setTextFontSize(size: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_SIZE, size.coerceIn(12, 32))
        }
    }

    fun setTextColorScheme(scheme: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, scheme.uppercase())
        }
    }

    fun setTextFontFamily(family: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, family)
        }
    }

    fun setTextLineHeight(height: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, height.coerceIn(1.0f, 3.0f))
        }
    }

    fun setTextAlignment(alignment: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, alignment.lowercase())
        }
    }

    fun setTextBold(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_BOLD, enabled)
        }
    }

    fun resetReaderTextStyle() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_FONT_SIZE, 18)
            preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, "DAY")
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia")
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, "justify")
            preferences.set(PreferencesKeys.TEXT_BOLD, false)
        }
    }

    fun setReaderTapZoneMode(mode: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.fromStored(mode).name)
        }
    }

    fun setReaderTapZoneSwap(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_SWAP, enabled)
        }
    }

    fun setReaderVolumeKeysPaging(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_VOLUME_KEYS_PAGING, enabled)
        }
    }

    fun setReaderTtsSpeed(value: Float) {
        setSlider("reader_tts_speed") {
            preferences.set(PreferencesKeys.READER_TTS_SPEED, value.coerceIn(0.5f, 2.0f))
        }
    }

    fun setReaderTtsProvider(value: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.READER_TTS_PROVIDER,
                ReaderTtsProviderType.fromStored(value).storedValue
            )
        }
    }

    fun setReaderTtsPitch(value: Float) {
        setSlider("reader_tts_pitch") {
            preferences.set(PreferencesKeys.READER_TTS_PITCH, value.coerceIn(0.5f, 2.0f))
        }
    }

    fun setReaderTtsVolume(value: Float) {
        setSlider("reader_tts_volume") {
            preferences.set(PreferencesKeys.READER_TTS_VOLUME, value.coerceIn(0f, 1.0f))
        }
    }

    fun setReaderTtsVoiceName(value: String?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TTS_VOICE_NAME, value.orEmpty())
        }
    }

    fun setReaderTtsSleepTimerMode(value: String) {
        val resolved = ReaderTtsSleepTimerMode.fromStored(value)
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TTS_SLEEP_TIMER_MODE, resolved.storedValue)
        }
    }

    fun setAppVideoSplashEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.APP_VIDEO_SPLASH_ENABLED, enabled)
        }
    }

    fun setReaderTapZoneAction(position: String, action: String) {
        val normalizedAction = normalizeTapZoneActionName(action)
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_TAP_ZONE_LEFT
            "CENTER" -> PreferencesKeys.READER_TAP_ZONE_CENTER
            else -> PreferencesKeys.READER_TAP_ZONE_RIGHT
        }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_TAP_ZONE_MODE, ReaderTapZoneMode.CUSTOM.name)
            preferences.set(key, normalizedAction)
        }
    }

    fun setReaderHeaderSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_HEADER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_HEADER_CENTER_SLOT
            else -> PreferencesKeys.READER_HEADER_RIGHT_SLOT
        }
        viewModelScope.launch { preferences.set(key, normalizedSlot) }
    }

    fun setReaderFooterSlot(position: String, slot: String) {
        val normalizedSlot = ReaderInfoSlot.fromStored(slot).name
        val key = when (position.uppercase()) {
            "LEFT" -> PreferencesKeys.READER_FOOTER_LEFT_SLOT
            "CENTER" -> PreferencesKeys.READER_FOOTER_CENTER_SLOT
            else -> PreferencesKeys.READER_FOOTER_RIGHT_SLOT
        }
        viewModelScope.launch { preferences.set(key, normalizedSlot) }
    }

    fun setReaderHeaderFooterFontSize(size: Int) {
        setSlider("readerHeaderFooterFontSize") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_FONT_SIZE, size.coerceIn(10, 20))
        }
    }

    fun setReaderHeaderFooterVerticalPadding(padding: Int) {
        setSlider("readerHeaderFooterVerticalPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_VERTICAL_PADDING, padding.coerceIn(4, 20))
        }
    }

    fun setReaderHeaderFooterLeftPadding(padding: Int) {
        setSlider("readerHeaderFooterLeftPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_LEFT_PADDING, padding.coerceIn(8, 32))
        }
    }

    fun setReaderHeaderFooterRightPadding(padding: Int) {
        setSlider("readerHeaderFooterRightPadding") {
            preferences.set(PreferencesKeys.READER_HEADER_FOOTER_RIGHT_PADDING, padding.coerceIn(8, 32))
        }
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

    fun setLibraryShowCoverTitles(enabled: Boolean) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SHOW_COVER_TITLES, enabled) }
    }

    fun setLibraryCoverScale(scale: String) {
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_COVER_SCALE, scale) }
    }

    fun setLibraryBackdropStrength(value: Float) {
        setSlider("libraryBackdrop") {
            preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, value.coerceIn(0f, 1f))
        }
    }

    fun setLibraryBackgroundBlur(value: Float) {
        setSlider("libraryBackgroundBlur") {
            preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, value.coerceIn(0f, 1f))
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

    fun saveAppThemePreset(slot: Int) {
        val snapshot = uiState.value.toAppThemePresetSnapshot()
        viewModelScope.launch {
            preferences.set(appThemePresetKey(slot), snapshot.serialize())
        }
    }

    fun applyAppThemePreset(slot: Int) {
        val snapshot = parseAppThemePreset(
            uiState.value.appThemePresetSlots.firstOrNull { it.index == slot }?.serialized
        ) ?: return
        viewModelScope.launch {
            applyAppThemePresetSnapshot(snapshot)
        }
    }

    fun clearAppThemePreset(slot: Int) {
        viewModelScope.launch {
            preferences.set(appThemePresetKey(slot), "")
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
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.18f)
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
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.08f)
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
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.24f)
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
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.12f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.28f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.42f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.52f)
                }
                "LIQUID_GLASS" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "LIQUID_GLASS")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "FROST")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "MINIMAL")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.48f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.42f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.22f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.34f)
                }
                "MIDNIGHT_MICA" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "MIDNIGHT_MICA")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "ALUMINUM")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "BALANCED")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "INK")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.36f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.22f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.22f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.3f)
                }
                "SUNSET_HAZE" -> {
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, "SUNSET_HAZE")
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, "FLOAT")
                    preferences.set(PreferencesKeys.LIBRARY_CARD_STYLE, "SHOWCASE")
                    preferences.set(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, "POSTER")
                    preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, 0.4f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, 0.18f)
                    preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, 0.16f)
                    preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, 0.2f)
                    preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, 0.18f)
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

    fun setLibraryTitleScale(value: Float) {
        setSlider("libraryTitleScale") {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_SCALE, value.coerceIn(0.85f, 1.3f))
        }
    }

    fun setLibraryTitleLines(value: Int) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_LINES, value.coerceIn(1, 3))
        }
    }

    fun setLibraryCardStroke(value: Float) {
        setSlider("libraryCardStroke") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_STROKE, value.coerceIn(0f, 1f))
        }
    }

    fun setLibraryCardCornerRadius(value: Int) {
        setSlider("libraryCardCornerRadius") {
            preferences.set(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, value.coerceIn(6, 24))
        }
    }

    fun setLibraryTitlePanelOpacity(value: Float) {
        setSlider("libraryTitlePanelOpacity") {
            preferences.set(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, value.coerceIn(0.18f, 0.78f))
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
            val quotes = quoteRepository.getAllQuotes().first()
            val root = buildBackupJson(comics, quotes)
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
            val message = if (removedBytes > 0L) settingsCacheClearedMessage(removedBytes) else settingsCacheAlreadyEmptyMessage()
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
                val quotes = quoteRepository.getAllQuotes().first()
                val root = buildBackupJson(comics, quotes)

                context.contentResolver.openOutputStream(uri)?.use { out ->
                    out.write(root.toString(2).toByteArray(Charsets.UTF_8))
                }
                statusState.update {
                    it.copy(
                        isExporting = false,
                        message = settingsExportSuccessMessage(comics.size)
                    )
                }
            } catch (e: Exception) {
                Log.e("SettingsVM", "Export failed", e)
                statusState.update {
                    it.copy(isExporting = false, message = settingsExportFailedMessage(e.localizedMessage))
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
                } ?: throw IllegalStateException(settingsImportReadFailedMessage())

                val root = JSONObject(jsonString)
                val entries = root.getJSONArray("entries")
                var updated = 0
                var restored = 0
                var skipped = 0
                var unresolvedAccess = 0
                var restoredQuotes = 0
                var updatedQuotes = 0
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

                val quotes = root.optJSONArray("quotes")
                if (quotes != null) {
                    for (i in 0 until quotes.length()) {
                        val quoteEntry = quotes.optJSONObject(i) ?: continue
                        val quote = parseQuoteBackupEntry(quoteEntry) ?: continue
                        val result = quoteRepository.restoreQuoteFromBackup(quote)
                        if (result.inserted) restoredQuotes++ else updatedQuotes++
                    }
                }

                val message = settingsImportSummaryMessage(
                    restored = restored,
                    updated = updated,
                    skipped = skipped,
                    restoredSettings = restoredSettings,
                    restoredQuotes = restoredQuotes,
                    updatedQuotes = updatedQuotes,
                    unresolvedAccess = unresolvedAccess
                )
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
                    it.copy(isImporting = false, message = settingsImportFailedMessage(e.localizedMessage))
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
                val message = settingsRepairSummaryMessage(result)
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
                        message = settingsRepairFailedMessage(e.localizedMessage)
                    )
                }
            }
        }
    }

    // ── Helpers ───────────────────────────────────────────────────────────────

    private suspend fun buildBackupJson(
        comics: List<com.example.core.model.Comic>,
        quotes: List<SavedQuote>
    ): JSONObject {
        val root = JSONObject()
        root.put("version", 5)
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
        val quoteEntries = JSONArray()
        for (quote in quotes) {
            quoteEntries.put(JSONObject().apply {
                put("id", quote.id)
                put("comicId", quote.comicId)
                put("comicTitle", quote.comicTitle)
                put("comicPath", quote.comicPath)
                put("page", quote.page)
                put("text", quote.text)
                put("translatedText", quote.translatedText)
                put("sourceLanguage", quote.sourceLanguage)
                put("targetLanguage", quote.targetLanguage)
                put("createdAt", quote.createdAt)
                put("updatedAt", quote.updatedAt)
                put("contentHash", quote.contentHash)
            })
        }
        root.put("quotes", quoteEntries)
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
        return decoded.substringBeforeLast('.').ifBlank { settingsUntitledLabel() }
    }

    private fun parseQuoteBackupEntry(entry: JSONObject): SavedQuote? {
        val comicId = entry.optString("comicId").trim()
        val text = entry.optString("text").trim()
        if (comicId.isBlank() || text.isBlank()) return null

        val contentHash = entry.optString("contentHash").ifBlank {
            java.security.MessageDigest.getInstance("SHA-256")
                .digest(text.encodeToByteArray())
                .joinToString("") { "%02x".format(it) }
        }
        val createdAt = entry.optLong("createdAt", System.currentTimeMillis())
        return SavedQuote(
            id = entry.optString("id").ifBlank { java.util.UUID.randomUUID().toString() },
            comicId = comicId,
            comicTitle = entry.optString("comicTitle").ifBlank { settingsUntitledLabel() },
            comicPath = entry.optString("comicPath"),
            page = entry.optInt("page", 0).coerceAtLeast(0),
            text = text,
            translatedText = entry.optString("translatedText").ifBlank { null },
            sourceLanguage = entry.optString("sourceLanguage").ifBlank { null },
            targetLanguage = entry.optString("targetLanguage").ifBlank { null },
            createdAt = createdAt,
            updatedAt = entry.optLong("updatedAt", createdAt),
            contentHash = contentHash
        )
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

    private fun settingsLanguage(): String = uiState.value.appLanguage

    private fun settingsCacheClearedMessage(bytes: Long): String = when (settingsLanguage()) {
        "en" -> "Cache cleared (${formatSize(bytes)})"
        "ja" -> "キャッシュを削除しました (${formatSize(bytes)})"
        "zh" -> "缓存已清理（${formatSize(bytes)}）"
        "ko" -> "캐시를 정리했습니다 (${formatSize(bytes)})"
        else -> "Кэш очищен (${formatSize(bytes)})"
    }

    private fun settingsCacheAlreadyEmptyMessage(): String = when (settingsLanguage()) {
        "en" -> "Cache is already empty"
        "ja" -> "キャッシュはすでに空です"
        "zh" -> "缓存已经是空的"
        "ko" -> "캐시가 이미 비어 있습니다"
        else -> "Кэш уже пуст"
    }

    private fun settingsExportSuccessMessage(comicCount: Int): String = when (settingsLanguage()) {
        "en" -> "Exported: $comicCount books/comics and all settings"
        "ja" -> "エクスポート完了: 書籍/コミック $comicCount 件とすべての設定"
        "zh" -> "已导出：$comicCount 本书/漫画以及全部设置"
        "ko" -> "내보냈습니다: 책/코믹 ${comicCount}개와 모든 설정"
        else -> "Экспортировано: $comicCount книг/комиксов и все настройки"
    }

    private fun settingsExportFailedMessage(detail: String?): String = when (settingsLanguage()) {
        "en" -> "Export failed: ${detail ?: "unknown error"}"
        "ja" -> "エクスポートに失敗しました: ${detail ?: "不明なエラー"}"
        "zh" -> "导出失败：${detail ?: "未知错误"}"
        "ko" -> "내보내기에 실패했습니다: ${detail ?: "알 수 없는 오류"}"
        else -> "Ошибка экспорта: ${detail ?: "неизвестная ошибка"}"
    }

    private fun settingsImportReadFailedMessage(): String = when (settingsLanguage()) {
        "en" -> "Failed to read the file"
        "ja" -> "ファイルを読み込めませんでした"
        "zh" -> "无法读取文件"
        "ko" -> "파일을 읽을 수 없습니다"
        else -> "Не удалось прочитать файл"
    }

    private fun settingsImportSummaryMessage(
        restored: Int,
        updated: Int,
        skipped: Int,
        restoredSettings: Int,
        restoredQuotes: Int,
        updatedQuotes: Int,
        unresolvedAccess: Int
    ): String = when (settingsLanguage()) {
        "en" -> buildString {
            append("Imported into library: $restored, updated: $updated, skipped: $skipped, settings restored: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append(", quotes: +$restoredQuotes / updated $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append(". $unresolvedAccess files still need access rebinding through the source folder.")
            }
        }
        "ja" -> buildString {
            append("ライブラリに取り込み: $restored、更新: $updated、スキップ: $skipped、復元した設定: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append("、引用: +$restoredQuotes / 更新 $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append("。さらに $unresolvedAccess 件は元フォルダからのアクセス再関連付けが必要です。")
            }
        }
        "zh" -> buildString {
            append("已导入到书库：$restored，已更新：$updated，已跳过：$skipped，已恢复设置：$restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append("，摘录：+$restoredQuotes / 更新 $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append("。还有 $unresolvedAccess 个文件需要通过源文件夹重新绑定访问权限。")
            }
        }
        "ko" -> buildString {
            append("라이브러리에 가져옴: $restored, 업데이트: $updated, 건너뜀: $skipped, 복원된 설정: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append(", 문구: +$restoredQuotes / 업데이트 $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append(". 추가로 ${unresolvedAccess}개 파일은 원본 폴더를 통해 접근 권한 재연결이 필요합니다.")
            }
        }
        else -> buildString {
            append("Импортировано в библиотеку: $restored, обновлено: $updated, пропущено: $skipped, настроек восстановлено: $restoredSettings")
            if (restoredQuotes > 0 || updatedQuotes > 0) {
                append(", цитат: +$restoredQuotes / обновлено $updatedQuotes")
            }
            if (unresolvedAccess > 0) {
                append(". Ещё $unresolvedAccess файлов требуют перепривязки доступа через исходную папку.")
            }
        }
    }

    private fun settingsImportFailedMessage(detail: String?): String = when (settingsLanguage()) {
        "en" -> "Import failed: ${detail ?: "unknown error"}"
        "ja" -> "インポートに失敗しました: ${detail ?: "不明なエラー"}"
        "zh" -> "导入失败：${detail ?: "未知错误"}"
        "ko" -> "가져오기에 실패했습니다: ${detail ?: "알 수 없는 오류"}"
        else -> "Ошибка импорта: ${detail ?: "неизвестная ошибка"}"
    }

    private fun settingsRepairSummaryMessage(
        result: ComicRepository.RepairLibraryAccessResult
    ): String = when (settingsLanguage()) {
        "en" -> when {
            result.repaired > 0 -> buildString {
                append("Rebound: ${result.repaired}")
                if (result.alreadyReadable > 0) append(", already OK: ${result.alreadyReadable}")
                if (result.missing > 0) append(", not found in selected folder: ${result.missing}")
                if (result.skipped > 0) append(", not related to this folder: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "No new problems were found in the selected folder. Already accessible: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "Nothing could be rebound. If some books still do not open, choose a different source folder."
            else -> "Failed to match books with the selected folder."
        }
        "ja" -> when {
            result.repaired > 0 -> buildString {
                append("再関連付け: ${result.repaired}")
                if (result.alreadyReadable > 0) append("、すでに利用可能: ${result.alreadyReadable}")
                if (result.missing > 0) append("、選択フォルダ内で未検出: ${result.missing}")
                if (result.skipped > 0) append("、このフォルダに属さない: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "選択したフォルダでは新しい問題は見つかりませんでした。すでに利用可能: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "再関連付けできませんでした。まだ開けない本がある場合は、別の元フォルダを選んでください。"
            else -> "選択したフォルダと本を対応付けできませんでした。"
        }
        "zh" -> when {
            result.repaired > 0 -> buildString {
                append("已重新绑定：${result.repaired}")
                if (result.alreadyReadable > 0) append("，已正常：${result.alreadyReadable}")
                if (result.missing > 0) append("，在所选文件夹中未找到：${result.missing}")
                if (result.skipped > 0) append("，与此文件夹无关：${result.skipped}")
            }
            result.alreadyReadable > 0 -> "在所选文件夹中没有发现新的问题。已可访问：${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "无法重新绑定。如果仍有书籍打不开，请选择其他源文件夹。"
            else -> "无法将书籍与所选文件夹匹配。"
        }
        "ko" -> when {
            result.repaired > 0 -> buildString {
                append("재연결됨: ${result.repaired}")
                if (result.alreadyReadable > 0) append(", 이미 정상: ${result.alreadyReadable}")
                if (result.missing > 0) append(", 선택한 폴더에서 찾지 못함: ${result.missing}")
                if (result.skipped > 0) append(", 이 폴더와 무관함: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "선택한 폴더에서 새로운 문제는 발견되지 않았습니다. 이미 접근 가능: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "재연결할 수 없었습니다. 여전히 열리지 않는 책이 있다면 다른 원본 폴더를 선택하세요."
            else -> "선택한 폴더와 책을 매칭할 수 없습니다."
        }
        else -> when {
            result.repaired > 0 -> buildString {
                append("Перепривязано: ${result.repaired}")
                if (result.alreadyReadable > 0) append(", уже в порядке: ${result.alreadyReadable}")
                if (result.missing > 0) append(", не найдены в выбранной папке: ${result.missing}")
                if (result.skipped > 0) append(", не относятся к этой папке: ${result.skipped}")
            }
            result.alreadyReadable > 0 -> "В выбранной папке новых проблем не найдено. Уже доступны: ${result.alreadyReadable}"
            result.missing > 0 || result.skipped > 0 -> "Ничего не удалось перепривязать. Если часть книг всё ещё не открывается, выберите другую исходную папку."
            else -> "Не удалось сопоставить книги с выбранной папкой."
        }
    }

    private fun settingsRepairFailedMessage(detail: String?): String = when (settingsLanguage()) {
        "en" -> "Access rebind failed: ${detail ?: "unknown error"}"
        "ja" -> "アクセス再関連付けに失敗しました: ${detail ?: "不明なエラー"}"
        "zh" -> "重新绑定访问权限失败：${detail ?: "未知错误"}"
        "ko" -> "접근 권한 재연결에 실패했습니다: ${detail ?: "알 수 없는 오류"}"
        else -> "Ошибка перепривязки доступа: ${detail ?: "неизвестная ошибка"}"
    }

    private fun settingsUntitledLabel(): String = when (settingsLanguage()) {
        "en" -> "Untitled"
        "ja" -> "無題"
        "zh" -> "未命名"
        "ko" -> "제목 없음"
        else -> "Без названия"
    }

    private fun libraryThemePresetKey(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> PreferencesKeys.LIBRARY_THEME_PRESET_1
        2 -> PreferencesKeys.LIBRARY_THEME_PRESET_2
        else -> PreferencesKeys.LIBRARY_THEME_PRESET_3
    }

    private fun appThemePresetKey(slot: Int) = when (slot.coerceIn(1, 3)) {
        1 -> PreferencesKeys.APP_THEME_PRESET_1
        2 -> PreferencesKeys.APP_THEME_PRESET_2
        else -> PreferencesKeys.APP_THEME_PRESET_3
    }

    private suspend fun applyLibraryPresetSnapshot(
        snapshot: LibraryThemePresetSnapshot,
        useAmoledDark: Boolean? = null
    ) {
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, snapshot.backgroundStyle)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, snapshot.backgroundImageUri ?: "")
        preferences.set(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, snapshot.backdropStrength)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, snapshot.backgroundBlur)
        preferences.set(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, snapshot.backgroundVeil)
        preferences.set(PreferencesKeys.LIBRARY_SHELF_STYLE, snapshot.shelfStyle)
        preferences.set(PreferencesKeys.LIBRARY_SHELF_DEPTH, snapshot.shelfDepth)
        preferences.set(PreferencesKeys.LIBRARY_CARD_SHADOW, snapshot.cardShadow)
        preferences.set(PreferencesKeys.LIBRARY_TITLE_SCALE, snapshot.titleScale)
        preferences.set(PreferencesKeys.LIBRARY_TITLE_LINES, snapshot.titleLines)
        preferences.set(PreferencesKeys.LIBRARY_CARD_STROKE, snapshot.cardStroke)
        preferences.set(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, snapshot.cardCornerRadius)
        preferences.set(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, snapshot.titlePanelOpacity)
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

    private suspend fun applyAppThemePresetSnapshot(
        snapshot: AppThemePresetSnapshot
    ) {
        themePreferencesRepository.setThemePreset(
            runCatching { ThemePreset.valueOf(snapshot.themePreset) }.getOrDefault(ThemePreset.CUSTOM)
        )
        themePreferencesRepository.setThemeMode(
            runCatching { ThemeMode.valueOf(snapshot.themeMode) }.getOrDefault(ThemeMode.SYSTEM)
        )
        themePreferencesRepository.setUseDynamicColor(snapshot.useDynamicColor)
        themePreferencesRepository.setUseAmoledDark(snapshot.useAmoledDark)
        themePreferencesRepository.setCustomPrimaryColor(snapshot.customPrimaryColor)
        themePreferencesRepository.setCustomSecondaryColor(snapshot.customSecondaryColor)
        themePreferencesRepository.setCustomBackgroundColor(snapshot.customBackgroundColor)
        themePreferencesRepository.setCustomSurfaceColor(snapshot.customSurfaceColor)
        themePreferencesRepository.setSurfaceOpacity(snapshot.surfaceOpacity)
        preferences.set(PreferencesKeys.UI_FONT_SCALE, snapshot.uiFontScale)
        preferences.set(PreferencesKeys.UI_DENSITY_SCALE, snapshot.uiDensityScale)
        preferences.set(PreferencesKeys.UI_CORNER_RADIUS, snapshot.uiCornerRadius)
    }

    private fun SettingsUiState.toLibraryThemePresetSnapshot(): LibraryThemePresetSnapshot =
        LibraryThemePresetSnapshot(
            backgroundStyle = libraryBackgroundStyle,
            backgroundImageUri = libraryBackgroundImageUri,
            backdropStrength = libraryBackdropStrength,
            backgroundBlur = libraryBackgroundBlur,
            backgroundVeil = libraryBackgroundVeil,
            shelfStyle = libraryShelfStyle,
            shelfDepth = libraryShelfDepth,
            cardShadow = libraryCardShadow,
            titleScale = libraryTitleScale,
            titleLines = libraryTitleLines,
            cardStroke = libraryCardStroke,
            cardCornerRadius = libraryCardCornerRadius,
            titlePanelOpacity = libraryTitlePanelOpacity,
            cardStyle = libraryCardStyle,
            thumbnailMode = libraryThumbnailMode,
            graphicCoverStyle = libraryGraphicCoverStyle,
            coverScale = libraryCoverScale,
            surfaceOpacity = surfaceOpacity
        )

    private fun SettingsUiState.toAppThemePresetSnapshot(): AppThemePresetSnapshot =
        AppThemePresetSnapshot(
            themePreset = themePreset,
            themeMode = themeMode.name,
            useDynamicColor = useDynamicColor,
            useAmoledDark = useAmoledDark,
            customPrimaryColor = customPrimaryColor,
            customSecondaryColor = customSecondaryColor,
            customBackgroundColor = customBackgroundColor,
            customSurfaceColor = customSurfaceColor,
            surfaceOpacity = surfaceOpacity,
            uiFontScale = uiFontScale,
            uiDensityScale = uiDensityScale,
            uiCornerRadius = uiCornerRadius
        )
}
