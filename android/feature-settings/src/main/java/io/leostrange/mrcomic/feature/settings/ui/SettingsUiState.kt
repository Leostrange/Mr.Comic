// Phase K (2026-08-03): state-модель вынесена из SettingsViewModel.kt.

package io.leostrange.mrcomic.feature.settings.ui

import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsConfig
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.TranslationAvailabilitySnapshot
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_SHADOW
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_CORNER_RADIUS
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_STROKE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_COVER_SCALE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_SHELF_DEPTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_SHELF_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_THUMBNAIL_MODE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_TITLE_LINES
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_TITLE_PANEL_OPACITY
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_TITLE_SCALE
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreset

/**
 * Settings state model (Phase K, 2026-08-03): SettingsUiState plus the
 * ViewModel-internal StatusState / SettingsTranslationAvailabilityState
 * and the toolbar-opacity default constant. Moved from SettingsViewModel.kt;
 * behavior is unchanged.
 */

/* ──── SETTINGS_READER_DEFAULT_TOOLBAR_BLUR (const) ──── */
internal const val SETTINGS_READER_DEFAULT_TOOLBAR_BLUR = 0f

/* ──── SettingsUiState (data class) ──── */
data class SettingsUiState(
    val themeMode: ThemeMode = ThemeMode.SYSTEM,
    val useDynamicColor: Boolean = true,
    val useAmoledDark: Boolean = false,
    val readingMode: ReadingMode = ReadingMode.PAGE_LTR,
    val readerImageScaleMode: String = ReaderImageScaleMode.defaultFor(null).storedValue,
    val readerImageMarginCropHorizontal: Float = 0f,
    val readerImageMarginCropVertical: Float = 0f,
    val brightness: Float = -1f,
    val keepScreenOnInReader: Boolean = false,
    val readerScreenTimeoutMode: String = ReaderScreenTimeoutMode.SYSTEM.storedValue,
    val readerLandscapeSpreadEnabled: Boolean = true,
    // Библиотека
    val libraryGridColumns: Int = 3,
    val libraryViewMode: String = "GRID",
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
    val textCustomTextColor: Long? = null,
    val textCustomBackgroundColor: Long? = null,
    val textCustomAccentColor: Long? = null,
    val textFontFamily: String = "Georgia",
    val textLineHeight: Float = 1.8f,
    val textLetterSpacing: Float = 0f,
    val textWordSpacing: Float = 0f,
    val textParagraphSpacing: Float = 0.2f,
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
    val performanceReducedMotion: Boolean = false,
    val performanceReducedVisualEffects: Boolean = false,
    val appNavTransitionStyle: String = "FADE",
    val perfProfile: String = PerformanceDefaults.PROFILE,
    val perfRenderQuality: String = PerformanceDefaults.RENDER_QUALITY,
    val perfCoverCacheMb: Int = PerformanceDefaults.COVER_CACHE_MB,
    val perfPageCacheCount: Int = PerformanceDefaults.PAGE_CACHE_COUNT,
    val perfFtsSearchEnabled: Boolean = PerformanceDefaults.FTS_SEARCH,
    val perfStartupPreloadEnabled: Boolean = PerformanceDefaults.STARTUP_PRELOAD,
    val perfReducedAnimations: Boolean = PerformanceDefaults.REDUCED_ANIM,
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
    val libraryShowStatusChips: Boolean = true,
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
    val readerStylePresetSlots: List<ReaderStylePresetSlot> = emptyList(),
    val readerStylePresetEntries: List<ReaderStylePresetEntry> = emptyList(),
    // Перевод
    val translationConfig: TranslationServiceConfig = TranslationServiceConfig(),
    val openRouterApiKey: String = "",
    val openRouterModel: String = "openrouter/auto",
    val deeplApiKey: String = "",
    val deeplUseFreeApi: Boolean = true,
    val googleApiKey: String = "",
    val yandexApiKey: String = "",
    val yandexFolderId: String = "",
    val translationWifiOnly: Boolean = false,
    val translationDailyCharLimit: Int = 100_000,
    val translationAvailability: TranslationAvailabilitySnapshot = TranslationAvailabilitySnapshot(),
    val translationAvailabilityPairKnown: Boolean = false,
    val ocrLanguage: String = "JA",
    val ocrDialoguesOnly: Boolean = false,
    val ocrIncludeSfx: Boolean = true,
    val ocrOverlayOpacity: Float = 0.85f,
    val ocrOverlayFontScale: Float = 1.0f,
    val ocrOverlayStyle: String = "AUTO",
    // Бэкап
    val autoBackupEnabled: Boolean = false,
    val settingsImportErrorPresentation: String = SettingsImportErrorPresentation.TEXT,
    val imageMessagePopupPosition: String = SettingsImageMessagePopupPosition.CENTER,
    val imageMessagePopupFreeMove: Boolean = false,
    val imageMessagePopupSizeScale: Float = 1f,
    val imageMessagePopupDurationSeconds: Int = 0,
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

/* ──── StatusState (data class) ──── */
internal data class StatusState(
    val isClearingCache: Boolean = false,
    val isExporting: Boolean = false,
    val isImporting: Boolean = false,
    val isRepairingLibraryAccess: Boolean = false,
    val pendingLibraryRepairLaunchToken: Long = 0L,
    val message: String? = null
)

/* ──── SettingsTranslationAvailabilityState (data class) ──── */
internal data class SettingsTranslationAvailabilityState(
    val snapshot: TranslationAvailabilitySnapshot = TranslationAvailabilitySnapshot(),
    val pairKnown: Boolean = false
)

