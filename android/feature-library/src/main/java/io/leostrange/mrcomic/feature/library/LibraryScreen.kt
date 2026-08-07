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
