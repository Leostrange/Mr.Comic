package io.leostrange.mrcomic.feature.library

import android.util.Log
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.data.preferences.PreferencesKeys
import io.leostrange.mrcomic.core.data.preferences.UserPreferences
import io.leostrange.mrcomic.core.data.repository.QuoteRepository
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalStore
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsEvent
import io.leostrange.mrcomic.core.domain.analytics.ReadingAnalyticsTracker
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.repository.CoverRepository
import io.leostrange.mrcomic.core.model.repository.LibraryRepository
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_BLUR
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_STYLE
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKGROUND_VEIL
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_BACKDROP_STRENGTH
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_CORNER_RADIUS
import io.leostrange.mrcomic.core.ui.library.DEFAULT_LIBRARY_CARD_SHADOW
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
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.FlowPreview
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.combine
import kotlinx.coroutines.flow.flatMapLatest
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.flow.transformLatest
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.launch

/**
 * Preference observers and state setters for the library (4.1).
 *
 * Extracted from `LibraryViewModel` so the ViewModel stays a thin shell:
 * it owns state and lifecycle, this controller owns the DataStore
 * observation flows, search and the preference-driven setters. Callbacks
 * keep it decoupled: [onDataChanged] re-derives content, [onRawData] and
 * [onAllLibraryComics] feed the repository lists back to the ViewModel.
 */
@OptIn(FlowPreview::class, ExperimentalCoroutinesApi::class)
internal class LibraryPreferenceController(
    private val preferences: UserPreferences,
    private val libraryRepository: LibraryRepository,
    private val quoteRepository: QuoteRepository,
    private val coverRepository: CoverRepository,
    private val dailyReadingGoalStore: DailyReadingGoalStore,
    private val analyticsTracker: ReadingAnalyticsTracker,
    private val scope: CoroutineScope,
    private val uiState: MutableStateFlow<LibraryUiState>,
    private val searchQuery: MutableStateFlow<String>,
    private val onDataChanged: () -> Unit,
    private val onRawData: (comics: List<Comic>, quotes: List<SavedQuote>) -> Unit,
    private val onAllLibraryComics: (List<Comic>) -> Unit,
) {

    private val reportedAchievementUnlocks = linkedSetOf<String>()

    fun start() {
        restoreContentSection()
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
    }

    // ── Observers ────────────────────────────────────────────────────────

    private fun restoreContentSection() {
        scope.launch {
            preferences.get(PreferencesKeys.LIBRARY_CONTENT_SECTION, LibraryContentSection.FILES.name)
                .collect { name ->
                    val section = runCatching { LibraryContentSection.valueOf(name) }
                        .getOrDefault(LibraryContentSection.FILES)
                    uiState.update {
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
        scope.launch {
            runCatching { coverRepository.repairStoredCovers() }
                .onFailure { error -> Log.w("LibraryViewModel", "Stored cover repair failed", error) }
        }
    }

    private fun observeAppLanguage() {
        scope.launch {
            preferences.get(PreferencesKeys.APP_LANGUAGE, "ru").collect { language ->
                val normalized = normalizeAppLanguageCode(language)
                val prev = uiState.value.appLanguage
                uiState.update { it.copy(appLanguage = normalized) }
                if (prev != normalized) {
                    onDataChanged()
                }
            }
        }
    }

    private fun observeLayoutPreferences() {
        scope.launch {
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
                uiState.update {
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
        scope.launch {
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
                uiState.update {
                    it.copy(
                        showProgressIndicators = values[0] as Boolean,
                        coverScale = values[1] as String,
                        backdropStrength = values[2] as Float,
                        sortOrder = sortOrder,
                        groupByMode = groupBy,
                        currentFolderPath = if (groupBy == GroupByMode.FOLDER) it.currentFolderPath else null
                    )
                }
                onDataChanged()
            }
        }
    }

    private fun observeCoverTitlePreference() {
        scope.launch {
            combine(
                preferences.get(PreferencesKeys.LIBRARY_SHOW_COVER_TITLES, true),
                preferences.get(PreferencesKeys.LIBRARY_SHOW_STATUS_CHIPS, true)
            ) { showTitles, showStatusChips ->
                showTitles to showStatusChips
            }.collect { (showTitles, showStatusChips) ->
                uiState.update {
                    it.copy(
                        showCoverTitlesOnGrid = showTitles,
                        showStatusChips = showStatusChips
                    )
                }
            }
        }
    }

    private fun observeVisualPreferences() {
        scope.launch {
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
                uiState.update {
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
        scope.launch {
            preferences.get(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, false).collect { unlocked ->
                uiState.update { it.copy(secretCatUnlocked = unlocked) }
            }
        }
    }

    private fun observeAcknowledgedMascotStage() {
        scope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE, MascotStage.CHILD.name)
                .collect { stageName ->
                    uiState.update { it.copy(acknowledgedMascotStageName = stageName) }
                }
        }
    }

    private fun observeDailyReadingGoalState() {
        scope.launch {
            dailyReadingGoalStore.goalState.collect { goalState ->
                uiState.update { it.copy(dailyReadingGoalState = goalState) }
            }
        }
    }

    private fun observeRememberedMascotQuest() {
        scope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_QUEST_ACHIEVEMENT_ID, "")
                .collect { achievementId ->
                    uiState.update {
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
        scope.launch {
            preferences.get(PreferencesKeys.MASCOT_LAST_QUEST_ACTION, "")
                .collect { action ->
                    uiState.update {
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
        scope.launch {
            preferences.get(PreferencesKeys.CONTINUE_MASCOT_RECAP_ENABLED, true).collect { enabled ->
                uiState.update { it.copy(mascotUiEnabled = enabled) }
            }
        }
    }

    private fun observeQuestPromptPreference() {
        scope.launch {
            preferences.get(PreferencesKeys.MASCOT_QUEST_PROMPTS_ENABLED, true).collect { enabled ->
                uiState.update { it.copy(questPromptsEnabled = enabled) }
            }
        }
    }

    private fun observeSearch() {
        scope.launch {
            searchQuery
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
                    uiState.update {
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
                    onRawData(comics, quotes)
                    onDataChanged()
                }
        }
    }

    private fun observeLibraryAvailability() {
        scope.launch {
            libraryRepository.getAllComics()
                .catch { error ->
                    Log.w("LibraryViewModel", "Failed to observe full library availability", error)
                }
                .collect { comics ->
                    onAllLibraryComics(comics)
                    onDataChanged()
                }
        }
    }

    // ── Setters ──────────────────────────────────────────────────────────

    fun search(query: String) {
        searchQuery.value = query
        uiState.update { it.copy(searchQuery = query) }
    }

    fun setContentSection(section: LibraryContentSection) {
        val normalizedSection = if (section == LibraryContentSection.AUDIOBOOKS) {
            LibraryContentSection.FILES
        } else {
            section
        }
        uiState.update {
            it.copy(
                contentSection = normalizedSection,
                folderSheetPath = null,
                folderSheetItems = emptyList(),
                folderSheetBreadcrumbs = emptyList()
            )
        }
        scope.launch {
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
        scope.launch {
            preferences.set(
                PreferencesKeys.MASCOT_LAST_ACKNOWLEDGED_STAGE,
                uiState.value.mascotProgress.stage.name
            )
        }
    }

    fun rememberMascotQuestTarget(achievementId: String?) {
        val normalized = achievementId?.trim().orEmpty()
        if (uiState.value.rememberedMascotQuestAchievementId == normalized.ifBlank { null }) return
        scope.launch {
            preferences.set(PreferencesKeys.MASCOT_LAST_QUEST_ACHIEVEMENT_ID, normalized)
        }
    }

    fun rememberMascotQuestAction(actionName: String?) {
        val normalized = actionName?.trim().orEmpty()
        if (uiState.value.rememberedMascotQuestAction == normalized.ifBlank { null }) return
        scope.launch {
            preferences.set(PreferencesKeys.MASCOT_LAST_QUEST_ACTION, normalized)
        }
    }

    fun setSortOrder(order: SortOrder) {
        uiState.update { it.copy(sortOrder = order) }
        scope.launch { preferences.set(PreferencesKeys.LIBRARY_SORT_ORDER, order.name) }
        onDataChanged()
    }

    fun setStatusFilter(filter: LibraryStatusFilter) {
        uiState.update { it.copy(statusFilter = filter) }
        onDataChanged()
    }

    fun showAllFiles() {
        uiState.update {
            it.copy(
                contentSection = LibraryContentSection.FILES,
                statusFilter = LibraryStatusFilter.ALL,
                formatFilter = LibraryFormatFilter.ALL,
                currentFolderPath = null
            )
        }
        onDataChanged()
    }

    fun setFormatFilter(filter: LibraryFormatFilter) {
        uiState.update { it.copy(formatFilter = filter) }
        onDataChanged()
    }

    fun setGroupBy(mode: GroupByMode) {
        uiState.update {
            it.copy(
                groupByMode = mode,
                currentFolderPath = if (mode == GroupByMode.FOLDER) it.currentFolderPath else null
            )
        }
        scope.launch { preferences.set(PreferencesKeys.LIBRARY_GROUP_BY, mode.name) }
        onDataChanged()
    }

    fun openFolder(path: String?) {
        uiState.update { it.copy(currentFolderPath = path) }
        onDataChanged()
    }

    fun openFolderSheet(path: String) {
        uiState.update { it.copy(folderSheetPath = path) }
        onDataChanged()
    }

    fun dismissFolderSheet() {
        uiState.update {
            it.copy(
                folderSheetPath = null,
                folderSheetItems = emptyList(),
                folderSheetBreadcrumbs = emptyList()
            )
        }
    }

    fun navigateUpFromFolderSheet() {
        val parentPath = uiState.value.folderSheetPath.parentFolderPath()
        if (parentPath == null) {
            dismissFolderSheet()
        } else {
            openFolderSheet(parentPath)
        }
    }

    fun navigateUpFromFolder() {
        val parentPath = uiState.value.currentFolderPath.parentFolderPath()
        openFolder(parentPath)
    }

    fun setViewMode(mode: LibraryViewMode) {
        uiState.update { it.copy(viewMode = mode) }
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_VIEW_MODE, mode.name)
            preferences.set(PreferencesKeys.LIBRARY_VIEW_GRID, mode == LibraryViewMode.GRID)
        }
    }

    fun setThumbnailMode(mode: String) {
        val normalized = if (mode == "SQUARE") "SQUARE" else "RECTANGLE"
        uiState.update { it.copy(thumbnailMode = normalized) }
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_THUMBNAIL_MODE, normalized)
        }
    }

    fun setTileSizeDp(size: Int) {
        val normalized = size.coerceIn(80, 200)
        uiState.update { it.copy(tileSizeDp = normalized) }
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_TILE_SIZE_DP, normalized)
        }
    }

    fun unlockSecretCat() {
        scope.launch {
            preferences.set(PreferencesKeys.LIBRARY_SECRET_CAT_UNLOCKED, true)
        }
    }
}
