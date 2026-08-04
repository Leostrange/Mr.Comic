// Phase T (2026-08-04): i18n helpers + formatSize→internal → SettingsViewModelMessages.kt.

// Phase L (2026-08-03):
// Stateless-хелперы (JSONObject ext, normalizeImported*, formatSize,
// presetKey, snapshot converters) → SettingsViewModelHelpers.kt.

// Phase K (2026-08-03):
// State-модель (SettingsUiState + StatusState + SettingsTranslationAvailabilityState
// + SETTINGS_READER_DEFAULT_TOOLBAR_BLUR) → SettingsUiState.kt.

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Context
import android.net.ConnectivityManager
import android.net.Network
import android.net.NetworkCapabilities
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
import io.leostrange.mrcomic.core.data.preferences.APP_ICON_PREFERENCE_KEY
import io.leostrange.mrcomic.core.data.preferences.DEFAULT_APP_ICON_ID
import io.leostrange.mrcomic.core.data.preferences.PerfProfile
import io.leostrange.mrcomic.core.data.preferences.PerfRenderQuality
import io.leostrange.mrcomic.core.data.preferences.PerformanceDefaults
import io.leostrange.mrcomic.core.data.preferences.PerformancePreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.appIconDataStore
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.data.repository.ComicRepository
import io.leostrange.mrcomic.core.model.repository.BackupRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.domain.translation.DictionaryEngine
import io.leostrange.mrcomic.core.domain.translation.OfflineTranslationEngine
import io.leostrange.mrcomic.core.domain.translation.OnlineTranslationEngine
import io.leostrange.mrcomic.core.domain.util.LibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.Result
import io.leostrange.mrcomic.core.domain.util.normalizeLibraryViewModeKey
import io.leostrange.mrcomic.core.domain.util.normalizeTapZoneActionName
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReaderInfoSlot
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.ReaderTtsConfig
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.TranslationAvailabilitySnapshot
import io.leostrange.mrcomic.core.model.TranslationServiceConfig
import io.leostrange.mrcomic.core.model.TranslationTransportPreference
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
import io.leostrange.mrcomic.core.ui.library.LibraryThemePresetSnapshot
import io.leostrange.mrcomic.core.ui.library.libraryQuickPresetSpec
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryGraphicCoverStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryShelfStyle
import io.leostrange.mrcomic.core.ui.library.parseLibraryThemePreset
import io.leostrange.mrcomic.core.ui.eink.isEInkDevice
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.ui.theme.toConfig
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.channels.awaitClose
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.callbackFlow
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.mapLatest
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.net.URLDecoder
import java.util.Locale
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
    private val comicRepository: ComicRepository,
    private val quoteRepository: QuoteRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val dictionaryEngine: DictionaryEngine,
    private val offlineTranslationEngine: OfflineTranslationEngine,
    private val onlineTranslationEngine: OnlineTranslationEngine
) : ViewModel() {

    internal val preferences = UserPreferences(context.dataStore)
    private val settingsPreferencesController = SettingsPreferencesController(
        viewModelScope = viewModelScope,
        preferences = preferences
    )
    internal val statusState = MutableStateFlow(StatusState())

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

    private val baseUiStateLeftCore = createBaseUiStateLeftCore()

    private val baseUiStateLeft = createBaseUiStateLeft()

    private val baseUiState = createBaseUiState()

    // Extras 1: библиотека + базовые настройки ридера
    private val extrasFlow1a = createExtrasFlow1a()

    private val extrasFlow1 = createExtrasFlow1()

    private val extrasFlow1b = createExtrasFlow1b()

    private val extrasFlow2a = createExtrasFlow2a()

    private val extrasFlow2b = createExtrasFlow2b()

    private val extrasFlow2 = createExtrasFlow2()

    private val extrasFlow12 = createExtrasFlow12()

    private val translationConfigFlow = createTranslationConfigFlow()

    private val appLanguageFlow = preferences.get(PreferencesKeys.APP_LANGUAGE, "ru")
        .map(::normalizeAppLanguageCode)

    private val networkAvailableFlow: Flow<Boolean> = callbackFlow {
        val connectivityManager = context.getSystemService(ConnectivityManager::class.java)
        if (connectivityManager == null) {
            trySend(false)
            close()
            return@callbackFlow
        }

        fun emitCurrent() {
            trySend(resolveSettingsNetworkAvailable(connectivityManager))
        }

        val callback = object : ConnectivityManager.NetworkCallback() {
            override fun onAvailable(network: Network) = emitCurrent()

            override fun onLost(network: Network) = emitCurrent()

            override fun onCapabilitiesChanged(network: Network, networkCapabilities: NetworkCapabilities) =
                emitCurrent()

            override fun onUnavailable() = emitCurrent()
        }

        emitCurrent()
        val registered = runCatching {
            connectivityManager.registerDefaultNetworkCallback(callback)
        }.isSuccess
        if (!registered) {
            close()
            return@callbackFlow
        }
        awaitClose {
            runCatching { connectivityManager.unregisterNetworkCallback(callback) }
        }
    }.distinctUntilChanged()

    private val translationAvailabilityFlow: Flow<SettingsTranslationAvailabilityState> = combine(
        translationConfigFlow,
        appLanguageFlow,
        networkAvailableFlow
    ) { translationConfig, appLanguage, networkAvailable ->
        Triple(translationConfig, appLanguage, networkAvailable)
    }.mapLatest { (translationConfig, appLanguage, networkAvailable) ->
        resolveSettingsTranslationAvailabilityState(
            translationConfig = translationConfig,
            appLanguage = appLanguage,
            networkAvailable = networkAvailable
        )
    }

    private val extrasFlow3a2 = createExtrasFlow3a2()

    private val extrasFlow3a3 = createExtrasFlow3a3()

    private val extrasFlow3b = createExtrasFlow3b()

    private val extrasFlow3 = createExtrasFlow3()

    private val extrasFlow4 = createExtrasFlow4()

    private val extrasFlow5 = createExtrasFlow5()

    private val extrasFlow6a = createExtrasFlow6a()

    private val extrasFlow6b = createExtrasFlow6b()

    private val extrasFlow6e = createExtrasFlow6e()

    private val extrasFlow6c = createExtrasFlow6c()

    private val extrasFlow6d = createExtrasFlow6d()

    private val readerStylePresetSlotsFlow = createReaderStylePresetSlotsFlow()

    private val readerStylePresetEntriesFlow = createReaderStylePresetEntriesFlow()

    private val extrasFlow345 = createExtrasFlow345()
    private val extrasFlow6 = createExtrasFlow6()
    private val extrasFlow3456 = createExtrasFlow3456()
    private val extrasFlow7a = createExtrasFlow7a()

    private val extrasFlow7b1a = createExtrasFlow7b1a()

    private val extrasFlow7b1b = createExtrasFlow7b1b()

    private val extrasFlow7b1 = createExtrasFlow7b1()

    private val extrasFlow7b2a = createExtrasFlow7b2a()

    private val extrasFlow7b2b = createExtrasFlow7b2b()

    private val extrasFlow7b2 = createExtrasFlow7b2()
    private val extrasFlow7b = createExtrasFlow7b()
    private val extrasFlow7c1a = createExtrasFlow7c1a()

    private val extrasFlow7c1b = createExtrasFlow7c1b()
    private val extrasFlow7c1 = createExtrasFlow7c1()

    private val extrasFlow7c2a = createExtrasFlow7c2a()

    private val extrasFlow7c2b = createExtrasFlow7c2b()

    private val extrasFlow7c3 = createExtrasFlow7c3()

    private val extrasFlow7c2 = createExtrasFlow7c2()
    private val extrasFlow7c = createExtrasFlow7c()
    private val extrasFlow7 = createExtrasFlow7()

    private val readerTtsFlowA = createReaderTtsFlowA()

    private val readerTtsFlowB = createReaderTtsFlowB()

    private val readerTtsFlow = createReaderTtsFlow()

    private val perfFlow = createPerfFlow()

    private val combinedSettingsUiState: Flow<SettingsUiState> = createCombinedSettingsUiState()
        .combine(dailyReadingGoalStore.goalState) { state: SettingsUiState, goalState ->
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
        }.combine(comicRepository.getAllComics()) { state: SettingsUiState, comics: List<Comic> ->
            state.copy(
                totalComics       = comics.size,
                completedComics   = comics.count { it.isCompleted },
                bookmarkedComics  = comics.count { it.isBookmarked },
                rawAuthors        = comics.map { it.author },
                rawGenres         = comics.map { it.genre }
            )
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

    internal suspend fun resolveSettingsTranslationAvailabilityState(
        translationConfig: TranslationServiceConfig,
        appLanguage: String,
        networkAvailable: Boolean
    ): SettingsTranslationAvailabilityState {
        val sourceLanguage = translationConfig.sourceLanguage
            .takeUnless { it.equals("AUTO", ignoreCase = true) }
            ?.let(::normalizeTranslationLanguageCode)
        val targetLanguage = when (translationConfig.targetLanguage.uppercase(Locale.US)) {
            "APP" -> normalizeTranslationLanguageCode(appLanguage)
            else -> normalizeTranslationLanguageCode(translationConfig.targetLanguage)
        }
        val onlineConfigured = when (val configured = onlineTranslationEngine.isConfigured()) {
            is Result.Success -> configured.data
            is Result.Error -> false
            Result.Loading -> false
        }

        if (sourceLanguage == null || targetLanguage == null || sourceLanguage == targetLanguage) {
            return SettingsTranslationAvailabilityState(
                snapshot = TranslationAvailabilitySnapshot(
                    networkAvailable = networkAvailable,
                    onlineConfigured = onlineConfigured,
                    explainToggleEnabled = translationConfig.explainEnabled
                ),
                pairKnown = false
            )
        }

        val dictionaryAvailable = when (
            val availability = dictionaryEngine.isLookupAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        val offlineModelInstalled = when (
            val availability = offlineTranslationEngine.isLanguagePairAvailable(
                sourceLanguage = sourceLanguage,
                targetLanguage = targetLanguage
            )
        ) {
            is Result.Success -> availability.data
            is Result.Error -> false
            Result.Loading -> false
        }

        return SettingsTranslationAvailabilityState(
            snapshot = TranslationAvailabilitySnapshot(
                dictionaryAvailable = dictionaryAvailable,
                offlinePairSupported = true,
                offlineModelInstalled = offlineModelInstalled,
                networkAvailable = networkAvailable,
                onlineConfigured = onlineConfigured,
                explainToggleEnabled = translationConfig.explainEnabled
            ),
            pairKnown = true
        )
    }

    internal fun resolveSettingsNetworkAvailable(
        connectivityManager: ConnectivityManager
    ): Boolean {
        val network = connectivityManager.activeNetwork ?: return false
        val capabilities = connectivityManager.getNetworkCapabilities(network) ?: return false
        return capabilities.hasCapability(NetworkCapabilities.NET_CAPABILITY_INTERNET)
    }

    fun setAppLanguage(code: String) = settingsPreferencesController.setAppLanguage(code)

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
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, style.fontFamily)
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, style.lineHeight)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, style.letterSpacing)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, style.wordSpacing)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, style.paragraphSpacing)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, style.textAlignment)
            preferences.set(PreferencesKeys.TEXT_BOLD, style.textBold)
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
        setLibraryViewMode(if (grid) "GRID" else "LIST")
    }

    fun setLibraryViewMode(mode: String) {
        val normalized = normalizeLibraryViewModeKey(mode, LibraryViewModeKey.GRID).name
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_MODE, normalized)
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, normalized == "GRID")
        }
    }

    fun setReaderPreloadPages(count: Int) {
        setSlider("preloadPages") { preferences.set(PreferencesKeys.READER_PRELOAD_PAGES, count.coerceIn(2, 8)) }
    }

    fun setReaderImageScaleMode(mode: String) {
        val resolved = ReaderImageScaleMode.fromStored(mode)
        markReaderPresetCustom()
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_IMAGE_SCALE_MODE, resolved.storedValue)
        }
    }

    fun setReaderImageMarginCropHorizontal(value: Float) {
        markReaderPresetCustom()
        setSlider("readerImageMarginCropHorizontal") {
            preferences.set(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_HORIZONTAL,
                value.coerceIn(0f, 0.22f)
            )
        }
    }

    fun setReaderImageMarginCropVertical(value: Float) {
        markReaderPresetCustom()
        setSlider("readerImageMarginCropVertical") {
            preferences.set(
                PreferencesKeys.READER_PAGE_MARGIN_CROP_VERTICAL,
                value.coerceIn(0f, 0.22f)
            )
        }
    }

    fun setReaderImmersiveMode(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, enabled) }
    }

    fun setReaderChromeAutoHide(enabled: Boolean) = settingsPreferencesController.setReaderChromeAutoHide(enabled)

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

    fun setAppNavTransitionStyle(style: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.APP_NAV_TRANSITION_STYLE,
                when (style.uppercase()) {
                    "NONE", "FADE", "SLIDE", "LIFT" -> style.uppercase()
                    else -> "FADE"
                }
            )
        }
    }

    fun setReaderPageSound(enabled: Boolean) {
        markReaderPresetCustom()
        viewModelScope.launch { preferences.set(PreferencesKeys.READER_PAGE_SOUND, enabled) }
    }

    fun setReaderEyeRestEnabled(enabled: Boolean) = settingsPreferencesController.setReaderEyeRestEnabled(enabled)

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

    fun setUiSoundEnabled(enabled: Boolean) = settingsPreferencesController.setUiSoundEnabled(enabled)

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

    fun setPerformanceReducedMotion(enabled: Boolean) = settingsPreferencesController.setPerformanceReducedMotion(enabled)

    fun setPerformanceReducedVisualEffects(enabled: Boolean) = settingsPreferencesController.setPerformanceReducedVisualEffects(enabled)

    fun setPerfProfile(profile: String) {
        viewModelScope.launch {
            preferences.set(
                PerformancePreferencesKeys.PERF_PROFILE,
                PerfProfile.fromStored(profile).storedValue
            )
            when (PerfProfile.fromStored(profile)) {
                PerfProfile.QUALITY -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.HIGH.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 8)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 512)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, false)
                }
                PerfProfile.BALANCED -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.AUTO.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 5)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 256)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, false)
                }
                PerfProfile.ECONOMY -> {
                    preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerfRenderQuality.LOW.storedValue)
                    preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, 3)
                    preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, 64)
                    preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, true)
                }
                PerfProfile.AUTO -> Unit
            }
        }
    }

    fun setPerfRenderQuality(quality: String) {
        viewModelScope.launch {
            preferences.set(
                PerformancePreferencesKeys.PERF_RENDER_QUALITY,
                PerfRenderQuality.fromStored(quality).storedValue
            )
        }
    }

    fun setPerfCoverCacheMb(mb: Int) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, mb.coerceIn(64, 512))
        }
    }

    fun setPerfPageCacheCount(count: Int) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, count.coerceIn(3, 10))
        }
    }

    fun setPerfFtsSearchEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, enabled)
        }
    }

    fun setPerfStartupPreloadEnabled(enabled: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, enabled)
        }
    }

    fun setPerfReducedAnimations(reduced: Boolean) {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, reduced)
        }
    }

    fun resetPerfSettings() {
        viewModelScope.launch {
            preferences.set(PerformancePreferencesKeys.PERF_PROFILE, PerformanceDefaults.PROFILE)
            preferences.set(PerformancePreferencesKeys.PERF_RENDER_QUALITY, PerformanceDefaults.RENDER_QUALITY)
            preferences.set(PerformancePreferencesKeys.PERF_COVER_CACHE_MB, PerformanceDefaults.COVER_CACHE_MB)
            preferences.set(PerformancePreferencesKeys.PERF_PAGE_CACHE_COUNT, PerformanceDefaults.PAGE_CACHE_COUNT)
            preferences.set(PerformancePreferencesKeys.PERF_FTS_SEARCH_ENABLED, PerformanceDefaults.FTS_SEARCH)
            preferences.set(PerformancePreferencesKeys.PERF_STARTUP_PRELOAD_ENABLED, PerformanceDefaults.STARTUP_PRELOAD)
            preferences.set(PerformancePreferencesKeys.PERF_REDUCED_ANIMATIONS, PerformanceDefaults.REDUCED_ANIM)
        }
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

    fun setTextCustomTextColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, color)
        }
    }

    fun setTextCustomBackgroundColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, color)
        }
    }

    fun setTextCustomAccentColor(color: Long?) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, color)
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

    fun setTextLetterSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, spacing.coerceIn(0f, 0.2f))
        }
    }

    fun setTextWordSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, spacing.coerceIn(0f, 0.6f))
        }
    }

    fun setTextParagraphSpacing(spacing: Float) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.READER_PRESET, ReadingPreset.CUSTOM.name)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, spacing.coerceIn(0.1f, 1.2f))
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
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, null)
            persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, null)
            preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, "Georgia")
            preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, 1.8f)
            preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, 0f)
            preferences.set(PreferencesKeys.TEXT_WORD_SPACING, 0f)
            preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, 0.2f)
            preferences.set(PreferencesKeys.TEXT_ALIGNMENT, "justify")
            preferences.set(PreferencesKeys.TEXT_BOLD, false)
        }
    }

    suspend fun importReaderTypographyFromJson(rawJson: String): String? = kotlinx.coroutines.withContext(Dispatchers.IO) {
        val imported = parseImportedReaderTypography(JSONObject(rawJson)) ?: return@withContext null
        preferences.set(PreferencesKeys.READER_PRESET, imported.readerPreset.name)
        preferences.set(PreferencesKeys.TEXT_FONT_SIZE, imported.textFontSize)
        preferences.set(PreferencesKeys.TEXT_COLOR_SCHEME, imported.textColorScheme)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_TEXT_COLOR, imported.textCustomTextColor)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_BACKGROUND_COLOR, imported.textCustomBackgroundColor)
        persistNullableReaderColor(PreferencesKeys.TEXT_CUSTOM_ACCENT_COLOR, imported.textCustomAccentColor)
        preferences.set(PreferencesKeys.TEXT_FONT_FAMILY, imported.textFontFamily)
        preferences.set(PreferencesKeys.TEXT_LINE_HEIGHT, imported.textLineHeight)
        preferences.set(PreferencesKeys.TEXT_LETTER_SPACING, imported.textLetterSpacing)
        preferences.set(PreferencesKeys.TEXT_WORD_SPACING, imported.textWordSpacing)
        preferences.set(PreferencesKeys.TEXT_PARAGRAPH_SPACING, imported.textParagraphSpacing)
        preferences.set(PreferencesKeys.TEXT_ALIGNMENT, imported.textAlignment)
        preferences.set(PreferencesKeys.TEXT_BOLD, imported.textBold)
        preferences.set(PreferencesKeys.READING_BRIGHTNESS, imported.brightness)
        preferences.set(PreferencesKeys.READER_IMMERSIVE_MODE, imported.immersiveMode)
        preferences.set(PreferencesKeys.READER_PAGE_ANIMATION, imported.pageAnimation)
        imported.displayName
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

    fun setTranslationMode(mode: String) = settingsPreferencesController.setTranslationMode(mode)

    fun setTranslationSourceLanguage(code: String) = settingsPreferencesController.setTranslationSourceLanguage(code)

    fun setTranslationTargetLanguage(code: String) = settingsPreferencesController.setTranslationTargetLanguage(code)

    fun setTranslationTransport(value: String) = settingsPreferencesController.setTranslationTransport(value)

    fun setTranslationExplainEnabled(enabled: Boolean) = settingsPreferencesController.setTranslationExplainEnabled(enabled)

    fun setTranslationExplainProvider(provider: String) = settingsPreferencesController.setTranslationExplainProvider(provider)

    fun saveEncryptedOpenRouterApiKey(value: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.TRANSLATION_OPENROUTER_API_KEY,
                SettingsSecretStore.encrypt(value)
            )
        }
    }

    fun setOpenRouterApiKey(value: String) {
        saveEncryptedOpenRouterApiKey(value)
    }

    fun setOpenRouterModel(value: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.TRANSLATION_OPENROUTER_MODEL,
                value.trim().ifBlank { "openrouter/auto" }
            )
        }
    }

    fun setDeepLApiKey(value: String) {
        viewModelScope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_DEEPL_API_KEY, encrypted)
        }
    }

    fun setDeepLUseFreeApi(value: Boolean) = settingsPreferencesController.setDeepLUseFreeApi(value)

    fun setGoogleApiKey(value: String) {
        viewModelScope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_GOOGLE_API_KEY, encrypted)
        }
    }

    fun setYandexApiKey(value: String) {
        viewModelScope.launch {
            val encrypted = SettingsSecretStore.encrypt(value.trim())
            preferences.set(PreferencesKeys.TRANSLATION_YANDEX_API_KEY, encrypted)
        }
    }

    fun setYandexFolderId(value: String) {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.TRANSLATION_YANDEX_FOLDER_ID, value.trim())
        }
    }

    fun setTranslationWifiOnly(value: Boolean) = settingsPreferencesController.setTranslationWifiOnly(value)

    fun setTranslationDailyCharLimit(value: Int) = settingsPreferencesController.setTranslationDailyCharLimit(value)

    fun setOcrLanguage(lang: String) = settingsPreferencesController.setOcrLanguage(lang)

    fun setOcrDialoguesOnly(enabled: Boolean) = settingsPreferencesController.setOcrDialoguesOnly(enabled)

    fun setOcrIncludeSfx(enabled: Boolean) = settingsPreferencesController.setOcrIncludeSfx(enabled)

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

    fun setOcrOverlayStyle(value: String) = settingsPreferencesController.setOcrOverlayStyle(value)

    fun setLibraryCardStyle(style: String) = settingsPreferencesController.setLibraryCardStyle(style)

    fun setLibraryRecentStripPosition(position: String) = settingsPreferencesController.setLibraryRecentStripPosition(position)

    fun setLibraryShowProgress(enabled: Boolean) = settingsPreferencesController.setLibraryShowProgress(enabled)

    fun setLibraryShowCoverTitles(enabled: Boolean) = settingsPreferencesController.setLibraryShowCoverTitles(enabled)

    fun setLibraryShowStatusChips(enabled: Boolean) = settingsPreferencesController.setLibraryShowStatusChips(enabled)

    fun setLibraryCoverScale(scale: String) = settingsPreferencesController.setLibraryCoverScale(scale)

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

    fun saveReaderStylePreset(slot: Int) {
        val normalizedSlot = slot.coerceIn(1, 3)
        val existingEntry = uiState.value.readerStylePresetEntries.getOrNull(normalizedSlot - 1)
        if (existingEntry != null) {
            overwriteReaderStylePreset(existingEntry.id)
        } else {
            saveCurrentReaderStylePreset(displayName = settingsReaderStyleFallbackName(normalizedSlot))
        }
    }

    fun applyReaderStylePreset(slot: Int) {
        uiState.value.readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            applyReaderStylePreset(it.id)
        }
    }

    fun clearReaderStylePreset(slot: Int) {
        uiState.value.readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            deleteReaderStylePreset(it.id)
        }
    }

    fun renameReaderStylePreset(slot: Int, displayName: String) {
        uiState.value.readerStylePresetEntries.getOrNull(slot.coerceIn(1, 3) - 1)?.let {
            renameReaderStylePreset(it.id, displayName)
        }
    }

    fun saveCurrentReaderStylePreset(displayName: String? = null) {
        val snapshot = uiState.value.toReaderStylePresetSnapshot(
            displayName = displayName?.trim()?.takeIf { it.isNotEmpty() }
                ?: settingsReaderStyleFallbackName(uiState.value.readerStylePresetEntries.size + 1)
        )
        val updatedEntries = listOf(
            ReaderStylePresetEntry(
                id = "preset_${System.currentTimeMillis()}",
                snapshot = snapshot
            )
        ) + uiState.value.readerStylePresetEntries
        viewModelScope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

    fun overwriteReaderStylePreset(id: String) {
        val existing = uiState.value.readerStylePresetEntries.firstOrNull { it.id == id } ?: return
        val updatedEntries = uiState.value.readerStylePresetEntries.map { entry ->
            if (entry.id == id) {
                entry.copy(
                    snapshot = uiState.value.toReaderStylePresetSnapshot(
                        displayName = existing.snapshot.displayName
                    )
                )
            } else {
                entry
            }
        }
        viewModelScope.launch { persistReaderStylePresetEntries(updatedEntries) }
    }

    fun applyReaderStylePreset(id: String) {
        val snapshot = uiState.value.readerStylePresetEntries
            .firstOrNull { it.id == id }
            ?.snapshot
            ?: return
        viewModelScope.launch { applyReaderStylePresetSnapshot(snapshot) }
    }

    fun deleteReaderStylePreset(id: String) {
        viewModelScope.launch {
            persistReaderStylePresetEntries(
                uiState.value.readerStylePresetEntries.filterNot { it.id == id }
            )
        }
    }

    fun renameReaderStylePreset(id: String, displayName: String) {
        val trimmed = displayName.trim()
        val updatedEntries = uiState.value.readerStylePresetEntries.map { entry ->
            if (entry.id == id) {
                entry.copy(
                    snapshot = entry.snapshot.copy(
                        displayName = trimmed.takeIf { it.isNotEmpty() }
                    )
                )
            } else {
                entry
            }
        }
        viewModelScope.launch { persistReaderStylePresetEntries(updatedEntries) }
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

    fun setLibraryThumbnailMode(mode: String) = settingsPreferencesController.setLibraryThumbnailMode(mode)

    fun setLibraryGraphicCoverStyle(style: String) {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE,
                normalizeLibraryGraphicCoverStyle(style)
            )
        }
    }

    fun setLibrarySortOrder(order: String) = settingsPreferencesController.setLibrarySortOrder(order)

    fun setLibraryGroupBy(mode: String) = settingsPreferencesController.setLibraryGroupBy(mode)

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
                val jsonString = uri.readAcceptedSettingsImportText(context)

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
                    it.copy(isImporting = false, message = settingsImportFailureMessage(e))
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


    fun setSettingsImportErrorPresentation(value: String) = viewModelScope.launch {
        preferences.set(
            PreferencesKeys.SETTINGS_IMPORT_ERROR_PRESENTATION,
            normalizeSettingsImportErrorPresentation(value)
        )
    }

    fun setImageMessagePopupPosition(value: String) = viewModelScope.launch {
        preferences.set(
            PreferencesKeys.IMAGE_MESSAGE_POPUP_POSITION,
            normalizeSettingsImageMessagePopupPosition(value)
        )
    }

    fun setImageMessagePopupFreeMove(enabled: Boolean) = viewModelScope.launch {
        preferences.set(PreferencesKeys.IMAGE_MESSAGE_POPUP_FREE_MOVE, enabled)
    }

    fun setImageMessagePopupSizeScale(value: Float) {
        setSlider("imageMessagePopupSizeScale") {
            preferences.set(
                PreferencesKeys.IMAGE_MESSAGE_POPUP_SIZE_SCALE,
                clampSettingsImageMessagePopupScale(value)
            )
        }
    }

    fun setImageMessagePopupDurationSeconds(value: Int) {
        setSlider("imageMessagePopupDurationSeconds") {
            preferences.set(
                PreferencesKeys.IMAGE_MESSAGE_POPUP_DURATION_SECONDS,
                clampSettingsImageMessagePopupDurationSeconds(value)
            )
        }
    }

}
