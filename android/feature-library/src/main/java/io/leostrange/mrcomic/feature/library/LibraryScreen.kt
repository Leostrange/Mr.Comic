package io.leostrange.mrcomic.feature.library

import androidx.activity.compose.BackHandler
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.GridItemSpan
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Snackbar
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotContext
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStagePreview
import io.leostrange.mrcomic.core.domain.analytics.resolveMrComicMascotState
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSpacingTokens
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteSourceMissingLabel
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import io.leostrange.mrcomic.feature.library.components.LibraryAchievementsRow
import io.leostrange.mrcomic.feature.library.components.LibraryTopBar
import io.leostrange.mrcomic.feature.library.components.computeAchievements
import io.leostrange.mrcomic.feature.library.components.questTransitionFeedback
import kotlinx.coroutines.launch
@Suppress("UNUSED_PARAMETER")
@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun LibraryScreen(
    onComicClick: (String) -> Unit,
    /** BUG-CANDIDATE-01: Pass the full SavedQuote so the reader can use structured position. */
    onQuoteClick: (comicId: String, page: Int, quote: io.leostrange.mrcomic.core.data.db.entity.SavedQuote?) -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onSettingsClick: () -> Unit,
    onAudiobookClick: (String) -> Unit,
    onProgressProfileClick: (() -> Unit)? = null,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val strings = LocalStrings.current
    val coroutineScope = rememberCoroutineScope()
    val comicsById = remember(uiState.comics) { uiState.comics.associateBy { it.id } }

    var selectedComicId by remember { mutableStateOf<String?>(null) }
    var comicToDelete by remember { mutableStateOf<String?>(null) }
    var folderToDelete by remember { mutableStateOf<LibraryFolderItem?>(null) }
    var audiobookToDelete by remember { mutableStateOf<Audiobook?>(null) }
    var quoteToDelete by remember { mutableStateOf<SavedQuote?>(null) }
    var showFilterSheet by remember { mutableStateOf(false) }
    var showControlsMenu by remember { mutableStateOf(false) }
    var showMrComicProgress by rememberSaveable { mutableStateOf(false) }
    // Достижения — для уведомления при разблокировке
    val achievementStrings = rememberAchievementStrings(strings)
    val achievements = remember(
        uiState.allComicsRawCount, uiState.completedComicCount,
        uiState.bookmarkedComicCount, uiState.rawAuthors, uiState.rawGenres,
        uiState.secretCatUnlocked
    ) {
        computeAchievements(
            totalComics = uiState.allComicsRawCount,
            completedComics = uiState.completedComicCount,
            bookmarkedComics = uiState.bookmarkedComicCount,
            allAuthors = uiState.rawAuthors,
            allGenres = uiState.rawGenres,
            secretUnlocked = uiState.secretCatUnlocked,
            strings = achievementStrings
        )
    }
    val snackbarHostState = remember { androidx.compose.material3.SnackbarHostState() }
    // Краткое уведомление при разблокировке нового достижения
    var prevUnlockedCount by remember { mutableIntStateOf(0) }
    var activeQuestFeedback by remember { mutableStateOf<AchievementQuestTransition?>(null) }
    var lastQuestFeedbackKey by remember { mutableStateOf<String?>(null) }
    val nextAchievementTarget = remember(achievements, uiState.rememberedMascotQuestAchievementId) {
        resolveMrComicNextAchievementTarget(
            achievements = achievements,
            rememberedAchievementId = uiState.rememberedMascotQuestAchievementId
        )
    }
    val achievementSummary = remember(achievements, uiState.rememberedMascotQuestAchievementId) {
        resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = uiState.rememberedMascotQuestAchievementId
        )
    }
    val hubAchievements = remember(achievements, nextAchievementTarget) {
        resolveMrComicHubAchievements(
            achievements = achievements,
            nextAchievement = nextAchievementTarget
        )
    }
    val unlockedCount = achievementSummary.unlockedCount
    val visibleAchievementTotal = achievementSummary.visibleTotal
    val mascotState = remember(
        uiState.mascotProgress,
        uiState.allComicsRawCount,
        uiState.completedComicCount,
        uiState.bookmarkedComicCount,
        uiState.totalQuoteCount,
        unlockedCount,
        visibleAchievementTotal,
        uiState.secretCatUnlocked,
        uiState.dailyReadingGoalState,
        uiState.recentlyRead
    ) {
        resolveMrComicMascotState(
            context = MrComicMascotContext.LIBRARY,
            progress = uiState.mascotProgress,
            totalTitles = uiState.allComicsRawCount,
            completedTitles = uiState.completedComicCount,
            bookmarkedTitles = uiState.bookmarkedComicCount,
            quotesCount = uiState.totalQuoteCount,
            unlockedCount = unlockedCount,
            totalCount = visibleAchievementTotal,
            secretUnlocked = uiState.secretCatUnlocked,
            goalState = uiState.dailyReadingGoalState,
            recentComic = uiState.recentlyRead.firstOrNull(),
            acknowledgedStageName = uiState.acknowledgedMascotStageName,
            previewEnabled = uiState.mascotUiEnabled
        )
    }
    val stagePreview = remember(uiState.mascotProgress.stage, uiState.acknowledgedMascotStageName, uiState.mascotUiEnabled) {
        resolveMascotStagePreview(
            currentStage = uiState.mascotProgress.stage,
            acknowledgedStageName = uiState.acknowledgedMascotStageName,
            enabled = uiState.mascotUiEnabled
        )
    }
    val openProgressProfile = remember(onProgressProfileClick) {
        onProgressProfileClick ?: { showMrComicProgress = true }
    }
    val screenStateFacts = remember(uiState.rawAuthors, uiState.rawGenres, uiState.recentlyRead) {
        resolveLibraryScreenStateFacts(
            rawAuthors = uiState.rawAuthors,
            rawGenres = uiState.rawGenres,
            recentlyRead = uiState.recentlyRead
        )
    }
    val uniqueAuthorCount = screenStateFacts.uniqueAuthorCount
    val uniqueGenreCount = screenStateFacts.uniqueGenreCount
    val preferredQuestSeriesName = screenStateFacts.preferredQuestSeriesName
    val preferredQuestCollectionQuery = remember(nextAchievementTarget?.id, uiState.rawAuthors, uiState.rawGenres) {
        resolveMrComicCollectionQuery(
            achievementId = nextAchievementTarget?.id,
            rawAuthors = uiState.rawAuthors,
            rawGenres = uiState.rawGenres
        )
    }
    val seasonSnapshot = remember(
        uiState.dailyReadingGoalState,
        preferredQuestCollectionQuery,
        preferredQuestSeriesName
    ) {
        resolveMrComicSeasonSnapshot(
            goalState = uiState.dailyReadingGoalState,
            preferredCollectionQuery = preferredQuestCollectionQuery,
            preferredSeriesName = preferredQuestSeriesName
        )
    }
    val nextAchievementHintAction = remember(
        nextAchievementTarget,
        uiState.rememberedMascotQuestAchievementId,
        uiState.rememberedMascotQuestAction,
        preferredQuestSeriesName,
        preferredQuestCollectionQuery,
        uiState.recentlyRead
    ) {
        nextAchievementTarget?.let { achievement ->
            resolveMrComicStableDiscoveryAction(
                achievement = achievement,
                hasRecent = uiState.recentlyRead.firstOrNull() != null,
                preferredSeriesName = preferredQuestSeriesName,
                preferredCollectionQuery = preferredQuestCollectionQuery,
                rememberedAchievementId = uiState.rememberedMascotQuestAchievementId,
                rememberedActionName = uiState.rememberedMascotQuestAction
            )
        }
    }
    val activeDiscoveryAchievement = nextAchievementTarget?.takeIf { uiState.questPromptsEnabled }
    val activeDiscoveryAction = nextAchievementHintAction?.takeIf { uiState.questPromptsEnabled }
    val visibleQuestFeedback = activeQuestFeedback?.takeIf { uiState.questPromptsEnabled }
    LaunchedEffect(unlockedCount) {
        if (unlockedCount > prevUnlockedCount && prevUnlockedCount > 0) {
            val newest = achievements.filter { it.isUnlocked }.getOrNull(unlockedCount - 1)
            newest?.let { achievement ->
                viewModel.reportAchievementUnlocked(
                    achievementId = achievement.id.name,
                    unlockedCount = unlockedCount,
                    totalCount = visibleAchievementTotal
                )
            }
            snackbarHostState.showSnackbar(
                message = "${newest?.emoji ?: "🏅"} ${newest?.title.orEmpty()}"
            )
        }
        prevUnlockedCount = unlockedCount
    }
    LaunchedEffect(
        uiState.isLoading,
        uiState.rememberedMascotQuestAchievementId,
        nextAchievementTarget?.id?.name,
        unlockedCount
    ) {
        if (uiState.isLoading) return@LaunchedEffect
        val transition = questTransitionFeedback(
            achievements = achievements,
            rememberedAchievementId = uiState.rememberedMascotQuestAchievementId,
            nextAchievement = nextAchievementTarget
        ) ?: return@LaunchedEffect
        val transitionKey = buildString {
            append(transition.previousAchievementId.name)
            append(':')
            append(transition.previousCompleted)
            append("->")
            append(transition.nextAchievementId?.name.orEmpty())
        }
        if (transitionKey != lastQuestFeedbackKey) {
            viewModel.reportQuestTransition(
                previousAchievementId = transition.previousAchievementId.name,
                nextAchievementId = transition.nextAchievementId?.name,
                previousCompleted = transition.previousCompleted,
                actionName = nextAchievementHintAction?.name
            )
            activeQuestFeedback = transition
            lastQuestFeedbackKey = transitionKey
        }
    }
    LaunchedEffect(
        uiState.isLoading,
        nextAchievementTarget?.id?.name,
        uiState.rememberedMascotQuestAchievementId
    ) {
        val targetId = nextAchievementTarget?.id?.name
        if (!uiState.isLoading && targetId != uiState.rememberedMascotQuestAchievementId) {
            viewModel.rememberMascotQuestTarget(targetId)
        }
    }
    LaunchedEffect(
        uiState.isLoading,
        nextAchievementTarget?.id?.name,
        nextAchievementHintAction,
        uiState.rememberedMascotQuestAction
    ) {
        if (uiState.isLoading) return@LaunchedEffect
        val actionName = nextAchievementHintAction?.name
        if (actionName != uiState.rememberedMascotQuestAction) {
            viewModel.rememberMascotQuestAction(actionName)
        }
    }
    LaunchedEffect(uiState.contentSection) {
        if (uiState.contentSection != LibraryContentSection.ACHIEVEMENTS) {
            showMrComicProgress = false
        }
        if (uiState.contentSection != LibraryContentSection.FILES) {
            showControlsMenu = false
            showFilterSheet = false
        }
    }
    LaunchedEffect(uiState.questPromptsEnabled) {
        if (!uiState.questPromptsEnabled) {
            activeQuestFeedback = null
        }
    }

    val navigateUpAction = resolveLibraryNavigateUpAction(
        showMrComicProgress = showMrComicProgress,
        contentSection = uiState.contentSection,
        groupByMode = uiState.groupByMode,
        currentFolderPath = uiState.currentFolderPath,
        statusFilter = uiState.statusFilter,
        formatFilter = uiState.formatFilter
    )
    val canNavigateUpWithinLibrary = navigateUpAction != LibraryNavigateUpAction.NONE
    val navigateUpWithinLibrary = {
        when (navigateUpAction) {
            LibraryNavigateUpAction.DISMISS_PROGRESS -> showMrComicProgress = false
            LibraryNavigateUpAction.SHOW_FILES_SECTION -> viewModel.setContentSection(LibraryContentSection.FILES)
            LibraryNavigateUpAction.SHOW_ALL_FILES -> viewModel.showAllFiles()
            LibraryNavigateUpAction.CLEAR_FORMAT_FILTER -> viewModel.setFormatFilter(LibraryFormatFilter.ALL)
            LibraryNavigateUpAction.EXIT_FOLDER -> viewModel.navigateUpFromFolder()
            LibraryNavigateUpAction.NONE -> Unit
        }
    }

    BackHandler(enabled = canNavigateUpWithinLibrary) {
        navigateUpWithinLibrary()
    }

    Scaffold(
        containerColor = androidx.compose.ui.graphics.Color.Transparent,
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        snackbarHost = { androidx.compose.material3.SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            LibraryTopBar(
                contentSection = uiState.contentSection,
                isControlsExpanded = showControlsMenu,
                sortOrder = uiState.sortOrder,
                statusFilter = uiState.statusFilter,
                formatFilter = uiState.formatFilter,
                groupByMode = uiState.groupByMode,
                thumbnailMode = uiState.thumbnailMode,
                viewMode = uiState.viewMode,
                onToggleControls = { showControlsMenu = !showControlsMenu },
                onToggleView = {
                    viewModel.setViewMode(nextLibraryViewMode(uiState.viewMode))
                },
                onOpenFilters = { showFilterSheet = true },
                onThumbnailModeChange = viewModel::setThumbnailMode,
                onAddFileClick = onAddFileClick,
                onAddFolderClick = onAddFolderClick,
                canNavigateUp = canNavigateUpWithinLibrary,
                onNavigateUp = navigateUpWithinLibrary,
                onSettingsClick = onSettingsClick
            )
        }
    ) { padding ->
        Box(
            modifier = Modifier.fillMaxSize()
        ) {
            // Indeterminate linear progress when importing files into non-empty library
            if (uiState.isLoading) {
                androidx.compose.material3.LinearProgressIndicator(
                    modifier = Modifier
                        .align(Alignment.TopCenter)
                        .fillMaxWidth()
                        .padding(top = padding.calculateTopPadding())
                )
            }
            LibraryBackground(
                backgroundStyle = uiState.backgroundStyle,
                backgroundImageUri = uiState.backgroundImageUri,
                // Editorial Ink: use the user-controlled strength directly
                // (no 1.2× boost). BUG-UI-04 — backdrops were overpowering
                // content and washing out card contrast.
                backdropStrength = uiState.backdropStrength.coerceIn(0f, 1f),
                backgroundBlur = uiState.backgroundBlur,
                backgroundVeil = uiState.backgroundVeil.coerceIn(0f, 1f)
            )

            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(padding)
            ) {
                val isQuoteSection = uiState.contentSection == LibraryContentSection.QUOTES
            val isBookmarkSection = uiState.contentSection == LibraryContentSection.BOOKMARKS
            val isAchievementSection = uiState.contentSection == LibraryContentSection.ACHIEVEMENTS
            val visibleAudiobooks = filterAndSortAudiobooks(
                audiobooks = uiState.audiobooks,
                statusFilter = if (uiState.contentSection == LibraryContentSection.FILES) {
                    uiState.statusFilter
                } else {
                    LibraryStatusFilter.ALL
                },
                sortOrder = uiState.sortOrder
            )
            val totalFilesCount = uiState.allComicsRawCount + uiState.audiobooks.size
            val readingFilesCount = uiState.readingComicCount +
                uiState.audiobooks.count { it.lastPositionMs > 0L || it.lastChapterIndex > 0 }
            val completedFilesCount = uiState.completedComicCount
            val bookmarkedFilesCount = uiState.bookmarkedComicCount
            val isEmptyCurrentSection = when {
                isQuoteSection -> uiState.totalQuoteCount == 0
                isBookmarkSection -> uiState.totalBookmarkedCount == 0
                isAchievementSection -> false
                else -> uiState.totalComicCount == 0 && visibleAudiobooks.isEmpty()
            }

            when {
                uiState.isLoading && isEmptyCurrentSection -> {
                    CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
                }

                isEmptyCurrentSection -> {
                    when {
                        isQuoteSection -> {
                            EmptyQuotesPlaceholder(
                                modifier = Modifier.align(Alignment.Center),
                                showMascot = uiState.mascotUiEnabled
                            )
                        }
                        isBookmarkSection -> {
                            EmptyBookmarksPlaceholder(
                                modifier = Modifier.align(Alignment.Center),
                                showMascot = uiState.mascotUiEnabled
                            )
                        }
                        uiState.contentSection == LibraryContentSection.FILES &&
                            uiState.statusFilter != LibraryStatusFilter.ALL -> {
                            EmptyStatusFilterPlaceholder(
                                statusFilter = uiState.statusFilter,
                                showMascot = uiState.mascotUiEnabled,
                                onShowAll = viewModel::showAllFiles,
                                modifier = Modifier.align(Alignment.Center)
                            )
                        }
                        else -> {
                            EmptyLibraryPlaceholder(
                                modifier = Modifier.align(Alignment.Center),
                                showMascot = uiState.mascotUiEnabled,
                                onAddFile = onAddFileClick,
                                onAddFolder = onAddFolderClick
                            )
                        }
                    }
                }

                isAchievementSection && showMrComicProgress -> {
                    MrComicProgressScreen(
                        appLanguage = uiState.appLanguage,
                        mascotProgress = uiState.mascotProgress,
                        acknowledgedMascotStageName = uiState.acknowledgedMascotStageName,
                        dailyReadingGoalState = uiState.dailyReadingGoalState,
                        totalTitles = uiState.allComicsRawCount,
                        recent = uiState.recentlyRead.take(3),
                        achievements = achievements,
                        achievementSummary = achievementSummary,
                        mascotState = mascotState,
                        showMascot = uiState.mascotUiEnabled,
                        searchActive = uiState.searchQuery.isNotBlank(),
                        onComicClick = { comicId ->
                            showMrComicProgress = false
                            onComicClick(comicId)
                        },
                        modifier = Modifier.fillMaxSize()
                    )
                }

                else -> {
                    val columns = if (isQuoteSection || isAchievementSection) {
                        GridCells.Fixed(1)
                    } else {
                        when (uiState.viewMode) {
                            LibraryViewMode.GRID -> GridCells.Fixed(uiState.libraryGridColumns)
                            LibraryViewMode.LIST,
                            LibraryViewMode.STRIPS -> GridCells.Fixed(1)
                        }
                    }
                    val itemSpacing = when (uiState.cardStyle) {
                        "COMPACT" -> 6.dp
                        "SHOWCASE" -> 12.dp
                        else -> 8.dp
                    }
                    LazyVerticalGrid(
                        columns = columns,
                        contentPadding = PaddingValues(
                            start = MrComicSpacingTokens.x5,
                            end = MrComicSpacingTokens.x5,
                            top = MrComicSpacingTokens.x3,
                            bottom = MrComicSpacingTokens.x6,
                        ),
                        horizontalArrangement = Arrangement.spacedBy(itemSpacing),
                        verticalArrangement = Arrangement.spacedBy(itemSpacing),
                        modifier = Modifier.fillMaxSize()
                    ) {
                        item(key = "library_section_switcher", span = { GridItemSpan(maxLineSpan) }) {
                            LibrarySectionSwitcher(
                                current = uiState.contentSection,
                                onSectionChange = viewModel::setContentSection
                            )
                        }

                        if (uiState.contentSection == LibraryContentSection.FILES && uiState.showStatusChips) {
                            item(key = "library_status_scope", span = { GridItemSpan(maxLineSpan) }) {
                                LibraryStatusScopeRow(
                                    current = uiState.statusFilter,
                                    totalFiles = totalFilesCount,
                                    readingFiles = readingFilesCount,
                                    completedFiles = completedFilesCount,
                                    bookmarkedFiles = bookmarkedFilesCount,
                                    onStatusChange = viewModel::setStatusFilter
                                )
                            }
                        }

                        item(key = "library_stats", span = { GridItemSpan(maxLineSpan) }) {
                            LibraryStatsGridContent(
                                uiState = uiState,
                                viewModel = viewModel,
                                unlockedCount = unlockedCount,
                                visibleAchievementTotal = visibleAchievementTotal,
                                mascotState = mascotState,
                                activeDiscoveryAchievement = activeDiscoveryAchievement,
                                visibleQuestFeedback = visibleQuestFeedback,
                                stagePreview = stagePreview,
                                uniqueAuthorCount = uniqueAuthorCount,
                                uniqueGenreCount = uniqueGenreCount,
                                preferredQuestSeriesName = preferredQuestSeriesName,
                                preferredQuestCollectionQuery = preferredQuestCollectionQuery,
                                activeDiscoveryAction = activeDiscoveryAction,
                                openProgressProfile = openProgressProfile,
                                onComicClick = onComicClick,
                                onDismissQuestFeedback = { activeQuestFeedback = null },
                            )
                        }

                        if (isAchievementSection) {
                            item(key = "library_achievements_tab", span = { GridItemSpan(maxLineSpan) }) {
                                LibraryAchievementsRow(
                                    achievements = hubAchievements,
                                    showHeader = false,
                                    maxVisible = 4,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                            item(key = "mr_comic_analytics", span = { GridItemSpan(maxLineSpan) }) {
                                val searchActive = uiState.searchQuery.isNotBlank()
                                val analyticsComics = if (searchActive) uiState.comics else emptyList()
                                MrComicAnalyticsCard(
                                    appLanguage = uiState.appLanguage,
                                    searchActive = searchActive,
                                    totalTitles = if (searchActive) analyticsComics.size else uiState.allComicsRawCount,
                                    completedTitles = if (searchActive) {
                                        analyticsComics.count { it.isReadCompleted() }
                                    } else {
                                        uiState.completedComicCount
                                    },
                                    bookmarkedTitles = if (searchActive) {
                                        analyticsComics.count { it.isBookmarked }
                                    } else {
                                        uiState.bookmarkedComicCount
                                    },
                                    quotesCount = if (searchActive) uiState.quotes.size else uiState.totalQuoteCount,
                                    goalState = uiState.dailyReadingGoalState,
                                    onOpenProgress = openProgressProfile,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
                            if (shouldShowMrComicSeasonCard(uiState.allComicsRawCount)) {
                                item(key = "mr_comic_seasonal_arc", span = { GridItemSpan(maxLineSpan) }) {
                                    MrComicSeasonCard(
                                        appLanguage = uiState.appLanguage,
                                        season = seasonSnapshot,
                                        searchActive = uiState.searchQuery.isNotBlank(),
                                        onOpenFiles = {
                                            viewModel.setContentSection(LibraryContentSection.FILES)
                                        },
                                        onOpenSeries = {
                                            viewModel.setContentSection(LibraryContentSection.FILES)
                                            viewModel.search("")
                                            viewModel.setGroupBy(GroupByMode.SERIES)
                                        },
                                        onOpenCollection = { query ->
                                            viewModel.setContentSection(LibraryContentSection.FILES)
                                            viewModel.setGroupBy(GroupByMode.NONE)
                                            viewModel.search(query)
                                        },
                                        modifier = Modifier.fillMaxWidth()
                                    )
                                }
                            }
                        }

                        if (uiState.contentSection == LibraryContentSection.FILES && uiState.breadcrumbs.size > 1) {
                            item(key = "breadcrumbs", span = { GridItemSpan(maxLineSpan) }) {
                                BreadcrumbRow(
                                    breadcrumbs = uiState.breadcrumbs,
                                    canNavigateUp = uiState.currentFolderPath != null,
                                    onNavigateUp = viewModel::navigateUpFromFolder,
                                    onNavigateTo = viewModel::openFolder
                                )
                            }
                        }

                        libraryDisplayItemsGridContent(
                            uiState = uiState,
                            visibleAudiobooks = visibleAudiobooks,
                            isQuoteSection = isQuoteSection,
                            isBookmarkSection = isBookmarkSection,
                            isAchievementSection = isAchievementSection,
                            strings = strings,
                            onQuoteClick = onQuoteClick,
                            onComicClick = onComicClick,
                            onAudiobookClick = onAudiobookClick,
                            onSelectComicId = { selectedComicId = it },
                            onSetQuoteToDelete = { quoteToDelete = it },
                            onSetFolderToDelete = { folderToDelete = it },
                            onSetAudiobookToDelete = { audiobookToDelete = it },
                            onOpenFolderSheet = viewModel::openFolderSheet,
                            onShowMissingSourceSnackbar = {
                                coroutineScope.launch {
                                    snackbarHostState.showSnackbar(
                                        strings.libraryQuoteSourceMissingLabel()
                                    )
                                }
                            }
                        )
                    }
                }
            }

            uiState.error?.let { message ->
                Snackbar(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .padding(16.dp),
                    action = { TextButton(onClick = viewModel::clearError) { Text(strings.ok) } }
                ) {
                    Text(message)
                }
            }
        }
    }
}

    LibraryScreenDialogs(
        showFilterSheet = showFilterSheet,
        onDismissFilterSheet = { showFilterSheet = false },
        selectedComicId = selectedComicId,
        onDismissComicInfo = { selectedComicId = null },
        comicToDelete = comicToDelete,
        onDismissDeleteComic = { comicToDelete = null },
        folderToDelete = folderToDelete,
        onDismissDeleteFolder = { folderToDelete = null },
        audiobookToDelete = audiobookToDelete,
        onDismissDeleteAudiobook = { audiobookToDelete = null },
        quoteToDelete = quoteToDelete,
        onDismissDeleteQuote = { quoteToDelete = null },
        uiState = uiState,
        comicsById = comicsById,
        strings = strings,
        viewModel = viewModel,
        onComicClick = onComicClick,
        onSetComicToDelete = { comicToDelete = it },
        onSetFolderToDelete = { folderToDelete = it },
        onSetAudiobookToDelete = { audiobookToDelete = it },
        onSetQuoteToDelete = { quoteToDelete = it },
    )
}
