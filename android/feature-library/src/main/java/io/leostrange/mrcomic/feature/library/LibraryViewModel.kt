package io.leostrange.mrcomic.feature.library

import android.content.Context
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import io.leostrange.mrcomic.core.data.repository.AudiobookRepository
import io.leostrange.mrcomic.core.model.repository.CoverRepository
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpointRepository
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.isReadCompleted
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import javax.inject.Inject

/**
 * Single owner of library state and lifecycle. Since 4.1 the heavy logic
 * lives in explicit-dependency controllers:
 *  - [LibraryPreferenceController] — DataStore observers, search, setters;
 *  - [LibraryContentPipeline] — pure filtering/sorting/grouping derivation;
 *  - [LibraryCrudController] — CRUD/import/folder deletion.
 * The public API surface below is unchanged and delegates to them.
 */
@HiltViewModel
class LibraryViewModel @Inject constructor(
    internal val libraryRepository: LibraryRepository,
    internal val importRepository: ImportRepository,
    private val coverRepository: CoverRepository,
    internal val quoteRepository: QuoteRepository,
    internal val audiobookRepository: AudiobookRepository,
    internal val readerCheckpointStore: ReaderCheckpointRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    @ApplicationContext internal val context: Context
) : ViewModel() {

    internal val _uiState = MutableStateFlow(LibraryUiState(isLoading = true))
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()

    private val _searchQuery = MutableStateFlow("")
    private val preferences = UserPreferences(context.dataStore)
    internal val repairedAudiobookCoverIds = mutableSetOf<String>()
    private var lastTrackedMascotStage: MascotStage? = null

    /** Raw filtered list from the repository before local sorting/grouping is applied.
     * Internal visibility: written by the preference controller, read by CRUD extensions. */
    internal var rawComics: List<Comic> = emptyList()
    private var rawQuotes: List<SavedQuote> = emptyList()
    private var allLibraryComics: List<Comic> = emptyList()

    /** Pure content pipeline: filtering/sorting/grouping/statistics (4.1). */
    internal val contentPipeline = LibraryContentPipeline()

    /** Preference observers, search and setters (4.1). */
    internal val preferenceController: LibraryPreferenceController by lazy {
        LibraryPreferenceController(
            preferences = preferences,
            libraryRepository = libraryRepository,
            quoteRepository = quoteRepository,
            coverRepository = coverRepository,
            dailyReadingGoalStore = dailyReadingGoalStore,
            analyticsTracker = analyticsTracker,
            scope = viewModelScope,
            uiState = _uiState,
            searchQuery = _searchQuery,
            onDataChanged = ::applyFiltersAndSort,
            onRawData = { comics, quotes ->
                rawComics = comics
                rawQuotes = quotes
            },
            onAllLibraryComics = { allLibraryComics = it },
        )
    }

    /** Audiobook observation/import/CRUD (4.1). */
    internal val audiobookController: LibraryAudiobookController by lazy {
        LibraryAudiobookController(
            audiobookRepository = audiobookRepository,
            context = context,
            scope = viewModelScope,
            uiState = _uiState,
            repairedAudiobookCoverIds = repairedAudiobookCoverIds,
        )
    }

    /** CRUD/import operations extracted into an explicit-dependency controller (4.1). */
    internal val crudController: LibraryCrudController by lazy {
        LibraryCrudController(
            libraryRepository = libraryRepository,
            importRepository = importRepository,
            quoteRepository = quoteRepository,
            readerCheckpointStore = readerCheckpointStore,
            scope = viewModelScope,
            uiState = _uiState,
            rawComics = { rawComics },
            openFolder = preferenceController::openFolder,
        )
    }

    init {
        preferenceController.start()
        observeAudiobooks()
    }

    private fun applyFiltersAndSort() {
        val derived = contentPipeline.derive(_uiState.value, rawComics, rawQuotes, allLibraryComics)
        _uiState.value = derived
        if (shouldTrackMascotStageUp(lastTrackedMascotStage, derived.mascotProgress.stage)) {
            analyticsTracker.track(
                ReadingAnalyticsEvent.StageUp(
                    stage = derived.mascotProgress.stage.name,
                    xp = derived.mascotProgress.xp,
                    totalTitles = allLibraryComics.size,
                    completedTitles = allLibraryComics.count { it.isReadCompleted() }
                )
            )
        }
        lastTrackedMascotStage = derived.mascotProgress.stage
    }

    // ── Public API: delegates to LibraryPreferenceController ─────────────

    fun search(query: String) = preferenceController.search(query)

    fun setContentSection(section: LibraryContentSection) = preferenceController.setContentSection(section)

    fun reportAchievementUnlocked(achievementId: String, unlockedCount: Int, totalCount: Int) =
        preferenceController.reportAchievementUnlocked(achievementId, unlockedCount, totalCount)

    fun reportQuestTransition(
        previousAchievementId: String,
        nextAchievementId: String?,
        previousCompleted: Boolean,
        actionName: String?
    ) = preferenceController.reportQuestTransition(
        previousAchievementId = previousAchievementId,
        nextAchievementId = nextAchievementId,
        previousCompleted = previousCompleted,
        actionName = actionName,
    )

    fun acknowledgeMascotStagePreview() = preferenceController.acknowledgeMascotStagePreview()

    fun rememberMascotQuestTarget(achievementId: String?) =
        preferenceController.rememberMascotQuestTarget(achievementId)

    fun rememberMascotQuestAction(actionName: String?) =
        preferenceController.rememberMascotQuestAction(actionName)

    fun setSortOrder(order: SortOrder) = preferenceController.setSortOrder(order)

    fun setStatusFilter(filter: LibraryStatusFilter) = preferenceController.setStatusFilter(filter)

    fun showAllFiles() = preferenceController.showAllFiles()

    fun setFormatFilter(filter: LibraryFormatFilter) = preferenceController.setFormatFilter(filter)

    fun setGroupBy(mode: GroupByMode) = preferenceController.setGroupBy(mode)

    fun openFolder(path: String?) = preferenceController.openFolder(path)

    fun openFolderSheet(path: String) = preferenceController.openFolderSheet(path)

    fun dismissFolderSheet() = preferenceController.dismissFolderSheet()

    fun navigateUpFromFolderSheet() = preferenceController.navigateUpFromFolderSheet()

    fun navigateUpFromFolder() = preferenceController.navigateUpFromFolder()

    fun setViewMode(mode: LibraryViewMode) = preferenceController.setViewMode(mode)

    fun setThumbnailMode(mode: String) = preferenceController.setThumbnailMode(mode)

    fun setTileSizeDp(size: Int) = preferenceController.setTileSizeDp(size)

    fun unlockSecretCat() = preferenceController.unlockSecretCat()
}
