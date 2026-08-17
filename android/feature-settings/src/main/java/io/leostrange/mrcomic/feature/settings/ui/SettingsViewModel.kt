// Phase T (2026-08-04): i18n helpers + formatSize→internal → SettingsViewModelMessages.kt.

// Phase L (2026-08-03):
// Stateless-хелперы (JSONObject ext, normalizeImported*, formatSize,
// presetKey, snapshot converters) → SettingsViewModelHelpers.kt.

// Phase K (2026-08-03):
// State-модель (SettingsUiState + StatusState + SettingsTranslationAvailabilityState
// + SETTINGS_READER_DEFAULT_TOOLBAR_BLUR) → SettingsUiState.kt.

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Context
import androidx.datastore.preferences.core.Preferences
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.style
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import io.leostrange.mrcomic.core.data.dictionary.DictionaryDownloader
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

// Preset data classes and parsing extracted to SettingsPresets.kt

// SettingsUiState (data class) → SettingsUiState.kt (Phase K 2026-08-03)
// Internal state for all async operations to avoid exceeding combine()'s 5-flow limit
// StatusState (data class) → SettingsUiState.kt (Phase K 2026-08-03)
// SettingsTranslationAvailabilityState (data class) → SettingsUiState.kt (Phase K 2026-08-03)
// SETTINGS_READER_MIN_TOOLBAR_OPACITY → SettingsReaderCards.kt
// SETTINGS_READER_DEFAULT_TOOLBAR_BLUR (const) → SettingsUiState.kt (Phase K 2026-08-03)
// SettingsSecretStore extracted to SettingsSecretStore.kt

// normalizeLibraryViewMode moved to io.leostrange.mrcomic.core.domain.util.normalizeLibraryViewModeKey (SET-4/LIB-4).

@HiltViewModel
class SettingsViewModel @Inject constructor(
    @ApplicationContext internal val context: Context,
    internal val themePreferencesRepository: ThemePreferencesRepository,
    internal val comicRepository: ComicRepository,
    internal val quoteRepository: QuoteRepository,
    internal val dailyReadingGoalStore: DailyReadingGoalStore,
    internal val analyticsTracker: ReadingAnalyticsTracker,
    private val dictionaryEngine: DictionaryEngine,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine,
    private val dictionaryDownloader: DictionaryDownloader
) : ViewModel() {

    internal val preferences = UserPreferences(context.dataStore)
    internal val settingsPreferencesController = SettingsPreferencesController(
        viewModelScope = viewModelScope,
        preferences = preferences
    )
    internal val statusState = MutableStateFlow(StatusState())

    /** Theme/library/reader preset save/apply/clear/rename (4.1).
     * The ViewModel stays the single owner of state and lifecycle. */
    internal val presetsController: SettingsPresetsController by lazy {
        SettingsPresetsController(
            preferences = preferences,
            themePreferencesRepository = themePreferencesRepository,
            scope = viewModelScope,
            uiState = { uiState.value },
            persistNullableColor = { key, value -> persistNullableReaderColor(key, value) },
        )
    }

    /** Backup/export/import/cache operations (4.1).
     * The ViewModel stays the single owner of state and lifecycle. */
    internal val backupController: SettingsBackupController by lazy {
        SettingsBackupController(
            context = context,
            preferences = preferences,
            themePreferencesRepository = themePreferencesRepository,
            comicRepository = comicRepository,
            quoteRepository = quoteRepository,
            scope = viewModelScope,
            statusState = statusState,
            language = { uiState.value.appLanguage },
        )
    }

    /** Settings setters (4.1). The functions live as extensions on this
     * holder in the SettingsViewModel*Setters.kt files; the ViewModel
     * keeps the public API via one-line delegates. */
    internal val settersController: SettingsSettersController by lazy {
        SettingsSettersController(
            preferences = preferences,
            themePreferencesRepository = themePreferencesRepository,
            dailyReadingGoalStore = dailyReadingGoalStore,
            analyticsTracker = analyticsTracker,
            scope = viewModelScope,
            uiState = { uiState.value },
            settingsPreferencesController = settingsPreferencesController,
            setSlider = ::setSlider,
            updateToggleEnabledAt = ::updateToggleEnabledAt,
            persistNullableReaderColor = { key, value -> persistNullableReaderColor(key, value) },
            parseImportedTypography = { json -> parseImportedReaderTypography(json) },
        )
    }

    internal suspend fun updateToggleEnabledAt(
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
    internal fun setSlider(key: String, block: suspend () -> Unit) {
        sliderJobs[key]?.cancel()
        sliderJobs[key] = viewModelScope.launch { delay(300); block() }
    }

    /** Flow-composition holder for SettingsUiState (4.1). */
    private val settingsUiStateFlowBuilder: SettingsUiStateFlowBuilder by lazy {
        SettingsUiStateFlowBuilder(
            preferences = preferences,
            context = context,
            statusState = statusState,
            themePreferencesRepository = themePreferencesRepository,
            onlineTranslationEngine = onlineTranslationEngine,
            offlineTranslationEngine = offlineTranslationEngine,
            dictionaryEngine = dictionaryEngine,
        )
    }

    private val combinedSettingsUiState: Flow<SettingsUiState> = settingsUiStateFlowBuilder
        .createCombinedSettingsUiState()
        .combine(dailyReadingGoalStore.goalState) { state: SettingsUiState, goalState ->
            state.withDailyReadingGoal(goalState)
        }.combine(comicRepository.getAllComics()) { state: SettingsUiState, comics: List<Comic> ->
            state.withLibraryStats(comics)
        }

    val uiState: StateFlow<SettingsUiState> = combinedSettingsUiState.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5_000),
        initialValue = SettingsUiState()
    )

    init {
        viewModelScope.launch {
            val existingEntries = parseReaderStylePresetEntries(
                preferences.get(PreferencesKeys.READER_STYLE_PRESET_LIST, "").first()
            )
            if (existingEntries.isNotEmpty()) return@launch
            val legacySlots = listOf(
                ReaderStylePresetSlot(1, preferences.get(PreferencesKeys.READER_STYLE_PRESET_1, "").first().ifBlank { null }),
                ReaderStylePresetSlot(2, preferences.get(PreferencesKeys.READER_STYLE_PRESET_2, "").first().ifBlank { null }),
                ReaderStylePresetSlot(3, preferences.get(PreferencesKeys.READER_STYLE_PRESET_3, "").first().ifBlank { null })
            )
            val migrated = migrateLegacyReaderStyleSlotsToEntries(legacySlots)
            if (migrated.isNotEmpty()) {
                persistReaderStylePresetEntries(migrated)
            }
        }
    }

    // Phase Z (2026-08-04): setter functions → SettingsViewModelSetters.kt.
    // 4.1: setters moved to SettingsSettersController; these one-line delegates
    // keep the public API stable (Compose calls viewModel.setX).
    fun setAppLanguage(code: String) = settersController.setAppLanguage(code)
    fun setThemePreset(preset: ThemePreset) = settersController.setThemePreset(preset)
    fun setThemeMode(mode: ThemeMode) = settersController.setThemeMode(mode)
    fun setUseDynamicColor(enabled: Boolean) = settersController.setUseDynamicColor(enabled)
    fun setUseAmoledDark(enabled: Boolean) = settersController.setUseAmoledDark(enabled)
    fun setCustomPrimaryColor(color: Long?) = settersController.setCustomPrimaryColor(color)
    fun setCustomSecondaryColor(color: Long?) = settersController.setCustomSecondaryColor(color)
    fun setCustomBackgroundColor(color: Long?) = settersController.setCustomBackgroundColor(color)
    fun setCustomSurfaceColor(color: Long?) = settersController.setCustomSurfaceColor(color)
    fun setSurfaceOpacity(value: Float) = settersController.setSurfaceOpacity(value)
    fun setMascotRecapEnabled(enabled: Boolean) = settersController.setMascotRecapEnabled(enabled)
    fun setQuestPromptsEnabled(enabled: Boolean) = settersController.setQuestPromptsEnabled(enabled)
    fun setDailyReadingGoalEnabled(enabled: Boolean) = settersController.setDailyReadingGoalEnabled(enabled)
    fun setDailyReadingGoalTargetPages(targetPages: Int) = settersController.setDailyReadingGoalTargetPages(targetPages)
    fun setDailyReadingStreakEnabled(enabled: Boolean) = settersController.setDailyReadingStreakEnabled(enabled)
    fun setDailyReadingGraceEnabled(enabled: Boolean) = settersController.setDailyReadingGraceEnabled(enabled)
    fun setLibraryGridColumns(count: Int) = settersController.setLibraryGridColumns(count)
    fun setLibraryViewGrid(grid: Boolean) = settersController.setLibraryViewGrid(grid)
    fun setLibraryViewMode(mode: String) = settersController.setLibraryViewMode(mode)
    fun setLibraryTileSize(size: Int) = settersController.setLibraryTileSize(size)
    fun setLibraryCardStyle(style: String) = settersController.setLibraryCardStyle(style)
    fun setLibraryRecentStripPosition(position: String) = settersController.setLibraryRecentStripPosition(position)
    fun setLibraryShowProgress(enabled: Boolean) = settersController.setLibraryShowProgress(enabled)
    fun setLibraryShowCoverTitles(enabled: Boolean) = settersController.setLibraryShowCoverTitles(enabled)
    fun setLibraryShowStatusChips(enabled: Boolean) = settersController.setLibraryShowStatusChips(enabled)
    fun setLibraryCoverScale(scale: String) = settersController.setLibraryCoverScale(scale)
    fun setLibraryBackdropStrength(value: Float) = settersController.setLibraryBackdropStrength(value)
    fun setLibraryBackgroundBlur(value: Float) = settersController.setLibraryBackgroundBlur(value)
    fun setLibraryBackgroundStyle(style: String) = settersController.setLibraryBackgroundStyle(style)
    fun setLibraryBackgroundVeil(value: Float) = settersController.setLibraryBackgroundVeil(value)
    fun setLibraryBackgroundImageUri(uri: String?) = settersController.setLibraryBackgroundImageUri(uri)
    fun setLibraryShelfStyle(style: String) = settersController.setLibraryShelfStyle(style)
    fun setLibraryShelfDepth(value: Float) = settersController.setLibraryShelfDepth(value)
    fun setLibraryCardShadow(value: Float) = settersController.setLibraryCardShadow(value)
    fun setLibraryTitleScale(value: Float) = settersController.setLibraryTitleScale(value)
    fun setLibraryTitleLines(value: Int) = settersController.setLibraryTitleLines(value)
    fun setLibraryCardStroke(value: Float) = settersController.setLibraryCardStroke(value)
    fun setLibraryCardCornerRadius(value: Int) = settersController.setLibraryCardCornerRadius(value)
    fun setLibraryTitlePanelOpacity(value: Float) = settersController.setLibraryTitlePanelOpacity(value)
    fun setLibraryThumbnailMode(mode: String) = settersController.setLibraryThumbnailMode(mode)
    fun setLibraryGraphicCoverStyle(style: String) = settersController.setLibraryGraphicCoverStyle(style)
    fun setLibrarySortOrder(order: String) = settersController.setLibrarySortOrder(order)
    fun setLibraryGroupBy(mode: String) = settersController.setLibraryGroupBy(mode)
    fun setUiSoundEnabled(enabled: Boolean) = settersController.setUiSoundEnabled(enabled)
    fun setUiSoundsVolume(vol: Float) = settersController.setUiSoundsVolume(vol)
    fun setUiFontScale(scale: Float) = settersController.setUiFontScale(scale)
    fun setUiDensityScale(scale: Float) = settersController.setUiDensityScale(scale)
    fun setUiCornerRadius(radius: Int) = settersController.setUiCornerRadius(radius)
    fun setPerformanceReducedMotion(enabled: Boolean) = settersController.setPerformanceReducedMotion(enabled)
    fun setPerformanceReducedVisualEffects(enabled: Boolean) = settersController.setPerformanceReducedVisualEffects(enabled)
    fun setPerfProfile(profile: String) = settersController.setPerfProfile(profile)
    fun setPerfRenderQuality(quality: String) = settersController.setPerfRenderQuality(quality)
    fun setPerfCoverCacheMb(mb: Int) = settersController.setPerfCoverCacheMb(mb)
    fun setPerfPageCacheCount(count: Int) = settersController.setPerfPageCacheCount(count)
    fun setPerfFtsSearchEnabled(enabled: Boolean) = settersController.setPerfFtsSearchEnabled(enabled)
    fun setPerfStartupPreloadEnabled(enabled: Boolean) = settersController.setPerfStartupPreloadEnabled(enabled)
    fun setPerfReducedAnimations(reduced: Boolean) = settersController.setPerfReducedAnimations(reduced)
    fun resetPerfSettings() = settersController.resetPerfSettings()
    fun setReaderTapZoneMode(mode: String) = settersController.setReaderTapZoneMode(mode)
    fun setReaderTapZoneSwap(enabled: Boolean) = settersController.setReaderTapZoneSwap(enabled)
    fun setReaderVolumeKeysPaging(enabled: Boolean) = settersController.setReaderVolumeKeysPaging(enabled)
    fun setReaderTtsSpeed(value: Float) = settersController.setReaderTtsSpeed(value)
    fun setReaderTtsProvider(value: String) = settersController.setReaderTtsProvider(value)
    fun setReaderTtsPitch(value: Float) = settersController.setReaderTtsPitch(value)
    fun setReaderTtsVolume(value: Float) = settersController.setReaderTtsVolume(value)
    fun setReaderTtsVoiceName(value: String?) = settersController.setReaderTtsVoiceName(value)
    fun setReaderTtsSleepTimerMode(value: String) = settersController.setReaderTtsSleepTimerMode(value)
    fun setAppVideoSplashEnabled(enabled: Boolean) = settersController.setAppVideoSplashEnabled(enabled)
    fun setReaderTapZoneAction(position: String, action: String) = settersController.setReaderTapZoneAction(position, action)
    fun setReaderHeaderSlot(position: String, slot: String) = settersController.setReaderHeaderSlot(position, slot)
    fun setReaderFooterSlot(position: String, slot: String) = settersController.setReaderFooterSlot(position, slot)
    fun setReaderHeaderFooterFontSize(size: Int) = settersController.setReaderHeaderFooterFontSize(size)
    fun setReaderHeaderFooterVerticalPadding(padding: Int) = settersController.setReaderHeaderFooterVerticalPadding(padding)
    fun setReaderHeaderFooterLeftPadding(padding: Int) = settersController.setReaderHeaderFooterLeftPadding(padding)
    fun setReaderHeaderFooterRightPadding(padding: Int) = settersController.setReaderHeaderFooterRightPadding(padding)
    fun setReaderPreset(presetName: String) = settersController.setReaderPreset(presetName)
    fun setReadingMode(mode: ReadingMode) = settersController.setReadingMode(mode)
    fun setBrightness(value: Float) = settersController.setBrightness(value)
    fun setKeepScreenOnInReader(enabled: Boolean) = settersController.setKeepScreenOnInReader(enabled)
    fun setReaderScreenTimeoutMode(mode: String) = settersController.setReaderScreenTimeoutMode(mode)
    fun setReaderLandscapeSpreadEnabled(enabled: Boolean) = settersController.setReaderLandscapeSpreadEnabled(enabled)
    fun setReaderPreloadPages(count: Int) = settersController.setReaderPreloadPages(count)
    fun setReaderImageScaleMode(mode: String) = settersController.setReaderImageScaleMode(mode)
    fun setReaderImageMarginCropHorizontal(value: Float) = settersController.setReaderImageMarginCropHorizontal(value)
    fun setReaderImageMarginCropVertical(value: Float) = settersController.setReaderImageMarginCropVertical(value)
    fun setReaderImmersiveMode(enabled: Boolean) = settersController.setReaderImmersiveMode(enabled)
    fun setReaderChromeAutoHide(enabled: Boolean) = settersController.setReaderChromeAutoHide(enabled)
    fun setReaderTopToolbarOpacity(value: Float) = settersController.setReaderTopToolbarOpacity(value)
    fun setReaderBottomToolbarOpacity(value: Float) = settersController.setReaderBottomToolbarOpacity(value)
    fun setReaderToolbarOpacity(value: Float) = settersController.setReaderToolbarOpacity(value)
    fun setReaderToolbarBlur(value: Float) = settersController.setReaderToolbarBlur(value)
    fun setReaderPageAnimation(animation: String) = settersController.setReaderPageAnimation(animation)
    fun setAppNavTransitionStyle(style: String) = settersController.setAppNavTransitionStyle(style)
    fun setReaderPageSound(enabled: Boolean) = settersController.setReaderPageSound(enabled)
    fun setReaderEyeRestEnabled(enabled: Boolean) = settersController.setReaderEyeRestEnabled(enabled)
    fun setReaderEyeRestMinutes(minutes: Int) = settersController.setReaderEyeRestMinutes(minutes)
    fun setReaderPageSoundStyle(style: String) = settersController.setReaderPageSoundStyle(style)
    fun setTextFontSize(size: Int) = settersController.setTextFontSize(size)
    fun setTextColorScheme(scheme: String) = settersController.setTextColorScheme(scheme)
    fun setTextCustomTextColor(color: Long?) = settersController.setTextCustomTextColor(color)
    fun setTextCustomBackgroundColor(color: Long?) = settersController.setTextCustomBackgroundColor(color)
    fun setTextCustomAccentColor(color: Long?) = settersController.setTextCustomAccentColor(color)
    fun setTextFontFamily(family: String) = settersController.setTextFontFamily(family)
    fun setTextLineHeight(height: Float) = settersController.setTextLineHeight(height)
    fun setTextLetterSpacing(spacing: Float) = settersController.setTextLetterSpacing(spacing)
    fun setTextWordSpacing(spacing: Float) = settersController.setTextWordSpacing(spacing)
    fun setTextParagraphSpacing(spacing: Float) = settersController.setTextParagraphSpacing(spacing)
    fun setTextAlignment(alignment: String) = settersController.setTextAlignment(alignment)
    fun setTextBold(enabled: Boolean) = settersController.setTextBold(enabled)
    fun resetReaderTextStyle() = settersController.resetReaderTextStyle()
    suspend fun importReaderTypographyFromJson(rawJson: String) = settersController.importReaderTypographyFromJson(rawJson)
    fun setTranslationMode(mode: String) = settersController.setTranslationMode(mode)
    fun setTranslationSourceLanguage(code: String) = settersController.setTranslationSourceLanguage(code)
    fun setTranslationTargetLanguage(code: String) = settersController.setTranslationTargetLanguage(code)
    fun setTranslationTransport(value: String) = settersController.setTranslationTransport(value)
    fun setTranslationExplainEnabled(enabled: Boolean) = settersController.setTranslationExplainEnabled(enabled)
    fun setTranslationExplainProvider(provider: String) = settersController.setTranslationExplainProvider(provider)
    fun saveEncryptedOpenRouterApiKey(value: String) = settersController.saveEncryptedOpenRouterApiKey(value)
    fun setOpenRouterApiKey(value: String) = settersController.setOpenRouterApiKey(value)
    fun setOpenRouterModel(value: String) = settersController.setOpenRouterModel(value)
    fun setDeepLApiKey(value: String) = settersController.setDeepLApiKey(value)
    fun setDeepLUseFreeApi(value: Boolean) = settersController.setDeepLUseFreeApi(value)
    fun setGoogleApiKey(value: String) = settersController.setGoogleApiKey(value)
    fun setYandexApiKey(value: String) = settersController.setYandexApiKey(value)
    fun setYandexFolderId(value: String) = settersController.setYandexFolderId(value)
    fun setTranslationWifiOnly(value: Boolean) = settersController.setTranslationWifiOnly(value)
    fun setTranslationDailyCharLimit(value: Int) = settersController.setTranslationDailyCharLimit(value)
    fun setOcrLanguage(lang: String) = settersController.setOcrLanguage(lang)
    fun setOcrDialoguesOnly(enabled: Boolean) = settersController.setOcrDialoguesOnly(enabled)
    fun setOcrIncludeSfx(enabled: Boolean) = settersController.setOcrIncludeSfx(enabled)
    fun setOcrOverlayOpacity(value: Float) = settersController.setOcrOverlayOpacity(value)
    fun setOcrOverlayFontScale(value: Float) = settersController.setOcrOverlayFontScale(value)
    fun setOcrOverlayStyle(value: String) = settersController.setOcrOverlayStyle(value)


    // Phase X (2026-08-04): backup/cache/repair → SettingsViewModelBackup.kt.

    // Dictionary download state
    private val _dictionaryDownloadState = MutableStateFlow(DictionaryDownloadState())
    val dictionaryDownloadState: StateFlow<DictionaryDownloadState> = _dictionaryDownloadState

    fun downloadAllDictionaries() {
        viewModelScope.launch {
            _dictionaryDownloadState.value = DictionaryDownloadState(
                isDownloading = true
            )
            try {
                val allLanguages = listOf("en", "fr", "it", "ja", "ko", "pl", "pt", "ru", "tr", "zh")
                val downloaded = mutableSetOf<String>()
                allLanguages.forEach { lang ->
                    _dictionaryDownloadState.update { it.copy(currentLanguage = lang) }
                    val result = dictionaryDownloader.ensureDictionary(lang) { progress ->
                        _dictionaryDownloadState.update { state ->
                            state.copy(progress = state.progress + (lang to progress))
                        }
                    }
                    if (result != null) {
                        downloaded.add(lang)
                        _dictionaryDownloadState.update { state ->
                            state.copy(
                                downloadedLanguages = state.downloadedLanguages + lang,
                                progress = state.progress + (lang to 100)
                            )
                        }
                    }
                }
                _dictionaryDownloadState.value = DictionaryDownloadState(
                    downloadedLanguages = downloaded.toSet()
                )
            } catch (e: Exception) {
                _dictionaryDownloadState.value = DictionaryDownloadState()
            }
        }
    }
}
