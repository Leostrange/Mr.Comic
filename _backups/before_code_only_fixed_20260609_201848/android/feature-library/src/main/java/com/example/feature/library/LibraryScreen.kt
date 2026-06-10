package com.example.feature.library

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
import androidx.compose.foundation.layout.statusBarsPadding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.asPaddingValues
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
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
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
import com.example.core.ui.designsystem.MrComicButton
import com.example.core.ui.designsystem.MrComicButtonVariant
import com.example.core.ui.designsystem.MrComicCardSurface
import com.example.core.ui.designsystem.MrComicFilterChip
import com.example.core.ui.designsystem.MrComicProgressLine
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
import androidx.compose.ui.graphics.luminance
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
import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.domain.analytics.MascotProgressState
import com.example.core.domain.analytics.MascotStage
import com.example.core.domain.analytics.MrComicMascotContext
import com.example.core.domain.analytics.MrComicMascotMood
import com.example.core.domain.analytics.MrComicMascotState
import com.example.core.domain.analytics.mrComicMascotFocusText
import com.example.core.domain.analytics.mrComicMascotMoodHeadline
import com.example.core.domain.analytics.mrComicMascotMoodLabel
import com.example.core.domain.analytics.resolveMascotStagePreview
import com.example.core.domain.analytics.resolveMrComicMascotState
import com.example.core.model.Comic
import com.example.core.model.ComicLibraryShelf
import com.example.core.model.ComicReadingStatus
import com.example.core.model.SavedQuote
import com.example.core.model.SortOrder
import com.example.core.model.Audiobook
import com.example.core.model.isReadCompleted
import com.example.core.model.isReadingInProgress
import com.example.core.model.libraryShelfCategory
import com.example.core.model.readingStatus
import com.example.core.ui.library.LibraryBackdropLayer
import com.example.core.ui.library.RootChromePillShape
import com.example.core.ui.library.RootChromeTone
import com.example.core.ui.library.LibraryShelfBar
import com.example.core.ui.library.libraryCardElevation
import com.example.core.ui.library.rootChromePanelColor
import com.example.core.ui.library.rootChromePillBorder
import com.example.core.ui.library.rootChromePillContainerColor
import com.example.core.ui.library.rootChromePillContentColor
import com.example.core.ui.locale.AppStrings
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.locale.libraryBooksSectionLabel
import com.example.core.ui.locale.libraryFileCountLabel
import com.example.core.ui.locale.libraryFolderCountLabel
import com.example.core.ui.locale.libraryGraphicSectionLabel
import com.example.core.ui.locale.libraryQuoteCountLabel
import com.example.core.ui.locale.libraryQuotePageLabel
import com.example.core.ui.locale.libraryQuoteSourceCountLabel
import com.example.core.ui.locale.libraryQuoteSourceMissingLabel
import com.example.core.ui.locale.librarySetCountLabel
import com.example.core.ui.locale.libraryVolumeCountLabel
import com.example.core.ui.mascot.MrComicMiniAvatar
import com.example.core.ui.mascot.MrComicStagePreviewLead
import com.example.feature.library.components.AchievementId
import com.example.feature.library.components.AchievementQuestFeedbackTone
import com.example.feature.library.components.AchievementQuestTransition
import com.example.feature.library.components.AchievementStrings
import com.example.feature.library.components.ComicCoverTreatment
import com.example.feature.library.components.ComicGridItem
import com.example.feature.library.components.libraryGridCoverRatio
import com.example.feature.library.components.CoverArt
import com.example.feature.library.components.FolderBackgroundStack
import com.example.feature.library.components.FolderCoverTreatment
import com.example.feature.library.components.FormatBadge
import com.example.feature.library.components.LibraryAchievement
import com.example.feature.library.components.LibraryAchievementsRow
import com.example.feature.library.components.LibraryTopBar
import com.example.feature.library.components.computeAchievements
import com.example.feature.library.components.formatLabel
import com.example.feature.library.components.isGraphicVolumeFormat
import com.example.feature.library.components.nextUnlockAchievement
import com.example.feature.library.components.questTransitionFeedback
import com.example.feature.library.components.rememberedNextUnlockAchievement
import java.io.File
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale
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
                                        onFolderClick = { viewModel.openFolderSheet(it.path) },
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
                                        onFolderClick = { viewModel.openFolderSheet(it.path) },
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
                                                    onClick = { viewModel.openFolderSheet(item.path) },
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
                                                onClick = { viewModel.openFolderSheet(item.path) },
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

private fun folderDescription(folder: LibraryFolderItem, strings: AppStrings): String {
    val filesText = strings.libraryFileCountLabel(folder.fileCount)
    val foldersText = when {
        folder.subfolderCount <= 0 -> ""
        else -> " • ${strings.libraryFolderCountLabel(folder.subfolderCount)}"
    }
    return filesText + foldersText
}

private fun folderCollectionLabel(strings: AppStrings): String = strings.libraryCollectionLabel

private fun folderVolumesLabel(fileCount: Int, strings: AppStrings): String {
    return strings.libraryVolumeCountLabel(fileCount)
}

private fun folderSubcollectionsLabel(subfolderCount: Int, strings: AppStrings): String? {
    if (subfolderCount <= 0) return null
    return strings.librarySetCountLabel(subfolderCount)
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

internal data class LibraryStatusEmptyStateText(
    val title: String,
    val message: String,
    val action: String
)

internal enum class LibraryNavigateUpAction {
    DISMISS_PROGRESS,
    SHOW_FILES_SECTION,
    SHOW_ALL_FILES,
    CLEAR_FORMAT_FILTER,
    EXIT_FOLDER,
    NONE
}

internal fun resolveLibraryNavigateUpAction(
    showMrComicProgress: Boolean,
    contentSection: LibraryContentSection,
    groupByMode: GroupByMode,
    currentFolderPath: String?,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter
): LibraryNavigateUpAction = when {
    showMrComicProgress -> LibraryNavigateUpAction.DISMISS_PROGRESS
    contentSection != LibraryContentSection.FILES -> LibraryNavigateUpAction.SHOW_FILES_SECTION
    statusFilter != LibraryStatusFilter.ALL -> LibraryNavigateUpAction.SHOW_ALL_FILES
    formatFilter != LibraryFormatFilter.ALL -> LibraryNavigateUpAction.CLEAR_FORMAT_FILTER
    groupByMode == GroupByMode.FOLDER && currentFolderPath != null -> LibraryNavigateUpAction.EXIT_FOLDER
    else -> LibraryNavigateUpAction.NONE
}

internal fun libraryStatusEmptyStateText(
    statusFilter: LibraryStatusFilter,
    language: String
): LibraryStatusEmptyStateText {
    val action = when (language) {
        "en" -> "Show all"
        "ja" -> "すべて表示"
        "zh" -> "显示全部"
        "ko" -> "전체 보기"
        else -> "Показать все"
    }
    return when (statusFilter) {
        LibraryStatusFilter.COMPLETED -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "Nothing completed yet",
                message = "Finished books will appear here.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "完読した本はまだありません",
                message = "最後まで読んだ本がここに表示されます。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "还没有读完的书",
                message = "读完的书会显示在这里。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "아직 다 읽은 책이 없습니다",
                message = "완독한 책이 여기에 표시됩니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Пока ничего не прочитано",
                message = "Когда книга будет закрыта до конца, она появится здесь.",
                action = action
            )
        }
        LibraryStatusFilter.IN_PROGRESS -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "Nothing in progress",
                message = "Books you start reading will appear here.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "読書中の本はありません",
                message = "読み始めた本がここに表示されます。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "没有正在阅读的书",
                message = "开始阅读后，书会显示在这里。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "읽는 중인 책이 없습니다",
                message = "읽기 시작한 책이 여기에 표시됩니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Сейчас ничего не читается",
                message = "Начните книгу, и она появится в этом разделе.",
                action = action
            )
        }
        LibraryStatusFilter.BOOKMARKED -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "No favorites yet",
                message = "Favorite books will appear here.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "お気に入りはまだありません",
                message = "お気に入りにした本がここに表示されます。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "还没有收藏",
                message = "收藏的书会显示在这里。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "아직 즐겨찾기가 없습니다",
                message = "즐겨찾기한 책이 여기에 표시됩니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Пока нет избранного",
                message = "Добавьте книгу в избранное, чтобы быстро вернуться к ней.",
                action = action
            )
        }
        LibraryStatusFilter.ALL -> when (language) {
            "en" -> LibraryStatusEmptyStateText(
                title = "Nothing here yet",
                message = "Clear filters to return to the full library.",
                action = action
            )
            "ja" -> LibraryStatusEmptyStateText(
                title = "ここにはまだありません",
                message = "フィルターを解除してライブラリ全体に戻ります。",
                action = action
            )
            "zh" -> LibraryStatusEmptyStateText(
                title = "这里还没有内容",
                message = "清除筛选以返回完整书库。",
                action = action
            )
            "ko" -> LibraryStatusEmptyStateText(
                title = "아직 항목이 없습니다",
                message = "필터를 해제해 전체 라이브러리로 돌아갑니다.",
                action = action
            )
            else -> LibraryStatusEmptyStateText(
                title = "Здесь пока пусто",
                message = "Сбросьте фильтр, чтобы увидеть всю библиотеку.",
                action = action
            )
        }
    }
}

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

private fun formatFileSize(bytes: Long): String = when {
    bytes < 1_024 -> "$bytes B"
    bytes < 1_048_576 -> "%.1f KB".format(bytes / 1_024.0)
    bytes < 1_073_741_824L -> "%.1f MB".format(bytes / 1_048_576.0)
    else -> "%.2f GB".format(bytes / 1_073_741_824.0)
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
                color = Color(0xFF4CAF50).copy(alpha = 0.15f)
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
                        color = Color(0xFF4CAF50)
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

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicHubCard(
    unlockedCount: Int,
    totalCount: Int,
    mascotState: MrComicMascotState,
    nextAchievement: LibraryAchievement?,
    questFeedback: AchievementQuestTransition?,
    dailyReadingGoalState: DailyReadingGoalState,
    mascotProgress: MascotProgressState,
    stagePreview: MascotStage?,
    totalTitles: Int,
    completedTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    authorCount: Int,
    genreCount: Int,
    secretUnlocked: Boolean,
    recentComic: Comic?,
    nextAchievementHintAction: MrComicDiscoveryAction?,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?,
    onOpenRecent: () -> Unit,
    onOpenFiles: () -> Unit,
    onOpenSeries: () -> Unit,
    onOpenCollection: (String) -> Unit,
    onOpenProgress: () -> Unit,
    onDismissStagePreview: () -> Unit,
    onDismissQuestFeedback: () -> Unit,
    showMascot: Boolean,
    appLanguage: String,
    searchActive: Boolean,
    modifier: Modifier = Modifier
) {
    val showQuestFeedback = mrComicShowQuestFeedback(
        searchActive = searchActive,
        hasQuestFeedback = questFeedback != null
    )
    val showSearchContextCard = mrComicShowSearchContextCard(
        searchActive = searchActive,
        hasStagePreview = stagePreview != null,
        hasQuestFeedback = showQuestFeedback
    )
    val useCompactStagePreview = mrComicUseCompactStagePreview(
        searchActive = searchActive,
        hasStagePreview = stagePreview != null,
        hasQuestFeedback = showQuestFeedback
    )
    val useCompactSupportCards = mrComicUseCompactSupportCards(
        searchActive = searchActive,
        hasStagePreview = stagePreview != null,
        hasQuestFeedback = showQuestFeedback
    )
    val nextAchievementPriorityReason = nextAchievement?.let { achievement ->
        mrComicQuestPriorityReason(
            achievement = achievement,
            hintAction = nextAchievementHintAction ?: MrComicDiscoveryAction.OPEN_FILES,
            goalState = dailyReadingGoalState,
            hasRecent = recentComic != null
        )
    }
    Surface(
        modifier = modifier.padding(horizontal = 16.dp),
        shape = RoundedCornerShape(24.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 18.dp, vertical = 16.dp),
            verticalArrangement = Arrangement.spacedBy(14.dp)
        ) {
            Row(
                horizontalArrangement = Arrangement.spacedBy(14.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                LibraryPlaceholderLeadIcon(
                    showMascot = showMascot,
                    neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                    size = 34.dp
                )
                Column(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    Text(
                        text = "Mr.Comic",
                        style = MaterialTheme.typography.titleMedium
                    )
                    Text(
                        text = mrComicHubSubtitle(
                            language = appLanguage,
                            unlockedCount = unlockedCount,
                            totalCount = totalCount,
                            searchActive = searchActive
                        ),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    TextButton(
                        onClick = onOpenProgress,
                        contentPadding = PaddingValues(0.dp)
                    ) {
                        Text(mrComicProgressEntryCtaLabel(appLanguage))
                    }
                }
                Surface(
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.14f)
                ) {
                    Text(
                        text = "$unlockedCount / $totalCount",
                        style = MaterialTheme.typography.labelMedium,
                        color = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                    )
                }
            }
            stagePreview?.let { previewStage ->
                if (useCompactStagePreview) {
                    MrComicCompactStagePreviewCard(
                        stage = previewStage,
                        appLanguage = appLanguage,
                        showMascot = showMascot,
                        onDismiss = onDismissStagePreview
                    )
                } else {
                    MrComicStagePreviewCard(
                        stage = previewStage,
                        progress = mascotProgress,
                        appLanguage = appLanguage,
                        searchActive = searchActive,
                        showMascot = showMascot,
                        onDismiss = onDismissStagePreview
                    )
                }
            }
            if (showQuestFeedback) {
                questFeedback?.let { feedback ->
                MrComicQuestFeedbackCard(
                    feedback = feedback,
                    appLanguage = appLanguage,
                    priorityReason = nextAchievementPriorityReason,
                    goalState = dailyReadingGoalState,
                    searchActive = searchActive,
                    hintAction = nextAchievementHintAction,
                    collectionQuery = preferredCollectionQuery,
                    onOpenRecent = onOpenRecent,
                    onOpenFiles = onOpenFiles,
                    onOpenSeries = onOpenSeries,
                    onOpenCollection = onOpenCollection,
                    onDismiss = onDismissQuestFeedback
                )
            }
            }
            if (showSearchContextCard) {
                MrComicSearchContextCard(appLanguage = appLanguage)
            } else {
                MrComicPresenceCard(
                    appLanguage = appLanguage,
                    mascotState = mascotState,
                    nextAchievement = nextAchievement,
                    dailyReadingGoalState = dailyReadingGoalState,
                    mascotProgress = mascotProgress,
                    recentComic = recentComic,
                    nextAchievementHintAction = nextAchievementHintAction,
                    preferredSeriesName = preferredSeriesName,
                    preferredCollectionQuery = preferredCollectionQuery,
                    onOpenRecent = onOpenRecent,
                    onOpenFiles = onOpenFiles,
                    onOpenSeries = onOpenSeries,
                    onOpenCollection = onOpenCollection,
                    totalTitles = totalTitles,
                    completedTitles = completedTitles,
                    bookmarkedTitles = bookmarkedTitles,
                    quotesCount = quotesCount,
                    secretUnlocked = secretUnlocked,
                    compact = useCompactSupportCards
                )
            }
        }
    }
}

@Composable
private fun MrComicCompactStagePreviewCard(
    stage: MascotStage,
    appLanguage: String,
    showMascot: Boolean,
    onDismiss: () -> Unit
) {
    Surface(
        shape = RoundedCornerShape(16.dp),
        color = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.48f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 12.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            MrComicStagePreviewLead(
                showMascot = showMascot,
                modifier = Modifier.size(24.dp)
            )
            Column(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = mrComicStagePreviewTitle(appLanguage),
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = mrComicStagePreviewCompactText(appLanguage, stage),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            IconButton(onClick = onDismiss, modifier = Modifier.size(28.dp)) {
                Icon(
                    imageVector = Icons.Default.Close,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
private fun MrComicStagePreviewCard(
    stage: MascotStage,
    progress: MascotProgressState,
    appLanguage: String,
    searchActive: Boolean,
    showMascot: Boolean,
    onDismiss: () -> Unit
) {
    Surface(
        shape = RoundedCornerShape(18.dp),
        color = MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.68f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            MrComicStagePreviewLead(
                showMascot = showMascot,
                modifier = Modifier.size(28.dp)
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = mrComicStagePreviewTitle(appLanguage),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = mrComicStagePreviewText(appLanguage, stage, progress),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                if (searchActive) {
                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = MaterialTheme.colorScheme.primary.copy(alpha = 0.08f)
                    ) {
                        Text(
                            text = mrComicStagePreviewSearchText(appLanguage),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp)
                        )
                    }
                }
            }
            IconButton(onClick = onDismiss, modifier = Modifier.size(28.dp)) {
                Icon(
                    imageVector = Icons.Default.Close,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

internal fun mrComicUseCompactStagePreview(
    searchActive: Boolean,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean = searchActive && hasStagePreview && hasQuestFeedback

internal fun mrComicShowQuestFeedback(
    searchActive: Boolean,
    hasQuestFeedback: Boolean
): Boolean = hasQuestFeedback && !searchActive

internal fun mrComicShowReadingCalendarCard(
    searchActive: Boolean,
    goalState: DailyReadingGoalState,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean {
    if (searchActive || !goalState.enabled || hasStagePreview || hasQuestFeedback) return false
    return goalState.recentActivity.any { day ->
        day.pagesRead > 0 || day.goalCompleted || day.minutesRead > 0 || day.completedCheckpoints > 0
    } || goalState.pagesReadToday > 0 ||
        goalState.pagesReadThisWeek > 0 ||
        goalState.currentStreak > 0 ||
        goalState.isWeeklyPlanCompleted
}

@Composable
private fun MrComicQuestFeedbackCard(
    feedback: AchievementQuestTransition,
    appLanguage: String,
    priorityReason: MrComicQuestPriorityReason?,
    goalState: DailyReadingGoalState,
    searchActive: Boolean,
    hintAction: MrComicDiscoveryAction?,
    collectionQuery: String?,
    onOpenRecent: () -> Unit,
    onOpenFiles: () -> Unit,
    onOpenSeries: () -> Unit,
    onOpenCollection: (String) -> Unit,
    onDismiss: () -> Unit
) {
    val accentColor = mrComicQuestFeedbackAccentColor(feedback.tone)
    val feedbackAction = mrComicQuestFeedbackAction(
        searchActive = searchActive,
        feedback = feedback,
        hintAction = hintAction
    )
    Surface(
        shape = RoundedCornerShape(18.dp),
        color = mrComicQuestFeedbackContainerColor(feedback.tone)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            Icon(
                imageVector = mrComicQuestFeedbackIcon(feedback.tone),
                contentDescription = null,
                tint = accentColor,
                modifier = Modifier.size(20.dp)
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = mrComicQuestFeedbackTitle(appLanguage, feedback),
                    style = MaterialTheme.typography.labelLarge,
                    color = accentColor
                )
                Text(
                    text = mrComicQuestFeedbackToneLabel(appLanguage, feedback.tone),
                    style = MaterialTheme.typography.labelSmall,
                    color = accentColor.copy(alpha = 0.92f)
                )
                Text(
                    text = mrComicQuestFeedbackText(appLanguage, feedback),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                if (searchActive) {
                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = accentColor.copy(alpha = 0.08f)
                    ) {
                        Text(
                            text = mrComicQuestFeedbackSearchText(appLanguage),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp)
                        )
                    }
                } else if (priorityReason != null && feedback.nextAchievementId != null) {
                    Surface(
                        shape = RoundedCornerShape(12.dp),
                        color = accentColor.copy(alpha = 0.08f)
                    ) {
                        Text(
                            text = mrComicQuestFeedbackReasonText(
                                language = appLanguage,
                                tone = feedback.tone,
                                reason = priorityReason,
                                goalState = goalState
                            ),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp)
                        )
                    }
                }
                if (feedbackAction != null) {
                    FilledTonalButton(
                        onClick = {
                            when (feedbackAction) {
                                MrComicDiscoveryAction.OPEN_RECENT -> onOpenRecent()
                                MrComicDiscoveryAction.OPEN_FILES -> onOpenFiles()
                                MrComicDiscoveryAction.OPEN_SERIES -> onOpenSeries()
                                MrComicDiscoveryAction.OPEN_COLLECTION -> {
                                    collectionQuery?.let(onOpenCollection)
                                }
                            }
                        }
                    ) {
                        Text(
                            text = mrComicQuestFeedbackActionLabel(
                                language = appLanguage,
                                tone = feedback.tone,
                                action = feedbackAction
                            )
                        )
                    }
                }
            }
            IconButton(onClick = onDismiss, modifier = Modifier.size(28.dp)) {
                Icon(
                    imageVector = Icons.Default.Close,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

internal fun mrComicQuestFeedbackAction(
    searchActive: Boolean,
    feedback: AchievementQuestTransition,
    hintAction: MrComicDiscoveryAction?
): MrComicDiscoveryAction? {
    if (searchActive) return null
    if (feedback.nextAchievementId == null) return null
    if (hintAction == MrComicDiscoveryAction.OPEN_RECENT) return null
    return hintAction
}

@Composable
private fun MrComicSearchContextCard(
    appLanguage: String
) {
    Surface(
        shape = RoundedCornerShape(18.dp),
        color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.24f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = Icons.Default.Tune,
                contentDescription = null,
                tint = MaterialTheme.colorScheme.secondary
            )
            Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                Text(
                    text = mrComicSearchContextTitle(appLanguage),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.secondary
                )
                Text(
                    text = mrComicSearchContextText(appLanguage),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}
@Composable
private fun MrComicPresenceCard(
    appLanguage: String,
    mascotState: MrComicMascotState,
    nextAchievement: LibraryAchievement?,
    dailyReadingGoalState: DailyReadingGoalState,
    mascotProgress: MascotProgressState,
    recentComic: Comic?,
    nextAchievementHintAction: MrComicDiscoveryAction?,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?,
    onOpenRecent: () -> Unit,
    onOpenFiles: () -> Unit,
    onOpenSeries: () -> Unit,
    onOpenCollection: (String) -> Unit,
    totalTitles: Int,
    completedTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    secretUnlocked: Boolean,
    compact: Boolean
) {
    Surface(
        shape = RoundedCornerShape(18.dp),
        color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.32f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = mrComicPresenceTitle(appLanguage),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.secondary,
                    modifier = Modifier.weight(1f)
                )
                Surface(
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.12f)
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 5.dp),
                        horizontalArrangement = Arrangement.spacedBy(6.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Icon(
                            imageVector = mrComicMoodIcon(mascotState.mood),
                            contentDescription = null,
                            modifier = Modifier.size(14.dp),
                            tint = MaterialTheme.colorScheme.secondary
                        )
                        Text(
                            text = mrComicMascotMoodLabel(appLanguage, mascotState.mood),
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.secondary
                        )
                    }
                }
            }
            Text(
                text = mrComicMascotMoodHeadline(
                    language = appLanguage,
                    mood = mascotState.mood,
                    recentTitle = recentComic?.title
                ),
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.onSurface
            )
            Text(
                text = mrComicPresenceText(
                    language = appLanguage,
                    totalTitles = totalTitles,
                    completedTitles = completedTitles,
                    quotesCount = quotesCount,
                    secretUnlocked = secretUnlocked,
                    goalState = dailyReadingGoalState,
                    recentComic = recentComic
                ),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            Text(
                text = mrComicMascotFocusText(appLanguage, mascotState.mood),
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.secondary
            )
            if (!compact) {
                Surface(
                    shape = RoundedCornerShape(14.dp),
                    color = MaterialTheme.colorScheme.surface.copy(alpha = 0.72f)
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 12.dp, vertical = 10.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text(
                                text = mrComicSharedStageLabel(appLanguage, mascotProgress.stage),
                                style = MaterialTheme.typography.labelMedium,
                                color = MaterialTheme.colorScheme.secondary
                            )
                            Text(
                                text = "${mascotProgress.xp} XP",
                                style = MaterialTheme.typography.labelMedium,
                                color = MaterialTheme.colorScheme.secondary
                            )
                        }
                        MrComicProgressLine(
                            progress = { mascotProgress.stageProgress },
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(5.dp)
                                .clip(RoundedCornerShape(999.dp)),
                            color = MaterialTheme.colorScheme.secondary,
                            trackColor = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
                        )
                        Text(
                            text = mrComicSharedStageHint(appLanguage, mascotProgress),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
            nextAchievement?.let { achievement ->
                val hintAction = nextAchievementHintAction ?: mrComicDiscoveryHintAction(
                    achievement = achievement,
                    hasRecent = recentComic != null,
                    preferredSeriesName = preferredSeriesName,
                    preferredCollectionQuery = preferredCollectionQuery
                )
                val questType = mrComicQuestType(
                    achievement = achievement,
                    hintAction = hintAction
                )
                val priorityReason = mrComicQuestPriorityReason(
                    achievement = achievement,
                    hintAction = hintAction,
                    goalState = dailyReadingGoalState,
                    hasRecent = recentComic != null
                )
                Surface(
                    shape = RoundedCornerShape(14.dp),
                    color = MaterialTheme.colorScheme.surface.copy(alpha = 0.72f)
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 12.dp, vertical = 10.dp),
                        verticalArrangement = Arrangement.spacedBy(6.dp)
                    ) {
                        Text(
                            text = mrComicNextUnlockTitle(appLanguage),
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.secondary
                        )
                        Text(
                            text = mrComicNextUnlockText(appLanguage, achievement),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Surface(
                            shape = RoundedCornerShape(999.dp),
                            color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.12f)
                        ) {
                            Text(
                                text = mrComicQuestTypeLabel(appLanguage, questType),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.secondary,
                                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                            )
                        }
                        if (achievement.progressCurrent != null && achievement.progressTarget != null) {
                            MrComicProgressLine(
                                progress = { achievement.progressFraction },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(5.dp)
                                    .clip(RoundedCornerShape(999.dp)),
                                color = MaterialTheme.colorScheme.secondary,
                                trackColor = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
                            )
                        }
                        Surface(
                            shape = RoundedCornerShape(12.dp),
                            color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.08f)
                        ) {
                            Text(
                                text = mrComicQuestPriorityReasonText(
                                    language = appLanguage,
                                    reason = priorityReason,
                                    goalState = dailyReadingGoalState
                                ),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp)
                            )
                        }
                        MrComicQuestLine(
                            appLanguage = appLanguage,
                            achievement = achievement,
                            hasRecent = recentComic != null,
                            hintAction = hintAction,
                            questType = questType,
                            collectionQuery = preferredCollectionQuery
                        )
                        if (hintAction != MrComicDiscoveryAction.OPEN_RECENT) {
                            FilledTonalButton(
                                onClick = {
                                    when (hintAction) {
                                        MrComicDiscoveryAction.OPEN_FILES -> onOpenFiles()
                                        MrComicDiscoveryAction.OPEN_SERIES -> onOpenSeries()
                                        MrComicDiscoveryAction.OPEN_COLLECTION -> {
                                            preferredCollectionQuery?.let(onOpenCollection)
                                        }
                                        MrComicDiscoveryAction.OPEN_RECENT -> onOpenRecent()
                                    }
                                }
                            ) {
                                Text(mrComicDiscoveryActionLabel(appLanguage, hintAction))
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun MrComicQuestLine(
    appLanguage: String,
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    hintAction: MrComicDiscoveryAction,
    questType: MrComicQuestType,
    collectionQuery: String?
) {
    Surface(
        shape = RoundedCornerShape(12.dp),
        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.08f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 10.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = mrComicQuestLineTitle(appLanguage),
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.secondary
            )
            MrComicQuestStepRow(
                index = 1,
                text = mrComicDiscoveryHintText(
                    language = appLanguage,
                    achievement = achievement,
                    questType = questType,
                    collectionQuery = collectionQuery
                )
            )
            MrComicQuestStepRow(
                index = 2,
                text = mrComicQuestAnchorText(
                    language = appLanguage,
                    achievement = achievement,
                    hasRecent = hasRecent,
                    hintAction = hintAction,
                    collectionQuery = collectionQuery
                )
            )
        }
    }
}

@Composable
private fun MrComicQuestStepRow(
    index: Int,
    text: String
) {
    Row(
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.Top
    ) {
        Surface(
            shape = RoundedCornerShape(999.dp),
            color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
        ) {
            Text(
                text = index.toString(),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.secondary,
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
            )
        }
        Text(
            text = text,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            modifier = Modifier.weight(1f)
        )
    }
}

private fun mrComicMoodIcon(kind: MrComicMascotMood): ImageVector = when (kind) {
    MrComicMascotMood.STANDBY -> Icons.Default.RadioButtonUnchecked
    MrComicMascotMood.LOCKED_IN -> Icons.AutoMirrored.Filled.MenuBook
    MrComicMascotMood.RHYTHM_LOCKED -> Icons.Default.TaskAlt
    MrComicMascotMood.BETWEEN_ARCS -> Icons.Default.CheckCircle
    MrComicMascotMood.ARCHIVIST -> Icons.Default.Edit
    MrComicMascotMood.SHOWCASE -> Icons.Default.CheckCircle
    MrComicMascotMood.SETTLING_IN -> Icons.Default.BookmarkBorder
}

private fun mrComicNextUnlockTitle(language: String): String = when (language) {
    "en" -> "Next unlock"
    "ja" -> "次の解除"
    "zh" -> "下一个解锁"
    "ko" -> "다음 해제"
    else -> "Следующее открытие"
}

private fun mrComicNextUnlockText(language: String, achievement: LibraryAchievement): String {
    val progress = if (achievement.progressCurrent != null && achievement.progressTarget != null) {
        "${achievement.progressCurrent}/${achievement.progressTarget}"
    } else {
        ""
    }
    return when (language) {
        "en" -> "${achievement.title} · $progress"
        "ja" -> "${achievement.title} ・ $progress"
        "zh" -> "${achievement.title} · $progress"
        "ko" -> "${achievement.title} · $progress"
        else -> "${achievement.title} · $progress"
    }
}

internal enum class MrComicQuestType {
    START_TITLE,
    FINISH_TITLE,
    FINISH_SERIES,
    READ_COLLECTION,
    PIN_ROUTE,
    FIND_SECRET
}

internal enum class MrComicDiscoveryAction {
    OPEN_RECENT,
    OPEN_FILES,
    OPEN_SERIES,
    OPEN_COLLECTION
}

internal enum class MrComicQuestPriorityReason {
    LIVE_ROUTE,
    DAILY_PUSH,
    WEEKLY_PUSH,
    STREAK_SUPPORT,
    WEEKLY_RELAXED,
    SERIES_FOCUS,
    COLLECTION_PULL,
    SHELF_BUILD,
    ACHIEVEMENT_FOCUS
}

internal enum class MrComicQuickAction {
    FILES,
    BOOKMARKS,
    QUOTES
}

internal enum class MrComicNextStepRoute {
    RECENT,
    FILES,
    BOOKMARKS,
    QUOTES
}

internal fun resolveMrComicStableDiscoveryAction(
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?,
    rememberedAchievementId: String?,
    rememberedActionName: String?
): MrComicDiscoveryAction {
    val proposed = mrComicDiscoveryHintAction(
        achievement = achievement,
        hasRecent = hasRecent,
        preferredSeriesName = preferredSeriesName,
        preferredCollectionQuery = preferredCollectionQuery
    )
    val rememberedAction = rememberedActionName
        ?.trim()
        ?.takeIf { it.isNotEmpty() && rememberedAchievementId == achievement.id.name }
        ?.let { runCatching { MrComicDiscoveryAction.valueOf(it) }.getOrNull() }
        ?: return proposed

    if (rememberedAction == proposed) return proposed
    if (!mrComicDiscoveryActionStillValid(
            action = rememberedAction,
            achievement = achievement,
            hasRecent = hasRecent,
            preferredSeriesName = preferredSeriesName,
            preferredCollectionQuery = preferredCollectionQuery
        )
    ) {
        return proposed
    }
    if (rememberedAction == MrComicDiscoveryAction.OPEN_FILES && proposed != MrComicDiscoveryAction.OPEN_FILES) {
        return proposed
    }
    return rememberedAction
}

internal fun mrComicDiscoveryActionStillValid(
    action: MrComicDiscoveryAction,
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?
): Boolean = when (achievement.id) {
    AchievementId.MARATHON -> when (action) {
        MrComicDiscoveryAction.OPEN_SERIES -> !preferredSeriesName.isNullOrBlank()
        MrComicDiscoveryAction.OPEN_RECENT -> hasRecent
        MrComicDiscoveryAction.OPEN_FILES -> true
        MrComicDiscoveryAction.OPEN_COLLECTION -> false
    }
    AchievementId.FIRST_COMPLETE,
    AchievementId.BOOKMARKER -> when (action) {
        MrComicDiscoveryAction.OPEN_RECENT -> hasRecent
        MrComicDiscoveryAction.OPEN_FILES -> true
        else -> false
    }
    AchievementId.AUTHOR_FAN,
    AchievementId.GENRE_GOURMET -> when (action) {
        MrComicDiscoveryAction.OPEN_COLLECTION -> !preferredCollectionQuery.isNullOrBlank()
        MrComicDiscoveryAction.OPEN_FILES -> true
        else -> false
    }
    else -> action == MrComicDiscoveryAction.OPEN_FILES
}

internal fun mrComicDiscoveryHintAction(
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    preferredSeriesName: String?,
    preferredCollectionQuery: String?
): MrComicDiscoveryAction = when (achievement.id) {
    AchievementId.MARATHON -> when {
        !preferredSeriesName.isNullOrBlank() -> MrComicDiscoveryAction.OPEN_SERIES
        hasRecent -> MrComicDiscoveryAction.OPEN_RECENT
        else -> MrComicDiscoveryAction.OPEN_FILES
    }
    AchievementId.FIRST_COMPLETE,
    AchievementId.BOOKMARKER -> if (hasRecent) MrComicDiscoveryAction.OPEN_RECENT else MrComicDiscoveryAction.OPEN_FILES
    AchievementId.AUTHOR_FAN,
    AchievementId.GENRE_GOURMET -> if (!preferredCollectionQuery.isNullOrBlank()) {
        MrComicDiscoveryAction.OPEN_COLLECTION
    } else {
        MrComicDiscoveryAction.OPEN_FILES
    }
    else -> MrComicDiscoveryAction.OPEN_FILES
}

internal fun mrComicQuestType(
    achievement: LibraryAchievement,
    hintAction: MrComicDiscoveryAction
): MrComicQuestType = when (achievement.id) {
    AchievementId.FIRST_BOOK,
    AchievementId.READER,
    AchievementId.COLLECTOR -> MrComicQuestType.START_TITLE
    AchievementId.FIRST_COMPLETE -> MrComicQuestType.FINISH_TITLE
    AchievementId.MARATHON -> if (hintAction == MrComicDiscoveryAction.OPEN_SERIES) {
        MrComicQuestType.FINISH_SERIES
    } else {
        MrComicQuestType.FINISH_TITLE
    }
    AchievementId.AUTHOR_FAN,
    AchievementId.GENRE_GOURMET -> MrComicQuestType.READ_COLLECTION
    AchievementId.BOOKMARKER -> MrComicQuestType.PIN_ROUTE
    AchievementId.SECRET_CAT -> MrComicQuestType.FIND_SECRET
}

internal fun mrComicQuestPriorityReason(
    achievement: LibraryAchievement,
    hintAction: MrComicDiscoveryAction,
    goalState: DailyReadingGoalState,
    hasRecent: Boolean
): MrComicQuestPriorityReason = when {
    goalState.enabled && goalState.isWeeklyPlanCompleted -> MrComicQuestPriorityReason.WEEKLY_RELAXED
    hintAction == MrComicDiscoveryAction.OPEN_SERIES -> MrComicQuestPriorityReason.SERIES_FOCUS
    hintAction == MrComicDiscoveryAction.OPEN_COLLECTION -> MrComicQuestPriorityReason.COLLECTION_PULL
    goalState.enabled && goalState.streakEnabled && goalState.currentStreak > 0 && hintAction == MrComicDiscoveryAction.OPEN_RECENT ->
        MrComicQuestPriorityReason.STREAK_SUPPORT
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted ->
        MrComicQuestPriorityReason.WEEKLY_PUSH
    goalState.enabled && !goalState.isCompleted && hintAction == MrComicDiscoveryAction.OPEN_RECENT && hasRecent ->
        MrComicQuestPriorityReason.LIVE_ROUTE
    goalState.enabled && !goalState.isCompleted ->
        MrComicQuestPriorityReason.DAILY_PUSH
    achievement.id in setOf(AchievementId.FIRST_BOOK, AchievementId.READER, AchievementId.COLLECTOR) ->
        MrComicQuestPriorityReason.SHELF_BUILD
    else -> MrComicQuestPriorityReason.ACHIEVEMENT_FOCUS
}

private fun mrComicDiscoveryHintText(
    language: String,
    achievement: LibraryAchievement,
    questType: MrComicQuestType,
    collectionQuery: String?
): String {
    val remaining = achievement.remainingSteps ?: 0
    return when (achievement.id) {
        AchievementId.FIRST_BOOK,
        AchievementId.READER,
        AchievementId.COLLECTOR -> when (language) {
            "en" -> "Best route now: bring ${remaining} more title(s) onto the shelf from Files."
            "ja" -> "いまの近道: Files からあと ${remaining} 作品を棚に追加する。"
            "zh" -> "当前最短路线：从 Files 再加入 ${remaining} 个作品。"
            "ko" -> "지금 가장 빠른 길: Files 에서 작품 ${remaining}개를 더 선반에 올리기."
            else -> "Лучший ход сейчас: добавить через Files ещё ${remaining} тайтл(ов) на полку."
        }
        AchievementId.FIRST_COMPLETE,
        AchievementId.MARATHON -> when {
            questType == MrComicQuestType.FINISH_SERIES -> when (language) {
                "en" -> "Best route now: close ${remaining} more title(s) inside the active series lane."
                "ja" -> "いまの近道: 動いているシリーズの流れの中で、あと ${remaining} 作品を読み切る。"
                "zh" -> "当前最短路线：沿着活跃系列这条线，再读完 ${remaining} 个作品。"
                "ko" -> "지금 가장 빠른 길: 살아 있는 시리즈 흐름 안에서 작품 ${remaining}개를 더 끝내기."
                else -> "Лучший ход сейчас: закрыть ещё ${remaining} тайтл(ов) внутри активной серии."
            }
            else -> when (language) {
            "en" -> "Best route now: finish ${remaining} more title(s) from your current reading trail."
            "ja" -> "いまの近道: 現在の読書ルートからあと ${remaining} 作品を読み切る。"
            "zh" -> "当前最短路线：从当前阅读轨迹里再读完 ${remaining} 个作品。"
            "ko" -> "지금 가장 빠른 길: 지금 읽는 흐름에서 작품 ${remaining}개를 더 끝내기."
            else -> "Лучший ход сейчас: дочитать по текущему следу чтения ещё ${remaining} тайтл(ов)."
        }
        }
        AchievementId.AUTHOR_FAN -> when (language) {
            "en" -> "Best route now: keep one author collection warm for ${remaining} more title(s)${collectionQuery?.let { " in \"$it\"" }.orEmpty()}."
            "ja" -> "いまの近道: ${collectionQuery?.let { "「$it」" } ?: "ひとつの作者コレクション"} を軸に、あと ${remaining} 冊続ける。"
            "zh" -> "当前最短路线：围绕 ${collectionQuery?.let { "“$it”" } ?: "同一作者集合"} 再连续读 ${remaining} 个作品。"
            "ko" -> "지금 가장 빠른 길: ${collectionQuery?.let { "\"$it\"" } ?: "한 작가 컬렉션"} 을 중심으로 작품 ${remaining}개를 더 이어 읽기."
            else -> "Лучший ход сейчас: держаться одной авторской подборки${collectionQuery?.let { " «$it»" }.orEmpty()} и добрать ещё ${remaining} тайтл(ов)."
        }
        AchievementId.GENRE_GOURMET -> when (language) {
            "en" -> "Best route now: open a genre collection${collectionQuery?.let { " \"$it\"" }.orEmpty()} and widen the shelf by ${remaining} more tag(s)."
            "ja" -> "いまの近道: ${collectionQuery?.let { "「$it」" } ?: "ジャンルコレクション"} を開き、棚の幅をあと ${remaining} 段広げる。"
            "zh" -> "当前最短路线：打开 ${collectionQuery?.let { "“$it”" } ?: "题材集合"}，再把书架的题材拓宽 ${remaining} 个标签。"
            "ko" -> "지금 가장 빠른 길: ${collectionQuery?.let { "\"$it\"" } ?: "장르 컬렉션"} 을 열고 선반의 폭을 태그 ${remaining}개만큼 더 넓히기."
            else -> "Лучший ход сейчас: открыть жанровую подборку${collectionQuery?.let { " «$it»" }.orEmpty()} и расширить полку ещё на ${remaining} тег(ов)."
        }
        AchievementId.BOOKMARKER -> when (language) {
            "en" -> "Best route now: pin one active favorite to turn it into a bookmark."
            "ja" -> "いまの近道: 読んでいる作品をひとつブックマークに留める。"
            "zh" -> "当前最短路线：把一个正在读的作品固定成书签。"
            "ko" -> "지금 가장 빠른 길: 읽는 작품 하나를 북마크로 고정하기."
            else -> "Лучший ход сейчас: закрепить один активный тайтл в закладках."
        }
        AchievementId.SECRET_CAT -> when (language) {
            "en" -> "A hidden route is still waiting."
            "ja" -> "まだ隠れたルートが残っています。"
            "zh" -> "还有一条隐藏路线在等你。"
            "ko" -> "아직 숨겨진 길이 남아 있습니다."
            else -> "Где-то ещё остался скрытый путь."
        }
    }
}

private fun mrComicQuestPriorityReasonText(
    language: String,
    reason: MrComicQuestPriorityReason,
    goalState: DailyReadingGoalState
): String = when (reason) {
    MrComicQuestPriorityReason.LIVE_ROUTE -> when (language) {
        "en" -> "Why now: the active reading trail is still warm, so this quest can move with today's live route."
        "ja" -> "いまこれが前に出る理由: 読書トレイルがまだ温かく、このクエストは今日の流れと一緒に進められます。"
        "zh" -> "现在它排在前面的原因：活跃阅读路线还热着，这个任务可以顺着今天的阅读轨迹一起推进。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 읽기 흔적이 아직 살아 있어서 오늘의 실제 경로와 함께 밀 수 있습니다."
        else -> "Почему сейчас: активный читательский след ещё тёплый, и этот квест можно двигать прямо по живому маршруту чтения."
    }
    MrComicQuestPriorityReason.DAILY_PUSH -> when (language) {
        "en" -> "Why now: today's goal still needs pages, so this quest is the cleanest way to feed the daily rhythm."
        "ja" -> "いまこれが前に出る理由: 今日の目標にはまだページが必要で、このクエストがいちばん素直に日々のリズムを進めます。"
        "zh" -> "现在它排在前面的原因：今天的目标还需要页数，这条任务线是最顺手的日节奏推进方式。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 오늘 목표에 아직 페이지가 더 필요해서, 이 경로가 데일리 리듬을 가장 자연스럽게 밀어 줍니다."
        else -> "Почему сейчас: дневной цели ещё нужны страницы, и этот квест сейчас лучше всего кормит ежедневный ритм."
    }
    MrComicQuestPriorityReason.WEEKLY_PUSH -> when (language) {
        "en" -> "Why now: today's goal is already safe, so this quest is the best place to keep feeding the weekly plan."
        "ja" -> "いまこれが前に出る理由: 今日の目標はもう安全圏なので、このクエストが週間プランを進めるいちばん自然な場所です。"
        "zh" -> "现在它排在前面的原因：今天的目标已经稳住了，这条任务线最适合继续给周计划加速。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 오늘 목표는 이미 확보돼 있어서, 이제 이 경로가 주간 계획을 가장 자연스럽게 밀어 줍니다."
        else -> "Почему сейчас: цель на сегодня уже безопасна, и именно этот квест сейчас лучше всего тянет недельный план."
    }
    MrComicQuestPriorityReason.STREAK_SUPPORT -> when (language) {
        "en" -> "Why now: the streak is alive, so Mr.Comic keeps a quest that supports the same return path."
        "ja" -> "いまこれが前に出る理由: ストリークが続いているので、Mr.Comic は同じ戻り道を支えるクエストを前に置きます。"
        "zh" -> "现在它排在前面的原因：连读还活着，所以 Mr.Comic 会优先保留能支撑同一路径的任务。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 스트릭이 살아 있어서, Mr.Comic 이 같은 복귀 경로를 지켜 주는 퀘스트를 먼저 둡니다."
        else -> "Почему сейчас: серия жива, и Mr.Comic держит впереди квест, который поддерживает тот же маршрут возврата."
    }
    MrComicQuestPriorityReason.WEEKLY_RELAXED -> when (language) {
        "en" -> "Why now: the weekly plan is already closed, so Mr.Comic can push a calmer quest instead of pure urgency."
        "ja" -> "いまこれが前に出る理由: 週間プランはもう閉じているので、Mr.Comic は急ぎではなく、より静かなクエストを前に出せます。"
        "zh" -> "现在它排在前面的原因：周计划已经完成，所以 Mr.Comic 可以把更平静的任务推到前面，而不是继续追紧迫感。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 주간 계획이 이미 닫혀 있어서, Mr.Comic 이 이제는 더 차분한 퀘스트를 앞세울 수 있습니다."
        else -> "Почему сейчас: недельный план уже закрыт, и Mr.Comic может выдвинуть вперёд более спокойный квест, а не новую срочность."
    }
    MrComicQuestPriorityReason.SERIES_FOCUS -> when (language) {
        "en" -> "Why now: the active series is already visible, so Mr.Comic can turn one line into a cleaner completion arc."
        "ja" -> "いまこれが前に出る理由: 動いているシリーズが見えているので、Mr.Comic は一本の流れをそのまま読了アークへ変えられます。"
        "zh" -> "现在它排在前面的原因：活跃系列已经成形了，所以 Mr.Comic 可以把这条线顺势推进成一段完整完读。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 살아 있는 시리즈가 보여서, Mr.Comic 이 한 줄기를 더 깔끔한 완독 흐름으로 바꿀 수 있습니다."
        else -> "Почему сейчас: активная серия уже видна, и Mr.Comic может превратить одну живую линию в более чистую дугу дочитывания."
    }
    MrComicQuestPriorityReason.COLLECTION_PULL -> when (language) {
        "en" -> "Why now: a focused collection is already on the shelf, so this quest can guide you through a narrower, cleaner slice."
        "ja" -> "いまこれが前に出る理由: すでにまとまったコレクションが棚に見えていて、このクエストはもっと細くて明快な断面へ案内できます。"
        "zh" -> "现在它排在前面的原因：书架上已经有一组聚焦过的集合，这条任务可以把你带进更窄、更干净的一段路线。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 이미 모여 있는 컬렉션이 있어서, 이 퀘스트가 더 좁고 깔끔한 슬라이스로 안내할 수 있습니다."
        else -> "Почему сейчас: на полке уже есть собранная подборка, и этот квест ведёт в более узкий и чистый срез."
    }
    MrComicQuestPriorityReason.SHELF_BUILD -> when (language) {
        "en" -> "Why now: the shelf still needs weight, so this unlock grows the foundation Mr.Comic works from."
        "ja" -> "いまこれが前に出る理由: 棚にはまだ厚みが必要で、この解除が Mr.Comic の土台を育てます。"
        "zh" -> "现在它排在前面的原因：书架还需要厚度，这个解锁会直接增强 Mr.Comic 工作的基础。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 선반에 아직 무게가 더 필요해서, 이 해제가 Mr.Comic 이 움직일 기반을 키워 줍니다."
        else -> "Почему сейчас: полке ещё нужен вес, и это открытие укрепляет базу, от которой работает Mr.Comic."
    }
    MrComicQuestPriorityReason.ACHIEVEMENT_FOCUS -> when (language) {
        "en" -> "Why now: this unlock is simply the closest visible win on the shelf right now."
        "ja" -> "いまこれが前に出る理由: いま棚の上でいちばん近い、見えている達成だからです。"
        "zh" -> "现在它排在前面的原因：它就是当前书架上最近、最看得见的一个可达成目标。"
        "ko" -> "지금 이 퀘스트가 앞에 오는 이유: 지금 선반에서 가장 가깝고 눈에 보이는 다음 승리이기 때문입니다."
        else -> "Почему сейчас: это просто самая близкая и видимая победа на полке в текущий момент."
    }
}

private fun mrComicQuestLineTitle(language: String): String = when (language) {
    "en" -> "Quest line"
    "ja" -> "クエストライン"
    "zh" -> "任务路线"
    "ko" -> "퀘스트 라인"
    else -> "Линия квеста"
}

@Composable
private fun mrComicQuestFeedbackContainerColor(tone: AchievementQuestFeedbackTone): Color = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.62f)
    AchievementQuestFeedbackTone.SWITCHED -> MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.52f)
    AchievementQuestFeedbackTone.CLEARED -> MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.82f)
}

@Composable
private fun mrComicQuestFeedbackAccentColor(tone: AchievementQuestFeedbackTone): Color = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> MaterialTheme.colorScheme.tertiary
    AchievementQuestFeedbackTone.SWITCHED -> MaterialTheme.colorScheme.secondary
    AchievementQuestFeedbackTone.CLEARED -> MaterialTheme.colorScheme.primary
}

private fun mrComicQuestFeedbackIcon(tone: AchievementQuestFeedbackTone): ImageVector = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> Icons.Default.CheckCircle
    AchievementQuestFeedbackTone.SWITCHED -> Icons.Default.Tune
    AchievementQuestFeedbackTone.CLEARED -> Icons.Default.RadioButtonUnchecked
}

private fun mrComicQuestFeedbackToneLabel(
    language: String,
    tone: AchievementQuestFeedbackTone
): String = when (tone) {
    AchievementQuestFeedbackTone.COMPLETED -> when (language) {
        "en" -> "Reward locked in"
        "ja" -> "達成が固定されました"
        "zh" -> "奖励已锁定"
        "ko" -> "보상이 고정됨"
        else -> "Награда закреплена"
    }
    AchievementQuestFeedbackTone.SWITCHED -> when (language) {
        "en" -> "Shelf rebalanced"
        "ja" -> "棚の重心が更新されました"
        "zh" -> "书架重心已更新"
        "ko" -> "선반 우선순위 갱신"
        else -> "Баланс полки обновлён"
    }
    AchievementQuestFeedbackTone.CLEARED -> when (language) {
        "en" -> "Old route cleared"
        "ja" -> "前の導線を整理しました"
        "zh" -> "旧路线已清空"
        "ko" -> "이전 경로 정리됨"
        else -> "Старый маршрут снят"
    }
}

private fun mrComicQuestFeedbackTitle(
    language: String,
    feedback: AchievementQuestTransition
): String = when (feedback.tone) {
    AchievementQuestFeedbackTone.COMPLETED -> when (language) {
        "en" -> "Quest completed"
        "ja" -> "クエスト完了"
        "zh" -> "任务完成"
        "ko" -> "퀘스트 완료"
        else -> "Квест завершён"
    }
    AchievementQuestFeedbackTone.SWITCHED -> when (language) {
        "en" -> "Quest rerouted"
        "ja" -> "クエスト更新"
        "zh" -> "任务更新"
        "ko" -> "퀘스트 업데이트"
        else -> "Квест обновлён"
    }
    AchievementQuestFeedbackTone.CLEARED -> when (language) {
        "en" -> "Quest cleared"
        "ja" -> "クエスト整理"
        "zh" -> "任务清空"
        "ko" -> "퀘스트 정리"
        else -> "Квест очищен"
    }
}

private fun mrComicQuestFeedbackText(
    language: String,
    feedback: AchievementQuestTransition
): String = when {
    feedback.tone == AchievementQuestFeedbackTone.COMPLETED && feedback.nextTitle != null -> when (language) {
        "en" -> "\"${feedback.previousTitle}\" is done. Mr.Comic now points the route toward \"${feedback.nextTitle}\"."
        "ja" -> "「${feedback.previousTitle}」は完了しました。Mr.Comic は次の導線を「${feedback.nextTitle}」へ向けています。"
        "zh" -> "“${feedback.previousTitle}” 已完成。Mr.Comic 现在把路线指向 “${feedback.nextTitle}”。"
        "ko" -> "\"${feedback.previousTitle}\" 퀘스트가 끝났습니다. 이제 Mr.Comic 이 \"${feedback.nextTitle}\" 쪽으로 길을 돌립니다."
        else -> "«${feedback.previousTitle}» закрыт. Теперь Mr.Comic ведёт маршрут к «${feedback.nextTitle}»."
    }
    feedback.tone == AchievementQuestFeedbackTone.COMPLETED -> when (language) {
        "en" -> "\"${feedback.previousTitle}\" was the last visible route on the shelf."
        "ja" -> "「${feedback.previousTitle}」は棚の最後の見えているルートでした。"
        "zh" -> "“${feedback.previousTitle}” 是书架上最后一条可见路线。"
        "ko" -> "\"${feedback.previousTitle}\" 가 선반에 남아 있던 마지막 보이는 경로였습니다."
        else -> "«${feedback.previousTitle}» был последним видимым маршрутом на полке."
    }
    feedback.tone == AchievementQuestFeedbackTone.SWITCHED && feedback.nextTitle != null -> when (language) {
        "en" -> "The shelf shifted, so Mr.Comic now prioritizes \"${feedback.nextTitle}\" instead of \"${feedback.previousTitle}\"."
        "ja" -> "棚のバランスが変わったため、Mr.Comic は「${feedback.previousTitle}」より「${feedback.nextTitle}」を先に案内します。"
        "zh" -> "书架的重心变了，所以 Mr.Comic 现在会优先引导你去 “${feedback.nextTitle}”，而不是 “${feedback.previousTitle}”。"
        "ko" -> "선반의 무게중심이 바뀌어서, Mr.Comic 이 이제 \"${feedback.previousTitle}\" 대신 \"${feedback.nextTitle}\" 을 먼저 밀어 줍니다."
        else -> "Баланс полки сместился, и теперь Mr.Comic выдвигает «${feedback.nextTitle}» раньше, чем «${feedback.previousTitle}»."
    }
    else -> when (language) {
        "en" -> "The shelf shifted, and Mr.Comic has cleared the old route for now."
        "ja" -> "棚のバランスが変わり、Mr.Comic はいったん前の導線を片づけました。"
        "zh" -> "书架的重心变了，Mr.Comic 暂时把旧路线收了起来。"
        "ko" -> "선반의 무게중심이 바뀌어서, Mr.Comic 이 일단 예전 경로를 접어 두었습니다."
        else -> "Баланс полки сместился, и Mr.Comic пока убрал старый маршрут."
    }
}

private fun mrComicQuestFeedbackReasonText(
    language: String,
    tone: AchievementQuestFeedbackTone,
    reason: MrComicQuestPriorityReason,
    goalState: DailyReadingGoalState
): String {
    val reasonText = mrComicQuestPriorityReasonText(
        language = language,
        reason = reason,
        goalState = goalState
    )
    return when (tone) {
        AchievementQuestFeedbackTone.COMPLETED -> when (language) {
            "en" -> "Why this route rose: ${reasonText.removePrefix("Why now: ")}"
            "ja" -> "この新しいルートが上がった理由: ${reasonText.removePrefix("いまこれが前に出る理由: ")}"
            "zh" -> "这条新路线升上来的原因：${reasonText.removePrefix("现在它排在前面的原因：")}"
            "ko" -> "이 새 경로가 올라온 이유: ${reasonText.removePrefix("지금 이 퀘스트가 앞에 오는 이유: ")}"
            else -> "Почему поднялся новый маршрут: ${reasonText.removePrefix("Почему сейчас: ")}"
        }
        AchievementQuestFeedbackTone.SWITCHED -> when (language) {
            "en" -> "Why the shelf rerouted: ${reasonText.removePrefix("Why now: ")}"
            "ja" -> "棚の重心が切り替わった理由: ${reasonText.removePrefix("いまこれが前に出る理由: ")}"
            "zh" -> "书架重心换到这里的原因：${reasonText.removePrefix("现在它排在前面的原因：")}"
            "ko" -> "선반 우선순위가 바뀐 이유: ${reasonText.removePrefix("지금 이 퀘스트가 앞에 오는 이유: ")}"
            else -> "Почему полка перекинула маршрут сюда: ${reasonText.removePrefix("Почему сейчас: ")}"
        }
        AchievementQuestFeedbackTone.CLEARED -> reasonText
    }
}

private fun mrComicStagePreviewSearchText(language: String): String = when (language) {
    "en" -> "Search is still in focus, so Mr.Comic keeps this new stage gentle until you finish the current slice."
    "ja" -> "いまは検索が主役なので、Mr.Comic はこの新しいステージを現在の絞り込みが終わるまで静かに保っています。"
    "zh" -> "当前仍以搜索为主，所以 Mr.Comic 会先轻轻记住这个新阶段，等你看完这一组结果。"
    "ko" -> "지금은 검색이 중심이라서, Mr.Comic 이 이 새 단계를 현재 결과를 다 볼 때까지 조용히 붙들고 있습니다."
    else -> "Сейчас в фокусе поиск, поэтому Mr.Comic держит новую стадию спокойно и не перетягивает внимание с текущего среза."
}

private fun mrComicQuestFeedbackSearchText(language: String): String = when (language) {
    "en" -> "Search is active now, so Mr.Comic keeps the current results in focus before pushing the next route."
    "ja" -> "いまは検索がアクティブなので、Mr.Comic は次の導線を強く押す前に現在の結果を優先しています。"
    "zh" -> "当前搜索仍在进行，所以 Mr.Comic 会先让你专注这组结果，再推进下一条路线。"
    "ko" -> "지금은 검색이 활성화되어 있어서, Mr.Comic 이 다음 경로를 밀기 전에 현재 결과에 먼저 집중합니다."
    else -> "Сейчас активен поиск, поэтому Mr.Comic сначала держит фокус на текущей выдаче, а уже потом толкает новый маршрут."
}

private fun mrComicQuestFeedbackActionLabel(
    language: String,
    tone: AchievementQuestFeedbackTone,
    action: MrComicDiscoveryAction
): String {
    val routeLabel = mrComicDiscoveryActionLabel(language, action)
    return when (tone) {
        AchievementQuestFeedbackTone.COMPLETED -> when (language) {
            "en" -> "Follow new route: $routeLabel"
            "ja" -> "新しい導線へ: $routeLabel"
            "zh" -> "沿着新路线前进：$routeLabel"
            "ko" -> "새 경로로 이어가기: $routeLabel"
            else -> "Перейти на новый маршрут: $routeLabel"
        }
        AchievementQuestFeedbackTone.SWITCHED -> when (language) {
            "en" -> "Take updated route: $routeLabel"
            "ja" -> "更新された導線へ: $routeLabel"
            "zh" -> "走更新后的路线：$routeLabel"
            "ko" -> "업데이트된 경로로 이동: $routeLabel"
            else -> "Перейти на обновлённый маршрут: $routeLabel"
        }
        AchievementQuestFeedbackTone.CLEARED -> routeLabel
    }
}

private fun mrComicQuestAnchorText(
    language: String,
    achievement: LibraryAchievement,
    hasRecent: Boolean,
    hintAction: MrComicDiscoveryAction,
    collectionQuery: String?
): String = when (achievement.id) {
    AchievementId.FIRST_COMPLETE,
    AchievementId.MARATHON -> when {
        hintAction == MrComicDiscoveryAction.OPEN_SERIES -> when (language) {
            "en" -> "Anchor: open the series shelf and keep moving along one line until the next finish."
            "ja" -> "導線: シリーズの棚を開き、ひとつの流れを次の読了まで押し進める。"
            "zh" -> "锚点：打开系列书架，沿着同一条线一直推到下一次读完。"
            "ko" -> "앵커: 시리즈 선반을 열고 한 줄기를 다음 완독까지 계속 밀고 가기."
            else -> "Якорь: открой серию и двигай одну линию до следующего дочитывания."
        }
        hasRecent && hintAction == MrComicDiscoveryAction.OPEN_RECENT -> when (language) {
            "en" -> "Anchor: reopen the current trail and carry that title to the next finish."
            "ja" -> "導線: いまの読書トレイルを開き直し、その作品を次の読了まで運ぶ。"
            "zh" -> "锚点：重新打开当前阅读轨迹，把这部作品带到下一次读完。"
            "ko" -> "앵커: 현재 읽기 흔적을 다시 열고 그 작품을 다음 완독까지 끌고 가기."
            else -> "Якорь: вернись в текущий след чтения и доведи этот тайтл до следующего финиша."
        }
        else -> when (language) {
            "en" -> "Anchor: pick one live title from Files first, then keep the route warm to the finish."
            "ja" -> "導線: まず Files から動いている作品をひとつ選び、そのまま読了まで温度を保つ。"
            "zh" -> "锚点：先从 Files 里挑一部活跃作品，再把这条路线一直保温到读完。"
            "ko" -> "앵커: 먼저 Files 에서 살아 있는 작품 하나를 고른 뒤, 그 경로를 완독까지 식히지 않기."
            else -> "Якорь: сначала подхвати живой тайтл из Files и потом не давай маршруту остыть до финиша."
        }
    }
    AchievementId.BOOKMARKER -> when {
        hasRecent && hintAction == MrComicDiscoveryAction.OPEN_RECENT -> when (language) {
            "en" -> "Anchor: open the current run and pin it the moment it feels worth saving."
            "ja" -> "導線: 今のランを開き、残したくなった瞬間にブックマークへ留める。"
            "zh" -> "锚点：打开当前阅读，在想留下来的那一刻把它钉成书签。"
            "ko" -> "앵커: 현재 읽기를 열고 남겨 둘 가치가 생기는 순간 바로 북마크로 고정하기."
            else -> "Якорь: открой текущее чтение и закрепи его в тот момент, когда захочется сохранить точку."
        }
        else -> when (language) {
            "en" -> "Anchor: start one live route from Files first, then turn it into a bookmark."
            "ja" -> "導線: まず Files からひとつ動くルートを作り、それをブックマークに変える。"
            "zh" -> "锚点：先从 Files 开出一条活路线，再把它变成书签。"
            "ko" -> "앵커: 먼저 Files 에서 살아 있는 경로 하나를 시작한 뒤 그것을 북마크로 바꾸기."
            else -> "Якорь: сначала заведи живой маршрут через Files, а затем преврати его в закладку."
        }
    }
    AchievementId.AUTHOR_FAN -> when (language) {
        "en" -> "Anchor: open${collectionQuery?.let { " \"$it\"" } ?: " one author collection"} and keep that author in rotation before branching wider."
        "ja" -> "導線: ${collectionQuery?.let { "「$it」" } ?: "ひとつの作者コレクション"} を開き、その流れを保ってから外へ広げる。"
        "zh" -> "锚点：先打开 ${collectionQuery?.let { "“$it”" } ?: "一个作者集合"}，把这条作者线稳住，再往外扩。"
        "ko" -> "앵커: ${collectionQuery?.let { "\"$it\"" } ?: "한 작가 컬렉션"} 을 열고 그 흐름을 붙든 뒤 바깥으로 넓히기."
        else -> "Якорь: сначала открой авторскую подборку${collectionQuery?.let { " «$it»" }.orEmpty()} и удержи эту линию, а уже потом расширяй полку."
    }
    AchievementId.GENRE_GOURMET -> when (language) {
        "en" -> "Anchor: open${collectionQuery?.let { " \"$it\"" } ?: " a genre collection"} and widen the shelf on purpose instead of circling the same tags."
        "ja" -> "導線: ${collectionQuery?.let { "「$it」" } ?: "ジャンルコレクション"} を開き、同じタグを回らず意図して幅を広げる。"
        "zh" -> "锚点：先打开 ${collectionQuery?.let { "“$it”" } ?: "题材集合"}，别总绕着同一批标签转，而是主动扩开书架。"
        "ko" -> "앵커: ${collectionQuery?.let { "\"$it\"" } ?: "장르 컬렉션"} 을 열고 같은 태그만 맴돌지 말고 의도적으로 폭을 넓히기."
        else -> "Якорь: открой жанровую подборку${collectionQuery?.let { " «$it»" }.orEmpty()} и специально расширяй полку, а не ходи по кругу тех же тегов."
    }
    else -> when (language) {
        "en" -> "Anchor: use Files as the cleanest route and let the shelf grow in one place."
        "ja" -> "導線: いちばん素直な入口として Files を使い、棚を一か所で育てる。"
        "zh" -> "锚点：把 Files 当成最干净的入口，让书架在一个地方长起来。"
        "ko" -> "앵커: 가장 깔끔한 입구인 Files 를 써서 선반을 한곳에서 키우기."
        else -> "Якорь: используй Files как самый чистый вход и наращивай полку из одной точки."
    }
}

private fun mrComicDiscoveryActionLabel(language: String, action: MrComicDiscoveryAction): String = when (action) {
    MrComicDiscoveryAction.OPEN_RECENT -> when (language) {
        "en" -> "Open current trail"
        "ja" -> "いまの読書を開く"
        "zh" -> "打开当前阅读"
        "ko" -> "현재 읽기 열기"
        else -> "Открыть текущее чтение"
    }
    MrComicDiscoveryAction.OPEN_FILES -> when (language) {
        "en" -> "Open Files"
        "ja" -> "Files を開く"
        "zh" -> "打开 Files"
        "ko" -> "Files 열기"
        else -> "Открыть Files"
    }
    MrComicDiscoveryAction.OPEN_SERIES -> when (language) {
        "en" -> "Open series"
        "ja" -> "シリーズを開く"
        "zh" -> "打开系列"
        "ko" -> "시리즈 열기"
        else -> "Открыть серию"
    }
    MrComicDiscoveryAction.OPEN_COLLECTION -> when (language) {
        "en" -> "Open collection"
        "ja" -> "コレクションを開く"
        "zh" -> "打开集合"
        "ko" -> "컬렉션 열기"
        else -> "Открыть подборку"
    }
}

private fun mrComicQuestTypeLabel(language: String, questType: MrComicQuestType): String = when (questType) {
    MrComicQuestType.START_TITLE -> when (language) {
        "en" -> "Start title"
        "ja" -> "作品を始める"
        "zh" -> "开始作品"
        "ko" -> "작품 시작"
        else -> "Начать тайтл"
    }
    MrComicQuestType.FINISH_TITLE -> when (language) {
        "en" -> "Finish title"
        "ja" -> "作品を読み切る"
        "zh" -> "读完作品"
        "ko" -> "작품 완독"
        else -> "Дочитать тайтл"
    }
    MrComicQuestType.FINISH_SERIES -> when (language) {
        "en" -> "Finish series"
        "ja" -> "シリーズを進める"
        "zh" -> "推进系列"
        "ko" -> "시리즈 진행"
        else -> "Довести серию"
    }
    MrComicQuestType.READ_COLLECTION -> when (language) {
        "en" -> "Read collection"
        "ja" -> "コレクションを読む"
        "zh" -> "阅读集合"
        "ko" -> "컬렉션 읽기"
        else -> "Читать подборку"
    }
    MrComicQuestType.PIN_ROUTE -> when (language) {
        "en" -> "Pin route"
        "ja" -> "ルートを留める"
        "zh" -> "固定路线"
        "ko" -> "경로 고정"
        else -> "Закрепить маршрут"
    }
    MrComicQuestType.FIND_SECRET -> when (language) {
        "en" -> "Find secret"
        "ja" -> "秘密を探す"
        "zh" -> "寻找秘密"
        "ko" -> "비밀 찾기"
        else -> "Найти секрет"
    }
}

internal fun resolveMrComicCollectionQuery(
    achievementId: AchievementId?,
    rawAuthors: List<String?>,
    rawGenres: List<String?>
): String? = when (achievementId) {
    AchievementId.AUTHOR_FAN -> mrComicTopAuthorQuery(rawAuthors)
    AchievementId.GENRE_GOURMET -> mrComicTopGenreQuery(rawGenres)
    else -> null
}

private fun mrComicTopAuthorQuery(rawAuthors: List<String?>): String? =
    rawAuthors
        .mapNotNull { it?.trim()?.takeIf(String::isNotBlank) }
        .groupingBy { it }
        .eachCount()
        .maxByOrNull { it.value }
        ?.key

private fun mrComicTopGenreQuery(rawGenres: List<String?>): String? =
    rawGenres
        .flatMap { raw ->
            raw.orEmpty()
                .split(",", ";", "/")
                .map { it.trim() }
                .filter { it.isNotBlank() }
        }
        .groupingBy { it.lowercase() }
        .eachCount()
        .maxByOrNull { it.value }
        ?.key
        ?.replaceFirstChar { char -> if (char.isLowerCase()) char.titlecase() else char.toString() }

private fun mrComicStagePreviewTitle(language: String): String = when (language) {
    "en" -> "New stage"
    "ja" -> "新しい段階"
    "zh" -> "新阶段"
    "ko" -> "새 단계"
    else -> "Новый этап"
}

private fun mrComicStagePreviewCompactText(
    language: String,
    stage: MascotStage
): String {
    val label = mrComicSharedStageLabel(language, stage)
    return when (language) {
        "en" -> "$label is unlocked and safely waiting here."
        "ja" -> "${label} が開いていて、ここで静かに待っています。"
        "zh" -> "$label 已解锁，会安静地在这里等你。"
        "ko" -> "$label 단계가 열렸고, 여기서 조용히 기다리고 있습니다."
        else -> "Этап \"$label\" уже открыт и спокойно ждёт здесь."
    }
}

private fun mrComicStagePreviewText(
    language: String,
    stage: MascotStage,
    progress: MascotProgressState
): String {
    val label = mrComicSharedStageLabel(language, stage)
    return when (language) {
        "en" -> "Mr.Comic reached $label with ${progress.xp} XP."
        "ja" -> "Mr.Comic は ${label} に到達しました。XP は ${progress.xp} です。"
        "zh" -> "Mr.Comic 已达到 $label，当前 ${progress.xp} XP。"
        "ko" -> "Mr.Comic 이 $label 단계에 도달했습니다. 현재 ${progress.xp} XP입니다."
        else -> "Mr.Comic достиг стадии \"$label\". Сейчас ${progress.xp} XP."
    }
}

@Composable
private fun MrComicRecentCard(
    comic: Comic,
    appLanguage: String,
    searchActive: Boolean,
    compact: Boolean,
    progressText: String,
    onOpenRecent: () -> Unit
) {
    Surface(
        shape = RoundedCornerShape(if (compact) 16.dp else 20.dp),
        color = MaterialTheme.colorScheme.primary.copy(alpha = 0.08f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(
                    horizontal = if (compact) 12.dp else 14.dp,
                    vertical = if (compact) 10.dp else 12.dp
                ),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(if (compact) 2.dp else 4.dp)
            ) {
                Text(
                    text = mrComicRecentLabel(
                        language = appLanguage,
                        searchActive = searchActive
                    ),
                    style = if (compact) MaterialTheme.typography.labelSmall else MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = comic.title,
                    style = if (compact) MaterialTheme.typography.bodyMedium else MaterialTheme.typography.titleSmall,
                    maxLines = if (compact) 1 else 2,
                    overflow = TextOverflow.Ellipsis
                )
                Text(
                    text = progressText,
                    style = if (compact) MaterialTheme.typography.labelSmall else MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            if (compact) {
                MrComicFilterChip(
                    selected = false,
                    onClick = onOpenRecent,
                    label = { Text(mrComicOpenRecentLabel(appLanguage)) },
                    leadingIcon = {
                        Icon(
                            Icons.AutoMirrored.Filled.OpenInNew,
                            contentDescription = null
                        )
                    }
                )
            } else {
                FilledTonalButton(
                    onClick = onOpenRecent,
                    colors = ButtonDefaults.filledTonalButtonColors(
                        containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.9f),
                        contentColor = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                ) {
                    Icon(
                        Icons.AutoMirrored.Filled.OpenInNew,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                    Spacer(Modifier.width(8.dp))
                    Text(mrComicOpenRecentLabel(appLanguage))
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicQuickActionsCard(
    appLanguage: String,
    searchActive: Boolean,
    compact: Boolean,
    hasRecent: Boolean,
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState,
    onOpenFiles: () -> Unit,
    onOpenBookmarks: () -> Unit,
    onOpenQuotes: () -> Unit
) {
    val strings = LocalStrings.current
    val primaryAction = mrComicPrimaryQuickAction(
        totalTitles = totalTitles,
        bookmarkedTitles = bookmarkedTitles,
        quotesCount = quotesCount,
        goalState = goalState
    )
    val actionOrder = listOf(
        MrComicQuickAction.FILES,
        MrComicQuickAction.BOOKMARKS,
        MrComicQuickAction.QUOTES
    )
    Surface(
        shape = RoundedCornerShape(if (compact) 16.dp else 20.dp),
        color = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.72f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(
                    horizontal = if (compact) 12.dp else 14.dp,
                    vertical = if (compact) 10.dp else 12.dp
                ),
            verticalArrangement = Arrangement.spacedBy(if (compact) 8.dp else 10.dp)
        ) {
            Text(
                text = mrComicQuickActionsTitle(appLanguage),
                style = if (compact) MaterialTheme.typography.labelMedium else MaterialTheme.typography.labelLarge,
                color = MaterialTheme.colorScheme.primary
            )
            if (!compact) {
                Text(
                    text = mrComicQuickActionsText(
                        language = appLanguage,
                        searchActive = searchActive,
                        hasRecent = hasRecent,
                        totalTitles = totalTitles,
                        bookmarkedTitles = bookmarkedTitles,
                        quotesCount = quotesCount,
                        goalState = goalState,
                        primaryAction = primaryAction
                    ),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalButton(onClick = { mrComicQuickActionHandler(primaryAction, onOpenFiles, onOpenBookmarks, onOpenQuotes)() }) {
                    Icon(mrComicQuickActionIcon(primaryAction), contentDescription = null)
                    Spacer(Modifier.width(8.dp))
                    Text(
                        mrComicQuickActionLabel(
                            action = primaryAction,
                            filesLabel = mrComicOpenFilesLabel(appLanguage),
                            bookmarksLabel = strings.libraryBookmarks,
                            quotesLabel = strings.libraryQuotes,
                            bookmarkedTitles = bookmarkedTitles,
                            quotesCount = quotesCount
                        )
                    )
                }
                actionOrder
                    .filter { it != primaryAction }
                    .forEach { action ->
                        MrComicFilterChip(
                            selected = false,
                            onClick = mrComicQuickActionHandler(action, onOpenFiles, onOpenBookmarks, onOpenQuotes),
                            label = {
                                Text(
                                    mrComicQuickActionLabel(
                                        action = action,
                                        filesLabel = mrComicOpenFilesLabel(appLanguage),
                                        bookmarksLabel = strings.libraryBookmarks,
                                        quotesLabel = strings.libraryQuotes,
                                        bookmarkedTitles = bookmarkedTitles,
                                        quotesCount = quotesCount
                                    )
                                )
                            },
                            leadingIcon = {
                                Icon(
                                    mrComicQuickActionIcon(action),
                                    contentDescription = null
                                )
                            }
                        )
                    }
            }
        }
    }
}

internal fun mrComicShowSearchContextCard(
    searchActive: Boolean,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean = searchActive && !hasStagePreview && !hasQuestFeedback

internal fun mrComicUseCompactSupportCards(
    searchActive: Boolean,
    hasStagePreview: Boolean,
    hasQuestFeedback: Boolean
): Boolean = searchActive || hasStagePreview || hasQuestFeedback

@Composable
private fun MrComicSummaryPill(
    value: String,
    label: String,
    compact: Boolean = false
) {
    Surface(
        shape = RoundedCornerShape(if (compact) 16.dp else 18.dp),
        color = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.7f)
    ) {
        Column(
            modifier = Modifier.padding(
                horizontal = if (compact) 10.dp else 12.dp,
                vertical = if (compact) 8.dp else 10.dp
            ),
            verticalArrangement = Arrangement.spacedBy(2.dp)
        ) {
            Text(
                text = value,
                style = if (compact) MaterialTheme.typography.titleSmall else MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.primary
            )
            Text(
                text = label,
                style = MaterialTheme.typography.labelMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicAnalyticsCard(
    appLanguage: String,
    searchActive: Boolean,
    totalTitles: Int,
    completedTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState,
    onOpenProgress: () -> Unit,
    modifier: Modifier = Modifier
) {
    Surface(
        modifier = modifier.padding(horizontal = 16.dp),
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.54f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = mrComicAnalyticsTitle(appLanguage),
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.primary
                    )
                    Text(
                        text = if (searchActive) {
                            mrComicSearchSummaryCaption(appLanguage)
                        } else {
                            mrComicAnalyticsSummaryText(appLanguage, goalState)
                        },
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                TextButton(
                    onClick = onOpenProgress,
                    contentPadding = PaddingValues(0.dp)
                ) {
                    Text(mrComicProgressEntryCtaLabel(appLanguage))
                }
            }
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicSummaryPill(
                    value = totalTitles.toString(),
                    label = mrComicMetricLabel(
                        language = appLanguage,
                        metric = MrComicMetric.TITLES,
                        searchActive = searchActive
                    ),
                    compact = true
                )
                MrComicSummaryPill(
                    value = completedTitles.toString(),
                    label = mrComicMetricLabel(
                        language = appLanguage,
                        metric = MrComicMetric.COMPLETED,
                        searchActive = searchActive
                    ),
                    compact = true
                )
                MrComicSummaryPill(
                    value = bookmarkedTitles.toString(),
                    label = mrComicMetricLabel(
                        language = appLanguage,
                        metric = MrComicMetric.BOOKMARKS,
                        searchActive = searchActive
                    ),
                    compact = true
                )
                MrComicSummaryPill(
                    value = quotesCount.toString(),
                    label = mrComicMetricLabel(
                        language = appLanguage,
                        metric = MrComicMetric.QUOTES,
                        searchActive = searchActive
                    ),
                    compact = true
                )
            }
        }
    }
}

@Composable
private fun MrComicReadingCalendarCard(
    appLanguage: String,
    goalState: DailyReadingGoalState
) {
    val activeDays = goalState.recentActivity.count { it.pagesRead > 0 }
    val goalDays = goalState.recentActivity.count { it.goalCompleted }
    val tone = mrComicReadingCalendarTone(goalState)
    Surface(
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.22f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = mrComicReadingCalendarTitle(appLanguage),
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.tertiary
                    )
                    Text(
                        text = mrComicReadingCalendarStateText(
                            language = appLanguage,
                            tone = tone,
                            goalState = goalState
                        ),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Text(
                        text = mrComicReadingCalendarSummaryText(
                            language = appLanguage,
                            activeDays = activeDays,
                            goalDays = goalDays
                        ),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Surface(
                    shape = RoundedCornerShape(999.dp),
                    color = mrComicReadingCalendarToneContainerColor(tone)
                ) {
                    Text(
                        text = mrComicReadingCalendarToneLabel(
                            language = appLanguage,
                            tone = tone
                        ),
                        style = MaterialTheme.typography.labelMedium,
                        color = mrComicReadingCalendarToneContentColor(tone),
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                    )
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                goalState.recentActivity.forEachIndexed { index, day ->
                    MrComicReadingCalendarDayChip(
                        day = day,
                        appLanguage = appLanguage,
                        isToday = index == goalState.recentActivity.lastIndex,
                        modifier = Modifier.weight(1f)
                    )
                }
            }
        }
    }
}

@Composable
private fun MrComicReadingCalendarDayChip(
    day: DailyReadingCalendarDay,
    appLanguage: String,
    isToday: Boolean,
    modifier: Modifier = Modifier
) {
    val containerColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
        day.pagesRead > 0 -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
        isToday -> MaterialTheme.colorScheme.tertiary.copy(alpha = 0.12f)
        else -> MaterialTheme.colorScheme.surfaceContainerHigh
    }
    val accentColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary
        day.pagesRead > 0 -> MaterialTheme.colorScheme.secondary
        isToday -> MaterialTheme.colorScheme.tertiary
        else -> MaterialTheme.colorScheme.outline
    }
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Text(
            text = mrComicReadingCalendarDayLabel(
                dayKey = day.dayKey,
                appLanguage = appLanguage
            ),
            style = MaterialTheme.typography.labelSmall,
            color = if (isToday) {
                MaterialTheme.colorScheme.tertiary
            } else {
                MaterialTheme.colorScheme.onSurfaceVariant
            }
        )
        Surface(
            shape = RoundedCornerShape(14.dp),
            color = containerColor
        ) {
            Column(
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 8.dp),
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = mrComicReadingCalendarDayNumber(day.dayKey),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Box(
                    modifier = Modifier
                        .size(if (isToday) 8.dp else 7.dp)
                        .background(accentColor, CircleShape)
                )
            }
        }
    }
}

@Composable
private fun MrComicSectionHint(
    appLanguage: String,
    onOpenProgress: () -> Unit,
    modifier: Modifier = Modifier
) {
    Surface(
        modifier = modifier.padding(horizontal = 16.dp),
        shape = RoundedCornerShape(18.dp),
        color = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.54f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = mrComicProgressEntryHintText(appLanguage),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.weight(1f)
            )
            OutlinedButton(onClick = onOpenProgress) {
                Text(mrComicProgressEntryCtaLabel(appLanguage))
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
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

private data class LibraryStripSectionData(
    val key: String,
    val title: String,
    val folders: List<LibraryFolderItem> = emptyList(),
    val comics: List<Comic> = emptyList(),
    val audiobooks: List<Audiobook> = emptyList()
)

private fun nextLibraryViewMode(current: LibraryViewMode): LibraryViewMode = when (current) {
    LibraryViewMode.GRID -> LibraryViewMode.LIST
    LibraryViewMode.LIST -> LibraryViewMode.STRIPS
    LibraryViewMode.STRIPS -> LibraryViewMode.GRID
}

private fun libraryFoldersStripLabel(language: String): String = when (language) {
    "en" -> "Folders"
    "ja" -> "フォルダ"
    "zh" -> "文件夹"
    "ko" -> "폴더"
    else -> "Папки"
}

private fun libraryAudiobooksStripLabel(language: String): String = when (language) {
    "en" -> "Audiobooks"
    "ja" -> "オーディオブック"
    "zh" -> "有声书"
    "ko" -> "오디오북"
    else -> "Аудиокниги"
}

private fun libraryGraphicStripLabel(language: String): String = when (language) {
    "en" -> "Comics"
    "ja" -> "コミック"
    "zh" -> "漫画"
    "ko" -> "코믹"
    else -> "Комиксы"
}

private fun libraryBooksStripLabel(language: String): String = when (language) {
    "en" -> "Books"
    "ja" -> "本"
    "zh" -> "图书"
    "ko" -> "도서"
    else -> "Книги"
}

private fun libraryViewAsStripsLabel(language: String): String = when (language) {
    "en" -> "View: shelves"
    "ja" -> "表示: 棚"
    "zh" -> "视图：书架"
    "ko" -> "보기: 선반"
    else -> "Вид: ленты"
}

private fun libraryViewSectionLabel(language: String): String = when (language) {
    "en" -> "View mode"
    "ja" -> "表示モード"
    "zh" -> "视图模式"
    "ko" -> "보기 모드"
    else -> "Режим отображения"
}

private fun libraryViewModeLabel(mode: LibraryViewMode, language: String): String = when (mode) {
    LibraryViewMode.GRID -> when (language) {
        "en" -> "Grid"
        "ja" -> "グリッド"
        "zh" -> "网格"
        "ko" -> "그리드"
        else -> "Сетка"
    }
    LibraryViewMode.LIST -> when (language) {
        "en" -> "List"
        "ja" -> "リスト"
        "zh" -> "列表"
        "ko" -> "목록"
        else -> "Список"
    }
    LibraryViewMode.STRIPS -> when (language) {
        "en" -> "Vertical strips"
        "ja" -> "縦リボン"
        "zh" -> "垂直条带"
        "ko" -> "세로 스트립"
        else -> "Вертикальная лента"
    }
}

private fun libraryThumbnailSizeSectionLabel(language: String): String = when (language) {
    "en" -> "Thumbnail size"
    "ja" -> "サムネイルサイズ"
    "zh" -> "缩略图大小"
    "ko" -> "썸네일 크기"
    "ru" -> "Размер миниатюр"
    else -> "Thumbnail size"
}

private fun libraryThumbnailSizeLabel(language: String, size: String): String = when (language) {
    "en" -> when (size) {
        "small" -> "Small"
        "large" -> "Large"
        else -> "Medium"
    }
    "ja" -> when (size) {
        "small" -> "小"
        "large" -> "大"
        else -> "中"
    }
    "zh" -> when (size) {
        "small" -> "小"
        "large" -> "大"
        else -> "中"
    }
    "ko" -> when (size) {
        "small" -> "작게"
        "large" -> "크게"
        else -> "보통"
    }
    "ru" -> when (size) {
        "small" -> "Меньше"
        "large" -> "Больше"
        else -> "Средний"
    }
    else -> when (size) {
        "small" -> "Small"
        "large" -> "Large"
        else -> "Medium"
    }
}

private fun librarySortOptions(strings: AppStrings): List<Pair<SortOrder, String>> {
    val language = strings.languageCode
    return listOf(
        SortOrder.DATE_ADDED_DESC to librarySortLabel(language, "Added: newest", "Добавлены: новые"),
        SortOrder.DATE_ADDED_ASC to librarySortLabel(language, "Added: oldest", "Добавлены: старые"),
        SortOrder.DATE_READ_DESC to librarySortLabel(language, "Read: recent", "Читали: недавние"),
        SortOrder.DATE_READ_ASC to librarySortLabel(language, "Read: old first", "Читали: старые"),
        SortOrder.TITLE_ASC to librarySortLabel(language, "Title: A-Z", "Название: А-Я"),
        SortOrder.TITLE_DESC to librarySortLabel(language, "Title: Z-A", "Название: Я-А"),
        SortOrder.PROGRESS_DESC to librarySortLabel(language, "Progress: high first", "Прогресс: больше"),
        SortOrder.PROGRESS_ASC to librarySortLabel(language, "Progress: low first", "Прогресс: меньше"),
        SortOrder.FILE_SIZE_DESC to librarySortLabel(language, "File: large first", "Файл: больше"),
        SortOrder.FILE_SIZE_ASC to librarySortLabel(language, "File: small first", "Файл: меньше"),
        SortOrder.GENRE_ASC to librarySortLabel(language, "Genre: A-Z", "Жанр: А-Я"),
        SortOrder.GENRE_DESC to librarySortLabel(language, "Genre: Z-A", "Жанр: Я-А"),
        SortOrder.FOLDER_ASC to librarySortLabel(language, "Folder: A-Z", "Папка: А-Я"),
        SortOrder.FOLDER_DESC to librarySortLabel(language, "Folder: Z-A", "Папка: Я-А")
    )
}

private fun librarySortLabel(language: String, english: String, russian: String): String = when (language) {
    "ru" -> russian
    else -> english
}

private fun filterAndSortAudiobooks(
    audiobooks: List<Audiobook>,
    statusFilter: LibraryStatusFilter,
    sortOrder: SortOrder
): List<Audiobook> {
    val filtered = when (statusFilter) {
        LibraryStatusFilter.ALL -> audiobooks
        LibraryStatusFilter.BOOKMARKED -> emptyList()
        LibraryStatusFilter.IN_PROGRESS -> audiobooks.filter {
            it.lastPositionMs > 0L || it.lastChapterIndex > 0
        }
        LibraryStatusFilter.COMPLETED -> emptyList()
    }
    return when (sortOrder) {
        SortOrder.TITLE_ASC -> filtered.sortedBy { it.title.lowercase() }
        SortOrder.TITLE_DESC -> filtered.sortedByDescending { it.title.lowercase() }
        SortOrder.DATE_ADDED_ASC -> filtered.sortedBy { it.addedAt }
        SortOrder.DATE_ADDED_DESC -> filtered.sortedByDescending { it.addedAt }
        // Audiobook currently has no last-listened timestamp, so keep date-read sort stable.
        SortOrder.DATE_READ_ASC -> filtered.sortedBy { it.title.lowercase() }
        SortOrder.DATE_READ_DESC -> filtered.sortedByDescending { it.title.lowercase() }
        SortOrder.PROGRESS_ASC -> filtered.sortedWith(
            compareBy<Audiobook> { it.lastChapterIndex }.thenBy { it.lastPositionMs }
        )
        SortOrder.PROGRESS_DESC -> filtered.sortedWith(
            compareByDescending<Audiobook> { it.lastChapterIndex }.thenByDescending { it.lastPositionMs }
        )
        else -> filtered
    }
}

private fun buildLibraryStripSections(
    items: List<LibraryDisplayItem>,
    appLanguage: String,
    audiobooks: List<Audiobook> = emptyList()
): List<LibraryStripSectionData> {
    val folders = items.filterIsInstance<LibraryFolderItem>()
    val comics = items.filterIsInstance<LibraryComicItem>().map { it.comic }
    val graphics = comics.filter { it.isGraphicVolumeFormat() }
    val books = comics.filterNot { it.isGraphicVolumeFormat() }
    return buildList {
        if (folders.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "folders",
                    title = libraryFoldersStripLabel(appLanguage),
                    folders = folders
                )
            )
        }
        if (graphics.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "graphics",
                    title = libraryGraphicStripLabel(appLanguage),
                    comics = graphics
                )
            )
        }
        if (books.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "books",
                    title = libraryBooksStripLabel(appLanguage),
                    comics = books
                )
            )
        }
        if (audiobooks.isNotEmpty()) {
            add(
                LibraryStripSectionData(
                    key = "audiobooks",
                    title = libraryAudiobooksStripLabel(appLanguage),
                    audiobooks = audiobooks
                )
            )
        }
    }
}

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

private fun mrComicHubSubtitle(
    language: String,
    unlockedCount: Int,
    totalCount: Int,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "Mr.Comic is reading the current search slice. Visible unlocks: $unlockedCount of $totalCount."
        "ja" -> "Mr.Comic は現在の検索結果だけを見ています。表示中の解除: $unlockedCount / $totalCount。"
        "zh" -> "Mr.Comic 现在只在看当前搜索切片。当前可见解锁：$unlockedCount / $totalCount。"
        "ko" -> "Mr.Comic 은 지금 현재 검색 결과만 보고 있습니다. 현재 보이는 해제: $unlockedCount / $totalCount."
        else -> "Mr.Comic сейчас смотрит только на текущий поисковый срез. Видимых открытий: $unlockedCount из $totalCount."
    }
} else {
    when (language) {
        "en" -> "Your achievement shelf and mascot corner. Unlocked: $unlockedCount of $totalCount."
        "ja" -> "実績の棚とマスコットのコーナーです。解除済み: $unlockedCount / $totalCount。"
        "zh" -> "这里是你的成就陈列架和吉祥物角落。已解锁：$unlockedCount / $totalCount。"
        "ko" -> "업적 진열대와 마스코트 코너입니다. 해제: $unlockedCount / $totalCount."
        else -> "Здесь живут достижения и уголок Mr.Comic. Открыто: $unlockedCount из $totalCount."
    }
}

private fun resolveMrComicHubAchievements(
    achievements: List<LibraryAchievement>,
    nextAchievement: LibraryAchievement?,
    maxItems: Int = 4
): List<LibraryAchievement> {
    val ordered = buildList {
        nextAchievement?.let(::add)
        achievements
            .filter { achievement -> achievement.id != nextAchievement?.id }
            .sortedWith(
                compareByDescending<LibraryAchievement> { it.isUnlocked }
                    .thenByDescending { it.progressFraction }
                    .thenBy { it.remainingSteps ?: Int.MAX_VALUE }
            )
            .forEach(::add)
    }
    return ordered.take(maxItems)
}

private fun mrComicPresenceTitle(language: String): String = when (language) {
    "en" -> "Mr.Comic status"
    "ja" -> "Mr.Comic ステータス"
    "zh" -> "Mr.Comic 状态"
    "ko" -> "Mr.Comic 상태"
    else -> "Статус Mr.Comic"
}

private fun mrComicPresenceText(
    language: String,
    totalTitles: Int,
    completedTitles: Int,
    quotesCount: Int,
    secretUnlocked: Boolean,
    goalState: DailyReadingGoalState,
    recentComic: Comic?
): String = when {
    totalTitles == 0 -> when (language) {
        "en" -> "Bring a few titles and this corner will turn into a proper reading hub."
        "ja" -> "作品が増えると、このコーナーはちゃんとした読書ハブになります。"
        "zh" -> "再添几部作品，这个角落就会变成真正的阅读中心。"
        "ko" -> "작품이 몇 권 더 모이면 이 코너가 제대로 된 읽기 허브가 됩니다."
        else -> "Добавь несколько тайтлов, и этот уголок превратится в полноценный читательский центр."
    }
    recentComic != null && recentComic.readingProgress in 0.05f..0.98f -> when (language) {
        "en" -> "You are mid-run on \"${recentComic.title}\". The shelf is already warmed up for the next session."
        "ja" -> "「${recentComic.title}」を読み進めています。次の読書セッションの準備はできています。"
        "zh" -> "你还在读《${recentComic.title}》，书架已经为下一次阅读准备好了。"
        "ko" -> "\"${recentComic.title}\" 을 계속 읽는 중입니다. 다음 세션을 위해 선반이 이미 준비되어 있습니다."
        else -> "Ты сейчас в середине «${recentComic.title}». Полка уже готова к следующей сессии."
    }
    completedTitles == totalTitles && totalTitles > 0 -> when (language) {
        "en" -> "Current shelf cleared. Time to pick the next title for Mr.Comic."
        "ja" -> "今の棚は読み切りました。次の作品を選ぶ番です。"
        "zh" -> "当前书架已经清空，该给 Mr.Comic 挑下一部作品了。"
        "ko" -> "현재 선반은 모두 읽었습니다. 이제 다음 작품을 고를 차례입니다."
        else -> "Текущая полка уже дочитана. Пора выбрать Mr.Comic следующий тайтл."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted -> when (language) {
        "en" -> "This week's plan is already secured, so Mr.Comic can keep the shelf calm instead of chasing urgency."
        "ja" -> "今週の計画はもう確保されています。Mr.Comic は急がず、落ち着いた棚の流れを保てます。"
        "zh" -> "这周计划已经稳住了，所以 Mr.Comic 不用追着紧迫感跑，只要把书架节奏托稳。"
        "ko" -> "이번 주 계획이 이미 확보돼서, Mr.Comic 은 급하게 밀지 않고 선반의 리듬을 차분히 유지할 수 있습니다."
        else -> "План на неделю уже зафиксирован, и Mr.Comic может держать полку спокойно, без гонки за срочностью."
    }
    goalState.streakEnabled && goalState.currentStreak >= 3 -> when (language) {
        "en" -> "The reading streak is holding, and Mr.Comic already feels that the shelf has a dependable rhythm."
        "ja" -> "読書の連なりが続いていて、Mr.Comic も棚に安定したリズムを感じています。"
        "zh" -> "阅读连贯性已经稳住了，Mr.Comic 也感觉这座书架开始有了稳定节奏。"
        "ko" -> "읽기 흐름이 이어지고 있어서, Mr.Comic 도 이 선반에 안정적인 리듬이 생겼다고 느끼고 있습니다."
        else -> "Читательская серия держится, и Mr.Comic уже чувствует, что у этой полки появился надёжный ритм."
    }
    secretUnlocked -> when (language) {
        "en" -> "Secret found. Mr.Comic noticed that you pay attention to the shelf."
        "ja" -> "隠し要素を見つけました。Mr.Comic はちゃんと気づいています。"
        "zh" -> "隐藏内容已经找到了。Mr.Comic 注意到你一直在认真照看这座书架。"
        "ko" -> "숨은 요소를 찾았습니다. Mr.Comic 이 선반을 꼼꼼히 보는 걸 알고 있습니다."
        else -> "Секрет найден. Mr.Comic заметил, что ты внимательно следишь за полкой."
    }
    quotesCount >= 3 -> when (language) {
        "en" -> "Your quote stash is growing. This hub is starting to feel lived-in."
        "ja" -> "引用コレクションが増えています。このハブらしさが出てきました。"
        "zh" -> "你的摘录正在变多，这个阅读中心已经开始有自己的气质了。"
        "ko" -> "문구 보관함이 자라고 있습니다. 이 허브가 점점 자기 색을 갖기 시작했습니다."
        else -> "Запас цитат растёт. Этот центр уже начинает чувствоваться живым."
    }
    else -> when (language) {
        "en" -> "The shelf is ready. A few more reading sessions will give Mr.Comic more to work with."
        "ja" -> "棚の準備はできています。あと数回読めば、Mr.Comic に見せるものが増えてきます。"
        "zh" -> "书架已经准备好了，再读几次，Mr.Comic 就会有更多内容可整理。"
        "ko" -> "선반은 준비됐습니다. 몇 번만 더 읽으면 Mr.Comic 이 다룰 내용이 더 많아집니다."
        else -> "Полка готова. Ещё несколько сессий чтения, и у Mr.Comic будет больше материала для этого центра."
    }
}

private fun mrComicReadingRhythmText(
    language: String,
    goalState: DailyReadingGoalState
): String? = when {
    !goalState.enabled -> null
    goalState.isWeeklyPlanCompleted -> when (language) {
        "en" -> "Weekly plan ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} · goal days ${goalState.completedDaysThisWeek}/7"
        "ja" -> "今週 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}ページ ・ 達成日 ${goalState.completedDaysThisWeek}/7"
        "zh" -> "本周 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} 页 · 达标日 ${goalState.completedDaysThisWeek}/7"
        "ko" -> "이번 주 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}페이지 · 목표일 ${goalState.completedDaysThisWeek}/7"
        else -> "Неделя ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages} стр. · дней с целью ${goalState.completedDaysThisWeek}/7"
    }
    goalState.streakEnabled && goalState.currentStreak > 0 -> when (language) {
        "en" -> "Soft streak ${goalState.currentStreak} · grace left ${goalState.graceDaysRemainingThisWeek}/1"
        "ja" -> "ソフトストリーク ${goalState.currentStreak} ・ 残り猶予 ${goalState.graceDaysRemainingThisWeek}/1"
        "zh" -> "柔性连读 ${goalState.currentStreak} · 本周宽限剩余 ${goalState.graceDaysRemainingThisWeek}/1"
        "ko" -> "소프트 스트릭 ${goalState.currentStreak} · 이번 주 완충일 ${goalState.graceDaysRemainingThisWeek}/1"
        else -> "Мягкая серия ${goalState.currentStreak} · запасной день на неделе ${goalState.graceDaysRemainingThisWeek}/1"
    }
    goalState.pagesReadToday > 0 || goalState.pagesReadThisWeek > 0 -> when (language) {
        "en" -> "Today ${goalState.pagesReadToday}/${goalState.targetPages} · week ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        "ja" -> "今日 ${goalState.pagesReadToday}/${goalState.targetPages} ・ 今週 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        "zh" -> "今日 ${goalState.pagesReadToday}/${goalState.targetPages} · 本周 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        "ko" -> "오늘 ${goalState.pagesReadToday}/${goalState.targetPages} · 이번 주 ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
        else -> "Сегодня ${goalState.pagesReadToday}/${goalState.targetPages} · неделя ${goalState.pagesReadThisWeek}/${goalState.weeklyTargetPages}"
    }
    else -> when (language) {
        "en" -> "Weekly rhythm is ready as soon as the next reading session starts."
        "ja" -> "次の読書セッションが始まれば、週間リズムも動き出します。"
        "zh" -> "下一次阅读一开始，本周节奏就会启动。"
        "ko" -> "다음 읽기 세션이 시작되면 주간 리듬도 바로 움직입니다."
        else -> "Как только начнётся следующая сессия, недельный ритм тоже включится."
    }
}

private fun mrComicReadingCalendarTitle(language: String): String = when (language) {
    "en" -> "Reading rhythm"
    "ja" -> "読書リズム"
    "zh" -> "阅读节奏"
    "ko" -> "읽기 리듬"
    else -> "Ритм чтения"
}

private fun mrComicReadingCalendarSummaryText(
    language: String,
    activeDays: Int,
    goalDays: Int
): String = when (language) {
    "en" -> "$activeDays of 7 days had reading · goal days: $goalDays"
    "ja" -> "7日間で読んだ日: $activeDays ・ 目標達成日: $goalDays"
    "zh" -> "最近 7 天有 $activeDays 天在读 · 达标日：$goalDays"
    "ko" -> "최근 7일 중 읽은 날 ${activeDays}일 · 목표일 ${goalDays}일"
    else -> "За 7 дней чтение было в ${activeDays} днях · дней с целью: ${goalDays}"
}

private enum class MrComicReadingCalendarTone {
    READY,
    IN_MOTION,
    STREAK,
    DAILY_DONE,
    WEEKLY_DONE
}

private fun mrComicReadingCalendarTone(goalState: DailyReadingGoalState): MrComicReadingCalendarTone = when {
    goalState.isWeeklyPlanCompleted -> MrComicReadingCalendarTone.WEEKLY_DONE
    goalState.isCompleted -> MrComicReadingCalendarTone.DAILY_DONE
    goalState.streakEnabled && goalState.currentStreak > 0 -> MrComicReadingCalendarTone.STREAK
    goalState.pagesReadToday > 0 || goalState.pagesReadThisWeek > 0 -> MrComicReadingCalendarTone.IN_MOTION
    else -> MrComicReadingCalendarTone.READY
}

@Composable
private fun mrComicReadingCalendarToneContainerColor(
    tone: MrComicReadingCalendarTone
): Color = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> MaterialTheme.colorScheme.primary.copy(alpha = 0.14f)
    MrComicReadingCalendarTone.DAILY_DONE -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
    MrComicReadingCalendarTone.STREAK -> MaterialTheme.colorScheme.tertiary.copy(alpha = 0.16f)
    MrComicReadingCalendarTone.IN_MOTION -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.1f)
    MrComicReadingCalendarTone.READY -> MaterialTheme.colorScheme.surfaceContainerHigh
}

@Composable
private fun mrComicReadingCalendarToneContentColor(
    tone: MrComicReadingCalendarTone
): Color = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> MaterialTheme.colorScheme.primary
    MrComicReadingCalendarTone.DAILY_DONE -> MaterialTheme.colorScheme.secondary
    MrComicReadingCalendarTone.STREAK -> MaterialTheme.colorScheme.tertiary
    MrComicReadingCalendarTone.IN_MOTION -> MaterialTheme.colorScheme.secondary
    MrComicReadingCalendarTone.READY -> MaterialTheme.colorScheme.onSurfaceVariant
}

private fun mrComicReadingCalendarToneLabel(
    language: String,
    tone: MrComicReadingCalendarTone
): String = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> when (language) {
        "en" -> "Week locked"
        "ja" -> "今週達成"
        "zh" -> "本周已锁定"
        "ko" -> "이번 주 확보"
        else -> "Неделя закрыта"
    }
    MrComicReadingCalendarTone.DAILY_DONE -> when (language) {
        "en" -> "Today safe"
        "ja" -> "今日達成"
        "zh" -> "今日稳住"
        "ko" -> "오늘 확보"
        else -> "День закрыт"
    }
    MrComicReadingCalendarTone.STREAK -> when (language) {
        "en" -> "Streak alive"
        "ja" -> "連続中"
        "zh" -> "连读进行中"
        "ko" -> "스트릭 유지"
        else -> "Серия жива"
    }
    MrComicReadingCalendarTone.IN_MOTION -> when (language) {
        "en" -> "In motion"
        "ja" -> "進行中"
        "zh" -> "已启动"
        "ko" -> "움직이는 중"
        else -> "В движении"
    }
    MrComicReadingCalendarTone.READY -> when (language) {
        "en" -> "Ready"
        "ja" -> "準備完了"
        "zh" -> "待开始"
        "ko" -> "준비됨"
        else -> "Готово"
    }
}

private fun mrComicReadingCalendarStateText(
    language: String,
    tone: MrComicReadingCalendarTone,
    goalState: DailyReadingGoalState
): String = when (tone) {
    MrComicReadingCalendarTone.WEEKLY_DONE -> when (language) {
        "en" -> "The week is already secured, so the calendar can stay calm instead of chasing pages."
        "ja" -> "今週はもう確保されています。カレンダーはページを追わず、落ち着いていられます。"
        "zh" -> "这周已经稳住了，所以日历现在不用再追页数，只要保持节奏。"
        "ko" -> "이번 주는 이미 확보돼서, 이제 캘린더는 페이지를 쫓지 않고 리듬만 차분히 유지하면 됩니다."
        else -> "Эта неделя уже зафиксирована, и календарь может держаться спокойно, без погони за страницами."
    }
    MrComicReadingCalendarTone.DAILY_DONE -> when (language) {
        "en" -> "Today's goal is already closed. Any extra reading now goes straight into the weekly plan."
        "ja" -> "今日の目標はもう閉じています。この先の読書はそのまま週間プランに流れます。"
        "zh" -> "今天的目标已经完成，接下来的阅读会直接流入本周计划。"
        "ko" -> "오늘 목표는 이미 닫혔습니다. 이제부터의 읽기는 그대로 주간 계획으로 이어집니다."
        else -> "Цель на сегодня уже закрыта, и любое следующее чтение сразу идёт в недельный план."
    }
    MrComicReadingCalendarTone.STREAK -> when (language) {
        "en" -> "The streak is alive. One more soft reading touch is enough to keep the chain warm."
        "ja" -> "ストリークは続いています。やわらかな一回の読書で、この連なりを保てます。"
        "zh" -> "连读还活着，再来一次轻量阅读就足够把这条链保持温热。"
        "ko" -> "스트릭은 살아 있습니다. 가볍게 한 번 더 읽어 주면 이 흐름을 계속 따뜻하게 유지할 수 있습니다."
        else -> "Серия жива: одного мягкого возвращения к чтению достаточно, чтобы не рвать эту цепочку."
    }
    MrComicReadingCalendarTone.IN_MOTION -> when (language) {
        "en" -> "Today's rhythm is already moving. The calendar now just needs one more honest reading push."
        "ja" -> "今日のリズムはもう動いています。あとはもう一回、素直な読書を足すだけです。"
        "zh" -> "今天的节奏已经启动了，现在只差再补上一段正常阅读。"
        "ko" -> "오늘의 리듬은 이미 움직이고 있습니다. 이제 한 번만 더 자연스럽게 읽으면 됩니다."
        else -> "Сегодняшний ритм уже завёлся. Теперь календарю нужен ещё один честный шаг чтения."
    }
    MrComicReadingCalendarTone.READY -> when (language) {
        "en" -> "The week is ready to start. The first short session will wake up the whole strip."
        "ja" -> "今週の準備はできています。最初の短いセッションがこのリズム全体を動かします。"
        "zh" -> "这一周已经准备好了，第一小段阅读就会把整条节奏带起来。"
        "ko" -> "이번 주는 이미 준비돼 있습니다. 첫 짧은 세션이 이 리듬 스트립 전체를 깨울 겁니다."
        else -> "Неделя готова к старту. Первая короткая сессия сразу оживит всю эту полоску."
    }
}

private fun mrComicReadingCalendarDayLabel(
    dayKey: String,
    appLanguage: String
): String {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US)
    formatter.isLenient = false
    val date = runCatching { formatter.parse(dayKey) }.getOrNull() ?: return dayKey.takeLast(2)
    val calendar = Calendar.getInstance().apply { time = date }
    return when (appLanguage) {
        "ja" -> arrayOf("日", "月", "火", "水", "木", "金", "土")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "zh" -> arrayOf("日", "一", "二", "三", "四", "五", "六")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "ko" -> arrayOf("일", "월", "화", "수", "목", "금", "토")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        "en" -> arrayOf("S", "M", "T", "W", "T", "F", "S")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
        else -> arrayOf("Вс", "Пн", "Вт", "Ср", "Чт", "Пт", "Сб")[calendar.get(Calendar.DAY_OF_WEEK) - 1]
    }
}

private fun mrComicReadingCalendarDayNumber(dayKey: String): String {
    return dayKey.takeLast(2).trimStart('0').ifBlank { "0" }
}

private fun mrComicSearchContextTitle(language: String): String = when (language) {
    "en" -> "Search slice"
    "ja" -> "検索中の棚"
    "zh" -> "搜索切片"
    "ko" -> "검색 중인 선반"
    else -> "Срез поиска"
}

private fun mrComicSearchContextText(language: String): String = when (language) {
    "en" -> "Mr.Comic is looking only at the current search results. Clear the query to get the full library mood."
    "ja" -> "Mr.Comic は現在の検索結果だけを見ています。クエリを消すとライブラリ全体の状態に戻ります。"
    "zh" -> "Mr.Comic 现在只在看当前搜索结果。清除查询后才会回到整座书库的状态。"
    "ko" -> "Mr.Comic 은 지금 현재 검색 결과만 보고 있습니다. 검색어를 지우면 전체 라이브러리 상태로 돌아갑니다."
    else -> "Mr.Comic сейчас смотрит только на текущую поисковую выборку. Очисти запрос, чтобы вернуться к состоянию всей библиотеки."
}

private fun mrComicSearchNextStepText(language: String): String = when (language) {
    "en" -> "Next step: clear the search to see Mr.Comic's full shelf context again."
    "ja" -> "次の一歩: 検索をクリアして、Mr.Comic の全体コンテキストに戻ります。"
    "zh" -> "下一步：清除搜索，重新查看 Mr.Comic 的完整书架上下文。"
    "ko" -> "다음 단계: 검색을 지우고 Mr.Comic 의 전체 선반 컨텍스트로 돌아갑니다."
    else -> "Следующий шаг: очисти поиск, чтобы снова увидеть полный контекст полки Mr.Comic."
}

private fun mrComicSearchSummaryCaption(language: String): String = when (language) {
    "en" -> "Current search snapshot"
    "ja" -> "現在の検索スナップショット"
    "zh" -> "当前搜索快照"
    "ko" -> "현재 검색 스냅샷"
    else -> "Текущий срез поиска"
}

private fun mrComicAnalyticsTitle(language: String): String = when (language) {
    "en" -> "Analytics"
    "ja" -> "分析"
    "zh" -> "统计"
    "ko" -> "분석"
    else -> "Аналитика"
}

private fun mrComicAnalyticsSummaryText(
    language: String,
    goalState: DailyReadingGoalState
): String = mrComicReadingRhythmText(language, goalState) ?: when (language) {
    "en" -> "The summary will become richer after the next reading session."
    "ja" -> "次の読書セッションから、このサマリーはもっと育っていきます。"
    "zh" -> "下一次阅读之后，这里的统计会更丰富。"
    "ko" -> "다음 읽기 세션이 지나면 이 요약이 더 풍성해집니다."
    else -> "После следующей сессии чтения эта сводка станет богаче."
}

private fun mrComicSectionHintText(language: String): String = when (language) {
    "en" -> "This hub now keeps mascot context and progress summary together. Future companion features can grow here without crowding the main library."
    "ja" -> "このハブにマスコットまわりと進捗サマリーを集約しました。今後の companion 機能もメインのライブラリを圧迫せず、ここで拡張できます。"
    "zh" -> "这个中心现在集中展示吉祥物区域和阅读摘要。后续陪伴功能也可以继续放在这里，而不挤占主书库。"
    "ko" -> "이 허브에는 마스코트 영역과 진행 요약이 함께 모입니다. 앞으로의 companion 기능도 메인 라이브러리를 어지럽히지 않고 여기서 확장할 수 있습니다."
    else -> "Этот hub теперь собирает место для маскота и сводку по чтению. Дальше companion-фичи можно наращивать здесь, не перегружая основную библиотеку."
}

private fun mrComicProgressEntryHintText(language: String): String = when (language) {
    "en" -> "Open the full progress profile to see Mr.Comic growth, reading rhythm, recent trail and the next unlock together."
    "ja" -> "フルの進捗プロフィールを開くと、Mr.Comic の成長、読書リズム、最近のトレイル、次の解除をまとめて見られます。"
    "zh" -> "打开完整进度档案后，可以一起查看 Mr.Comic 的成长、阅读节奏、最近轨迹和下一项解锁。"
    "ko" -> "전체 진행 프로필을 열면 Mr.Comic 성장, 읽기 리듬, 최근 흔적, 다음 해금을 한곳에서 볼 수 있습니다."
    else -> "Открой полный профиль прогресса: там вместе живут рост Mr.Comic, ритм чтения, недавний след и следующее открытие."
}

private fun mrComicProgressEntryCtaLabel(language: String): String = when (language) {
    "en" -> "Open progress"
    "ja" -> "進捗を開く"
    "zh" -> "打开进度"
    "ko" -> "진행 열기"
    else -> "Открыть прогресс"
}

private fun mrComicQuickActionsTitle(language: String): String = when (language) {
    "en" -> "Quick actions"
    "ja" -> "クイックアクション"
    "zh" -> "快捷操作"
    "ko" -> "빠른 동작"
    else -> "Быстрые действия"
}

internal fun mrComicPrimaryQuickAction(
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState
): MrComicQuickAction = when {
    totalTitles == 0 -> MrComicQuickAction.FILES
    goalState.enabled &&
        !goalState.isCompleted &&
        bookmarkedTitles > 0 -> MrComicQuickAction.BOOKMARKS
    goalState.enabled &&
        goalState.isCompleted &&
        !goalState.isWeeklyPlanCompleted &&
        bookmarkedTitles > 0 -> MrComicQuickAction.BOOKMARKS
    goalState.enabled &&
        goalState.isWeeklyPlanCompleted &&
        quotesCount > 0 -> MrComicQuickAction.QUOTES
    goalState.enabled &&
        goalState.streakEnabled &&
        goalState.currentStreak > 0 &&
        bookmarkedTitles > 0 -> MrComicQuickAction.BOOKMARKS
    bookmarkedTitles <= 0 && quotesCount <= 0 -> MrComicQuickAction.FILES
    bookmarkedTitles >= quotesCount -> MrComicQuickAction.BOOKMARKS
    else -> MrComicQuickAction.QUOTES
}

internal fun mrComicNextStepRoute(
    hasRecent: Boolean,
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState
): MrComicNextStepRoute = when {
    totalTitles == 0 -> MrComicNextStepRoute.FILES
    hasRecent -> MrComicNextStepRoute.RECENT
    else -> when (mrComicPrimaryQuickAction(totalTitles, bookmarkedTitles, quotesCount, goalState)) {
        MrComicQuickAction.FILES -> MrComicNextStepRoute.FILES
        MrComicQuickAction.BOOKMARKS -> if (bookmarkedTitles > 0) {
            MrComicNextStepRoute.BOOKMARKS
        } else if (quotesCount > 0) {
            MrComicNextStepRoute.QUOTES
        } else {
            MrComicNextStepRoute.FILES
        }
        MrComicQuickAction.QUOTES -> if (quotesCount > 0) {
            MrComicNextStepRoute.QUOTES
        } else if (bookmarkedTitles > 0) {
            MrComicNextStepRoute.BOOKMARKS
        } else {
            MrComicNextStepRoute.FILES
        }
    }
}

private fun mrComicQuickActionHandler(
    action: MrComicQuickAction,
    onOpenFiles: () -> Unit,
    onOpenBookmarks: () -> Unit,
    onOpenQuotes: () -> Unit
): () -> Unit = when (action) {
    MrComicQuickAction.FILES -> onOpenFiles
    MrComicQuickAction.BOOKMARKS -> onOpenBookmarks
    MrComicQuickAction.QUOTES -> onOpenQuotes
}

private fun mrComicQuickActionIcon(action: MrComicQuickAction): ImageVector = when (action) {
    MrComicQuickAction.FILES -> Icons.AutoMirrored.Filled.InsertDriveFile
    MrComicQuickAction.BOOKMARKS -> Icons.Default.Bookmark
    MrComicQuickAction.QUOTES -> Icons.AutoMirrored.Filled.MenuBook
}

private fun mrComicQuickActionLabel(
    action: MrComicQuickAction,
    filesLabel: String,
    bookmarksLabel: String,
    quotesLabel: String,
    bookmarkedTitles: Int,
    quotesCount: Int
): String = when (action) {
    MrComicQuickAction.FILES -> filesLabel
    MrComicQuickAction.BOOKMARKS -> "$bookmarksLabel · $bookmarkedTitles"
    MrComicQuickAction.QUOTES -> "$quotesLabel · $quotesCount"
}

private fun mrComicQuickActionsText(
    language: String,
    searchActive: Boolean,
    hasRecent: Boolean,
    totalTitles: Int,
    bookmarkedTitles: Int,
    quotesCount: Int,
    goalState: DailyReadingGoalState,
    primaryAction: MrComicQuickAction
): String = when {
    searchActive -> when (language) {
        "en" -> "The current search slice is active. Jump to the right section without leaving this hub."
        "ja" -> "現在は検索中のスライスです。このハブから必要なセクションへすぐ移動できます。"
        "zh" -> "当前正在查看搜索切片。可以直接从这里跳到需要的分区。"
        "ko" -> "현재는 검색 중인 슬라이스입니다. 이 허브에서 바로 필요한 섹션으로 이동할 수 있습니다."
        else -> "Сейчас открыт поисковый срез. Отсюда можно сразу перейти в нужный раздел."
    }
    totalTitles == 0 -> when (language) {
        "en" -> "Start with Files. As soon as the shelf appears, Mr.Comic will have somewhere to guide you next."
        "ja" -> "まずはファイルから始めましょう。棚ができれば、Mr.Comic も次の導線を作れます。"
        "zh" -> "先从文件区开始。书架一出现，Mr.Comic 就能继续为你指路。"
        "ko" -> "먼저 파일에서 시작하세요. 선반이 생기면 Mr.Comic 도 다음 동선을 잡을 수 있습니다."
        else -> "Начни с раздела файлов. Как только появится полка, Mr.Comic сможет вести дальше."
    }
    goalState.enabled &&
        !goalState.isCompleted &&
        primaryAction == MrComicQuickAction.BOOKMARKS &&
        bookmarkedTitles > 0 -> when (language) {
        "en" -> "Today's goal is still open, so Mr.Comic lifts the fastest saved return route through bookmarks."
        "ja" -> "今日の目標はまだ開いているので、Mr.Comic はブックマークから最短の戻り道を前に出します。"
        "zh" -> "今天的目标还没收口，所以 Mr.Comic 会先把书签里的最快回跳路线顶上来。"
        "ko" -> "오늘 목표가 아직 열려 있어서, Mr.Comic 이 북마크 쪽의 가장 빠른 복귀 경로를 먼저 올립니다."
        else -> "Дневная цель ещё открыта, поэтому Mr.Comic поднимает самый быстрый путь возврата через закладки."
    }
    goalState.enabled &&
        goalState.isCompleted &&
        !goalState.isWeeklyPlanCompleted &&
        primaryAction == MrComicQuickAction.BOOKMARKS &&
        bookmarkedTitles > 0 -> when (language) {
        "en" -> "Today's goal is already safe, so bookmarks become the easiest way to carry the same rhythm into the weekly plan."
        "ja" -> "今日の目標はもう安全圏なので、同じリズムを週間プランへ運ぶ最短ルートはブックマークです。"
        "zh" -> "今天的目标已经稳住了，书签就成了把同样节奏继续推向周计划的最省力路线。"
        "ko" -> "오늘 목표는 이미 확보됐으니, 같은 리듬을 주간 계획으로 이어 가는 가장 쉬운 길은 북마크입니다."
        else -> "Дневная цель уже закрыта, и закладки становятся самым лёгким способом протянуть тот же ритм в недельный план."
    }
    goalState.enabled &&
        goalState.isWeeklyPlanCompleted &&
        primaryAction == MrComicQuickAction.QUOTES &&
        quotesCount > 0 -> when (language) {
        "en" -> "The weekly plan is already closed, so Mr.Comic can move the warmer quote route to the front."
        "ja" -> "週間プランはもう閉じているので、Mr.Comic はより柔らかい引用ルートを前に出せます。"
        "zh" -> "周计划已经完成，所以 Mr.Comic 可以把更柔和的摘录路线提到前面。"
        "ko" -> "주간 계획이 이미 닫혀 있어서, Mr.Comic 이 더 부드러운 문구 경로를 앞으로 올릴 수 있습니다."
        else -> "Недельный план уже закрыт, и Mr.Comic может выдвинуть вперёд более мягкий маршрут через цитаты."
    }
    goalState.enabled &&
        goalState.streakEnabled &&
        goalState.currentStreak > 0 &&
        primaryAction == MrComicQuickAction.BOOKMARKS &&
        bookmarkedTitles > 0 -> when (language) {
        "en" -> "The streak is alive, so bookmarks stay first as the cleanest way to keep the reading chain unbroken."
        "ja" -> "ストリークが続いているので、読書の連なりを切らさない最短ルートとしてブックマークが先頭に残ります。"
        "zh" -> "连读还在继续，所以书签会留在最前面，作为不断链的最干净入口。"
        "ko" -> "스트릭이 살아 있어서, 읽기 흐름을 끊지 않는 가장 깔끔한 입구로 북마크가 앞에 남습니다."
        else -> "Серия держится, поэтому закладки остаются первыми как самый чистый способ не рвать цепочку чтения."
    }
    primaryAction == MrComicQuickAction.BOOKMARKS && bookmarkedTitles > 0 -> when (language) {
        "en" -> "Bookmarks already hold your strongest saved route. Mr.Comic brings that path forward first."
        "ja" -> "いま一番強い保存ルートはブックマークです。Mr.Comic はまずそこを前に出します。"
        "zh" -> "书签已经是现在最稳的回跳路线，所以 Mr.Comic 先把它放在前面。"
        "ko" -> "지금 가장 탄탄한 저장 경로는 북마크입니다. Mr.Comic 이 먼저 그 길을 앞으로 올립니다."
        else -> "Сейчас самый живой сохранённый маршрут лежит в закладках, поэтому Mr.Comic выдвигает его первым."
    }
    primaryAction == MrComicQuickAction.QUOTES && quotesCount > 0 -> when (language) {
        "en" -> "Quotes already form the warmer detour. Mr.Comic promotes them before the colder routes."
        "ja" -> "引用はもう温かい寄り道になっています。Mr.Comic は冷えたルートより先にそこを出します。"
        "zh" -> "摘录已经形成更热的回跳路径，所以 Mr.Comic 会先把它提到前面。"
        "ko" -> "문구는 이미 더 따뜻한 우회 경로가 됐습니다. Mr.Comic 이 그 길을 먼저 내세웁니다."
        else -> "Цитаты уже стали тёплым обходным маршрутом, и Mr.Comic поднимает их выше холодных путей."
    }
    hasRecent -> when (language) {
        "en" -> "Recent reading is already pinned above. This panel now pushes whichever side route is actually alive."
        "ja" -> "最近の読書はすでに上に固定されています。このパネルでは、本当に生きている寄り道だけを前に出します。"
        "zh" -> "最近阅读已经固定在上面。这里会优先推真正还活着的侧路线。"
        "ko" -> "최근 읽기는 위에 고정돼 있습니다. 이 패널은 실제로 살아 있는 사이드 경로만 앞으로 밀어 줍니다."
        else -> "Последнее чтение уже закреплено выше. Здесь вперёд выдвигается только тот боковой маршрут, который реально жив."
    }
    else -> when (language) {
        "en" -> "There is no active reading trail right now. Mr.Comic pushes the next strongest route instead of treating every door the same."
        "ja" -> "今はアクティブな読書トレイルがありません。Mr.Comic は全部の入口を同じにせず、次に強いルートを前に出します。"
        "zh" -> "现在没有活跃的阅读轨迹。Mr.Comic 不再把每个入口都看成一样，而是优先推出更强的路线。"
        "ko" -> "지금은 활성 읽기 흔적이 없습니다. Mr.Comic 은 모든 문을 똑같이 두지 않고 더 강한 다음 경로를 먼저 올립니다."
        else -> "Сейчас нет активного читательского следа. Mr.Comic больше не делает все двери одинаковыми и выдвигает более сильный следующий маршрут."
    }
}

private fun mrComicOpenFilesLabel(language: String): String = when (language) {
    "en" -> "Files"
    "ja" -> "ファイル"
    "zh" -> "文件"
    "ko" -> "파일"
    else -> "Файлы"
}

private fun mrComicRecentLabel(
    language: String,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "Last read in results"
        "ja" -> "検索結果内の最近読んだ作品"
        "zh" -> "结果中的最近阅读"
        "ko" -> "검색 결과 안의 최근 읽기"
        else -> "Последнее чтение в результатах"
    }
} else {
    when (language) {
        "en" -> "Last read"
        "ja" -> "最近読んだ作品"
        "zh" -> "最近阅读"
        "ko" -> "최근 읽은 작품"
        else -> "Последнее чтение"
    }
}

private fun mrComicOpenRecentLabel(language: String): String = when (language) {
    "en" -> "Open"
    "ja" -> "開く"
    "zh" -> "打开"
    "ko" -> "열기"
    else -> "Открыть"
}

private fun mrComicEmptyRecentText(
    language: String,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "There is no recent reading trail inside the current results. Clear the search to return to the full trail."
        "ja" -> "現在の検索結果には最近の読書トレイルがありません。検索をクリアすると全体のトレイルに戻ります。"
        "zh" -> "当前搜索结果里没有最近阅读轨迹。清除搜索后会回到完整轨迹。"
        "ko" -> "현재 검색 결과 안에는 최근 읽기 흔적이 없습니다. 검색을 지우면 전체 읽기 흔적으로 돌아갑니다."
        else -> "В текущих результатах нет недавнего чтения. Очисти поиск, чтобы вернуться к полному читательскому следу."
    }
} else {
    when (language) {
        "en" -> "As soon as you read something, Mr.Comic will keep your latest title here for a quick return."
        "ja" -> "何か読み始めると、Mr.Comic が最新の作品をここに置いてすぐ戻れるようにします。"
        "zh" -> "开始阅读后，Mr.Comic 会把你最近的作品放在这里，方便快速返回。"
        "ko" -> "읽기 시작하면 Mr.Comic 이 최근 작품을 여기에 두고 바로 돌아갈 수 있게 합니다."
        else -> "Как только появится чтение, Mr.Comic будет держать здесь последний тайтл для быстрого возврата."
    }
}

private fun mrComicNextStepText(
    language: String,
    hasRecent: Boolean,
    bookmarkedTitles: Int,
    quotesCount: Int,
    totalTitles: Int,
    goalState: DailyReadingGoalState
): String {
    val route = mrComicNextStepRoute(
        hasRecent = hasRecent,
        totalTitles = totalTitles,
        bookmarkedTitles = bookmarkedTitles,
        quotesCount = quotesCount,
        goalState = goalState
    )
    return when {
    totalTitles == 0 -> when (language) {
        "en" -> "Next step: add your first titles and the hub will start filling up."
        "ja" -> "次の一歩: 最初の作品を追加すると、このハブが動き始めます。"
        "zh" -> "下一步：先添加几部作品，这个中心就会开始充实起来。"
        "ko" -> "다음 단계: 첫 작품들을 추가하면 이 허브가 살아나기 시작합니다."
        else -> "Следующий шаг: добавь первые тайтлы, и этот центр начнёт оживать."
    }
    goalState.enabled && !goalState.isCompleted && goalState.pagesReadToday > 0 && hasRecent -> when (language) {
        "en" -> "Next step: return to your latest title and close the remaining ${goalState.remainingPages} pages for today."
        "ja" -> "次の一歩: 最新の作品に戻って、今日の残り ${goalState.remainingPages} ページを閉じましょう。"
        "zh" -> "下一步：回到最近的作品，把今天还剩的 ${goalState.remainingPages} 页补完。"
        "ko" -> "다음 단계: 최근 작품으로 돌아가 오늘 남은 ${goalState.remainingPages}페이지를 채우기."
        else -> "Следующий шаг: вернись к последнему тайтлу и закрой оставшиеся на сегодня ${goalState.remainingPages} стр."
    }
    goalState.enabled && !goalState.isCompleted && hasRecent -> when (language) {
        "en" -> "Next step: start today's pace from your latest title and warm up the daily goal."
        "ja" -> "次の一歩: 最新の作品から今日のペースを始めて、デイリー目標を温めましょう。"
        "zh" -> "下一步：从最近的作品开始今天的节奏，把每日目标先热起来。"
        "ko" -> "다음 단계: 최근 작품에서 오늘의 리듬을 시작하고 데일리 목표를 데우기."
        else -> "Следующий шаг: начни сегодняшний темп с последнего тайтла и разогрей дневную цель."
    }
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted && hasRecent -> when (language) {
        "en" -> "Next step: today's goal is already safe, so carry the same route toward the weekly plan."
        "ja" -> "次の一歩: 今日の目標はもう安全圏です。同じルートで週間プランへ進めます。"
        "zh" -> "下一步：今天的目标已经稳住了，可以沿着同一路线继续推周计划。"
        "ko" -> "다음 단계: 오늘 목표는 이미 안전하니, 같은 경로로 주간 계획까지 밀어 갈 수 있습니다."
        else -> "Следующий шаг: дневная цель уже в безопасности, и этим же маршрутом можно дотянуться до недельного плана."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted && hasRecent -> when (language) {
        "en" -> "Next step: the weekly plan is closed, so just keep a calm return path to your latest title."
        "ja" -> "次の一歩: 週間プランは閉じています。あとは最新の作品へ穏やかに戻るだけです。"
        "zh" -> "下一步：周计划已经完成，现在只要保留一条平稳回到最近作品的路径就够了。"
        "ko" -> "다음 단계: 주간 계획은 이미 끝났으니, 이제 최근 작품으로 차분히 돌아가는 길만 유지하면 됩니다."
        else -> "Следующий шаг: недельный план уже закрыт, так что достаточно просто держать спокойный путь к последнему тайтлу."
    }
    goalState.enabled && goalState.streakEnabled && goalState.currentStreak > 0 && bookmarkedTitles > 0 -> when (language) {
        "en" -> "Next step: keep the soft streak alive through one of your saved bookmarks."
        "ja" -> "次の一歩: 保存したブックマークのどれかから、やわらかいストリークをつなぎましょう。"
        "zh" -> "下一步：从已保存的书签里接上一条路线，把柔性连读继续下去。"
        "ko" -> "다음 단계: 저장한 북마크 중 하나로 소프트 스트릭을 이어가기."
        else -> "Следующий шаг: поддержи мягкую серию через один из сохранённых маршрутов в закладках."
    }
    goalState.enabled && !goalState.isCompleted && goalState.pagesReadToday > 0 && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and close the remaining ${goalState.remainingPages} pages for today from a saved route."
        "ja" -> "次の一歩: ブックマークを開いて、保存したルートから今日の残り ${goalState.remainingPages} ページを閉じましょう。"
        "zh" -> "下一步：打开书签，从保存的路线补完今天还剩的 ${goalState.remainingPages} 页。"
        "ko" -> "다음 단계: 북마크를 열고 저장한 경로에서 오늘 남은 ${goalState.remainingPages}페이지를 채우기."
        else -> "Следующий шаг: открой закладки и закрой оставшиеся на сегодня ${goalState.remainingPages} стр. через сохранённый маршрут."
    }
    goalState.enabled && !goalState.isCompleted && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and warm up today's goal from the strongest saved route."
        "ja" -> "次の一歩: ブックマークを開いて、一番しっかり残っているルートから今日の目標を温めましょう。"
        "zh" -> "下一步：打开书签，从最稳的保存路线把今天的目标先热起来。"
        "ko" -> "다음 단계: 북마크를 열고 가장 탄탄한 저장 경로에서 오늘 목표를 데우기."
        else -> "Следующий шаг: открой закладки и разогрей цель на сегодня от самого живого сохранённого маршрута."
    }
    goalState.enabled && !goalState.isCompleted && route == MrComicNextStepRoute.FILES -> when (language) {
        "en" -> "Next step: open Files and start today's rhythm from the next title on the shelf."
        "ja" -> "次の一歩: ファイルを開いて、棚の次の作品から今日のリズムを始めましょう。"
        "zh" -> "下一步：打开文件区，从书架上的下一部作品把今天的节奏启动起来。"
        "ko" -> "다음 단계: 파일을 열고 선반의 다음 작품에서 오늘 리듬을 시작하기."
        else -> "Следующий шаг: открой файлы и начни сегодняшний ритм со следующего тайтла на полке."
    }
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and carry the weekly plan forward through a saved route."
        "ja" -> "次の一歩: ブックマークを開いて、保存したルートのまま週間プランを進めましょう。"
        "zh" -> "下一步：打开书签，沿着保存的路线继续把周计划往前推。"
        "ko" -> "다음 단계: 북마크를 열고 저장된 경로로 주간 계획을 계속 밀어 가기."
        else -> "Следующий шаг: открой закладки и протяни недельный план дальше по сохранённому маршруту."
    }
    goalState.enabled && goalState.isCompleted && !goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.FILES -> when (language) {
        "en" -> "Next step: open Files and feed the weekly plan with the next title on the shelf."
        "ja" -> "次の一歩: ファイルを開いて、棚の次の作品で週間プランを進めましょう。"
        "zh" -> "下一步：打开文件区，用书架上的下一部作品继续喂给周计划。"
        "ko" -> "다음 단계: 파일을 열고 선반의 다음 작품으로 주간 계획을 이어 가기."
        else -> "Следующий шаг: открой файлы и корми недельный план следующим тайтлом на полке."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.QUOTES -> when (language) {
        "en" -> "Next step: revisit saved quotes and keep the return path warm without adding urgency."
        "ja" -> "次の一歩: 保存した引用を見返して、急がずに戻り道だけを温かく保ちましょう。"
        "zh" -> "下一步：回看保存的摘录，安静地保留回到故事的那条路，不再增加紧迫感。"
        "ko" -> "다음 단계: 저장된 문구를 다시 보며 조급함 없이 돌아가는 길만 따뜻하게 유지하기."
        else -> "Следующий шаг: пересмотри сохранённые цитаты и просто держи тёплый путь возврата, без новой срочности."
    }
    goalState.enabled && goalState.isWeeklyPlanCompleted && route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and keep a calm return route alive after the weekly plan."
        "ja" -> "次の一歩: ブックマークを開いて、週間プランの後も穏やかな戻り道を保ちましょう。"
        "zh" -> "下一步：打开书签，在周计划完成后继续保留一条平静的回跳路线。"
        "ko" -> "다음 단계: 북마크를 열고 주간 계획 이후에도 차분한 복귀 경로를 유지하기."
        else -> "Следующий шаг: открой закладки и оставь спокойный маршрут возврата живым уже после недельного плана."
    }
    route == MrComicNextStepRoute.RECENT -> when (language) {
        "en" -> "Next step: continue your latest title from the reading trail below."
        "ja" -> "次の一歩: 下の読書トレイルから最新の作品に戻れます。"
        "zh" -> "下一步：可以从下面的阅读轨迹继续最近的作品。"
        "ko" -> "다음 단계: 아래 읽기 흔적에서 최근 작품을 이어갈 수 있습니다."
        else -> "Следующий шаг: можно вернуться к последнему тайтлу через блок чтения ниже."
    }
    route == MrComicNextStepRoute.BOOKMARKS -> when (language) {
        "en" -> "Next step: open bookmarks and pick up one of your saved titles."
        "ja" -> "次の一歩: ブックマークを開いて、残しておいた作品を続けましょう。"
        "zh" -> "下一步：打开书签，从已保存的作品里继续一部。"
        "ko" -> "다음 단계: 북마크를 열고 저장해 둔 작품 중 하나를 이어가 보세요."
        else -> "Следующий шаг: открой закладки и подхвати один из сохранённых тайтлов."
    }
    route == MrComicNextStepRoute.QUOTES -> when (language) {
        "en" -> "Next step: revisit saved quotes and jump back into a story from there."
        "ja" -> "次の一歩: 保存した引用を見返して、そこから物語に戻れます。"
        "zh" -> "下一步：先看看保存的摘录，再从那里回到故事里。"
        "ko" -> "다음 단계: 저장한 문구를 둘러보고 거기서 다시 이야기로 돌아갈 수 있습니다."
        else -> "Следующий шаг: можно открыть цитаты и вернуться в историю через сохранённые фрагменты."
    }
    else -> when (language) {
        "en" -> "Next step: browse your files and choose what Mr.Comic should track next."
        "ja" -> "次の一歩: ファイルを開いて、次に追いかける作品を選びましょう。"
        "zh" -> "下一步：去文件区挑一本，让 Mr.Comic 继续帮你跟进。"
        "ko" -> "다음 단계: 파일 섹션에서 다음에 따라갈 작품을 골라 보세요."
        else -> "Следующий шаг: загляни в файлы и выбери, что Mr.Comic будет сопровождать дальше."
    }
}
}

private enum class MrComicMetric {
    TITLES,
    COMPLETED,
    BOOKMARKS,
    QUOTES
}

private fun mrComicMetricLabel(
    language: String,
    metric: MrComicMetric,
    searchActive: Boolean
): String = when (metric) {
    MrComicMetric.TITLES -> when (language) {
        "en" -> if (searchActive) "Results" else "Titles"
        "ja" -> if (searchActive) "検索結果" else "タイトル"
        "zh" -> if (searchActive) "结果" else "条目"
        "ko" -> if (searchActive) "검색 결과" else "타이틀"
        else -> if (searchActive) "Результаты" else "Тайтлы"
    }
    MrComicMetric.COMPLETED -> when (language) {
        "en" -> "Completed"
        "ja" -> "読了"
        "zh" -> "读完"
        "ko" -> "완독"
        else -> "Прочитано"
    }
    MrComicMetric.BOOKMARKS -> when (language) {
        "en" -> "Bookmarks"
        "ja" -> "ブックマーク"
        "zh" -> "书签"
        "ko" -> "북마크"
        else -> "Закладки"
    }
    MrComicMetric.QUOTES -> when (language) {
        "en" -> "Quotes"
        "ja" -> "引用"
        "zh" -> "摘录"
        "ko" -> "문구"
        else -> "Цитаты"
    }
}

private fun mrComicLibraryFootnote(
    language: String,
    authorCount: Int,
    genreCount: Int,
    secretUnlocked: Boolean,
    searchActive: Boolean
): String = if (searchActive) {
    when (language) {
        "en" -> "$authorCount authors and $genreCount genres in the current search slice."
        "ja" -> "現在の検索では著者 $authorCount 人、ジャンル $genreCount 種が見えています。"
        "zh" -> "当前搜索切片里可见作者 $authorCount 位、题材 $genreCount 类。"
        "ko" -> "현재 검색 슬라이스에는 작가 ${authorCount}명, 장르 ${genreCount}개가 보입니다."
        else -> "В текущем поисковом срезе видно $authorCount авторов и $genreCount жанров."
    }
} else when (language) {
    "en" -> {
        val secretText = if (secretUnlocked) "Secret reward unlocked." else "One secret reward is still hidden."
        "$authorCount authors, $genreCount genres. $secretText"
    }
    "ja" -> {
        val secretText = if (secretUnlocked) "隠し報酬は解除済みです。" else "まだ隠し報酬がひとつ残っています。"
        "著者 $authorCount 人、ジャンル $genreCount 種。$secretText"
    }
    "zh" -> {
        val secretText = if (secretUnlocked) "隐藏奖励已解锁。" else "还有一个隐藏奖励尚未发现。"
        "作者 $authorCount 位，题材 $genreCount 类。$secretText"
    }
    "ko" -> {
        val secretText = if (secretUnlocked) "숨은 보상을 이미 해금했습니다." else "아직 숨은 보상 하나가 남아 있습니다."
        "작가 ${authorCount}명, 장르 ${genreCount}개. $secretText"
    }
    else -> {
        val secretText = if (secretUnlocked) "Секретная награда уже открыта." else "Одна секретная награда ещё спрятана."
        "$authorCount авторов, $genreCount жанров. $secretText"
    }
}

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
private fun LibraryPlaceholderLeadIcon(
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

private fun formatQuoteDate(timestamp: Long, language: String): String {
    val pattern = when (language) {
        "en" -> "MMM d"
        "ja", "zh", "ko" -> "yyyy-MM-dd"
        else -> "dd.MM.yyyy"
    }
    val locale = when (language) {
        "ru", "en", "ja", "zh", "ko" -> Locale.forLanguageTag(language)
        else -> Locale.getDefault()
    }
    return SimpleDateFormat(pattern, locale).format(Date(timestamp))
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

