package io.leostrange.mrcomic.feature.library

import android.content.Context
import android.net.Uri
import android.util.Log
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.preferences.dataStore
import androidx.documentfile.provider.DocumentFile
import io.leostrange.mrcomic.core.data.repository.AudiobookRepository
import io.leostrange.mrcomic.core.model.repository.CoverRepository
import io.leostrange.mrcomic.core.model.repository.ImportRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.model.AudioChapter
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.domain.analytics.ReaderCheckpointStore
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
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
import kotlinx.coroutines.Dispatchers
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
import kotlinx.coroutines.withContext
import javax.inject.Inject

@OptIn(FlowPreview::class, ExperimentalCoroutinesApi::class)
@HiltViewModel
class LibraryViewModel @Inject constructor(
    private val libraryRepository: LibraryRepository,
    private val importRepository: ImportRepository,
    private val coverRepository: CoverRepository,
    private val quoteRepository: QuoteRepository,
    private val audiobookRepository: AudiobookRepository,
    private val readerCheckpointStore: ReaderCheckpointStore,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    @ApplicationContext private val context: Context
) : ViewModel() {

    private val _uiState = MutableStateFlow(LibraryUiState(isLoading = true))
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()

    private val _searchQuery = MutableStateFlow("")
    private val preferences = UserPreferences(context.dataStore)
    private val reportedAchievementUnlocks = linkedSetOf<String>()
    private val repairedAudiobookCoverIds = mutableSetOf<String>()
    private var lastTrackedMascotStage: MascotStage? = null

    /** Raw filtered list from the repository before local sorting/grouping is applied. */
    private var rawComics: List<Comic> = emptyList()
    private var rawQuotes: List<SavedQuote> = emptyList()
    private var allLibraryComics: List<Comic> = emptyList()

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
        restoreContentSection()
    }

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
                        )
                    }
                }
        }
    }

    private fun repairStoredCovers() {
        viewModelScope.launch {
            runCatching { coverRepository.repairStoredCovers() }
                .onFailure { error -> Log.w("LibraryViewModel", "Stored cover repair failed", error) }
        }
    }

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
        }
    }

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
        }
    }

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
        }
    }

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
        }
    }

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
        }
    }

    private fun observeSecretCat() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, false).collect { unlocked ->
                _uiState.update { it.copy(secretCatUnlocked = unlocked) }
            }
        }
    }

    private fun observeAcknowledgedMascotStage() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE, MascotStage.CHILD.name)
                .collect { stageName ->
                    _uiState.update { it.copy(acknowledgedMascotStageName = stageName) }
                }
        }
    }

    private fun observeDailyReadingGoalState() {
        viewModelScope.launch {
            dailyReadingGoalStore.goalState.collect { goalState ->
                _uiState.update { it.copy(dailyReadingGoalState = goalState) }
            }
        }
    }

    private fun observeRememberedMascotQuest() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_QUEST_ACHIEVEMENT_ID, "")
                .collect { achievementId ->
                    _uiState.update {
                        it.copy(
                            rememberedMascotQuestAchievementId = achievementId
                                .trim()
                                .ifBlank { null }
                        )
                    }
                }
        }
    }

    private fun observeRememberedMascotQuestAction() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_QUEST_ACTION, "")
                .collect { action ->
                    _uiState.update {
                        it.copy(
                            rememberedMascotQuestAction = action
                                .trim()
                                .ifBlank { null }
                        )
                    }
                }
        }
    }

    private fun observeMascotUiPreference() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true).collect { enabled ->
                _uiState.update { it.copy(mascotUiEnabled = enabled) }
            }
        }
    }

    private fun observeQuestPromptPreference() {
        viewModelScope.launch {
            preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, true).collect { enabled ->
                _uiState.update { it.copy(questPromptsEnabled = enabled) }
            }
        }
    }

    fun unlockSecretCat() {
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, true)
        }
    }

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
                        )
                    }
                }
                .collect { (comics, quotes) ->
                    rawComics = comics
                    rawQuotes = quotes
                    applyFiltersAndSort()
                }
        }
    }

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
        }
    }

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
        lastTrackedMascotStage = mascotProgress.stage
    }

    fun search(query: String) {
        _searchQuery.value = query
        _uiState.update { it.copy(searchQuery = query) }
    }

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
        }
    }

    fun reportAchievementUnlocked(achievementId: String, unlockedCount: Int, totalCount: Int) {
        if (!reportedAchievementUnlocks.add(achievementId)) return
        analyticsTracker.track(
            ReadingAnalyticsEvent.AchievementUnlocked(
                achievementId = achievementId,
                unlockedCount = unlockedCount,
                totalCount = totalCount
            )
        )
    }

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
        ).forEach(analyticsTracker::track)
    }

    fun acknowledgeMascotStagePreview() {
        viewModelScope.launch {
            preferences.set(
                PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE,
                _uiState.value.mascotProgress.stage.name
            )
        }
    }

    fun rememberMascotQuestTarget(achievementId: String?) {
        val normalized = achievementId?.trim().orEmpty()
        if (_uiState.value.rememberedMascotQuestAchievementId == normalized.ifBlank { null }) return
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_LAST_QUEST_ACHIEVEMENT_ID, normalized)
        }
    }

    fun rememberMascotQuestAction(actionName: String?) {
        val normalized = actionName?.trim().orEmpty()
        if (_uiState.value.rememberedMascotQuestAction == normalized.ifBlank { null }) return
        viewModelScope.launch {
            preferences.set(PreferencesKeys.MASCOT_LAST_QUEST_ACTION, normalized)
        }
    }

    fun setSortOrder(order: SortOrder) {
        _uiState.update { it.copy(sortOrder = order) }
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, order.name) }
        applyFiltersAndSort()
    }

    fun setStatusFilter(filter: LibraryStatusFilter) {
        _uiState.update { it.copy(statusFilter = filter) }
        applyFiltersAndSort()
    }

    fun showAllFiles() {
        _uiState.update {
            it.copy(
                contentSection = LibraryContentSection.FILES,
                statusFilter = LibraryStatusFilter.ALL,
                formatFilter = LibraryFormatFilter.ALL,
                currentFolderPath = null
            )
        }
        applyFiltersAndSort()
    }

    fun setFormatFilter(filter: LibraryFormatFilter) {
        _uiState.update { it.copy(formatFilter = filter) }
        applyFiltersAndSort()
    }

    fun setGroupBy(mode: GroupByMode) {
        _uiState.update {
            it.copy(
                groupByMode = mode,
                currentFolderPath = if (mode == GroupByMode.FOLDER) it.currentFolderPath else null
            )
        }
        viewModelScope.launch { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, mode.name) }
        applyFiltersAndSort()
    }

    fun openFolder(path: String?) {
        _uiState.update { it.copy(currentFolderPath = path) }
        applyFiltersAndSort()
    }

    fun openFolderSheet(path: String) {
        _uiState.update { it.copy(folderSheetPath = path) }
        applyFiltersAndSort()
    }

    fun dismissFolderSheet() {
        _uiState.update {
            it.copy(
                folderSheetPath = null,
                folderSheetItems = emptyList(),
                folderSheetBreadcrumbs = emptyList()
            )
        }
    }

    fun navigateUpFromFolderSheet() {
        val parentPath = _uiState.value.folderSheetPath.parentFolderPath()
        if (parentPath == null) {
            dismissFolderSheet()
        } else {
            openFolderSheet(parentPath)
        }
    }

    fun deleteQuote(id: String) {
        viewModelScope.launch {
            runCatching { quoteRepository.deleteQuote(id) }
                .onFailure { error ->
                    Log.e("LibraryViewModel", "Failed to delete quote", error)
                    _uiState.update {
                        it.copy(
                            error = localizedError(
                                lang = it.appLanguage,
                                ru = "Не удалось удалить цитату",
                                en = "Failed to delete quote",
                                ja = "引用を削除できませんでした",
                                zh = "无法删除摘录",
                                ko = "문구를 삭제할 수 없습니다",
                                cause = error
                            )
                        )
                    }
                }
        }
    }

    fun navigateUpFromFolder() {
        val parentPath = _uiState.value.currentFolderPath.parentFolderPath()
        openFolder(parentPath)
    }

    fun setViewMode(mode: LibraryViewMode) {
        _uiState.update { it.copy(viewMode = mode) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_MODE, mode.name)
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, mode == LibraryViewMode.GRID)
        }
    }

    fun setThumbnailMode(mode: String) {
        val normalized = if (mode == "SQUARE") "SQUARE" else "RECTANGLE"
        _uiState.update { it.copy(thumbnailMode = normalized) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, normalized)
        }
    }

    fun setTileSizeDp(size: Int) {
        val normalized = size.coerceIn(80, 200)
        _uiState.update { it.copy(tileSizeDp = normalized) }
        viewModelScope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, normalized)
        }
    }

    fun addComicFromUri(uri: Uri) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                importRepository.addComic(uri)
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to add comic", e)
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось добавить комикс",
                            en = "Failed to add comic",
                            ja = "コミックを追加できませんでした",
                            zh = "无法添加漫画",
                            ko = "코믹을 추가할 수 없습니다",
                            cause = e
                        )
                    )
                }
            } finally {
                _uiState.update { it.copy(isLoading = false) }
            }
        }
    }

    fun addComicsFromDirectory(treeUri: Uri) {
        viewModelScope.launch {
            _uiState.update { it.copy(isLoading = true) }
            try {
                importRepository.addComicsFromDirectory(treeUri)
                if (_uiState.value.groupByMode == GroupByMode.FOLDER) {
                    openFolder(null)
                }
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to add directory", e)
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Ошибка сканирования папки",
                            en = "Folder scan failed",
                            ja = "フォルダのスキャンに失敗しました",
                            zh = "文件夹扫描失败",
                            ko = "폴더 스캔 실패",
                            cause = e
                        )
                    )
                }
            } finally {
                _uiState.update { it.copy(isLoading = false) }
            }
        }
    }

    fun deleteComic(comicId: String) {
        viewModelScope.launch {
            try {
                libraryRepository.deleteComic(comicId)
                readerCheckpointStore.removeComicCheckpoints(comicId)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось удалить",
                            en = "Failed to delete",
                            ja = "削除に失敗しました",
                            zh = "删除失败",
                            ko = "삭제에 실패했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun deleteFolder(folderPath: String) {
        viewModelScope.launch {
            try {
                val normalizedPath = normalizeFolderId(folderPath) ?: return@launch
                val matchingComics = rawComics.filter { comic ->
                    val comicFolder = normalizeFolderId(comic.folderId) ?: return@filter false
                    comicFolder == normalizedPath || comicFolder.startsWith("$normalizedPath/")
                }
                matchingComics.forEach { comic ->
                    libraryRepository.deleteComic(comic.id)
                    readerCheckpointStore.removeComicCheckpoints(comic.id)
                }
                if (_uiState.value.currentFolderPath == normalizedPath) {
                    openFolder(normalizedPath.parentFolderPath())
                }
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось удалить папку",
                            en = "Failed to delete folder",
                            ja = "フォルダの削除に失敗しました",
                            zh = "删除文件夹失败",
                            ko = "폴더 삭제에 실패했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun toggleBookmark(comicId: String) {
        viewModelScope.launch {
            try {
                libraryRepository.toggleBookmark(comicId)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось изменить закладку",
                            en = "Failed to update bookmark",
                            ja = "しおりの更新に失敗しました",
                            zh = "更新书签失败",
                            ko = "북마크 변경에 실패했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun updateComicMeta(comicId: String, title: String, tags: String, libraryShelf: String) {
        viewModelScope.launch {
            try {
                libraryRepository.updateComicMeta(comicId, title, tags, libraryShelf)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось сохранить изменения",
                            en = "Failed to save changes",
                            ja = "変更を保存できませんでした",
                            zh = "保存更改失败",
                            ko = "변경 사항을 저장하지 못했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    fun markCompleted(comicId: String, completed: Boolean) {
        viewModelScope.launch {
            try {
                libraryRepository.markCompleted(comicId, completed)
            } catch (e: Exception) {
                _uiState.update {
                    it.copy(
                        error = localizedError(
                            lang = it.appLanguage,
                            ru = "Не удалось изменить статус",
                            en = "Failed to update status",
                            ja = "ステータスの更新に失敗しました",
                            zh = "更新状态失败",
                            ko = "상태를 변경하지 못했습니다",
                            cause = e
                        )
                    )
                }
            }
        }
    }

    suspend fun getComicById(id: String): Comic? = libraryRepository.getComicById(id)

    fun clearError() = _uiState.update { it.copy(error = null) }

    // ── Audiobook CRUD ────────────────────────────────────────────────────────

    private fun observeAudiobooks() {
        viewModelScope.launch {
            audiobookRepository.getAllFlow().collect { list ->
                _uiState.update { it.copy(audiobooks = list) }
                repairMissingAudiobookCovers(list)
            }
        }
    }

    private suspend fun repairMissingAudiobookCovers(audiobooks: List<Audiobook>) = withContext(Dispatchers.IO) {
        // Runs on every audiobook list emission; each resolve does MediaMetadataRetriever + file
        // copy + DocumentTree walk. Must stay off the main thread to avoid jank/ANR on library open.
        audiobooks
            .forEach { audiobook ->
                val hasValidStoredCover = audiobook.coverUri
                    ?.takeIf { cover -> runCatching { android.net.Uri.parse(cover) }.isSuccess }
                    ?.let { AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook) == audiobook.coverUri }
                    ?: false
                if (hasValidStoredCover) {
                    return@forEach
                }
                if (audiobook.id in repairedAudiobookCoverIds) return@forEach
                val resolvedCover = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
                if (!resolvedCover.isNullOrBlank() && resolvedCover != audiobook.coverUri) {
                    audiobookRepository.upsert(audiobook.copy(coverUri = resolvedCover))
                    repairedAudiobookCoverIds += audiobook.id
                } else {
                    repairedAudiobookCoverIds.remove(audiobook.id)
                }
            }
    }

    /** Add a single audio file as a 1-chapter audiobook. */
    fun addAudiobookFromUri(uri: Uri) {
        viewModelScope.launch(Dispatchers.IO) {
            try {
                val title = DocumentFile.fromSingleUri(context, uri)?.name
                    ?.substringBeforeLast('.')
                    ?: uri.lastPathSegment ?: "Аудиокнига"
                val chapter = AudioChapter(index = 0, title = title, uri = uri.toString())
                val audiobook = Audiobook(
                    title = title,
                    sourcePath = uri.toString(),
                    sourceIsFolder = false,
                    chapters = listOf(chapter)
                )
                val coverUri = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
                audiobookRepository.upsert(audiobook.copy(coverUri = coverUri ?: audiobook.coverUri))
                Log.i("LibraryViewModel", "Audiobook added: $title")
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to add audiobook from URI: $uri", e)
                _uiState.update { it.copy(error = "Не удалось добавить аудио: ${e.localizedMessage}") }
            }
        }
    }

    /** Scan a folder tree and add direct audio files and nested audio folders separately. */
    fun addAudiobookFromFolder(treeUri: Uri) {
        viewModelScope.launch(Dispatchers.IO) {
            try {
                val root = DocumentFile.fromTreeUri(context, treeUri) ?: run {
                    Log.w("LibraryViewModel", "Could not resolve tree URI: $treeUri")
                    _uiState.update { it.copy(error = "Не удалось открыть папку") }
                    return@launch
                }
                val planned = planAudiobookImports(root.toAudiobookImportNode())
                if (planned.isEmpty()) {
                    Log.i("LibraryViewModel", "No audio files in folder tree: $treeUri")
                    return@launch
                }
                planned.forEach { audiobook ->
                    val resolvedCover = AudiobookCoverResolver.resolvePersistedCoverUri(context, audiobook)
                    audiobookRepository.upsert(audiobook.copy(coverUri = resolvedCover ?: audiobook.coverUri))
                }
                Log.i("LibraryViewModel", "Audiobook imports added from folder: ${planned.size}")
            } catch (e: Exception) {
                Log.e("LibraryViewModel", "Failed to add audiobook from folder: $treeUri", e)
                _uiState.update { it.copy(error = "Не удалось добавить аудио: ${e.localizedMessage}") }
            }
        }
    }

    fun deleteAudiobook(audiobookId: String) {
        viewModelScope.launch {
            audiobookRepository.delete(audiobookId)
        }
    }

    private fun DocumentFile.toAudiobookImportNode(): AudiobookImportNode {
        val childNodes = if (isDirectory) {
            listFiles()
                .map { it.toAudiobookImportNode() }
                .sortedWith(
                    compareBy<AudiobookImportNode>(
                        { !it.isDirectory },
                        { it.name.lowercase() }
                    )
                )
        } else {
            emptyList()
        }
        return AudiobookImportNode(
            name = name?.trim()?.ifBlank { null } ?: uri.lastPathSegment.orEmpty().ifBlank { "Аудиокнига" },
            uri = uri.toString(),
            isDirectory = isDirectory,
            mimeType = type,
            children = childNodes
        )
    }



    private fun buildSections(
        comics: List<Comic>,
        keySelector: (Comic) -> String
    ): List<Pair<String, List<Comic>>> {
        val orderedSections = linkedMapOf<String, MutableList<Comic>>()
        comics.forEach { comic ->
            orderedSections.getOrPut(keySelector(comic)) { mutableListOf() }.add(comic)
        }
        return orderedSections.entries.map { it.key to it.value.toList() }
    }

    private fun buildFolderDisplayItems(
        comics: List<Comic>,
        currentFolderPath: String?,
        sortOrder: SortOrder
    ): List<LibraryDisplayItem> {
        val folders = buildFolderItems(comics, currentFolderPath, sortOrder)
        val directFiles = sortLibraryComics(directFilesForPath(comics, currentFolderPath), sortOrder)
        return folders + buildSeparatedComicDisplayItems(
            comics = directFiles,
            forceHeaders = folders.isNotEmpty()
        )
    }

    private fun buildSeparatedComicDisplayItems(
        comics: List<Comic>,
        forceHeaders: Boolean = false
    ): List<LibraryDisplayItem> {
        if (comics.isEmpty()) return emptyList()

        val graphics = comics.filter { it.libraryContentSection() == LibraryFileSection.GRAPHIC }
        val books = comics.filter { it.libraryContentSection() == LibraryFileSection.BOOKS }
        val shouldShowHeaders = forceHeaders || (graphics.isNotEmpty() && books.isNotEmpty())

        if (!shouldShowHeaders) {
            return comics.map(::LibraryComicItem)
        }

        return buildList {
            if (graphics.isNotEmpty()) {
                add(LibrarySectionDividerItem(LibraryFileSection.GRAPHIC))
                addAll(graphics.map(::LibraryComicItem))
            }
            if (books.isNotEmpty()) {
                add(LibrarySectionDividerItem(LibraryFileSection.BOOKS))
                addAll(books.map(::LibraryComicItem))
            }
        }
    }

    private fun Comic.libraryContentSection(): LibraryFileSection = when (libraryShelfCategory()) {
        ComicLibraryShelf.GRAPHIC -> LibraryFileSection.GRAPHIC
        ComicLibraryShelf.BOOKS -> LibraryFileSection.BOOKS
        ComicLibraryShelf.AUTO -> if (format.isTextReadingFormat()) {
            LibraryFileSection.BOOKS
        } else {
            LibraryFileSection.GRAPHIC
        }
    }

    private fun buildFolderItems(
        comics: List<Comic>,
        currentFolderPath: String?,
        sortOrder: SortOrder
    ): List<LibraryFolderItem> {
        val grouped = linkedMapOf<String, MutableList<Comic>>()
        comics.forEach { comic ->
            val childFolderPath = directChildFolderPath(normalizeFolderId(comic.folderId), currentFolderPath)
                ?: return@forEach
            grouped.getOrPut(childFolderPath) { mutableListOf() }.add(comic)
        }

        return sortFolderItems(
            grouped.map { (path, descendants) ->
                val directFiles = descendants.count { normalizeFolderId(it.folderId) == path }
                val directSubfolders = descendants.mapNotNull { descendant ->
                    directChildFolderPath(normalizeFolderId(descendant.folderId), path)
                }.distinct().size
                val directChildren = descendants.filter { normalizeFolderId(it.folderId) == path }
                val representativeSource = if (directChildren.isNotEmpty()) directChildren else descendants
                val representative = representativeSource
                    .sortedWith(
                        compareBy<Comic>(
                            { it.coverPath.isNullOrBlank() },
                            { folderRepresentativeName(it) }
                        )
                    )
                    .firstOrNull()
                LibraryFolderItem(
                    path = path,
                    title = path.substringAfterLast('/'),
                    coverPath = representative?.coverPath,
                    fileCount = directFiles,
                    subfolderCount = directSubfolders,
                    newestAdded = descendants.maxOfOrNull { it.addedDate } ?: 0L,
                    lastReadDate = descendants.mapNotNull { it.lastReadDate }.maxOrNull(),
                    totalSize = descendants.sumOf { it.fileSize },
                    progress = descendants.map { it.displayReadingProgress() }.average().toFloat()
                )
            },
            sortOrder
        )
    }

    private fun sortFolderItems(
        folders: List<LibraryFolderItem>,
        order: SortOrder
    ): List<LibraryFolderItem> = when (order) {
        SortOrder.TITLE_ASC, SortOrder.GENRE_ASC, SortOrder.FOLDER_ASC ->
            folders.sortedBy { it.title.lowercase() }
        SortOrder.TITLE_DESC, SortOrder.GENRE_DESC, SortOrder.FOLDER_DESC ->
            folders.sortedByDescending { it.title.lowercase() }
        SortOrder.DATE_ADDED_ASC -> folders.sortedBy { it.newestAdded }
        SortOrder.DATE_ADDED_DESC -> folders.sortedByDescending { it.newestAdded }
        SortOrder.DATE_READ_ASC -> folders.sortedBy { it.lastReadDate ?: 0L }
        SortOrder.DATE_READ_DESC -> folders.sortedByDescending { it.lastReadDate ?: 0L }
        SortOrder.PROGRESS_ASC -> folders.sortedBy { it.progress }
        SortOrder.PROGRESS_DESC -> folders.sortedByDescending { it.progress }
        SortOrder.FILE_SIZE_ASC -> folders.sortedBy { it.totalSize }
        SortOrder.FILE_SIZE_DESC -> folders.sortedByDescending { it.totalSize }
    }

    private fun directFilesForPath(comics: List<Comic>, currentFolderPath: String?): List<Comic> {
        return comics.filter { normalizeFolderId(it.folderId) == currentFolderPath }
    }

    private fun directChildFolderPath(folderPath: String?, currentFolderPath: String?): String? {
        val normalizedFolderPath = normalizeFolderId(folderPath) ?: return null
        return if (currentFolderPath == null) {
            normalizedFolderPath.substringBefore('/')
        } else {
            if (normalizedFolderPath == currentFolderPath || !normalizedFolderPath.startsWith("$currentFolderPath/")) {
                null
            } else {
                val remainder = normalizedFolderPath.removePrefix("$currentFolderPath/")
                "$currentFolderPath/${remainder.substringBefore('/')}"
            }
        }
    }

    private fun normalizeFolderPath(path: String?, comics: List<Comic>): String? {
        var candidate = normalizeFolderId(path)
        while (candidate != null && !folderExists(candidate, comics)) {
            candidate = candidate.parentFolderPath()
        }
        return candidate
    }

    private fun folderExists(path: String, comics: List<Comic>): Boolean {
        return comics.any { comic ->
            val folderPath = normalizeFolderId(comic.folderId)
            folderPath == path || folderPath?.startsWith("$path/") == true
        }
    }

    private fun buildBreadcrumbs(currentFolderPath: String?, language: String): List<LibraryBreadcrumb> {
        val breadcrumbs = mutableListOf(
            LibraryBreadcrumb(
                label = vmTr(
                    lang = language,
                    ru = "Библиотека",
                    en = "Library",
                    ja = "ライブラリ",
                    zh = "图书馆",
                    ko = "라이브러리"
                ),
                path = null
            )
        )
        if (currentFolderPath.isNullOrBlank()) return breadcrumbs

        var cumulativePath = ""
        currentFolderPath.split('/').forEach { segment ->
            cumulativePath = if (cumulativePath.isEmpty()) segment else "$cumulativePath/$segment"
            breadcrumbs += LibraryBreadcrumb(label = segment, path = cumulativePath)
        }
        return breadcrumbs
    }

    private fun normalizeFolderId(folderId: String?): String? {
        return folderId
            ?.trim()
            ?.trim('/')
            ?.takeIf { it.isNotBlank() }
    }

    private fun String?.parentFolderPath(): String? {
        val value = normalizeFolderId(this) ?: return null
        return value.substringBeforeLast('/', "").ifBlank { null }
    }

    private fun folderRepresentativeName(comic: Comic): String {
        return comic.documentId
            ?.substringAfterLast('/')
            ?.substringAfterLast(':')
            ?.lowercase()
            ?: comic.path.substringAfterLast('/').substringAfterLast('\\').lowercase()
    }

    private fun vmTr(
        lang: String,
        ru: String,
        en: String,
        ja: String,
        zh: String,
        ko: String
    ): String = when (lang) {
        "en" -> en
        "ja" -> ja
        "zh" -> zh
        "ko" -> ko
        else -> ru
    }

    private fun localizedError(
        lang: String,
        ru: String,
        en: String,
        ja: String,
        zh: String,
        ko: String,
        cause: Throwable?
    ): String {
        val details = cause?.message?.takeIf { it.isNotBlank() }?.let { ": $it" }.orEmpty()
        return vmTr(
            lang = lang,
            ru = "$ru$details",
            en = "$en$details",
            ja = "$ja$details",
            zh = "$zh$details",
            ko = "$ko$details"
        )
    }
}

internal fun shouldTrackMascotStageUp(
    previousStage: MascotStage?,
    currentStage: MascotStage
): Boolean = previousStage != null && currentStage.ordinal > previousStage.ordinal

internal fun buildQuestTransitionAnalyticsEvents(
    previousAchievementId: String,
    nextAchievementId: String?,
    previousCompleted: Boolean,
    actionName: String?
): List<ReadingAnalyticsEvent> {
    val events = mutableListOf<ReadingAnalyticsEvent>()
    if (previousCompleted) {
        events += ReadingAnalyticsEvent.QuestCompleted(
            achievementId = previousAchievementId,
            nextAchievementId = nextAchievementId,
            action = actionName
        )
    }
    if (!nextAchievementId.isNullOrBlank() && nextAchievementId != previousAchievementId) {
        events += ReadingAnalyticsEvent.QuestSwitched(
            previousAchievementId = previousAchievementId,
            nextAchievementId = nextAchievementId,
            action = actionName
        )
    }
    return events
}
