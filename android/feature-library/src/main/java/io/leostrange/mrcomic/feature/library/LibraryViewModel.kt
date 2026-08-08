package io.leostrange.mrcomic.feature.library

import android.content.Context
import android.util.Log
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
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.domain.analytics.calculateMascotProgress
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicLibraryShelf
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress
import io.leostrange.mrcomic.core.model.displayReadingProgress
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.core.model.libraryShelfCategory
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
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryBackgroundStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryGraphicCoverStyle
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryShelfStyle
import io.leostrange.mrcomic.core.ui.locale.normalizeAppLanguageCode
import dagger.hilt.android.lifecycle.HiltViewModel
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.FlowPreview
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.transformLatest
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch
import javax.inject.Inject

@OptIn(FlowPreview::class, ExperimentalCoroutinesApi::class)
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
    private val reportedAchievementUnlocks = linkedSetOf<String>()
    internal val repairedAudiobookCoverIds = mutableSetOf<String>()
    private var lastTrackedMascotStage: MascotStage? = null

    /** Raw filtered list from the repository before local sorting/grouping is applied.
     * Internal visibility: written by filter/sort pipeline, read by CRUD extensions. */
    internal var rawComics: List<Comic> = emptyList()
    private var rawQuotes: List<SavedQuote> = emptyList()
    private var allLibraryComics: List<Comic> = emptyList()

    /** CRUD/import operations extracted into an explicit-dependency controller (4.1).
     * The ViewModel stays the single owner of state and lifecycle. */
    internal val crudController: LibraryCrudController by lazy {
        LibraryCrudController(
            libraryRepository = libraryRepository,
            importRepository = importRepository,
            quoteRepository = quoteRepository,
            readerCheckpointStore = readerCheckpointStore,
            scope = viewModelScope,
            uiState = _uiState,
            rawComics = { rawComics },
            openFolder = ::openFolder,
        )
    }

    init {
        repairStoredCovers()
        observeAppLanguage()
        observeLayoutPreferences()
        observeLibraryPreferences()
        observeCoverTitlePreference()
        observeVisualPreferences()
        observeMascotUiPreference()
        observeQuestPromptPreference()
        observeAcknowledgedMascotStage()
        observeDailyReadingGoalState()
        observeRememberedMascotQuest()
        observeRememberedMascotQuestAction()
        observeSecretCat()
        observeLibraryAvailability()
        observeSearch()
        observeAudiobooks()
        restoreContentSection()}


    private fun restoreContentSection() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.LIBRARY_CONTENT_SECTION, LibraryContentSection.FILES.name)
                .collect { name ->
                    val section = runCatching { LibraryContentSection.valueOf(name) }
                        .getOrDefault(LibraryContentSection.FILES)
                    _uiState.update {
                        it.copy(
                            contentSection = if (section == LibraryContentSection.AUDIOBOOKS) {
                                LibraryContentSection.FILES
                            } else {
                                section
                            }
                        )    }
}
        }}


    private fun repairStoredCovers() {
        viewModelScope.launch {
            runCatching { coverRepository.repairStoredCovers() }
                .onFailure { error -> Log.w("LibraryViewModel", "Stored cover repair failed", error) }
        }}


    private fun observeAppLanguage() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").collect { language ->
                val normalized = normalizeAppLanguageCode(language)
                val prev = _uiState.value.appLanguage
                _uiState.update { it.copy(appLanguage = normalized) }
                if (prev != normalized) {
                    applyFiltersAndSort()
                }
            }
        }}


    private fun observeLayoutPreferences() {
        viewModelScope.launch {
            val layoutFlowA = combine(
                preferences.get(PreferencesKeys.LIBRARY_VIEW_MODE, ""),
                preferences.get(PreferencesKeys.LIBRARY_VIEW_GRID, true),
                preferences.get(PreferencesKeys.LIBRARY_GRID_COLUMNS, 3).map { it.coerceIn(2, 4) },
                preferences.get(PreferencesKeys.LIBRARY_TILE_SIZE_DP, 150).map { it.coerceIn(80, 200) },
                preferences.get(PreferencesKeys.LIBRARY_CARD_STYLE, DEFAULT_LIBRARY_CARD_STYLE)
            ) { storedMode, isGrid, columns, tileSize, cardStyle ->
                listOf<Any>(storedMode, isGrid, columns, tileSize, cardStyle)
            }
            combine(
                layoutFlowA,
                preferences.get(PreferencesKeys.LIBRARY_RECENT_STRIP_POSITION, "TOP")
            ) { layout, recentStripPosition ->
                LibraryUiState(
                    viewMode = normalizeLibraryViewMode(layout[0] as String, layout[1] as Boolean),
                    libraryGridColumns = layout[2] as Int,
                    tileSizeDp = layout[3] as Int,
                    cardStyle = layout[4] as String,
                    recentStripPosition = recentStripPosition
                )
            }.collect { partial ->
                _uiState.update {
                    it.copy(
                        viewMode = partial.viewMode,
                        libraryGridColumns = partial.libraryGridColumns,
                        tileSizeDp = partial.tileSizeDp,
                        cardStyle = partial.cardStyle,
                        recentStripPosition = partial.recentStripPosition
                    )
                }
            }
        }}


    private fun observeLibraryPreferences() {
        viewModelScope.launch {
            combine(
                preferences.get(PreferencesKeys.LIBRARY_SHOW_PROGRESS, true),
                preferences.get(PreferencesKeys.LIBRARY_COVER_SCALE, DEFAULT_LIBRARY_COVER_SCALE),
                preferences.get(PreferencesKeys.LIBRARY_BACKDROP_STRENGTH, DEFAULT_LIBRARY_BACKDROP_STRENGTH).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_SORT_ORDER, SortOrder.DATE_ADDED_DESC.name),
                preferences.get(PreferencesKeys.LIBRARY_GROUP_BY, GroupByMode.FOLDER.name)
            ) { showProgress, coverScale, backdropStrength, sortOrder, groupBy ->
                listOf(showProgress, coverScale, backdropStrength, sortOrder, groupBy)
            }.collect { values ->
                val sortOrder = runCatching { SortOrder.valueOf(values[3] as String) }
                    .getOrDefault(SortOrder.DATE_ADDED_DESC)
                val groupBy = runCatching { GroupByMode.valueOf(values[4] as String) }
                    .getOrDefault(GroupByMode.FOLDER)
                _uiState.update {
                    it.copy(
                        showProgressIndicators = values[0] as Boolean,
                        coverScale = values[1] as String,
                        backdropStrength = values[2] as Float,
                        sortOrder = sortOrder,
                        groupByMode = groupBy,
                        currentFolderPath = if (groupBy == GroupByMode.FOLDER) it.currentFolderPath else null
                    )
                }
                applyFiltersAndSort()
            }
        }}


    private fun observeCoverTitlePreference() {
        viewModelScope.launch {
            combine(
                preferences.get(PreferencesKeys.LIBRARY_SHOW_COVER_TITLES, true),
                preferences.get(PreferencesKeys.LIBRARY_SHOW_STATUS_CHIPS, true)
            ) { showTitles, showStatusChips ->
                showTitles to showStatusChips
            }.collect { (showTitles, showStatusChips) ->
                _uiState.update {
                    it.copy(
                        showCoverTitlesOnGrid = showTitles,
                        showStatusChips = showStatusChips
                    )
                }
            }
        }}


    private fun observeVisualPreferences() {
        viewModelScope.launch {
            val visualFlowA = combine(
                preferences.get(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, DEFAULT_LIBRARY_THUMBNAIL_MODE),
                preferences.get(PreferencesKeys.LIBRARY_SHELF_STYLE, DEFAULT_LIBRARY_SHELF_STYLE),
                preferences.get(PreferencesKeys.LIBRARY_SHELF_DEPTH, DEFAULT_LIBRARY_SHELF_DEPTH).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_CARD_SHADOW, DEFAULT_LIBRARY_CARD_SHADOW).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_GRAPHIC_COVER_STYLE, DEFAULT_LIBRARY_GRAPHIC_COVER_STYLE)
            ) { thumbnailMode, shelfStyle, shelfDepth, cardShadow, graphicCoverStyle ->
                listOf(thumbnailMode, shelfStyle, shelfDepth, cardShadow, graphicCoverStyle)
            }
            val visualFlowB = combine(
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_STYLE, DEFAULT_LIBRARY_BACKGROUND_STYLE),
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_IMAGE_URI, ""),
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_BLUR, DEFAULT_LIBRARY_BACKGROUND_BLUR).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_BACKGROUND_VEIL, DEFAULT_LIBRARY_BACKGROUND_VEIL).map { it.coerceIn(0f, 1f) }
            ) { backgroundStyle, backgroundImageUri, backgroundBlur, backgroundVeil ->
                listOf(backgroundStyle, backgroundImageUri, backgroundBlur, backgroundVeil)
            }

            val visualFlowC = combine(
                preferences.get(PreferencesKeys.LIBRARY_TITLE_SCALE, DEFAULT_LIBRARY_TITLE_SCALE).map { it.coerceIn(0.85f, 1.3f) },
                preferences.get(PreferencesKeys.LIBRARY_TITLE_LINES, DEFAULT_LIBRARY_TITLE_LINES).map { it.coerceIn(1, 3) },
                preferences.get(PreferencesKeys.LIBRARY_CARD_STROKE, DEFAULT_LIBRARY_CARD_STROKE).map { it.coerceIn(0f, 1f) },
                preferences.get(PreferencesKeys.LIBRARY_CARD_CORNER_RADIUS, DEFAULT_LIBRARY_CARD_CORNER_RADIUS).map { it.coerceIn(6, 24) },
                preferences.get(PreferencesKeys.LIBRARY_TITLE_PANEL_OPACITY, DEFAULT_LIBRARY_TITLE_PANEL_OPACITY).map { it.coerceIn(0.18f, 0.78f) }
            ) { titleScale, titleLines, cardStroke, cardCornerRadius, titlePanelOpacity ->
                listOf(titleScale, titleLines, cardStroke, cardCornerRadius, titlePanelOpacity)
            }

            combine(visualFlowA, visualFlowB, visualFlowC) { left, middle, right -> left + middle + right }.collect { values ->
                _uiState.update {
                    it.copy(
                        thumbnailMode = values[0] as String,
                        shelfStyle = normalizeLibraryShelfStyle(values[1] as String),
                        shelfDepth = values[2] as Float,
                        cardShadow = values[3] as Float,
                        graphicCoverStyle = normalizeLibraryGraphicCoverStyle(values[4] as String),
                        backgroundStyle = normalizeLibraryBackgroundStyle(values[5] as String),
                        backgroundImageUri = (values[6] as String).ifBlank { null },
                        backgroundBlur = values[7] as Float,
                        backgroundVeil = values[8] as Float,
                        titleScale = values[9] as Float,
                        titleLines = values[10] as Int,
                        cardStroke = values[11] as Float,
                        cardCornerRadius = values[12] as Int,
                        titlePanelOpacity = values[13] as Float
                    )
                }
            }
        }}


    private fun observeSecretCat() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, false).collect { unlocked ->
                _uiState.update { it.copy(secretCatUnlocked = unlocked) }
            }
        }}


    private fun observeAcknowledgedMascotStage() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE, MascotStage.CHILD.name)
                .collect { stageName ->
                    _uiState.update { it.copy(acknowledgedMascotStageName = stageName) }
                }
        }}


    private fun observeDailyReadingGoalState() {
        viewModelScope.launch {
            dailyReadingGoalStore.goalState.collect { goalState ->
                _uiState.update { it.copy(dailyReadingGoalState = goalState) }
            }
        }}


    private fun observeRememberedMascotQuest() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_QUEST_ACHIEVEMENT_ID, "")
                .collect { achievementId ->
                    _uiState.update {
                        it.copy(
                            rememberedMascotQuestAchievementId = achievementId
                                .trim()
                                .ifBlank { null }
                        )    }
}
        }}


    private fun observeRememberedMascotQuestAction() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_QUEST_ACTION, "")
                .collect { action ->
                    _uiState.update {
                        it.copy(
                            rememberedMascotQuestAction = action
                                .trim()
                                .ifBlank { null }
                        )    }
}
        }}


    private fun observeMascotUiPreference() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true).collect { enabled ->
                _uiState.update { it.copy(mascotUiEnabled = enabled) }
            }
        }}


    private fun observeQuestPromptPreference() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, true).collect { enabled ->
                _uiState.update { it.copy(questPromptsEnabled = enabled) }
            }
        }}


    fun unlockSecretCat() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, true)
        }}


    private fun observeSearch() {
        viewModelScope.launch {
            _searchQuery
                .transformLatest { query ->
                    if (query.isNotBlank()) delay(300)
                    emit(query)
                }
                .flatMapLatest { query ->
                    val comicsFlow = if (query.isBlank()) libraryRepository.getAllComics()
                    else libraryRepository.searchComics(query)
                    val quotesFlow = if (query.isBlank()) quoteRepository.getAllQuotes()
                    else quoteRepository.searchQuotes(query)
                    combine(comicsFlow, quotesFlow) { comics, quotes -> comics to quotes }
                }
                .catch { e ->
                    _uiState.update {
                        it.copy(
                            error = localizedError(
                                lang = it.appLanguage,
                                ru = "Ошибка поиска",
                                en = "Search failed",
                                ja = "検索エラー",
                                zh = "搜索失败",
                                ko = "검색 오류",
                                cause = e
                            ),
                            isLoading = false
                        )    }
}
                .collect { (comics, quotes) ->
                    rawComics = comics
                    rawQuotes = quotes
                    applyFiltersAndSort()
                }
        }}


    private fun observeLibraryAvailability() {
        viewModelScope.launch {
            libraryRepository.getAllComics()
                .catch { error ->
                    Log.w("LibraryViewModel", "Failed to observe full library availability", error)
                }
                .collect { comics ->
                    allLibraryComics = comics
                    applyFiltersAndSort()
                }
        }}


    private fun applyFiltersAndSort() {
        val state = _uiState.value
        val filtered = filterLibraryComics(rawComics, state.statusFilter, state.formatFilter)
        val sorted = sortLibraryComics(filtered, state.sortOrder)
        val bookmarkedSorted = sorted.filter { it.isBookmarked }
        val sortedQuotes = rawQuotes.sortedByDescending { it.createdAt }
        val mascotProgress = calculateMascotProgress(allLibraryComics)
        val recent = rawComics
            .filter { it.isReadingInProgress() }
            .sortedByDescending { it.lastReadDate }
            .take(10)

        val effectiveFolderPath = if (state.groupByMode == GroupByMode.FOLDER) {
            normalizeFolderPath(state.currentFolderPath, filtered)
        } else {
            null
        }
        val effectiveFolderSheetPath = if (state.groupByMode == GroupByMode.FOLDER) {
            normalizeFolderPath(state.folderSheetPath, filtered)
        } else {
            null
        }

        val displayItems = when (state.groupByMode) {
            GroupByMode.FOLDER -> buildFolderDisplayItems(filtered, effectiveFolderPath, state.sortOrder)
            else -> buildSeparatedComicDisplayItems(sorted)
        }
        val folderSheetItems = if (effectiveFolderSheetPath != null) {
            buildFolderDisplayItems(filtered, effectiveFolderSheetPath, state.sortOrder)
        } else {
            emptyList()
        }

        val sections = when (state.groupByMode) {
            GroupByMode.SERIES -> buildSections(sorted) {
                it.series?.takeIf(String::isNotBlank) ?: vmTr(
                    lang = state.appLanguage,
                    ru = "Без серии",
                    en = "No series",
                    ja = "シリーズなし",
                    zh = "无系列",
                    ko = "시리즈 없음"
                )
            }
            else -> emptyList()
        }
        val bookmarkedSections = when (state.groupByMode) {
            GroupByMode.SERIES -> buildSections(bookmarkedSorted) {
                it.series?.takeIf(String::isNotBlank) ?: vmTr(
                    lang = state.appLanguage,
                    ru = "Без серии",
                    en = "No series",
                    ja = "シリーズなし",
                    zh = "无系列",
                    ko = "시리즈 없음"
                )
            }
            else -> emptyList()
        }

        _uiState.update {
            it.copy(
                comics = sorted,
                displayItems = displayItems,
                groupSections = sections,
                bookmarkedComics = bookmarkedSorted,
                bookmarkedDisplayItems = buildSeparatedComicDisplayItems(bookmarkedSorted),
                bookmarkedGroupSections = bookmarkedSections,
                recentlyRead = recent,
                isLoading = false,
                currentFolderPath = effectiveFolderPath,
                breadcrumbs = buildBreadcrumbs(effectiveFolderPath, state.appLanguage),
                quotes = sortedQuotes,
                availableQuoteComicIds = allLibraryComics.map { comic -> comic.id }.toSet(),
                totalComicCount = filtered.size,
                readingComicCount = rawComics.count { c -> c.isReadingInProgress() },
                totalBookmarkedCount = bookmarkedSorted.size,
                totalQuoteCount = sortedQuotes.size,
                quoteSourceCount = sortedQuotes.map { it.comicId }.distinct().size,
                visibleFolderCount = displayItems.count { item -> item is LibraryFolderItem },
                visibleComicCount = displayItems.count { item -> item is LibraryComicItem },
                // Данные для достижений берём из полного сырого списка (без фильтров)
                allComicsRawCount = rawComics.size,
                completedComicCount = rawComics.count { c -> c.isReadCompleted() },
                bookmarkedComicCount = rawComics.count { c -> c.isBookmarked },
                rawAuthors = rawComics.map { c -> c.author },
                rawGenres = rawComics.map { c -> c.genre },
                mascotProgress = mascotProgress,
                folderSheetPath = effectiveFolderSheetPath,
                folderSheetItems = folderSheetItems,
                folderSheetBreadcrumbs = buildBreadcrumbs(effectiveFolderSheetPath, state.appLanguage)
            )
        }
        if (shouldTrackMascotStageUp(lastTrackedMascotStage, mascotProgress.stage)) {
            analyticsTracker.track(
                ReadingAnalyticsEvent.StageUp(
                    stage = mascotProgress.stage.name,
                    xp = mascotProgress.xp,
                    totalTitles = allLibraryComics.size,
                    completedTitles = allLibraryComics.count { it.isReadCompleted() }
                )
            )
        }
        lastTrackedMascotStage = mascotProgress.stage}


    fun search(query: String) {
        _searchQuery.value = query
        _uiState.update { it.copy(searchQuery = query) }}


    fun setContentSection(section: LibraryContentSection) {
        val normalizedSection = if (section == LibraryContentSection.AUDIOBOOKS) {
            LibraryContentSection.FILES
        } else {
            section
        }
        _uiState.update {
            it.copy(
                contentSection = normalizedSection,
                folderSheetPath = null,
                folderSheetItems = emptyList(),
                folderSheetBreadcrumbs = emptyList()
            )
        }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_CONTENT_SECTION, normalizedSection.name)
        }}


    fun reportAchievementUnlocked(achievementId: String, unlockedCount: Int, totalCount: Int) {
        if (!reportedAchievementUnlocks.add(achievementId)) return
        analyticsTracker.track(
            ReadingAnalyticsEvent.AchievementUnlocked(
                achievementId = achievementId,
                unlockedCount = unlockedCount,
                totalCount = totalCount
            )
        )}


    fun reportQuestTransition(
        previousAchievementId: String,
        nextAchievementId: String?,
        previousCompleted: Boolean,
        actionName: String?
    ) {
        buildQuestTransitionAnalyticsEvents(
            previousAchievementId = previousAchievementId,
            nextAchievementId = nextAchievementId,
            previousCompleted = previousCompleted,
            actionName = actionName
        ).forEach(analyticsTracker::track)}


    fun acknowledgeMascotStagePreview() {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE,
                _uiState.value.mascotProgress.stage.name
            )
        }}


    fun rememberMascotQuestTarget(achievementId: String?) {
        val normalized = achievementId?.trim().orEmpty()
        if (_uiState.value.rememberedMascotQuestAchievementId == normalized.ifBlank { null }) return
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_LAST_QUEST_ACHIEVEMENT_ID, normalized)
        }}


    fun rememberMascotQuestAction(actionName: String?) {
        val normalized = actionName?.trim().orEmpty()
        if (_uiState.value.rememberedMascotQuestAction == normalized.ifBlank { null }) return
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_LAST_QUEST_ACTION, normalized)
        }}


    fun setSortOrder(order: SortOrder) {
        _uiState.update { it.copy(sortOrder = order) }
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, order.name) }
        applyFiltersAndSort()}


    fun setStatusFilter(filter: LibraryStatusFilter) {
        _uiState.update { it.copy(statusFilter = filter) }
        applyFiltersAndSort()}


    fun showAllFiles() {
        _uiState.update {
            it.copy(
                contentSection = LibraryContentSection.FILES,
                statusFilter = LibraryStatusFilter.ALL,
                formatFilter = LibraryFormatFilter.ALL,
                currentFolderPath = null
            )
        }
        applyFiltersAndSort()}


    fun setFormatFilter(filter: LibraryFormatFilter) {
        _uiState.update { it.copy(formatFilter = filter) }
        applyFiltersAndSort()}


    fun setGroupBy(mode: GroupByMode) {
        _uiState.update {
            it.copy(
                groupByMode = mode,
                currentFolderPath = if (mode == GroupByMode.FOLDER) it.currentFolderPath else null
            )
        }
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, mode.name) }
        applyFiltersAndSort()}


    fun openFolder(path: String?) {
        _uiState.update { it.copy(currentFolderPath = path) }
        applyFiltersAndSort()}


    fun openFolderSheet(path: String) {
        _uiState.update { it.copy(folderSheetPath = path) }
        applyFiltersAndSort()}


    fun dismissFolderSheet() {
        _uiState.update {
            it.copy(
                folderSheetPath = null,
                folderSheetItems = emptyList(),
                folderSheetBreadcrumbs = emptyList()
            )
        }}


    fun navigateUpFromFolderSheet() {
        val parentPath = _uiState.value.folderSheetPath.parentFolderPath()
        if (parentPath == null) {
            dismissFolderSheet()
        } else {
            openFolderSheet(parentPath)
        }}


    fun navigateUpFromFolder() {
        val parentPath = _uiState.value.currentFolderPath.parentFolderPath()
        openFolder(parentPath)}


    fun setViewMode(mode: LibraryViewMode) {
        _uiState.update { it.copy(viewMode = mode) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_MODE, mode.name)
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, mode == LibraryViewMode.GRID)
        }}


    fun setThumbnailMode(mode: String) {
        val normalized = if (mode == "SQUARE") "SQUARE" else "RECTANGLE"
        _uiState.update { it.copy(thumbnailMode = normalized) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, normalized)
        }}


    fun setTileSizeDp(size: Int) {
        val normalized = size.coerceIn(80, 200)
        _uiState.update { it.copy(tileSizeDp = normalized) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, normalized)
        }}

}