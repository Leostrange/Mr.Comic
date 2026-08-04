package io.leostrange.mrcomic.feature.library

import android.net.Uri
import androidx.activity.compose.BackHandler
import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.FlowRowScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.GridItemSpan
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Folder
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.RadioButtonUnchecked
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LocalContentColor
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Snackbar
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
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
import androidx.compose.foundation.rememberScrollState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.foundation.verticalScroll
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.hilt.navigation.compose.hiltViewModel
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotContext
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.ui.designsystem.mrComicCompletedColor
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotFocusText
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodHeadline
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodLabel
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStagePreview
import io.leostrange.mrcomic.core.domain.analytics.resolveMrComicMascotState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicLibraryShelf
import io.leostrange.mrcomic.core.model.ComicReadingStatus
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress
import io.leostrange.mrcomic.core.model.libraryShelfCategory
import io.leostrange.mrcomic.core.model.readingStatus
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.RootChromePillShape
import io.leostrange.mrcomic.core.ui.library.LibraryShelfBar
import io.leostrange.mrcomic.core.ui.library.libraryCardElevation
import io.leostrange.mrcomic.core.ui.library.rootChromePillBorder
import io.leostrange.mrcomic.core.ui.library.rootChromePillContainerColor
import io.leostrange.mrcomic.core.ui.library.rootChromePillContentColor
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.libraryBooksSectionLabel
import io.leostrange.mrcomic.core.ui.locale.libraryFileCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryGraphicSectionLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuotePageLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteSourceCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteSourceMissingLabel
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.core.ui.mascot.MrComicStagePreviewLead
import io.leostrange.mrcomic.feature.library.components.AchievementId
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import io.leostrange.mrcomic.feature.library.components.AchievementStrings
import io.leostrange.mrcomic.feature.library.components.ComicGridItem
import io.leostrange.mrcomic.feature.library.components.libraryGridCoverRatio
import io.leostrange.mrcomic.feature.library.components.CoverArt
import io.leostrange.mrcomic.feature.library.components.FolderBackgroundStack
import io.leostrange.mrcomic.feature.library.components.FolderCoverTreatment
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import io.leostrange.mrcomic.feature.library.components.LibraryAchievementsRow
import io.leostrange.mrcomic.feature.library.components.LibraryTopBar
import io.leostrange.mrcomic.feature.library.components.computeAchievements
import io.leostrange.mrcomic.feature.library.components.questTransitionFeedback
import java.io.File
import java.util.Calendar
import kotlinx.coroutines.launch
@Suppress("UNUSED_PARAMETER")
@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun LibraryScreen(
    onComicClick: (String) -> Unit,
    onQuoteClick: (String, Int) -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onSettingsClick: () -> Unit,
    onAudiobookClick: (String) -> Unit,
    onProgressProfileClick: (() -> Unit)? = null,
    onOpdsCatalogClick: (() -> Unit)? = null,
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
    val uniqueAuthorCount = remember(uiState.rawAuthors) {
        uiState.rawAuthors.mapNotNull { author ->
            author?.trim()?.takeIf { it.isNotBlank() }
        }.distinct().size
    }
    val uniqueGenreCount = remember(uiState.rawGenres) {
        uiState.rawGenres.mapNotNull { genre ->
            genre?.trim()?.takeIf { it.isNotBlank() }
        }.distinct().size
    }
    val preferredQuestSeriesName = remember(uiState.recentlyRead) {
        uiState.recentlyRead.firstOrNull()?.series?.trim()?.takeIf { it.isNotBlank() }
    }
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
                backdropStrength = (uiState.backdropStrength * 1.2f).coerceIn(0f, 1f),
                backgroundBlur = uiState.backgroundBlur,
                backgroundVeil = (uiState.backgroundVeil * 1.2f).coerceIn(0f, 1f)
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
                        contentPadding = PaddingValues(start = 16.dp, end = 16.dp, top = 12.dp, bottom = 24.dp),
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
                            if (uiState.contentSection == LibraryContentSection.QUOTES) {
                                QuoteStatsBar(
                                    totalQuotes = uiState.totalQuoteCount,
                                    sourceCount = uiState.quoteSourceCount,
                                    modifier = Modifier.fillMaxWidth()
                                )
                            } else if (isAchievementSection) {
                                MrComicHubCard(
                                    unlockedCount = unlockedCount,
                                    totalCount = visibleAchievementTotal,
                                    mascotState = mascotState,
                                    nextAchievement = activeDiscoveryAchievement,
                                    questFeedback = visibleQuestFeedback,
                                    dailyReadingGoalState = uiState.dailyReadingGoalState,
                                    mascotProgress = uiState.mascotProgress,
                                    stagePreview = stagePreview,
                                    totalTitles = uiState.allComicsRawCount,
                                    completedTitles = uiState.completedComicCount,
                                    bookmarkedTitles = uiState.bookmarkedComicCount,
                                    quotesCount = uiState.totalQuoteCount,
                                    authorCount = uniqueAuthorCount,
                                    genreCount = uniqueGenreCount,
                                    secretUnlocked = uiState.secretCatUnlocked,
                                    recentComic = uiState.recentlyRead.firstOrNull(),
                                    nextAchievementHintAction = activeDiscoveryAction,
                                    preferredSeriesName = preferredQuestSeriesName,
                                    preferredCollectionQuery = preferredQuestCollectionQuery,
                                    onOpenRecent = {
                                        uiState.recentlyRead.firstOrNull()?.let { comic ->
                                            onComicClick(comic.id)
                                        }
                                    },
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
                                    onOpenProgress = openProgressProfile,
                                    onDismissStagePreview = viewModel::acknowledgeMascotStagePreview,
                                    onDismissQuestFeedback = { activeQuestFeedback = null },
                                    showMascot = uiState.mascotUiEnabled,
                                    appLanguage = uiState.appLanguage,
                                    searchActive = uiState.searchQuery.isNotBlank(),
                                    modifier = Modifier.fillMaxWidth()
                                )
                            } else if (
                                uiState.contentSection != LibraryContentSection.ACHIEVEMENTS &&
                                uiState.contentSection != LibraryContentSection.FILES
                            ) {
                                val activeComics = if (isBookmarkSection) uiState.bookmarkedComics else uiState.comics
                                LibraryStatsBar(
                                    totalItems = if (isBookmarkSection) uiState.totalBookmarkedCount else uiState.totalComicCount,
                    completedCount = activeComics.count { it.isReadCompleted() },
                    inProgressCount = activeComics.count { it.isReadingInProgress() },
                                    modifier = Modifier.fillMaxWidth()
                                )
                            }
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

                        if (uiState.contentSection == LibraryContentSection.QUOTES) {
                            if (uiState.quotes.isEmpty()) {
                                item(key = "empty_quotes", span = { GridItemSpan(maxLineSpan) }) {
                                    EmptyQuotesPlaceholder(showMascot = uiState.mascotUiEnabled)
                                }
                            } else {
                                items(uiState.quotes, key = { "quote_${it.id}" }) { quote ->
                                    QuoteCard(
                                        quote = quote,
                                        sourceAvailable = quote.comicId in uiState.availableQuoteComicIds,
                                        onClick = { onQuoteClick(quote.comicId, quote.page) },
                                        onLongClick = { quoteToDelete = quote },
                                        onUnavailableSourceClick = {
                                            coroutineScope.launch {
                                                snackbarHostState.showSnackbar(
                                                    strings.libraryQuoteSourceMissingLabel()
                                                )
                                            }
                                        }
                                    )
                                }
                            }
                        } else if (!isAchievementSection &&
                            uiState.groupByMode == GroupByMode.SERIES &&
                            ((isBookmarkSection && uiState.bookmarkedGroupSections.isNotEmpty()) ||
                                (!isBookmarkSection && uiState.groupSections.isNotEmpty()))
                        ) {
                            val sections = if (isBookmarkSection) uiState.bookmarkedGroupSections else uiState.groupSections
                            if (uiState.viewMode == LibraryViewMode.STRIPS) {
                                val seriesStripSections = sections.mapIndexed { index, (title, comics) ->
                                    LibraryStripSectionData(
                                        key = "series_strip_${index}_$title",
                                        title = title,
                                        comics = comics
                                    )
                                }
                                items(seriesStripSections, key = { it.key }) { section ->
                                    LibraryDisplayStripSection(
                                        section = section,
                                        uiState = uiState,
                                        onComicClick = { onComicClick(it.id) },
                                        onComicLongClick = { selectedComicId = it.id },
                                        onFolderClick = { folder ->
                                            if (folder.fileCount == 1 && folder.subfolderCount == 0) {
                                                val singleComic = uiState.comics.find { it.folderId == folder.path }
                                                if (singleComic != null) {
                                                    onComicClick(singleComic.id)
                                                } else {
                                                    viewModel.openFolderSheet(folder.path)
                                                }
                                            } else {
                                                viewModel.openFolderSheet(folder.path)
                                            }
                                        },
                                        onFolderLongClick = { folderToDelete = it },
                                        onAudiobookClick = { onAudiobookClick(it.id) },
                                        onAudiobookLongClick = { audiobookToDelete = it }
                                    )
                                }
                            } else {
                                sections.forEach { (title, comics) ->
                                    item(key = "section_$title", span = { GridItemSpan(maxLineSpan) }) {
                                        Text(
                                            text = title,
                                            style = MaterialTheme.typography.titleSmall,
                                            color = MaterialTheme.colorScheme.primary,
                                            modifier = Modifier
                                                .fillMaxWidth()
                                                .padding(horizontal = 16.dp)
                                                .padding(top = 8.dp, bottom = 4.dp)
                                        )
                                    }
                                    items(comics, key = { it.id }) { comic ->
                                        LibraryGridCell(
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                            tileSizeDp = uiState.tileSizeDp
                                        ) {
                                            ComicGridItem(
                                                comic = comic,
                                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                cardStyle = uiState.cardStyle,
                                                tileSizeDp = uiState.tileSizeDp,
                                                coverScaleMode = uiState.coverScale,
                                                thumbnailMode = uiState.thumbnailMode,
                                                shelfStyle = uiState.shelfStyle,
                                                shelfDepth = uiState.shelfDepth,
                                                graphicCoverStyle = uiState.graphicCoverStyle,
                                                cardShadow = uiState.cardShadow,
                                                titleScale = uiState.titleScale,
                                                titleLines = uiState.titleLines,
                                                cardStroke = uiState.cardStroke,
                                                cardCornerRadius = uiState.cardCornerRadius,
                                                titlePanelOpacity = uiState.titlePanelOpacity,
                                                showProgressIndicators = uiState.showProgressIndicators,
                                                showCoverTitles = uiState.showCoverTitlesOnGrid,
                                                onClick = { onComicClick(comic.id) },
                                                onLongClick = { selectedComicId = comic.id }
                                            )
                                        }
                                    }
                                }
                            }
                        } else if (!isAchievementSection) {
                            val activeDisplayItems = if (isBookmarkSection) uiState.bookmarkedDisplayItems else uiState.displayItems
                            if (activeDisplayItems.isEmpty() && (uiState.contentSection != LibraryContentSection.FILES || visibleAudiobooks.isEmpty())) {
                                item(key = "empty_folder", span = { GridItemSpan(maxLineSpan) }) {
                                    if (isBookmarkSection) {
                                        EmptyBookmarksPlaceholder(showMascot = uiState.mascotUiEnabled)
                                    } else {
                                        EmptyFolderPlaceholder(
                                            title = uiState.breadcrumbs.lastOrNull()?.label ?: strings.actionFolder,
                                            showMascot = uiState.mascotUiEnabled
                                        )
                                    }
                                }
                            } else if (uiState.viewMode == LibraryViewMode.STRIPS) {
                                val stripSections = buildLibraryStripSections(
                                    items = activeDisplayItems,
                                    appLanguage = uiState.appLanguage,
                                    audiobooks = if (uiState.contentSection == LibraryContentSection.FILES) {
                                        visibleAudiobooks
                                    } else {
                                        emptyList()
                                    }
                                )
                                items(stripSections, key = { it.key }) { section ->
                                    LibraryDisplayStripSection(
                                        section = section,
                                        uiState = uiState,
                                        onComicClick = { onComicClick(it.id) },
                                        onComicLongClick = { selectedComicId = it.id },
                                        onFolderClick = { folder ->
                                            if (folder.fileCount == 1 && folder.subfolderCount == 0) {
                                                val singleComic = uiState.comics.find { it.folderId == folder.path }
                                                if (singleComic != null) {
                                                    onComicClick(singleComic.id)
                                                } else {
                                                    viewModel.openFolderSheet(folder.path)
                                                }
                                            } else {
                                                viewModel.openFolderSheet(folder.path)
                                            }
                                        },
                                        onFolderLongClick = { folderToDelete = it },
                                        onAudiobookClick = { onAudiobookClick(it.id) },
                                        onAudiobookLongClick = { audiobookToDelete = it }
                                    )
                                }
                            } else {
                                items(
                                    items = activeDisplayItems,
                                    key = { it.key },
                                    span = { item ->
                                        if (item is LibrarySectionDividerItem) {
                                            GridItemSpan(maxLineSpan)
                                        } else {
                                            GridItemSpan(1)
                                        }
                                    }
                                ) { item ->
                                    when (item) {
                                        is LibrarySectionDividerItem -> {
                                            LibraryFileSectionDivider(section = item.section)
                                        }

                                        is LibraryComicItem -> {
                                            LibraryGridCell(
                                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                tileSizeDp = uiState.tileSizeDp
                                            ) {
                                                ComicGridItem(
                                                    comic = item.comic,
                                                    isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                    cardStyle = uiState.cardStyle,
                                                    tileSizeDp = uiState.tileSizeDp,
                                                    coverScaleMode = uiState.coverScale,
                                                    thumbnailMode = uiState.thumbnailMode,
                                                    shelfStyle = uiState.shelfStyle,
                                                    shelfDepth = uiState.shelfDepth,
                                                    graphicCoverStyle = uiState.graphicCoverStyle,
                                                    cardShadow = uiState.cardShadow,
                                                    titleScale = uiState.titleScale,
                                                    titleLines = uiState.titleLines,
                                                    cardStroke = uiState.cardStroke,
                                                    cardCornerRadius = uiState.cardCornerRadius,
                                                    titlePanelOpacity = uiState.titlePanelOpacity,
                                                    showProgressIndicators = uiState.showProgressIndicators,
                                                    showCoverTitles = uiState.showCoverTitlesOnGrid,
                                                    onClick = { onComicClick(item.comic.id) },
                                                    onLongClick = { selectedComicId = item.comic.id }
                                                )
                                            }
                                        }

                                        is LibraryFolderItem -> {
                                            LibraryGridCell(
                                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                tileSizeDp = uiState.tileSizeDp
                                            ) {
                                                FolderCard(
                                                    folder = item,
                                                    isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                    cardStyle = uiState.cardStyle,
                                                    tileSizeDp = uiState.tileSizeDp,
                                                    coverScale = uiState.coverScale,
                                                    thumbnailMode = uiState.thumbnailMode,
                                                    shelfStyle = uiState.shelfStyle,
                                                    shelfDepth = uiState.shelfDepth,
                                                    cardShadow = uiState.cardShadow,
                                                    onClick = {
                                                        if (item.fileCount == 1 && item.subfolderCount == 0) {
                                                            val singleComic = uiState.comics.find { it.folderId == item.path }
                                                            if (singleComic != null) {
                                                                onComicClick(singleComic.id)
                                                            } else {
                                                                viewModel.openFolderSheet(item.path)
                                                            }
                                                        } else {
                                                            viewModel.openFolderSheet(item.path)
                                                        }
                                                    },
                                                    onLongClick = { folderToDelete = item }
                                                )
                                            }
                                        }
                                    }
                                }
                                if (uiState.contentSection == LibraryContentSection.FILES && visibleAudiobooks.isNotEmpty()) {
                                    item(key = "audiobook_divider", span = { GridItemSpan(maxLineSpan) }) {
                                        LibrarySectionHeader(
                                            title = libraryAudiobooksStripLabel(uiState.appLanguage),
                                            icon = Icons.Default.Headphones
                                        )
                                    }
                                    items(visibleAudiobooks, key = { "ab_${it.id}" }) { audiobook ->
                                        LibraryGridCell(
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                            tileSizeDp = uiState.tileSizeDp
                                        ) {
                                            AudiobookGridItem(
                                                audiobook = audiobook,
                                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                cardStyle = uiState.cardStyle,
                                                tileSizeDp = uiState.tileSizeDp,
                                                thumbnailMode = uiState.thumbnailMode,
                                                shelfStyle = uiState.shelfStyle,
                                                shelfDepth = uiState.shelfDepth,
                                                cardShadow = uiState.cardShadow,
                                                titleScale = uiState.titleScale,
                                                titleLines = uiState.titleLines,
                                                cardStroke = uiState.cardStroke,
                                                cardCornerRadius = uiState.cardCornerRadius,
                                                titlePanelOpacity = uiState.titlePanelOpacity,
                                                showCoverTitles = uiState.showCoverTitlesOnGrid,
                                                onClick = { onAudiobookClick(audiobook.id) },
                                                onLongClick = { audiobookToDelete = audiobook }
                                            )
                                        }
                                    }
                                }
                            }
                        }

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
            } // Закрытие внутреннего Box с padding
        } // Закрытие внешнего Box
    } // Закрытие тела Scaffold

            if (showFilterSheet && uiState.contentSection == LibraryContentSection.FILES) {
                ModalBottomSheet(
                    onDismissRequest = { showFilterSheet = false },
                    containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
                        .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
                    scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
                ) {
                    FilterSheet(
                        sortOrder = uiState.sortOrder,
                        statusFilter = uiState.statusFilter,
                formatFilter = uiState.formatFilter,
                groupByMode = uiState.groupByMode,
                viewMode = uiState.viewMode,
                thumbnailMode = uiState.thumbnailMode,
                tileSizeDp = uiState.tileSizeDp,
                onSortChange = viewModel::setSortOrder,
                onStatusFilterChange = viewModel::setStatusFilter,
                onFormatFilterChange = viewModel::setFormatFilter,
                onGroupByChange = {
                    viewModel.setGroupBy(it)
                    if (it == GroupByMode.FOLDER) viewModel.openFolder(null)
                },
                onViewModeChange = viewModel::setViewMode,
                onThumbnailModeChange = viewModel::setThumbnailMode,
                onTileSizeChange = viewModel::setTileSizeDp,
                onReset = {
                    viewModel.setSortOrder(SortOrder.DATE_ADDED_DESC)
                    viewModel.setStatusFilter(LibraryStatusFilter.ALL)
                    viewModel.setFormatFilter(LibraryFormatFilter.ALL)
                    viewModel.setGroupBy(GroupByMode.FOLDER)
                    viewModel.setViewMode(LibraryViewMode.GRID)
                    viewModel.setThumbnailMode("RECTANGLE")
                    viewModel.setTileSizeDp(150)
                    viewModel.openFolder(null)
                    showFilterSheet = false
                }
            )
        }
    }

    selectedComicId?.let { id ->
        val comic = comicsById[id]
        if (comic == null) {
            LaunchedEffect(id) { selectedComicId = null }
        } else {
            ComicInfoSheet(
                comic = comic,
                onDismiss = { selectedComicId = null },
                onOpen = { selectedComicId = null; onComicClick(id) },
                onToggleBookmark = { viewModel.toggleBookmark(id); selectedComicId = null },
                onToggleCompleted = {
                    viewModel.markCompleted(id, !comic.isReadCompleted())
                    selectedComicId = null
                },
                onDelete = { comicToDelete = id; selectedComicId = null },
                onSaveMeta = { title, tags, shelf -> viewModel.updateComicMeta(id, title, tags, shelf) }
            )
        }
    }

    comicToDelete?.let { id ->
        val title = comicsById[id]?.title ?: strings.libraryComicFallback
        AlertDialog(
            onDismissRequest = { comicToDelete = null },
            containerColor = MaterialTheme.colorScheme.surface,
            title = {
                Text(strings.libraryDeleteComicTitle)
            },
            text = {
                Text(strings.libraryDeleteComicMessage.replace("%s", title))
            },
            confirmButton = {
                TextButton(onClick = { viewModel.deleteComic(id); comicToDelete = null }) {
                    Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { comicToDelete = null }) { Text(strings.cancel) }
            }
        )
    }

    folderToDelete?.let { folder ->
        val affectedCount = remember(folder.path, uiState.comics) {
            uiState.comics.count { comic ->
                val folderId = comic.folderId
                    ?.trim()
                    ?.trim('/')
                    ?.replace('\\', '/')
                    ?.takeIf { it.isNotBlank() }
                folderId == folder.path || folderId?.startsWith(folder.path + "/") == true
            }
        }
        AlertDialog(
            onDismissRequest = { folderToDelete = null },
            containerColor = MaterialTheme.colorScheme.surface,
            title = {
                Text(strings.libraryDeleteFolderTitle)
            },
            text = {
                Text(strings.libraryDeleteFolderMessage.format(folder.title, affectedCount))
            },
            confirmButton = {
                TextButton(onClick = {
                    viewModel.deleteFolder(folder.path)
                    folderToDelete = null
                }) {
                    Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { folderToDelete = null }) { Text(strings.cancel) }
            }
        )
    }

    audiobookToDelete?.let { audiobook ->
        AlertDialog(
            onDismissRequest = { audiobookToDelete = null },
            containerColor = MaterialTheme.colorScheme.surface,
            title = { Text("Убрать аудиокнигу из библиотеки?") },
            text = {
                Text(
                    buildString {
                        append(audiobook.title)
                        append("\n\n")
                        append(
                            if (audiobook.sourceIsFolder) {
                                "Будет удалена только запись из библиотеки. Файлы в папке останутся на месте."
                            } else {
                                "Будет удалена только запись из библиотеки. Исходный аудиофайл останется на месте."
                            }
                        )
                    }
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        viewModel.deleteAudiobook(audiobook.id)
                        audiobookToDelete = null
                    }
                ) {
                    Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { audiobookToDelete = null }) {
                    Text(strings.cancel)
                }
            }
        )
    }

    quoteToDelete?.let { quote ->
        AlertDialog(
            onDismissRequest = { quoteToDelete = null },
            containerColor = MaterialTheme.colorScheme.surface,
            title = { Text(strings.libraryDeleteQuoteTitle) },
            text = {
                Text(
                    text = buildString {
                        append(quote.text.take(180))
                        if (quote.text.length > 180) append("…")
                    }
                )
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        viewModel.deleteQuote(quote.id)
                        quoteToDelete = null
                    }
                ) {
                    Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { quoteToDelete = null }) { Text(strings.cancel) }
            }
        )
    }

    if (uiState.folderSheetPath != null) {
        val screenHeight = LocalConfiguration.current.screenHeightDp.dp
        Dialog(
            onDismissRequest = { viewModel.dismissFolderSheet() },
            properties = DialogProperties(usePlatformDefaultWidth = false)
        ) {
            val sheetColumns = if (uiState.viewMode == LibraryViewMode.LIST) {
                GridCells.Fixed(1)
            } else {
                GridCells.Fixed(uiState.libraryGridColumns)
            }
            val itemSpacing = when (uiState.cardStyle) {
                "COMPACT" -> 6.dp
                "SHOWCASE" -> 12.dp
                else -> 8.dp
            }
            val folderTitle = uiState.folderSheetBreadcrumbs.lastOrNull()?.label ?: strings.actionFolder
            Box(
                modifier = Modifier.fillMaxSize(),
                contentAlignment = Alignment.Center
            ) {
                Surface(
                    modifier = Modifier
                        .fillMaxWidth(0.92f)
                        .widthIn(max = 760.dp)
                        .heightIn(max = screenHeight * 0.7f),
                    shape = RoundedCornerShape(28.dp),
                    color = MaterialTheme.colorScheme.surfaceContainerHigh.copy(
                        alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.9f)
                    ),
                    tonalElevation = 8.dp,
                    shadowElevation = 18.dp
                ) {
                    Column(
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 20.dp, vertical = 12.dp),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Column(modifier = Modifier.weight(1f)) {
                                Text(
                                    text = folderTitle,
                                    style = MaterialTheme.typography.titleMedium,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                                Text(
                                    text = folderDescription(
                                        LibraryFolderItem(
                                            path = uiState.folderSheetPath ?: "",
                                            title = folderTitle,
                                            coverPath = null,
                                            fileCount = uiState.folderSheetItems.count { it is LibraryComicItem },
                                            subfolderCount = uiState.folderSheetItems.count { it is LibraryFolderItem },
                                            newestAdded = 0L,
                                            lastReadDate = null,
                                            totalSize = 0L,
                                            progress = 0f
                                        ),
                                        strings
                                    ),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                if (uiState.folderSheetBreadcrumbs.size > 1) {
                                    FilledTonalButton(onClick = viewModel::navigateUpFromFolderSheet) {
                                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = null)
                                        Spacer(Modifier.width(6.dp))
                                        Text(strings.back)
                                    }
                                }
                                IconButton(onClick = viewModel::dismissFolderSheet) {
                                    Icon(Icons.Default.Close, contentDescription = strings.cancel)
                                }
                            }
                        }
                        if (uiState.folderSheetBreadcrumbs.size > 1) {
                            BreadcrumbRow(
                                breadcrumbs = uiState.folderSheetBreadcrumbs,
                                canNavigateUp = uiState.folderSheetBreadcrumbs.size > 1,
                                onNavigateUp = viewModel::navigateUpFromFolderSheet,
                                onNavigateTo = { path ->
                                    if (path == null) {
                                        viewModel.dismissFolderSheet()
                                    } else {
                                        viewModel.openFolderSheet(path)
                                    }
                                }
                            )
                        }
                        LazyVerticalGrid(
                            columns = sheetColumns,
                            modifier = Modifier
                                .fillMaxWidth()
                                .heightIn(max = screenHeight * 0.54f),
                            contentPadding = PaddingValues(start = 16.dp, end = 16.dp, top = 12.dp, bottom = 20.dp),
                            horizontalArrangement = Arrangement.spacedBy(itemSpacing),
                            verticalArrangement = Arrangement.spacedBy(itemSpacing)
                        ) {
                            items(
                                items = uiState.folderSheetItems,
                                key = { it.key },
                                span = { item ->
                                    if (item is LibrarySectionDividerItem) {
                                        GridItemSpan(maxLineSpan)
                                    } else {
                                        GridItemSpan(1)
                                    }
                                }
                            ) { item ->
                                when (item) {
                                    is LibrarySectionDividerItem -> LibraryFileSectionDivider(section = item.section)
                                    is LibraryComicItem -> {
                                        LibraryGridCell(
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                            tileSizeDp = uiState.tileSizeDp
                                        ) {
                                            ComicGridItem(
                                                comic = item.comic,
                                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                cardStyle = uiState.cardStyle,
                                                tileSizeDp = uiState.tileSizeDp,
                                                coverScaleMode = uiState.coverScale,
                                                thumbnailMode = uiState.thumbnailMode,
                                                shelfStyle = uiState.shelfStyle,
                                                shelfDepth = uiState.shelfDepth,
                                                graphicCoverStyle = uiState.graphicCoverStyle,
                                                cardShadow = uiState.cardShadow,
                                                titleScale = uiState.titleScale,
                                                titleLines = uiState.titleLines,
                                                cardStroke = uiState.cardStroke,
                                                cardCornerRadius = uiState.cardCornerRadius,
                                                titlePanelOpacity = uiState.titlePanelOpacity,
                                                showProgressIndicators = uiState.showProgressIndicators,
                                                showCoverTitles = uiState.showCoverTitlesOnGrid,
                                                onClick = { onComicClick(item.comic.id) },
                                                onLongClick = { selectedComicId = item.comic.id }
                                            )
                                        }
                                    }
                                    is LibraryFolderItem -> {
                                        LibraryGridCell(
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                            tileSizeDp = uiState.tileSizeDp
                                        ) {
                                            FolderCard(
                                                folder = item,
                                                isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                                cardStyle = uiState.cardStyle,
                                                tileSizeDp = uiState.tileSizeDp,
                                                coverScale = uiState.coverScale,
                                                thumbnailMode = uiState.thumbnailMode,
                                                shelfStyle = uiState.shelfStyle,
                                                shelfDepth = uiState.shelfDepth,
                                                cardShadow = uiState.cardShadow,
                                                onClick = {
                                                    if (item.fileCount == 1 && item.subfolderCount == 0) {
                                                        val singleComic = uiState.folderSheetItems
                                                            .filterIsInstance<LibraryComicItem>()
                                                            .find { it.comic.folderId == item.path }
                                                            ?.comic
                                                        if (singleComic != null) {
                                                            viewModel.dismissFolderSheet()
                                                            onComicClick(singleComic.id)
                                                        } else {
                                                            viewModel.openFolderSheet(item.path)
                                                        }
                                                    } else {
                                                        viewModel.openFolderSheet(item.path)
                                                    }
                                                },
                                                onLongClick = { folderToDelete = item }
                                            )
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun LibraryBackground(
    backgroundStyle: String,
    backgroundImageUri: String?,
    backdropStrength: Float,
    backgroundBlur: Float,
    backgroundVeil: Float
) {
    LibraryBackdropLayer(
        backgroundStyle = backgroundStyle,
        backgroundImageUri = backgroundImageUri,
        colorScheme = MaterialTheme.colorScheme,
        backdropStrength = backdropStrength,
        backgroundBlur = backgroundBlur,
        imageVeil = backgroundVeil,
        modifier = Modifier.fillMaxSize()
    )
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun QuickControlsPopup(
    onDismiss: () -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onToggleView: () -> Unit,
    onOpenFilters: () -> Unit,
    thumbnailMode: String,
    onThumbnailModeChange: (String) -> Unit,
    viewMode: LibraryViewMode,
) {
    val strings = LocalStrings.current
    val nextViewMode = nextLibraryViewMode(viewMode)
    var addMenuExpanded by remember { mutableStateOf(false) }
    var thumbnailMenuExpanded by remember { mutableStateOf(false) }
    val dismissInteraction = remember { MutableInteractionSource() }
    val scrollState = rememberScrollState()

    Box(
        modifier = Modifier
            .fillMaxSize()
            .clickable(
                interactionSource = dismissInteraction,
                indication = null,
                onClick = onDismiss
            ),
        contentAlignment = Alignment.TopEnd
    ) {
         Surface(
             modifier = Modifier
                 .padding(top = 8.dp, end = 16.dp)
                 .clickable(
                     interactionSource = remember { MutableInteractionSource() },
                     indication = null,
                     onClick = {}
                 ),
             shape = RoundedCornerShape(22.dp),
             color = MaterialTheme.colorScheme.surface,
             tonalElevation = 2.dp,
             shadowElevation = 6.dp
         ) {
            Row(
                modifier = Modifier
                    .padding(horizontal = 12.dp, vertical = 10.dp)
                    .horizontalScroll(scrollState),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicButton(
                    onClick = onToggleView,
                    variant = MrComicButtonVariant.Tonal
                ) {
                    Icon(
                        when (nextViewMode) {
                            LibraryViewMode.GRID -> Icons.Default.GridView
                            LibraryViewMode.LIST -> Icons.AutoMirrored.Filled.ViewList
                            LibraryViewMode.STRIPS -> Icons.Default.Menu
                        },
                        contentDescription = null
                    )
                    Spacer(Modifier.width(6.dp))
                    Text(
                        when (nextViewMode) {
                            LibraryViewMode.GRID -> strings.libraryViewAsGrid
                            LibraryViewMode.LIST -> strings.libraryViewAsList
                            LibraryViewMode.STRIPS -> libraryViewAsStripsLabel(strings.languageCode)
                        }
                    )
                }
                MrComicButton(
                    onClick = onOpenFilters,
                    variant = MrComicButtonVariant.Tonal
                ) {
                    Icon(Icons.Default.Tune, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.actionSort)
                }
                Box {
                    MrComicButton(
                        onClick = { thumbnailMenuExpanded = true },
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Text(
                            if (thumbnailMode == "SQUARE") {
                                strings.libraryCoversSquare
                            } else {
                                strings.libraryCoversRectangle
                            }
                        )
                    }
                    DropdownMenu(
                        expanded = thumbnailMenuExpanded,
                        onDismissRequest = { thumbnailMenuExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text(strings.actionRectangle) },
                            onClick = {
                                thumbnailMenuExpanded = false
                                onThumbnailModeChange("RECTANGLE")
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(strings.actionSquare) },
                            onClick = {
                                thumbnailMenuExpanded = false
                                onThumbnailModeChange("SQUARE")
                            }
                        )
                    }
                }
                Box {
                    MrComicButton(
                        onClick = { addMenuExpanded = true },
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Icon(Icons.Default.FolderOpen, contentDescription = null)
                        Spacer(Modifier.width(6.dp))
                        Text(strings.libraryAdd)
                    }
                    DropdownMenu(
                        expanded = addMenuExpanded,
                        onDismissRequest = { addMenuExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text(strings.actionFile) },
                            leadingIcon = {
                                Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
                            },
                            onClick = {
                                addMenuExpanded = false
                                onAddFileClick()
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(strings.actionFolder) },
                            leadingIcon = {
                                Icon(Icons.Default.FolderOpen, contentDescription = null)
                            },
                            onClick = {
                                addMenuExpanded = false
                                onAddFolderClick()
                            }
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun LibraryGridCell(
    isGrid: Boolean,
    tileSizeDp: Int,
    content: @Composable () -> Unit
) {
    if (!isGrid) {
        content()
        return
    }
    val animatedTileSize by animateDpAsState(
        targetValue = tileSizeDp.dp,
        label = "libraryTileSize"
    )
    Box(
        modifier = Modifier.fillMaxWidth(),
        contentAlignment = Alignment.TopCenter
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = animatedTileSize)
        ) {
            content()
        }
    }
}

@Composable
private fun BreadcrumbRow(
    breadcrumbs: List<LibraryBreadcrumb>,
    canNavigateUp: Boolean,
    onNavigateUp: () -> Unit,
    onNavigateTo: (String?) -> Unit
) {
    LazyRow(
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 2.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        modifier = Modifier.fillMaxWidth()
    ) {
        if (canNavigateUp) {
            item(key = "navigate_up") {
                Surface(
                    modifier = Modifier.clickable(onClick = onNavigateUp),
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = LocalStrings.current.back,
                            modifier = Modifier.size(16.dp),
                            tint = MaterialTheme.colorScheme.primary
                        )
                    }
                }
            }
        }
        items(breadcrumbs, key = { it.path ?: "root" }) { crumb ->
            Surface(
                modifier = Modifier.clickable { onNavigateTo(crumb.path) },
                shape = RoundedCornerShape(999.dp),
                color = if (crumb.path == breadcrumbs.lastOrNull()?.path) {
                    MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                } else {
                    MaterialTheme.colorScheme.surfaceContainerLow
                }
            ) {
                Text(
                    text = crumb.label,
                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
                    style = MaterialTheme.typography.labelMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
@OptIn(ExperimentalFoundationApi::class)
private fun FolderCard(
    folder: LibraryFolderItem,
    isGrid: Boolean,
    cardStyle: String,
    tileSizeDp: Int,
    coverScale: String,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    onClick: () -> Unit,
    onLongClick: () -> Unit
) {
    val strings = LocalStrings.current
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(8.dp)
        "SHOWCASE" -> RoundedCornerShape(14.dp)
        else -> RoundedCornerShape(10.dp)
    }
    val contentPadding = when (cardStyle) {
        "COMPACT" -> 8.dp
        "SHOWCASE" -> 12.dp
        else -> 10.dp
    }
    val containerColor = lerp(
        MaterialTheme.colorScheme.surfaceContainerLow,
        MaterialTheme.colorScheme.secondaryContainer,
        0.1f
    ).copy(alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.7f))
    val cardBorder = androidx.compose.foundation.BorderStroke(
        width = 0.75.dp,
        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
    )
    val gridCoverRatio = if (thumbnailMode == "SQUARE") {
        1f
    } else {
        when (cardStyle) {
            "COMPACT" -> 0.64f
            "SHOWCASE" -> 0.69f
            else -> 0.66f
        }
    }
    val listBaseHeight = (tileSizeDp * 0.82f).coerceIn(92f, 176f).dp
    val styleFactor = when (cardStyle) {
        "COMPACT" -> 0.92f
        "SHOWCASE" -> 1.12f
        else -> 1.0f
    }
    val rectHeight = (listBaseHeight.value * styleFactor).coerceIn(52f, 132f).dp
    val squareSize = (rectHeight.value * 0.82f).coerceIn(48f, 112f).dp
    val listThumbSize = if (thumbnailMode == "SQUARE") {
        squareSize to squareSize
    } else {
        (rectHeight * 0.7f) to rectHeight
    }
    if (isGrid) {
        MrComicCardSurface(
            modifier = Modifier
                .fillMaxWidth()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                ),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Column {
                FolderCover(
                    coverPath = folder.coverPath,
                    title = folder.title,
                    fileCount = folder.fileCount,
                    subfolderCount = folder.subfolderCount,
                    coverScale = coverScale,
                    showTitleOverlay = true,
                    modifier = Modifier
                        .fillMaxWidth()
                        .aspectRatio(gridCoverRatio)
                )
            }
        }
    } else {
        MrComicCardSurface(
            modifier = Modifier
                .height(rectHeight)
                .fillMaxWidth()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                ),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Column(modifier = Modifier.padding(contentPadding + 2.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    FolderCover(
                        coverPath = folder.coverPath,
                        title = folder.title,
                        fileCount = folder.fileCount,
                        subfolderCount = folder.subfolderCount,
                        coverScale = coverScale,
                        showTitleOverlay = false,
                        modifier = Modifier
                            .size(listThumbSize.first, listThumbSize.second)
                            .clip(RoundedCornerShape(6.dp))
                    )
                    Spacer(Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        FolderCollectionMeta(
                            folder = folder,
                            strings = strings,
                            compact = false
                        )
                        Spacer(Modifier.height(4.dp))
                        Text(
                            text = folder.title,
                            style = MaterialTheme.typography.titleSmall,
                            maxLines = 2,
                            overflow = TextOverflow.Ellipsis,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
                        )
                        Text(
                            text = folderDescription(folder, strings),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                Spacer(Modifier.height(2.dp))
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun FolderCollectionMeta(
    folder: LibraryFolderItem,
    strings: AppStrings,
    compact: Boolean
) {
    val primaryLabel = folderCollectionLabel(strings)
    val secondaryLabel = folderVolumesLabel(folder.fileCount, strings)
    val tertiaryLabel = folderSubcollectionsLabel(folder.subfolderCount, strings)
    FlowRow(
        horizontalArrangement = Arrangement.spacedBy(6.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        FolderMetaChip(
            text = primaryLabel,
            accent = MaterialTheme.colorScheme.secondary,
            strong = true
        )
        FolderMetaChip(
            text = secondaryLabel,
            accent = MaterialTheme.colorScheme.primary,
            strong = false
        )
        if (!compact && tertiaryLabel != null) {
            FolderMetaChip(
                text = tertiaryLabel,
                accent = MaterialTheme.colorScheme.tertiary,
                strong = false
            )
        }
    }
}

@Composable
private fun FolderMetaChip(
    text: String,
    accent: Color,
    strong: Boolean
) {
    Surface(
        shape = RoundedCornerShape(999.dp),
        color = accent.copy(alpha = if (strong) 0.16f else 0.1f),
        border = androidx.compose.foundation.BorderStroke(
            width = if (strong) 0.8.dp else 0.6.dp,
            color = accent.copy(alpha = if (strong) 0.28f else 0.18f)
        )
    ) {
        Text(
            text = text,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 3.dp),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.84f),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
private fun FolderCover(
    coverPath: String?,
    title: String,
    fileCount: Int,
    subfolderCount: Int,
    coverScale: String,
    showTitleOverlay: Boolean,
    modifier: Modifier = Modifier
) {
    val hasCover = coverPath != null
    Box(modifier = modifier) {
        FolderBackgroundStack(hasCover = hasCover, modifier = Modifier.fillMaxSize())
        CoverArt(
            coverPath = coverPath,
            title = title,
            contentScale = if (coverScale == "FIT") ContentScale.Fit else ContentScale.Crop,
            modifier = Modifier.fillMaxSize()
                .let { if (hasCover) it.clip(RoundedCornerShape(12.dp)) else it }
        )
        FolderCoverTreatment(
            title = title,
            hasCover = hasCover,
            fileCount = fileCount,
            subfolderCount = subfolderCount,
            modifier = Modifier.fillMaxSize()
        )
        if (showTitleOverlay) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .align(Alignment.BottomCenter)
                    .background(
                        Brush.verticalGradient(
                            listOf(Color.Transparent, Color.Black.copy(alpha = 0.56f))
                        )
                    )
                    .padding(horizontal = 10.dp, vertical = 10.dp)
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    color = Color.White,
                    modifier = Modifier.align(Alignment.BottomStart)
                )
            }
        }
    }
}

@Composable
private fun ShelfLine(
    shelfStyle: String,
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    val shelfAreaHeight = remember(shelfDepth) {
        val baseH = 8f + (shelfDepth.coerceIn(0f, 1f) * 8f)
        (baseH + 2f).dp + 8.dp
    }
    Box(
        modifier = modifier.fillMaxWidth().height(shelfAreaHeight),
        contentAlignment = Alignment.Center
    ) {
        LibraryShelfBar(
            shelfStyle = shelfStyle,
            colorScheme = MaterialTheme.colorScheme,
            depth = shelfDepth,
            modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp)
        )
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun FilterSheet(
    sortOrder: SortOrder,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter,
    groupByMode: GroupByMode,
    viewMode: LibraryViewMode,
    thumbnailMode: String,
    tileSizeDp: Int,
    onSortChange: (SortOrder) -> Unit,
    onStatusFilterChange: (LibraryStatusFilter) -> Unit,
    onFormatFilterChange: (LibraryFormatFilter) -> Unit,
    onGroupByChange: (GroupByMode) -> Unit,
    onViewModeChange: (LibraryViewMode) -> Unit,
    onThumbnailModeChange: (String) -> Unit,
    onTileSizeChange: (Int) -> Unit,
    onReset: () -> Unit
) {
    val strings = LocalStrings.current
    val maxSheetHeight = LocalConfiguration.current.screenHeightDp.dp * 0.62f
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(max = maxSheetHeight)
            .padding(horizontal = 20.dp)
            .navigationBarsPadding()
            .verticalScroll(rememberScrollState())
            .padding(bottom = 20.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                strings.libraryOrderAndFilters,
                style = MaterialTheme.typography.titleMedium
            )
            TextButton(onClick = onReset) {
                Text(strings.libraryReset)
            }
        }

        HorizontalDivider()

        FilterSection(
            title = libraryViewSectionLabel(strings.languageCode)
        ) {
            ChipWrap {
                listOf(
                    LibraryViewMode.GRID,
                    LibraryViewMode.LIST,
                    LibraryViewMode.STRIPS
                ).forEach { mode ->
                    MrComicFilterChip(
                        selected = viewMode == mode,
                        onClick = { onViewModeChange(mode) },
                        label = { Text(libraryViewModeLabel(mode, strings.languageCode)) },
                        leadingIcon = if (viewMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.librarySortSection
        ) {
            ChipWrap {
                librarySortOptions(strings).forEach { (order, label) ->
                    MrComicFilterChip(
                        selected = sortOrder == order,
                        onClick = { onSortChange(order) },
                        label = { Text(label) },
                        leadingIcon = if (sortOrder == order) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryStatusSection
        ) {
            ChipWrap {
                listOf(
                    LibraryStatusFilter.ALL to strings.libraryStatusAll,
                    LibraryStatusFilter.BOOKMARKED to strings.libraryStatusBookmarked,
                    LibraryStatusFilter.IN_PROGRESS to strings.libraryStatusReading,
                    LibraryStatusFilter.COMPLETED to strings.libraryStatusCompleted
                ).forEach { (filter, label) ->
                    MrComicFilterChip(
                        selected = statusFilter == filter,
                        onClick = { onStatusFilterChange(filter) },
                        label = { Text(label) },
                        leadingIcon = if (statusFilter == filter) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryFormatSection
        ) {
            ChipWrap {
                listOf(
                    LibraryFormatFilter.ALL to strings.libraryFormatAll,
                    LibraryFormatFilter.IMAGE to strings.libraryFormatImages,
                    LibraryFormatFilter.PDF to "PDF",
                    LibraryFormatFilter.TEXT to strings.libraryFormatText
                ).forEach { (filter, label) ->
                    MrComicFilterChip(
                        selected = formatFilter == filter,
                        onClick = { onFormatFilterChange(filter) },
                        label = { Text(label) },
                        leadingIcon = if (formatFilter == filter) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryGroupingSection
        ) {
            ChipWrap {
                listOf(
                    GroupByMode.FOLDER to strings.libraryGroupingFolder,
                    GroupByMode.NONE to strings.libraryGroupingNone,
                    GroupByMode.SERIES to strings.libraryGroupingSeries
                ).forEach { (mode, label) ->
                    MrComicFilterChip(
                        selected = groupByMode == mode,
                        onClick = { onGroupByChange(mode) },
                        label = { Text(label) },
                        leadingIcon = if (groupByMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryThumbnailsSection
        ) {
            ChipWrap {
                listOf(
                    "RECTANGLE" to strings.actionRectangle,
                    "SQUARE" to strings.actionSquare
                ).forEach { (mode, label) ->
                    MrComicFilterChip(
                        selected = thumbnailMode == mode,
                        onClick = { onThumbnailModeChange(mode) },
                        label = { Text(label) },
                        leadingIcon = if (thumbnailMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = libraryThumbnailSizeSectionLabel(strings.languageCode)
        ) {
            ChipWrap {
                listOf(
                    112 to libraryThumbnailSizeLabel(strings.languageCode, "small"),
                    150 to libraryThumbnailSizeLabel(strings.languageCode, "medium"),
                    190 to libraryThumbnailSizeLabel(strings.languageCode, "large")
                ).forEach { (size, label) ->
                    val selected = tileSizeDp in (size - 12)..(size + 12)
                    MrComicFilterChip(
                        selected = selected,
                        onClick = { onTileSizeChange(size) },
                        label = { Text(label) },
                        leadingIcon = if (selected) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }
    }
}

@Composable
private fun FilterSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.surfaceContainerLow
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(title, style = MaterialTheme.typography.titleSmall)
            content()
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ChipWrap(content: @Composable FlowRowScope.() -> Unit) {
    FlowRow(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
        content = content
    )
}

@Composable
private fun EmptyLibraryPlaceholder(
    modifier: Modifier,
    showMascot: Boolean,
    onAddFile: () -> Unit,
    onAddFolder: () -> Unit
) {
    val strings = LocalStrings.current
    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
            size = 40.dp
        )
        Spacer(Modifier.height(16.dp))
        Text(
            strings.libraryEmptyTitle,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            strings.libraryEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        MrComicButton(
            onClick = onAddFile,
            variant = MrComicButtonVariant.Filled
        ) {
            Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFile)
        }
        Spacer(Modifier.height(8.dp))
        MrComicButton(
            onClick = onAddFolder,
            variant = MrComicButtonVariant.Outlined
        ) {
            Icon(Icons.Default.FolderOpen, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFolder)
        }
    }
}

// Library status text utils extracted to LibraryStatusTextUtils.kt

@Composable
private fun EmptyStatusFilterPlaceholder(
    statusFilter: LibraryStatusFilter,
    showMascot: Boolean,
    onShowAll: () -> Unit,
    modifier: Modifier
) {
    val strings = LocalStrings.current
    val copy = remember(statusFilter, strings.languageCode) {
        libraryStatusEmptyStateText(statusFilter, strings.languageCode)
    }
    val icon = when (statusFilter) {
        LibraryStatusFilter.COMPLETED -> Icons.Default.CheckCircle
        LibraryStatusFilter.IN_PROGRESS -> Icons.Default.PlayArrow
        LibraryStatusFilter.BOOKMARKED -> Icons.Default.BookmarkBorder
        LibraryStatusFilter.ALL -> Icons.AutoMirrored.Filled.MenuBook
    }

    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = icon,
            size = 40.dp
        )
        Spacer(Modifier.height(16.dp))
        Text(
            copy.title,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            copy.message,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        MrComicButton(
            onClick = onShowAll,
            variant = MrComicButtonVariant.Tonal
        ) {
            Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(copy.action)
        }
    }
}

@Composable
private fun EmptyFolderPlaceholder(
    title: String,
    showMascot: Boolean
) {
    val strings = LocalStrings.current
    Surface(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
        shape = RoundedCornerShape(22.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            LibraryPlaceholderLeadIcon(
                showMascot = showMascot,
                neutralIcon = Icons.Default.FolderOpen,
                size = 36.dp
            )
            Text(
                strings.libraryEmptyFolderTitle.format(title),
                textAlign = TextAlign.Center
            )
            Text(
                strings.libraryEmptyFolderHint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ComicInfoSheet(
    comic: Comic,
    onDismiss: () -> Unit,
    onOpen: () -> Unit,
    onToggleBookmark: () -> Unit,
    onToggleCompleted: () -> Unit,
    onDelete: () -> Unit,
    onSaveMeta: (title: String, tags: String, shelf: String) -> Unit
) {
    val strings = LocalStrings.current
    var titleEdit by remember(comic.id) { mutableStateOf(comic.title) }
    var tagsEdit by remember(comic.id) { mutableStateOf(comic.tags) }
    var shelfEdit by remember(comic.id) { mutableStateOf(comic.libraryShelfCategory()) }
    var isEditing by remember(comic.id) { mutableStateOf(false) }
    val shelfLabel = when (strings.languageCode) {
        "en" -> "Shelf"
        "ja" -> "棚"
        "zh" -> "书架"
        "ko" -> "서가"
        else -> "Полка"
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
        scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp)
                .padding(bottom = 32.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.Top) {
                Card(modifier = Modifier.size(72.dp, 100.dp), shape = RoundedCornerShape(6.dp)) {
                    if (comic.coverPath != null) {
                        AsyncImage(
                            model = File(comic.coverPath!!),
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    } else {
                        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Icon(Icons.AutoMirrored.Filled.MenuBook, contentDescription = null)
                        }
                    }
                }
                Spacer(Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    if (isEditing) {
                        OutlinedTextField(
                            value = titleEdit,
                            onValueChange = { titleEdit = it },
                            label = { Text(strings.libraryTitle) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth()
                        )
                    } else {
                        Text(
                            text = comic.title,
                            style = MaterialTheme.typography.titleMedium,
                            maxLines = 3,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                    comic.author?.let {
                        Text(
                            text = it,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                IconButton(onClick = {
                    if (isEditing) {
                        onSaveMeta(titleEdit, tagsEdit, shelfEdit.name)
                        isEditing = false
                    } else {
                        isEditing = true
                    }
                }) {
                    Icon(
                        imageVector = if (isEditing) Icons.Default.Check else Icons.Default.Edit,
                        contentDescription = if (isEditing) {
                            strings.librarySave
                        } else {
                            strings.libraryEdit
                        }
                    )
                }
            }

            if (isEditing) {
                OutlinedTextField(
                    value = tagsEdit,
                    onValueChange = { tagsEdit = it },
                    label = { Text(strings.libraryTagsComma) },
                    modifier = Modifier.fillMaxWidth()
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.AUTO,
                        onClick = { shelfEdit = ComicLibraryShelf.AUTO },
                        label = { Text("Авто") }
                    )
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.GRAPHIC,
                        onClick = { shelfEdit = ComicLibraryShelf.GRAPHIC },
                        label = { Text("Комикс") }
                    )
                    MrComicFilterChip(
                        selected = shelfEdit == ComicLibraryShelf.BOOKS,
                        onClick = { shelfEdit = ComicLibraryShelf.BOOKS },
                        label = { Text("Книга") }
                    )
                }
            }

            HorizontalDivider()

            if (comic.pageCount > 0) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        strings.libraryProgress,
                        style = MaterialTheme.typography.bodySmall
                    )
                    Text(
                        strings.libraryProgressTemplate.format(
                            comic.currentPage + 1,
                            comic.pageCount,
                            (comic.readingProgress * 100).toInt()
                        ),
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                MrComicProgressLine(
                    progress = { comic.readingProgress },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            comic.genre?.let { InfoRow(strings.libraryGenre, it) }
            comic.publisher?.let { InfoRow(strings.libraryPublisher, it) }
            comic.year?.let { InfoRow(strings.libraryYear, it.toString()) }
            if (comic.tags.isNotBlank() && !isEditing) {
                InfoRow(strings.libraryTags, comic.tags)
            }
            if (!isEditing) {
                InfoRow(
                    shelfLabel,
                    when (comic.libraryShelfCategory()) {
                        ComicLibraryShelf.GRAPHIC -> "Комикс"
                        ComicLibraryShelf.BOOKS -> "Книга"
                        ComicLibraryShelf.AUTO -> "Авто"
                    }
                )
            }
            InfoRow(strings.libraryFormatLabel, comic.format.name)
            comic.folderId?.let { InfoRow(strings.actionFolder, it) }
            InfoRow(strings.librarySize, formatFileSize(comic.fileSize))

            HorizontalDivider()

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                ActionButton(
                    icon = Icons.AutoMirrored.Filled.OpenInNew,
                    label = strings.libraryOpen,
                    onClick = onOpen
                )
                ActionButton(
                    icon = if (comic.isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                    label = if (comic.isBookmarked) {
                        strings.libraryRemove
                    } else {
                        strings.readerBookmark
                    },
                    onClick = onToggleBookmark,
                    tint = if (comic.isBookmarked) MaterialTheme.colorScheme.primary else null
                )
                val readingStatus = comic.readingStatus()
                ActionButton(
                    icon = if (readingStatus == ComicReadingStatus.COMPLETED) {
                        Icons.Default.CheckCircle
                    } else {
                        Icons.Default.RadioButtonUnchecked
                    },
                    label = when (readingStatus) {
                        ComicReadingStatus.COMPLETED -> strings.libraryStatusCompleted
                        ComicReadingStatus.READING -> strings.libraryStatusReading
                        ComicReadingStatus.NEW -> strings.libraryStatusNew
                    },
                    onClick = onToggleCompleted
                )
                ActionButton(
                    icon = Icons.Default.Delete,
                    label = strings.libraryDelete,
                    onClick = onDelete,
                    tint = MaterialTheme.colorScheme.error
                )
            }
        }
    }
}

@Composable
private fun ActionButton(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    onClick: () -> Unit,
    tint: Color? = null
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .clickable(onClick = onClick)
            .padding(8.dp)
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = tint ?: LocalContentColor.current,
            modifier = Modifier.size(24.dp)
        )
        Spacer(Modifier.height(4.dp))
        Text(text = label, style = MaterialTheme.typography.labelSmall)
    }
}

@Composable
private fun InfoRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(label, style = MaterialTheme.typography.bodySmall)
        Text(
            text = value,
            style = MaterialTheme.typography.bodySmall,
            textAlign = TextAlign.End,
            modifier = Modifier.weight(1f, fill = false).padding(start = 16.dp),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Строка статистики библиотеки
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun LibraryStatsBar(
    totalItems: Int,
    completedCount: Int,
    inProgressCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryFileCountLabel(totalItems)
    val completedLabel = strings.libraryStatsCompleted
    val inProgressLabel = strings.libraryStatsReading

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 7.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = "$totalItems",
                    style = MaterialTheme.typography.titleMedium.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                    ),
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = totalLabel,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
        if (completedCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = mrComicCompletedColor().copy(alpha = 0.15f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("✅", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = "$completedCount $completedLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = mrComicCompletedColor()
                    )
                }
            }
        }
        if (inProgressCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.82f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("📖", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = "$inProgressCount $inProgressLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                }
            }
        }
    }
}

@Composable
private fun QuoteStatsBar(
    totalQuotes: Int,
    sourceCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryQuoteCountLabel(totalQuotes)
    val sourceLabel = strings.libraryQuoteSourceCountLabel(sourceCount)

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 7.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = "$totalQuotes",
                    style = MaterialTheme.typography.titleMedium.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                    ),
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = totalLabel,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
        if (sourceCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.15f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("📚", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = sourceLabel,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.secondary
                    )
                }
            }
        }
    }
}


// Phase A (2026-08-05): MrComic* cards → LibraryMrComicCards.kt

@Composable
private fun LibrarySectionSwitcher(
    current: LibraryContentSection,
    onSectionChange: (LibraryContentSection) -> Unit
) {
    val strings = LocalStrings.current
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        LibrarySectionChip(
            text = strings.navLibrary,
            selected = current == LibraryContentSection.FILES,
            onClick = { onSectionChange(LibraryContentSection.FILES) }
        )
        LibrarySectionChip(
            text = strings.libraryBookmarks,
            selected = current == LibraryContentSection.BOOKMARKS,
            onClick = { onSectionChange(LibraryContentSection.BOOKMARKS) }
        )
        LibrarySectionChip(
            text = strings.libraryQuotes,
            selected = current == LibraryContentSection.QUOTES,
            onClick = { onSectionChange(LibraryContentSection.QUOTES) }
        )
        LibrarySectionChip(
            text = strings.libraryAchievements,
            selected = current == LibraryContentSection.ACHIEVEMENTS,
            onClick = { onSectionChange(LibraryContentSection.ACHIEVEMENTS) }
        )
    }
}

@Composable
private fun LibrarySectionChip(
    text: String,
    selected: Boolean,
    onClick: () -> Unit,
    enabled: Boolean = true
) {
    val colorScheme = MaterialTheme.colorScheme
    Surface(
        modifier = Modifier.clickable(enabled = enabled, onClick = onClick),
        shape = RootChromePillShape,
        color = if (enabled) {
            rootChromePillContainerColor(colorScheme, selected)
        } else {
            colorScheme.surfaceVariant.copy(alpha = 0.34f)
        },
        border = if (enabled) rootChromePillBorder(colorScheme, selected) else null
    ) {
        Text(
            text = text,
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 9.dp),
            style = MaterialTheme.typography.labelLarge,
            color = if (enabled) {
                rootChromePillContentColor(colorScheme, selected)
            } else {
                colorScheme.onSurfaceVariant.copy(alpha = 0.58f)
            },
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
private fun LibraryAudiobookStatsBar(
    audiobookCount: Int,
    chapterCount: Int,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        FolderMetaChip(
            text = "$audiobookCount аудиокниг",
            accent = MaterialTheme.colorScheme.primary,
            strong = true
        )
        FolderMetaChip(
            text = "$chapterCount глав",
            accent = MaterialTheme.colorScheme.secondary,
            strong = false
        )
    }
}

// Library strip logic extracted to LibraryStripLogic.kt
@Composable
private fun LibraryDisplayStripSection(
    section: LibraryStripSectionData,
    uiState: LibraryUiState,
    onComicClick: (Comic) -> Unit,
    onComicLongClick: (Comic) -> Unit,
    onFolderClick: (LibraryFolderItem) -> Unit,
    onFolderLongClick: (LibraryFolderItem) -> Unit,
    onAudiobookClick: (Audiobook) -> Unit,
    onAudiobookLongClick: (Audiobook) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(top = 8.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            if (section.audiobooks.isNotEmpty()) {
                Icon(
                    Icons.Default.Headphones,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
            }
            Text(
                text = section.title,
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
        LazyRow(
            contentPadding = PaddingValues(horizontal = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            if (section.folders.isNotEmpty()) {
                items(section.folders, key = { it.path }) { folder ->
                    Box(modifier = Modifier.width(uiState.tileSizeDp.dp)) {
                        FolderCard(
                            folder = folder,
                            isGrid = true,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            coverScale = uiState.coverScale,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            cardShadow = uiState.cardShadow,
                            onClick = { onFolderClick(folder) },
                            onLongClick = { onFolderLongClick(folder) }
                        )
                    }
                }
            } else if (section.audiobooks.isNotEmpty()) {
                items(section.audiobooks, key = { it.id }) { audiobook ->
                    LibraryGridCell(isGrid = true, tileSizeDp = uiState.tileSizeDp) {
                        AudiobookGridItem(
                            audiobook = audiobook,
                            isGrid = true,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            cardShadow = uiState.cardShadow,
                            titleScale = uiState.titleScale,
                            titleLines = uiState.titleLines,
                            cardStroke = uiState.cardStroke,
                            cardCornerRadius = uiState.cardCornerRadius,
                            titlePanelOpacity = uiState.titlePanelOpacity,
                            showCoverTitles = uiState.showCoverTitlesOnGrid,
                            onClick = { onAudiobookClick(audiobook) },
                            onLongClick = { onAudiobookLongClick(audiobook) }
                        )
                    }
                }
            } else {
                items(section.comics, key = { it.id }) { comic ->
                    Box(modifier = Modifier.width(uiState.tileSizeDp.dp)) {
                        ComicGridItem(
                            comic = comic,
                            isGrid = true,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            coverScaleMode = uiState.coverScale,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            graphicCoverStyle = uiState.graphicCoverStyle,
                            cardShadow = uiState.cardShadow,
                            titleScale = uiState.titleScale,
                            titleLines = uiState.titleLines,
                            cardStroke = uiState.cardStroke,
                            cardCornerRadius = uiState.cardCornerRadius,
                            titlePanelOpacity = uiState.titlePanelOpacity,
                            showProgressIndicators = uiState.showProgressIndicators,
                            showCoverTitles = uiState.showCoverTitlesOnGrid,
                            onClick = { onComicClick(comic) },
                            onLongClick = { onComicLongClick(comic) }
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun LibraryStatusScopeRow(
    current: LibraryStatusFilter,
    totalFiles: Int,
    readingFiles: Int,
    completedFiles: Int,
    bookmarkedFiles: Int,
    onStatusChange: (LibraryStatusFilter) -> Unit
) {
    val strings = LocalStrings.current

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        LibrarySectionChip(
            text = strings.libraryFileCountLabel(totalFiles),
            selected = current == LibraryStatusFilter.ALL,
            onClick = { onStatusChange(LibraryStatusFilter.ALL) }
        )
        LibrarySectionChip(
            text = "${strings.libraryStatusReading} ($readingFiles)",
            selected = current == LibraryStatusFilter.IN_PROGRESS,
            onClick = { onStatusChange(LibraryStatusFilter.IN_PROGRESS) },
            enabled = readingFiles > 0 || current == LibraryStatusFilter.IN_PROGRESS
        )
        LibrarySectionChip(
            text = "${strings.libraryStatusCompleted} ($completedFiles)",
            selected = current == LibraryStatusFilter.COMPLETED,
            onClick = { onStatusChange(LibraryStatusFilter.COMPLETED) },
            enabled = completedFiles > 0 || current == LibraryStatusFilter.COMPLETED
        )
        LibrarySectionChip(
            text = "${strings.libraryStatusBookmarked} ($bookmarkedFiles)",
            selected = current == LibraryStatusFilter.BOOKMARKED,
            onClick = { onStatusChange(LibraryStatusFilter.BOOKMARKED) },
            enabled = bookmarkedFiles > 0 || current == LibraryStatusFilter.BOOKMARKED
        )
    }
}

@Composable
private fun LibrarySectionHeader(
    title: String,
    icon: ImageVector? = null
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        icon?.let {
            Icon(
                imageVector = it,
                contentDescription = null,
                modifier = Modifier.size(20.dp),
                tint = MaterialTheme.colorScheme.primary
            )
        }
        Text(
            text = title,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.primary
        )
    }
}

@Composable
private fun AudiobookStripSection(
    title: String,
    audiobooks: List<Audiobook>,
    tileSizeDp: Int,
    thumbnailMode: String,
    cardStyle: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showCoverTitles: Boolean,
    onClick: (Audiobook) -> Unit,
    onLongClick: (Audiobook) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(top = 8.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Icon(
                Icons.Default.Headphones,
                contentDescription = null,
                modifier = Modifier.size(18.dp),
                tint = MaterialTheme.colorScheme.primary
            )
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
        LazyRow(
            contentPadding = PaddingValues(horizontal = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            items(audiobooks, key = { it.id }) { audiobook ->
                LibraryGridCell(isGrid = true, tileSizeDp = tileSizeDp) {
                    AudiobookGridItem(
                        audiobook = audiobook,
                        isGrid = true,
                        cardStyle = cardStyle,
                        tileSizeDp = tileSizeDp,
                        thumbnailMode = thumbnailMode,
                        shelfStyle = shelfStyle,
                        shelfDepth = shelfDepth,
                        cardShadow = cardShadow,
                        titleScale = titleScale,
                        titleLines = titleLines,
                        cardStroke = cardStroke,
                        cardCornerRadius = cardCornerRadius,
                        titlePanelOpacity = titlePanelOpacity,
                        showCoverTitles = showCoverTitles,
                        onClick = { onClick(audiobook) },
                        onLongClick = { onLongClick(audiobook) }
                    )
                }
            }
        }
    }
}

// Mr.Comic hub/calendar/quick-action strings extracted to MrComicHubStrings.kt

@Composable
private fun LibraryFileSectionDivider(section: LibraryFileSection) {
    val strings = LocalStrings.current
    val label = when (section) {
        LibraryFileSection.GRAPHIC -> strings.libraryGraphicSectionLabel()
        LibraryFileSection.BOOKS -> strings.libraryBooksSectionLabel()
    }
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 4.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        HorizontalDivider(
            modifier = Modifier.weight(1f),
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.65f)
        )
        Text(
            text = label,
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.primary
        )
        HorizontalDivider(
            modifier = Modifier.weight(1f),
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.65f)
        )
    }
}

@OptIn(ExperimentalFoundationApi::class, ExperimentalLayoutApi::class)
@Composable
private fun QuoteCard(
    quote: SavedQuote,
    sourceAvailable: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    onUnavailableSourceClick: () -> Unit
) {
    val strings = LocalStrings.current
    val onOpenQuote = if (sourceAvailable) onClick else onUnavailableSourceClick
    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp)
            .combinedClickable(
                onClick = onOpenQuote,
                onLongClick = onLongClick
            ),
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f),
        cornerRadius = 12.dp,
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = "“${quote.text}”",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            quote.translatedText?.takeIf { it.isNotBlank() && it != quote.text }?.let { translated ->
                Text(
                    text = translated,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicFilterChip(
                    selected = false,
                    onClick = onOpenQuote,
                    label = { Text("${quote.comicTitle} · ${strings.libraryQuotePageLabel(quote.page)}") }
                )
                MrComicFilterChip(
                    selected = false,
                    onClick = {},
                    enabled = false,
                    label = { Text(formatQuoteDate(quote.createdAt, strings.languageCode)) }
                )
                if (!sourceAvailable) {
                    MrComicFilterChip(
                        selected = false,
                        onClick = onUnavailableSourceClick,
                        label = { Text(strings.libraryQuoteSourceMissingLabel()) }
                    )
                }
            }
        }
    }
}

@Composable
private fun EmptyQuotesPlaceholder(
    modifier: Modifier = Modifier,
    showMascot: Boolean = true
) {
    val strings = LocalStrings.current
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
            size = 32.dp
        )
        Text(
            text = strings.libraryQuotes,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = strings.libraryQuotesEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable
private fun EmptyBookmarksPlaceholder(
    modifier: Modifier = Modifier,
    showMascot: Boolean = true
) {
    val strings = LocalStrings.current
    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        LibraryPlaceholderLeadIcon(
            showMascot = showMascot,
            neutralIcon = Icons.Default.BookmarkBorder,
            size = 32.dp
        )
        Text(
            text = strings.libraryBookmarks,
            style = MaterialTheme.typography.titleLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        Text(
            text = strings.libraryBookmarksEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = TextAlign.Center
        )
    }
}

@Composable
internal fun LibraryPlaceholderLeadIcon(
    showMascot: Boolean,
    neutralIcon: androidx.compose.ui.graphics.vector.ImageVector,
    size: androidx.compose.ui.unit.Dp
) {
    MrComicMiniAvatar(
        showMascot = showMascot,
        modifier = Modifier.size(size),
        compact = true,
        neutralIcon = neutralIcon,
        neutralTint = MaterialTheme.colorScheme.primary
    )
}

// ─────────────────────────────────────────────────────────────────────────────
// Строки для достижений берём из AppStrings (с фолбэком на русский)
// ─────────────────────────────────────────────────────────────────────────────

// ── Audiobook grid item ───────────────────────────────────────────────────────

@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun AudiobookGridItem(
    audiobook: Audiobook,
    isGrid: Boolean,
    cardStyle: String,
    tileSizeDp: Int,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showCoverTitles: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val coverRatio = libraryGridCoverRatio(
        thumbnailMode = thumbnailMode,
        cardStyle = cardStyle
    )
    val listBaseHeight = (tileSizeDp * 0.82f).coerceIn(92f, 176f).dp
    val styleFactor = when (cardStyle) {
        "COMPACT" -> 0.92f
        "SHOWCASE" -> 1.12f
        else -> 1.0f
    }
    val rectHeight = (listBaseHeight.value * styleFactor).coerceIn(52f, 132f).dp
    val squareSize = (rectHeight.value * 0.82f).coerceIn(48f, 112f).dp
    val thumbSize = if (thumbnailMode == "SQUARE") {
        squareSize to squareSize
    } else {
        (rectHeight * 0.7f) to rectHeight
    }
    val containerColor = if (isGrid) {
        lerp(
            MaterialTheme.colorScheme.surfaceContainerLow,
            MaterialTheme.colorScheme.secondaryContainer,
            0.2f
        ).copy(alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.74f))
    } else {
        MaterialTheme.colorScheme.surface.copy(alpha = 0.94f)
    }
    val cardBorder = androidx.compose.foundation.BorderStroke(
        width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.1f + cardStroke.coerceIn(0f, 1f) * 0.18f)
    )
    val metaText = buildString {
        append("${audiobook.chapters.size} гл.")
        append(if (audiobook.sourceIsFolder) " • папка" else " • файл")
    }

    if (!isGrid) {
        MrComicCardSurface(
            modifier = modifier
                .height(rectHeight)
                .fillMaxWidth()
                .combinedClickable(onClick = onClick, onLongClick = onLongClick),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 12.dp, vertical = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(thumbSize.first, thumbSize.second)
                        .clip(RoundedCornerShape((radiusBase * 0.52f).coerceAtLeast(4.dp)))
                        .background(MaterialTheme.colorScheme.surfaceVariant),
                    contentAlignment = Alignment.Center
                ) {
                    if (audiobook.coverUri != null) {
                        AsyncImage(
                            model = audiobook.coverUri,
                            contentDescription = audiobook.title,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    } else {
                        Icon(
                            Icons.Default.Headphones,
                            contentDescription = null,
                            // Scale icon proportionally to the thumb container (~45% of shorter side).
                            modifier = Modifier.size(
                                minOf(thumbSize.first.value, thumbSize.second.value)
                                    .times(0.45f).coerceIn(20f, 40f).dp
                            ),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.56f)
                        )
                    }
                }
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text(
                        text = audiobook.title,
                        style = MaterialTheme.typography.titleSmall.copy(
                            fontSize = (14.sp * titleScale.coerceIn(0.85f, 1.3f))
                        ),
                        maxLines = titleLines.coerceIn(1, 3),
                        overflow = TextOverflow.Ellipsis,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.94f)
                    )
                    Text(
                        text = metaText,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                Surface(
                    shape = CircleShape,
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                ) {
                    Icon(
                        Icons.Default.PlayArrow,
                        contentDescription = "Воспроизвести",
                        modifier = Modifier.padding(8.dp).size(20.dp),
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    } else {
        MrComicCardSurface(
            modifier = modifier
                .fillMaxWidth()
                .combinedClickable(onClick = onClick, onLongClick = onLongClick),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio)
                    .background(MaterialTheme.colorScheme.surfaceVariant),
                contentAlignment = Alignment.Center
            ) {
                if (audiobook.coverUri != null) {
                    AsyncImage(
                        model = audiobook.coverUri,
                        contentDescription = audiobook.title,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.fillMaxSize()
                    )
                } else {
                    Icon(
                        Icons.Default.Headphones,
                        contentDescription = null,
                        // Scale icon relative to the cover Box so it matches other grid items.
                        modifier = Modifier.fillMaxSize(0.38f),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.4f)
                    )
                }
                if (showCoverTitles) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(start = 6.dp, end = 10.dp, bottom = 10.dp)
                            .widthIn(max = 160.dp),
                        shape = RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(8.dp)),
                        color = MaterialTheme.colorScheme.surfaceContainerHighest.copy(
                            alpha = (0.9f + titlePanelOpacity.coerceIn(0.18f, 0.78f) * 0.06f)
                                .coerceIn(0.92f, 0.98f)
                        ),
                        border = androidx.compose.foundation.BorderStroke(
                            width = 0.6.dp,
                            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.28f)
                        )
                    ) {
                        Text(
                            text = audiobook.title,
                            style = MaterialTheme.typography.labelMedium.copy(
                                fontSize = (12.sp * titleScale.coerceIn(0.85f, 1.3f))
                            ),
                            maxLines = titleLines.coerceIn(1, 3),
                            overflow = TextOverflow.Ellipsis,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.96f),
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp)
                        )
                    }
                }
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomEnd)
                        .padding(8.dp)
                        .size(32.dp)
                        .background(
                            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.92f),
                            shape = CircleShape
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        Icons.Default.PlayArrow,
                        contentDescription = "Воспроизвести",
                        modifier = Modifier.size(18.dp),
                        tint = MaterialTheme.colorScheme.onPrimary
                    )
                }
            }
        }
    }
}

@Composable
private fun rememberAchievementStrings(strings: AppStrings): AchievementStrings {
    return remember(strings.navLibrary) {
        AchievementStrings(
            achFirstBook = strings.achFirstBook,
            achFirstBookDesc = strings.achFirstBookDesc,
            achReader = strings.achReader,
            achReaderDesc = strings.achReaderDesc,
            achCollector = strings.achCollector,
            achCollectorDesc = strings.achCollectorDesc,
            achFirstComplete = strings.achFirstComplete,
            achFirstCompleteDesc = strings.achFirstCompleteDesc,
            achMarathon = strings.achMarathon,
            achMarathonDesc = strings.achMarathonDesc,
            achAuthorFan = strings.achAuthorFan,
            achAuthorFanDesc = strings.achAuthorFanDesc,
            achGenreGourmet = strings.achGenreGourmet,
            achGenreGourmetDesc = strings.achGenreGourmetDesc,
            achBookmarker = strings.achBookmarker,
            achBookmarkerDesc = strings.achBookmarkerDesc,
            achSecretCat = strings.achSecretCat,
            achSecretCatDesc = strings.achSecretCatDesc,
            achSecretHint = strings.achSecretHint
        )
    }
}

