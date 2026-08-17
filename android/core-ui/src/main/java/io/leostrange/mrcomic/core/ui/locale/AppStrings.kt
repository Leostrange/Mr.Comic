package io.leostrange.mrcomic.core.ui.locale

import androidx.compose.runtime.staticCompositionLocalOf

// ─────────────────────────────────────────────────────────────────────────────
// All UI strings for Mr.Comic.
// Add a new field here, then fill it in all 5 language objects below.
// ─────────────────────────────────────────────────────────────────────────────

data class AppStrings(
    // Common
    val languageCode: String,
    val back: String,
    val ok: String,
    val cancel: String,
    val navContinue: String,
    val navLibrary: String,
    val navTranslation: String,
    val navSettings: String,
    val controlsShow: String,
    val controlsHide: String,
    val actionSort: String,
    val actionRectangle: String,
    val actionSquare: String,
    val actionFile: String,
    val actionFolder: String,
    val opdsCatalog: String,
    val opdsCatalogs: String,
    val opdsSearch: String,
    val opdsSearchPlaceholder: String,
    val opdsCatalogPickerTitle: String,
    val opdsCategories: String,
    val opdsBooks: String,
    val opdsLoadMore: String,
    val opdsDownload: String,
    val opdsRetry: String,
    val opdsProjectGutenberg: String,
    val opdsProjectGutenbergDescription: String,
    val opdsFeedbooks: String,
    val opdsFeedbooksDescription: String,
    val opdsManyBooks: String,
    val opdsManyBooksDescription: String,
    val readerPages: String,
    val readerBookmark: String,
    val readerBookmarked: String,
    val readerToc: String,
    val readerTextStyle: String,
    val readerBrightness: String,
    val readerReadingPresets: String,

    // Navigation / main settings menu
    val settings: String,
    val sectionAppearance: String,
    val sectionAppearanceDesc: String,
    val sectionReader: String,
    val sectionReaderDesc: String,
    val sectionLibrary: String,
    val sectionLibraryDesc: String,
    val sectionTranslation: String,
    val sectionTranslationDesc: String,
    val sectionBackup: String,
    val sectionBackupDesc: String,
    val sectionAbout: String,
    val sectionAboutDesc: String,

    // Language picker
    val appLanguage: String,
    val langRu: String,
    val langEn: String,
    val langJa: String,
    val langZh: String,
    val langKo: String,

    // Theme
    val themeCard: String,
    val colorTheme: String,
    val themeSystem: String,
    val themeLight: String,
    val themeDark: String,
    val themeDynamic: String,
    val dynamicColor: String,
    val dynamicColorSubtitle: String,
    val amoledDark: String,
    val amoledDarkSubtitle: String,

    // Theme presets
    val themePresets: String,
    val themePresetCustom: String,
    val themePresetPaper: String,
    val themePresetGlass: String,
    val themePresetAmoled: String,
    val themePresetNeon: String,
    val themePresetGray: String,
    val themePresetSepia: String,
    val themePresetEink: String,

    // Live preview
    val preview: String,
    val previewButton: String,
    val previewCard: String,
    val readerTextPreviewTitle: String,
    val readerTextPreviewDescription: String,

    // Font & shape
    val fontScale: String,
    val fontScaleSmall: String,
    val fontScaleNormal: String,
    val fontScaleLarge: String,
    val fontScaleXL: String,
    val cornerRadius: String,

    // Element colors
    val elementColors: String,
    val elementColorsHint: String,
    val colorPrimary: String,
    val colorSecondary: String,
    val colorBackground: String,

    // UI sounds
    val uiSoundsCard: String,
    val uiSoundsTitle: String,
    val uiSoundsSubtitle: String,

    // App icon
    val appIconCard: String,
    val appIconTitle: String,
    val appIconDesc: String,
    val appIconButton: String,

    // Reader — mode
    val readingModeCard: String,
    val readingModeDual: String,
    val readingModeLtr: String,
    val readingModeRtl: String,
    val readingModeWebtoon: String,

    // Reader presets
    val readerPresetsCard: String,
    val readerPresetCustom: String,
    val readerPresetNovel: String,
    val readerPresetManga: String,
    val readerPresetNight: String,
    val readerPresetStudy: String,

    // Reader — screen
    val readerScreenCard: String,
    val brightnessLabel: String,
    val keepScreenOn: String,
    val keepScreenOnSubtitle: String,
    val fullscreenMode: String,
    val fullscreenModeSubtitle: String,

    // Reader — animation & sound
    val animSoundCard: String,
    val pageAnimLabel: String,
    val animNone: String,
    val animSlide: String,
    val animFade: String,
    val pageFlipSound: String,
    val pageFlipSoundSubtitle: String,
    val soundStyleLabel: String,
    val soundPaper: String,
    val soundCrisp: String,
    val soundSoft: String,

    // Reader — preload
    val preloadCard: String,
    val preloadLabel: String,
    val preloadHint: String,

    // Library
    val libraryDisplayCard: String,
    val libraryDefaultView: String,
    val libraryViewGrid: String,
    val libraryViewList: String,
    val libraryGridColumns: String,
    val libraryTileSize: String,
    val libraryContinueReading: String,
    val libraryComicFallback: String,
    val libraryDeleteComicTitle: String,
    val libraryDeleteComicMessage: String,
    val libraryDeleteFolderTitle: String,
    val libraryDeleteFolderMessage: String,
    val libraryQuotes: String,
    val libraryBookmarks: String,
    val libraryAchievements: String,
    val libraryViewStrips: String,
    val libraryQuotesEmptyHint: String,
    val libraryBookmarksEmptyHint: String,
    val libraryDeleteQuoteTitle: String,
    val libraryDeleteAction: String,
    val libraryViewAsList: String,
    val libraryViewAsGrid: String,
    val libraryCoversSquare: String,
    val libraryCoversRectangle: String,
    val libraryAdd: String,
    val libraryOrderAndFilters: String,
    val libraryReset: String,
    val librarySortSection: String,
    val librarySortNewest: String,
    val librarySortRecent: String,
    val librarySortProgress: String,
    val librarySortFolderAz: String,
    val libraryStatusSection: String,
    val libraryStatusAll: String,
    val libraryStatusBookmarked: String,
    val libraryStatusNew: String,
    val libraryStatusReading: String,
    val libraryStatusCompleted: String,
    val libraryFormatSection: String,
    val libraryFormatAll: String,
    val libraryFormatImages: String,
    val libraryFormatText: String,
    val libraryGroupingSection: String,
    val libraryGroupingFolder: String,
    val libraryGroupingNone: String,
    val libraryGroupingSeries: String,
    val libraryThumbnailsSection: String,
    val libraryEmptyTitle: String,
    val libraryEmptyHint: String,
    val libraryOpenFile: String,
    val libraryOpenFolder: String,
    val libraryEmptyFolderTitle: String,
    val libraryEmptyFolderHint: String,
    val libraryCollectionLabel: String,
    val librarySave: String,
    val libraryEdit: String,
    val libraryTitle: String,
    val libraryTagsComma: String,
    val libraryProgress: String,
    val libraryProgressTemplate: String,
    val libraryGenre: String,
    val libraryPublisher: String,
    val libraryYear: String,
    val libraryTags: String,
    val libraryFormatLabel: String,
    val librarySize: String,
    val libraryOpen: String,
    val libraryRemove: String,
    val libraryDelete: String,
    val libraryStatsCompleted: String,
    val libraryStatsReading: String,

    // Translation
    val translationCard: String,
    val translationHint: String,
    val transOff: String,
    val transOcr: String,
    val transDict: String,
    val ocrLanguageCard: String,
    val ocrLanguageHint: String,
    val ocrNote: String,

    // Backup
    val progressCard: String,
    val progressHint: String,
    val exportBtn: String,
    val exportingBtn: String,
    val importBtn: String,
    val importingBtn: String,
    val autoBackup: String,
    val autoBackupSubtitle: String,
    val cacheCard: String,
    val imageCacheTitle: String,
    val imageCacheHint: String,
    val clearCacheBtn: String,
    val clearingBtn: String,

    // About
    val version: String,

    // Достижения
    val achFirstBook: String,
    val achFirstBookDesc: String,
    val achReader: String,
    val achReaderDesc: String,
    val achCollector: String,
    val achCollectorDesc: String,
    val achFirstComplete: String,
    val achFirstCompleteDesc: String,
    val achMarathon: String,
    val achMarathonDesc: String,
    val achAuthorFan: String,
    val achAuthorFanDesc: String,
    val achGenreGourmet: String,
    val achGenreGourmetDesc: String,
    val achBookmarker: String,
    val achBookmarkerDesc: String,
    val achSecretCat: String,
    val achSecretCatDesc: String,
    val achSecretHint: String
)

// ─────────────────────────────────────────────────────────────────────────────
// CompositionLocal
// ─────────────────────────────────────────────────────────────────────────────

val LocalStrings = staticCompositionLocalOf<AppStrings> { Russian }

fun normalizeAppLanguageCode(code: String?): String {
    val normalized = code
        ?.trim()
        ?.lowercase()
        ?.substringBefore('-')
        ?.ifBlank { null }

    return when (normalized) {
        "en", "ja", "zh", "ko", "ru" -> normalized
        else -> "ru"
    }
}

fun appStringsForCode(code: String): AppStrings = when (normalizeAppLanguageCode(code)) {
    "en" -> English
    "ja" -> Japanese
    "zh" -> ChineseSimplified
    "ko" -> Korean
    else -> Russian
}
