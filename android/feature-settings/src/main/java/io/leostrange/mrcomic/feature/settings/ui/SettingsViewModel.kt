// Phase T (2026-08-04): i18n helpers + formatSize→internal → SettingsViewModelMessages.kt.

// Phase L (2026-08-03):
// Stateless-хелперы (JSONObject ext, normalizeImported*, formatSize,
// presetKey, snapshot converters) → SettingsViewModelHelpers.kt.

// Phase K (2026-08-03):
// State-модель (SettingsUiState + StatusState + SettingsTranslationAvailabilityState
// + SETTINGS_READER_DEFAULT_TOOLBAR_BLUR) → SettingsUiState.kt.

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Context
import android.provider.DocumentsContract
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
import io.leostrange.mrcomic.core.ui.locale.normalizeTranslationLanguageCode
import io.leostrange.mrcomic.core.ui.theme.ThemeMode
import io.leostrange.mrcomic.core.ui.theme.ThemePreferencesRepository
import io.leostrange.mrcomic.core.ui.theme.ThemePreset
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.ui.theme.toConfig
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import io.leostrange.mrcomic.core.data.dictionary.DictionaryDownloader
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
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.net.URLDecoder
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

    // Phase Z (2026-08-04): setter functions → SettingsViewModelSetters.kt.

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
