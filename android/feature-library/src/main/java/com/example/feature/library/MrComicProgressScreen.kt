package com.example.feature.library

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBarsIgnoringVisibility
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.LocalFireDepartment
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.core.domain.analytics.DailyReadingCalendarDay
import com.example.core.domain.analytics.DailyReadingGoalState
import com.example.core.domain.analytics.MascotProgressState
import com.example.core.domain.analytics.MrComicMascotContext
import com.example.core.domain.analytics.MrComicMascotState
import com.example.core.domain.analytics.MascotStageArchive
import com.example.core.domain.analytics.MascotStageTimeline
import com.example.core.domain.analytics.mrComicMascotContextLabel
import com.example.core.domain.analytics.mrComicMascotContextText
import com.example.core.domain.analytics.mrComicMascotMoodLabel
import com.example.core.domain.analytics.resolveMascotStageArchive
import com.example.core.domain.analytics.resolveMascotStageTimeline
import com.example.core.domain.analytics.resolveMrComicMascotState
import com.example.core.model.Comic
import com.example.core.ui.designsystem.MrComicCardSurface
import com.example.core.ui.designsystem.MrComicCardVariant
import com.example.core.ui.designsystem.MrComicFilterChip
import com.example.core.ui.designsystem.MrComicPill
import com.example.core.ui.designsystem.MrComicProgressLine
import com.example.core.ui.library.RootChromeTopBarHost
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.mascot.MrComicStageArchivePortrait
import com.example.core.ui.mascot.MrComicMiniAvatar
import com.example.core.ui.mascot.MrComicMascotSurfaceMode
import com.example.core.ui.mascot.resolveMrComicMascotSurfaceMode
import com.example.core.ui.library.rootChromeStableTopBarInsets
import com.example.core.ui.library.rootChromeTopBarColors
import com.example.feature.library.components.AchievementStrings
import com.example.feature.library.components.LibraryAchievement
import com.example.feature.library.components.LibraryAchievementsRow
import com.example.feature.library.components.computeAchievements
import java.text.SimpleDateFormat
import java.util.GregorianCalendar
import java.util.Locale
import java.util.TimeZone

private data class MrComicProgressText(
    val title: String,
    val summaryTitle: String,
    val summaryBody: (String, Int, Int, Int) -> String,
    val achievementsProgressTitle: String,
    val achievementsUnlocked: (Int, Int) -> String,
    val achievementsInProgress: (Int) -> String,
    val achievementsSecretUnlocked: String,
    val achievementsVisibleComplete: String,
    val nextUnlockTitle: String,
    val noNextUnlock: String,
    val rhythmTitle: String,
    val rhythmDisabled: String,
    val recentTitle: String,
    val recentEmpty: String,
    val openRecent: String,
    val goalPages: (Int, Int) -> String,
    val weekPages: (Int, Int, Int) -> String,
    val historyTitle: String,
    val historyEmpty: String,
    val historyWindow: (String, Int, Int) -> String,
    val historyPages: (Int) -> String,
    val historyXp: (Int) -> String,
    val historyMinutes: (Int) -> String,
    val historyCheckpoints: (Int) -> String,
    val historyActiveDays: (Int, Int) -> String,
    val highlightsTitle: String,
    val highlightsCompletedTitles: String,
    val highlightsCompletedTitlesValue: (Int) -> String,
    val highlightsBestStreak: String,
    val highlightsBestStreakValue: (Int) -> String,
    val highlightsBestWeek: String,
    val highlightsBestWeekValue: (Int) -> String,
    val highlightsBestWeekSupporting: (Int) -> String,
    val highlightsBestWeekEmpty: String,
    val historyRangeWeek: String,
    val historyRangeMonth: String,
    val historyRangeAll: String,
    val streakGraceTitle: String,
    val streakGraceDisabled: String,
    val streakGraceIdle: String,
    val streakGraceLive: String,
    val bestStreak: (Int) -> String,
    val streakGoalDays: (Int) -> String,
    val graceOff: String,
    val graceReady: String,
    val graceSpent: String,
    val streak: (Int) -> String,
    val grace: (Int) -> String,
    val pagesRead: (Int) -> String,
    val completedTitles: (Int) -> String
)

internal enum class MrComicProgressHistoryRange {
    LAST_7,
    LAST_30,
    ALL
}

internal data class MrComicProgressHistorySummary(
    val pagesRead: Int,
    val xpEarned: Int,
    val minutesRead: Int,
    val completedCheckpoints: Int,
    val activeDays: Int
)

internal data class MrComicProgressBestWeekSummary(
    val weekKey: String,
    val pagesRead: Int,
    val activeDays: Int,
    val completedCheckpoints: Int
)

internal enum class MrComicProgressStreakGraceState {
    DISABLED,
    IDLE,
    LIVE
}

internal enum class MrComicProgressRecentEmptyState {
    EMPTY_LIBRARY,
    SEARCH_RESULTS,
    GENERIC
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalLayoutApi::class)
@Composable
fun MrComicProgressRoute(
    onBackClick: () -> Unit,
    onComicClick: (String) -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    val strings = LocalStrings.current
    val text = remember(uiState.appLanguage) { mrComicProgressText(uiState.appLanguage) }
    val achievementStrings = remember(strings.languageCode) { mrComicAchievementStrings(strings) }
    val achievements = remember(
        uiState.allComicsRawCount,
        uiState.completedComicCount,
        uiState.bookmarkedComicCount,
        uiState.rawAuthors,
        uiState.rawGenres,
        uiState.secretCatUnlocked,
        achievementStrings
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
    val achievementSummary = remember(achievements, uiState.rememberedMascotQuestAchievementId) {
        resolveMrComicAchievementSummary(
            achievements = achievements,
            rememberedAchievementId = uiState.rememberedMascotQuestAchievementId
        )
    }
    val mascotState = remember(
        uiState.mascotProgress,
        uiState.allComicsRawCount,
        uiState.completedComicCount,
        uiState.bookmarkedComicCount,
        uiState.totalQuoteCount,
        achievementSummary,
        uiState.secretCatUnlocked,
        uiState.dailyReadingGoalState,
        uiState.recentlyRead,
        uiState.acknowledgedMascotStageName,
        uiState.mascotUiEnabled
    ) {
        resolveMrComicMascotState(
            context = MrComicMascotContext.PROGRESS,
            progress = uiState.mascotProgress,
            totalTitles = uiState.allComicsRawCount,
            completedTitles = uiState.completedComicCount,
            bookmarkedTitles = uiState.bookmarkedComicCount,
            quotesCount = uiState.totalQuoteCount,
            unlockedCount = achievementSummary.unlockedCount,
            totalCount = achievementSummary.visibleTotal,
            secretUnlocked = uiState.secretCatUnlocked,
            goalState = uiState.dailyReadingGoalState,
            recentComic = uiState.recentlyRead.firstOrNull(),
            acknowledgedStageName = uiState.acknowledgedMascotStageName,
            previewEnabled = uiState.mascotUiEnabled
        )
    }
    Scaffold(
        contentWindowInsets = WindowInsets(0, 0, 0, 0),
        topBar = {
            RootChromeTopBarHost {
                TopAppBar(
                    title = { Text(text.title) },
                    colors = rootChromeTopBarColors(),
                    windowInsets = WindowInsets(0, 0, 0, 0),
                    navigationIcon = {
                        IconButton(onClick = onBackClick) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = strings.back
                            )
                        }
                    }
                )
            }
        }
    ) { innerPadding ->
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
            searchActive = false,
            onComicClick = onComicClick,
            modifier = Modifier.padding(innerPadding)
        )
    }
}

@Composable
internal fun MrComicProgressScreen(
    appLanguage: String,
    mascotProgress: MascotProgressState,
    acknowledgedMascotStageName: String?,
    dailyReadingGoalState: DailyReadingGoalState,
    totalTitles: Int,
    recent: List<Comic>,
    achievements: List<LibraryAchievement>,
    achievementSummary: MrComicAchievementSummary,
    mascotState: MrComicMascotState,
    showMascot: Boolean,
    searchActive: Boolean,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val text = remember(appLanguage) { mrComicProgressText(appLanguage) }
    val unlockedCount = achievementSummary.unlockedCount
    val stageArchive = remember(mascotProgress, acknowledgedMascotStageName) {
        resolveMascotStageArchive(
            progress = mascotProgress,
            acknowledgedStageName = acknowledgedMascotStageName
        )
    }
    Column(
        modifier = modifier
            .fillMaxSize()
            .verticalScroll(rememberScrollState())
            .padding(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
    ) {
        MrComicProgressHeroCard(
            appLanguage = appLanguage,
            text = text,
            progress = mascotProgress,
            mascotState = mascotState,
            showMascot = showMascot,
            unlockedCount = unlockedCount,
            totalCount = achievementSummary.visibleTotal
        )
        if (shouldShowMrComicProgressSearchContext(searchActive)) {
            MrComicProgressSearchContextCard(appLanguage = appLanguage)
        }
        MrComicProgressRhythmCard(
            text = text,
            goalState = dailyReadingGoalState
        )
        MrComicProgressStreakGraceCard(
            appLanguage = appLanguage,
            text = text,
            goalState = dailyReadingGoalState
        )
        MrComicProgressHighlightsCard(
            text = text,
            progress = mascotProgress,
            goalState = dailyReadingGoalState
        )
        MrComicProgressHistoryCard(
            appLanguage = appLanguage,
            text = text,
            goalState = dailyReadingGoalState
        )
        MrComicProgressRecentCard(
            appLanguage = appLanguage,
            text = text,
            totalTitles = totalTitles,
            searchActive = searchActive,
            recent = recent,
            onComicClick = onComicClick
        )
        if (shouldShowMrComicProgressStageArchive(stageArchive)) {
            MrComicProgressStageArchiveCard(
                appLanguage = appLanguage,
                archive = stageArchive,
                showMascot = showMascot
            )
        }
        MrComicProgressAchievementHeader(
            appLanguage = appLanguage,
            text = text,
            achievementSummary = achievementSummary
        )
        LibraryAchievementsRow(
            achievements = achievements,
            showHeader = false,
            modifier = Modifier.fillMaxWidth()
        )
        Spacer(Modifier.height(8.dp))
    }
}

internal fun shouldShowMrComicProgressStageArchive(archive: MascotStageArchive): Boolean =
    archive.entries.size > 1

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressHeroCard(
    appLanguage: String,
    text: MrComicProgressText,
    progress: MascotProgressState,
    mascotState: MrComicMascotState,
    showMascot: Boolean,
    unlockedCount: Int,
    totalCount: Int
) {
    val stageTimeline = remember(progress) { resolveMascotStageTimeline(progress) }
    MrComicCardSurface(
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Row(
                horizontalArrangement = Arrangement.spacedBy(12.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                MrComicMiniAvatar(
                    showMascot = showMascot,
                    modifier = Modifier.size(42.dp),
                    compact = false,
                    neutralIcon = Icons.Default.AutoStories,
                    framedNeutral = true,
                    neutralTint = MaterialTheme.colorScheme.primary,
                    neutralContainerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)
                )
                Column(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(2.dp)) {
                    Text(
                        text = text.summaryTitle,
                        style = MaterialTheme.typography.titleMedium,
                        fontWeight = FontWeight.SemiBold
                    )
                    Text(
                        text = text.summaryBody(
                            mrComicSharedStageLabel(appLanguage, progress.stage),
                            progress.xp,
                            unlockedCount,
                            totalCount
                        ),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Spacer(Modifier.height(6.dp))
                    Row(
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        MrComicPill(
                            contentPadding = PaddingValues(horizontal = 10.dp, vertical = 6.dp)
                        ) {
                            Text(
                                text = mrComicMascotMoodLabel(appLanguage, mascotState.mood),
                                style = MaterialTheme.typography.labelMedium
                            )
                        }
                        MrComicPill(
                            contentPadding = PaddingValues(horizontal = 10.dp, vertical = 6.dp)
                        ) {
                            Text(
                                text = mrComicMascotContextLabel(appLanguage, mascotState.context),
                                style = MaterialTheme.typography.labelMedium
                            )
                        }
                    }
                }
                MrComicPill(
                    containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f),
                    contentColor = MaterialTheme.colorScheme.primary,
                    contentPadding = PaddingValues(horizontal = 10.dp, vertical = 6.dp)
                ) {
                    Text(
                        text = "${progress.xp} XP",
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }

            Text(
                text = mrComicMascotContextText(appLanguage, mascotState.context),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )

            MrComicProgressLine(
                progress = { progress.stageProgress },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(6.dp)
                    .clip(RoundedCornerShape(999.dp)),
                color = MaterialTheme.colorScheme.primary,
                trackColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.18f)
            )

            MrComicProgressStageTimeline(
                appLanguage = appLanguage,
                timeline = stageTimeline
            )

            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicProgressPill(
                    icon = Icons.Default.AutoStories,
                    text = text.pagesRead(progress.approxPagesRead)
                )
                MrComicProgressPill(
                    icon = Icons.Default.TaskAlt,
                    text = text.completedTitles(progress.completedTitles)
                )
                MrComicProgressPill(
                    icon = Icons.Default.EmojiEvents,
                    text = "$unlockedCount / $totalCount"
                )
            }

            Text(
                text = mrComicSharedStageHint(appLanguage, progress),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun MrComicProgressStageTimeline(
    appLanguage: String,
    timeline: MascotStageTimeline
) {
    Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            timeline.entries.forEach { entry ->
                val containerColor = when {
                    entry.isCurrent -> MaterialTheme.colorScheme.primary.copy(alpha = 0.18f)
                    entry.isCompleted -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
                    else -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.48f)
                }
                val contentColor = when {
                    entry.isCurrent -> MaterialTheme.colorScheme.primary
                    entry.isCompleted -> MaterialTheme.colorScheme.secondary
                    else -> MaterialTheme.colorScheme.onSurfaceVariant
                }
                MrComicCardSurface(
                    modifier = Modifier.weight(1f),
                    fillMaxWidth = false,
                    cornerRadius = 18.dp,
                    containerColor = containerColor
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 8.dp, vertical = 10.dp),
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Surface(
                            shape = CircleShape,
                            color = contentColor.copy(alpha = if (entry.isCurrent) 0.18f else 0.12f)
                        ) {
                            Text(
                                text = mrComicSharedStageNumber(entry.stage).toString(),
                                style = MaterialTheme.typography.labelLarge,
                                color = contentColor,
                                modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
                            )
                        }
                        Text(
                            text = "${entry.unlockXp} XP",
                            style = MaterialTheme.typography.labelSmall,
                            color = contentColor
                        )
                    }
                }
            }
        }
        Text(
            text = mrComicSharedStageRunway(appLanguage, timeline),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
private fun MrComicProgressSearchContextCard(
    appLanguage: String
) {
    MrComicCardSurface(
        variant = MrComicCardVariant.Secondary,
        cornerRadius = 20.dp,
        containerColor = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.26f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(
                text = mrComicProgressSearchContextTitle(appLanguage),
                style = MaterialTheme.typography.labelLarge,
                color = MaterialTheme.colorScheme.secondary
            )
            Text(
                text = mrComicProgressSearchContextText(appLanguage),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressStageArchiveCard(
    appLanguage: String,
    archive: MascotStageArchive,
    showMascot: Boolean
) {
    MrComicCardSurface(
        variant = MrComicCardVariant.Muted,
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.62f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = mrComicSharedStageArchiveTitle(appLanguage),
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            Text(
                text = mrComicSharedStageArchiveSummary(appLanguage, archive),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                archive.entries.forEach { entry ->
                    val containerColor = when {
                        entry.isCurrent -> MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                        entry.isHighestReached -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
                        else -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.52f)
                    }
                    val contentColor = when {
                        entry.isCurrent -> MaterialTheme.colorScheme.primary
                        entry.isHighestReached -> MaterialTheme.colorScheme.secondary
                        else -> MaterialTheme.colorScheme.onSurfaceVariant
                    }
                    MrComicCardSurface(
                        fillMaxWidth = false,
                        cornerRadius = 18.dp,
                        containerColor = containerColor
                    ) {
                        Row(
                            modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
                            horizontalArrangement = Arrangement.spacedBy(10.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            MrComicStageArchivePortrait(
                                stage = entry.stage,
                                showMascot = showMascot,
                                highlighted = entry.isCurrent || entry.isHighestReached,
                                modifier = Modifier.size(56.dp)
                            )
                            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                                Text(
                                    text = mrComicSharedStageShortLabel(appLanguage, entry.stage),
                                    style = MaterialTheme.typography.labelLarge,
                                    color = contentColor
                                )
                                Text(
                                    text = mrComicSharedStageArchiveStatus(appLanguage, entry),
                                    style = MaterialTheme.typography.labelSmall,
                                    color = contentColor
                                )
                            }
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressHighlightsCard(
    text: MrComicProgressText,
    progress: MascotProgressState,
    goalState: DailyReadingGoalState
) {
    val bestWeek = remember(goalState.historyActivity, goalState.recentActivity) {
        resolveMrComicProgressBestWeek(
            historyActivity = goalState.historyActivity,
            recentActivity = goalState.recentActivity
        )
    }
    if (!shouldShowMrComicProgressHighlights(progress.completedTitles, goalState.bestStreak, bestWeek)) {
        return
    }

    MrComicCardSurface(
        variant = MrComicCardVariant.Muted,
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.62f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = text.highlightsTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicProgressHighlightTile(
                    icon = Icons.Default.TaskAlt,
                    label = text.highlightsCompletedTitles,
                    value = text.highlightsCompletedTitlesValue(progress.completedTitles)
                )
                if (goalState.bestStreak > 0) {
                    MrComicProgressHighlightTile(
                        icon = Icons.Default.LocalFireDepartment,
                        label = text.highlightsBestStreak,
                        value = text.highlightsBestStreakValue(goalState.bestStreak)
                    )
                }
                if (bestWeek != null) {
                    MrComicProgressHighlightTile(
                        icon = Icons.Default.DateRange,
                        label = text.highlightsBestWeek,
                        value = text.highlightsBestWeekValue(bestWeek.pagesRead),
                        supporting = text.highlightsBestWeekSupporting(bestWeek.activeDays)
                    )
                } else {
                    MrComicProgressHighlightTile(
                        icon = Icons.Default.DateRange,
                        label = text.highlightsBestWeek,
                        value = text.highlightsBestWeekEmpty
                    )
                }
            }
        }
    }
}

@Composable
private fun MrComicProgressHighlightTile(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    value: String,
    supporting: String? = null
) {
    MrComicCardSurface(
        fillMaxWidth = false,
        cornerRadius = 18.dp,
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    modifier = Modifier.size(16.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = label,
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Text(
                text = value,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold
            )
            if (!supporting.isNullOrBlank()) {
                Text(
                    text = supporting,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressRhythmCard(
    text: MrComicProgressText,
    goalState: DailyReadingGoalState
) {
    MrComicCardSurface(
        variant = MrComicCardVariant.Muted,
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.7f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = text.rhythmTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            if (!goalState.enabled) {
                Text(
                    text = text.rhythmDisabled,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    MrComicProgressPill(
                        icon = Icons.Default.Bookmark,
                        text = text.goalPages(goalState.pagesReadToday, goalState.targetPages)
                    )
                    MrComicProgressPill(
                        icon = Icons.Default.Schedule,
                        text = text.weekPages(
                            goalState.pagesReadThisWeek,
                            goalState.weeklyTargetPages,
                            goalState.completedDaysThisWeek
                        )
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressStreakGraceCard(
    appLanguage: String,
    text: MrComicProgressText,
    goalState: DailyReadingGoalState
) {
    val streakDays = remember(goalState.recentActivity) {
        mrComicProgressStreakDays(goalState)
    }
    MrComicCardSurface(
        variant = MrComicCardVariant.Muted,
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.58f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = text.streakGraceTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            Text(
                text = mrComicProgressStreakGraceStatusText(text, goalState),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            if (shouldShowMrComicStreakGracePills(goalState)) {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    MrComicProgressPill(
                        icon = Icons.Default.LocalFireDepartment,
                        text = text.streak(goalState.currentStreak)
                    )
                    if (goalState.bestStreak > 0) {
                        MrComicProgressPill(
                            icon = Icons.Default.EmojiEvents,
                            text = text.bestStreak(goalState.bestStreak)
                        )
                    }
                    MrComicProgressPill(
                        icon = Icons.Default.DateRange,
                        text = text.streakGoalDays(goalState.completedDaysThisWeek)
                    )
                    MrComicProgressPill(
                        icon = Icons.Default.TaskAlt,
                        text = if (goalState.graceEnabled) {
                            if (isMrComicGraceSpentThisWeek(goalState)) {
                                text.graceSpent
                            } else {
                                text.graceReady
                            }
                        } else {
                            text.graceOff
                        }
                    )
                }
                if (streakDays.isNotEmpty()) {
                    MrComicProgressStreakWeekRow(
                        appLanguage = appLanguage,
                        streakDays = streakDays
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressHistoryCard(
    appLanguage: String,
    text: MrComicProgressText,
    goalState: DailyReadingGoalState
) {
    var selectedRange by rememberSaveable { mutableStateOf(MrComicProgressHistoryRange.LAST_7) }
    val selectedDays = remember(goalState.historyActivity, goalState.recentActivity, selectedRange) {
        mrComicProgressHistoryDays(goalState, selectedRange)
    }
    val historySummary = remember(selectedDays) { summarizeMrComicProgressHistory(selectedDays) }
    val hasHistory = remember(historySummary) { hasMrComicMeaningfulHistory(historySummary) }
    val dayCellSize = remember(selectedDays.size) {
        when {
            selectedDays.size > 180 -> 8.dp
            selectedDays.size > 90 -> 10.dp
            selectedDays.size > 30 -> 12.dp
            else -> 16.dp
        }
    }

    MrComicCardSurface(
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = text.historyTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicProgressHistoryRange.values().forEach { range ->
                    MrComicFilterChip(
                        selected = selectedRange == range,
                        onClick = { selectedRange = range },
                        label = {
                            Text(
                                when (range) {
                                    MrComicProgressHistoryRange.LAST_7 -> text.historyRangeWeek
                                    MrComicProgressHistoryRange.LAST_30 -> text.historyRangeMonth
                                    MrComicProgressHistoryRange.ALL -> text.historyRangeAll
                                }
                            )
                        }
                    )
                }
            }
            Text(
                text = text.historyWindow(
                    mrComicProgressHistoryRangeLabel(appLanguage, selectedRange),
                    historySummary.activeDays,
                    selectedDays.size
                ),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            if (!hasHistory) {
                Text(
                    text = text.historyEmpty,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    MrComicProgressPill(
                        icon = Icons.Default.AutoStories,
                        text = text.historyPages(historySummary.pagesRead)
                    )
                    MrComicProgressPill(
                        icon = Icons.Default.EmojiEvents,
                        text = text.historyXp(historySummary.xpEarned)
                    )
                    MrComicProgressPill(
                        icon = Icons.Default.Schedule,
                        text = text.historyMinutes(historySummary.minutesRead)
                    )
                    MrComicProgressPill(
                        icon = Icons.Default.TaskAlt,
                        text = text.historyCheckpoints(historySummary.completedCheckpoints)
                    )
                    MrComicProgressPill(
                        icon = Icons.Default.DateRange,
                        text = text.historyActiveDays(historySummary.activeDays, selectedDays.size)
                    )
                }
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(6.dp),
                    verticalArrangement = Arrangement.spacedBy(6.dp)
                ) {
                    selectedDays.forEachIndexed { index, day ->
                        MrComicProgressHistoryDayCell(
                            day = day,
                            isToday = index == selectedDays.lastIndex,
                            size = dayCellSize
                        )
                    }
                }
                if (selectedDays.isNotEmpty()) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = mrComicActivityDayLabel(appLanguage, selectedDays.first().dayKey),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Text(
                            text = mrComicActivityDayLabel(appLanguage, selectedDays.last().dayKey),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun MrComicProgressHistoryDayCell(
    day: DailyReadingCalendarDay,
    isToday: Boolean,
    size: androidx.compose.ui.unit.Dp
) {
    val active = day.pagesRead > 0 || day.xpEarned > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
    val intensity = when {
        day.goalCompleted -> 1f
        !active -> 0f
        day.pagesRead >= 30 || day.minutesRead >= 30 || day.completedCheckpoints >= 2 -> 0.78f
        day.pagesRead >= 10 || day.minutesRead >= 12 || day.completedCheckpoints >= 1 -> 0.56f
        else -> 0.34f
    }
    val containerColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary.copy(alpha = 0.18f + (0.12f * intensity))
        active -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.12f + (0.10f * intensity))
        else -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = if (isToday) 0.62f else 0.36f)
    }
    val accentColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary
        active -> MaterialTheme.colorScheme.secondary
        isToday -> MaterialTheme.colorScheme.tertiary
        else -> MaterialTheme.colorScheme.outline
    }

    Surface(
        shape = RoundedCornerShape((size.value / 2).dp),
        color = containerColor
    ) {
        Box(
            modifier = Modifier.size(size),
            contentAlignment = Alignment.Center
        ) {
            Box(
                modifier = Modifier
                    .size(if (isToday) size * 0.38f else size * 0.26f)
                    .clip(CircleShape)
                    .background(accentColor.copy(alpha = if (active || isToday) 1f else 0.5f))
            )
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressStreakWeekRow(
    appLanguage: String,
    streakDays: List<DailyReadingCalendarDay>
) {
    FlowRow(
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        streakDays.forEachIndexed { index, day ->
            val isToday = index == streakDays.lastIndex
            val hasReading = day.pagesRead > 0 || day.xpEarned > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
            val container = when {
                day.goalCompleted -> MaterialTheme.colorScheme.primary.copy(alpha = 0.18f)
                hasReading -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
                else -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.38f)
            }
            val content = when {
                day.goalCompleted -> MaterialTheme.colorScheme.primary
                hasReading -> MaterialTheme.colorScheme.secondary
                else -> MaterialTheme.colorScheme.onSurfaceVariant
            }
            MrComicCardSurface(
                fillMaxWidth = false,
                cornerRadius = 14.dp,
                containerColor = container
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp),
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = mrComicActivityDayLabel(appLanguage, day.dayKey),
                        style = MaterialTheme.typography.labelSmall,
                        color = content.copy(alpha = if (isToday) 1f else 0.9f)
                    )
                    Text(
                        text = when {
                            day.goalCompleted -> "✓"
                            hasReading -> "•"
                            else -> "·"
                        },
                        style = MaterialTheme.typography.labelLarge,
                        color = content
                    )
                }
            }
        }
    }
}

@Composable
private fun MrComicProgressRecentCard(
    appLanguage: String,
    text: MrComicProgressText,
    totalTitles: Int,
    searchActive: Boolean,
    recent: List<Comic>,
    onComicClick: (String) -> Unit
) {
    MrComicCardSurface(
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = text.recentTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            if (recent.isEmpty()) {
                Text(
                    text = mrComicProgressRecentEmptyText(
                        language = appLanguage,
                        genericEmpty = text.recentEmpty,
                        totalTitles = totalTitles,
                        searchActive = searchActive
                    ),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                recent.forEach { comic ->
                    MrComicCardSurface(
                        modifier = Modifier.fillMaxWidth(),
                        cornerRadius = 18.dp,
                        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.7f)
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clickable { onComicClick(comic.id) }
                                .padding(horizontal = 12.dp, vertical = 10.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(10.dp)
                        ) {
                            Box(
                                modifier = Modifier
                                    .size(42.dp)
                                    .clip(RoundedCornerShape(14.dp))
                                    .background(MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)),
                                contentAlignment = Alignment.Center
                            ) {
                                Icon(
                                    imageVector = Icons.Default.AutoStories,
                                    contentDescription = null,
                                    tint = MaterialTheme.colorScheme.primary
                                )
                            }
                            Column(
                                modifier = Modifier.weight(1f),
                                verticalArrangement = Arrangement.spacedBy(4.dp)
                            ) {
                                Text(
                                    text = comic.title,
                                    style = MaterialTheme.typography.titleSmall,
                                    maxLines = 2,
                                    overflow = TextOverflow.Ellipsis
                                )
                                Text(
                                    text = mrComicRecentProgressText(appLanguage, comic),
                                    style = MaterialTheme.typography.bodySmall,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                            MrComicFilterChip(
                                selected = false,
                                onClick = { onComicClick(comic.id) },
                                label = { Text(text.openRecent) },
                                leadingIcon = {
                                    Icon(
                                        imageVector = Icons.AutoMirrored.Filled.OpenInNew,
                                        contentDescription = null
                                    )
                                }
                            )
                        }
                    }
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun MrComicProgressAchievementHeader(
    appLanguage: String,
    text: MrComicProgressText,
    achievementSummary: MrComicAchievementSummary
) {
    MrComicCardSurface(
        variant = MrComicCardVariant.Muted,
        cornerRadius = 24.dp,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh.copy(alpha = 0.65f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = text.achievementsProgressTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicProgressPill(
                    icon = Icons.Default.EmojiEvents,
                    text = text.achievementsUnlocked(
                        achievementSummary.unlockedCount,
                        achievementSummary.visibleTotal
                    )
                )
                if (achievementSummary.visiblePendingCount > 0) {
                    MrComicProgressPill(
                        icon = Icons.Default.Schedule,
                        text = text.achievementsInProgress(achievementSummary.visiblePendingCount)
                    )
                }
                if (achievementSummary.hasUnlockedSecret) {
                    MrComicProgressPill(
                        icon = Icons.Default.TaskAlt,
                        text = text.achievementsSecretUnlocked
                    )
                }
            }
            MrComicProgressLine(
                progress = { achievementSummary.completionFraction },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(6.dp)
                    .clip(RoundedCornerShape(999.dp)),
                color = MaterialTheme.colorScheme.primary,
                trackColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.18f)
            )
            Text(
                text = text.nextUnlockTitle,
                style = MaterialTheme.typography.labelLarge,
                color = MaterialTheme.colorScheme.primary
            )
            if (achievementSummary.nextAchievement == null) {
                Text(
                    text = text.achievementsVisibleComplete,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                Text(
                    text = achievementSummary.nextAchievement.title,
                    style = MaterialTheme.typography.titleSmall
                )
                Text(
                    text = achievementSummary.nextAchievement.description,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                if (achievementSummary.nextAchievement.progressCurrent != null &&
                    achievementSummary.nextAchievement.progressTarget != null
                ) {
                    MrComicProgressLine(
                        progress = { achievementSummary.nextAchievement.progressFraction },
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(6.dp)
                            .clip(RoundedCornerShape(999.dp)),
                        color = MaterialTheme.colorScheme.secondary,
                        trackColor = MaterialTheme.colorScheme.secondary.copy(alpha = 0.18f)
                    )
                }
            }
        }
    }
}

@Composable
private fun MrComicProgressPill(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    text: String
) {
    MrComicPill(
        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.58f),
        contentColor = MaterialTheme.colorScheme.onSurfaceVariant,
        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 7.dp),
        horizontalSpacing = 6.dp
    ) {
        Icon(
            imageVector = icon,
            contentDescription = null,
            modifier = Modifier.size(16.dp),
            tint = MaterialTheme.colorScheme.primary
        )
        Text(
            text = text,
            style = MaterialTheme.typography.labelMedium
        )
    }
}

private fun mrComicAchievementStrings(strings: com.example.core.ui.locale.AppStrings): AchievementStrings = AchievementStrings(
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

private fun mrComicProgressText(language: String): MrComicProgressText = when (language) {
    "en" -> MrComicProgressText(
        title = "Progress & Profile",
        summaryTitle = "Mr.Comic growth",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · achievements $unlocked/$total" },
        achievementsProgressTitle = "Achievements progress",
        achievementsUnlocked = { unlocked, total -> "Unlocked $unlocked / $total" },
        achievementsInProgress = { pending -> "$pending still in progress" },
        achievementsSecretUnlocked = "Secret unlocked",
        achievementsVisibleComplete = "The visible achievement set is complete. Secret unlocks stay outside the public next target.",
        nextUnlockTitle = "Next unlock",
        noNextUnlock = "Every visible achievement is already unlocked.",
        rhythmTitle = "Reading rhythm",
        rhythmDisabled = "Daily goal is off right now. Turn it on in settings if you want a calmer reading rhythm layer here.",
        recentTitle = "Recent reading",
        recentEmpty = "No recent reading trail yet.",
        openRecent = "Open",
        goalPages = { read, target -> "Today $read / $target pages" },
        weekPages = { read, target, days -> "Week $read / $target · goal days $days" },
        historyTitle = "Reading history",
        historyEmpty = "No recorded reading activity yet.",
        historyWindow = { range, activeDays, totalDays -> "$range · active days $activeDays of $totalDays" },
        historyPages = { pages -> "$pages pages" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes min" },
        historyCheckpoints = { checkpoints -> "$checkpoints checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays active" },
        highlightsTitle = "Best so far",
        highlightsCompletedTitles = "Completed titles",
        highlightsCompletedTitlesValue = { titles -> "$titles titles" },
        highlightsBestStreak = "Best streak",
        highlightsBestStreakValue = { days -> "$days days" },
        highlightsBestWeek = "Best week",
        highlightsBestWeekValue = { pages -> "$pages pages" },
        highlightsBestWeekSupporting = { activeDays -> "$activeDays active days" },
        highlightsBestWeekEmpty = "No week yet",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "All",
        streakGraceTitle = "Streak & grace",
        streakGraceDisabled = "Soft streak is off right now, so this section stays separate but idle until the goal layer comes back.",
        streakGraceIdle = "No live streak yet. The next reading day will start a new return chain.",
        streakGraceLive = "This chain stays separate from raw page history, so streak and grace remain easy to scan.",
        bestStreak = { days -> "Best $days" },
        streakGoalDays = { days -> "Goal days $days / 7" },
        graceOff = "Grace off",
        graceReady = "Grace ready",
        graceSpent = "Grace spent this week",
        streak = { days -> "Streak $days" },
        grace = { left -> "Grace left $left" },
        pagesRead = { pages -> "$pages pages read" },
        completedTitles = { titles -> "$titles titles completed" }
    )
    "ja" -> MrComicProgressText(
        title = "進捗とプロフィール",
        summaryTitle = "Mr.Comic の成長",
        summaryBody = { stage, xp, unlocked, total -> "$stage ・ $xp XP ・ 実績 $unlocked/$total" },
        achievementsProgressTitle = "実績の進捗",
        achievementsUnlocked = { unlocked, total -> "解除 $unlocked / $total" },
        achievementsInProgress = { pending -> "進行中 $pending 件" },
        achievementsSecretUnlocked = "シークレット解除済み",
        achievementsVisibleComplete = "見えている実績セットは完了です。シークレットは公開の次目標には出しません。",
        nextUnlockTitle = "次の解除",
        noNextUnlock = "表示中の実績はすべて解除済みです。",
        rhythmTitle = "読書リズム",
        rhythmDisabled = "いまはデイリー目標がオフです。ここで穏やかなリズムを見たいなら設定で有効化できます。",
        recentTitle = "最近の読書",
        recentEmpty = "まだ最近の読書トレイルはありません。",
        openRecent = "開く",
        goalPages = { read, target -> "今日 ${read} / ${target}ページ" },
        weekPages = { read, target, days -> "今週 ${read} / ${target} ・ 目標日 $days" },
        historyTitle = "読書ヒストリー",
        historyEmpty = "まだ記録された読書アクティビティはありません。",
        historyWindow = { range, activeDays, totalDays -> "$range ・ アクティブ日 $activeDays / $totalDays" },
        historyPages = { pages -> "$pages ページ" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes 分" },
        historyCheckpoints = { checkpoints -> "チェックポイント $checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays / $totalDays アクティブ" },
        highlightsTitle = "これまでのハイライト",
        highlightsCompletedTitles = "完了作品",
        highlightsCompletedTitlesValue = { titles -> "$titles 作品" },
        highlightsBestStreak = "最高ストリーク",
        highlightsBestStreakValue = { days -> "$days 日" },
        highlightsBestWeek = "最高の週",
        highlightsBestWeekValue = { pages -> "$pages ページ" },
        highlightsBestWeekSupporting = { activeDays -> "アクティブ日 $activeDays" },
        highlightsBestWeekEmpty = "まだ週データなし",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "全期間",
        streakGraceTitle = "ストリークと猶予",
        streakGraceDisabled = "いまはソフトストリークがオフです。この区画は分けたまま、目標レイヤーが戻るまで静かに待機します。",
        streakGraceIdle = "まだ生きているストリークはありません。次の読書日から新しい戻りの連なりが始まります。",
        streakGraceLive = "この連なりは生のページ履歴とは分けてあるので、ストリークと猶予を素早く確認できます。",
        bestStreak = { days -> "ベスト $days" },
        streakGoalDays = { days -> "目標日 $days / 7" },
        graceOff = "猶予オフ",
        graceReady = "猶予あり",
        graceSpent = "今週の猶予を使用済み",
        streak = { days -> "連続 $days 日" },
        grace = { left -> "猶予あと $left" },
        pagesRead = { pages -> "$pages ページ読了" },
        completedTitles = { titles -> "$titles 作品完了" }
    )
    "zh" -> MrComicProgressText(
        title = "进度与档案",
        summaryTitle = "Mr.Comic 成长",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · 成就 $unlocked/$total" },
        achievementsProgressTitle = "成就进度",
        achievementsUnlocked = { unlocked, total -> "已解锁 $unlocked / $total" },
        achievementsInProgress = { pending -> "仍在推进 $pending 项" },
        achievementsSecretUnlocked = "隐藏成就已解锁",
        achievementsVisibleComplete = "当前可见成就集已经完成。隐藏成就不会作为公开的下一目标。",
        nextUnlockTitle = "下一项解锁",
        noNextUnlock = "当前可见成就已经全部解锁。",
        rhythmTitle = "阅读节奏",
        rhythmDisabled = "当前每日目标已关闭。如果想在这里看到更温和的阅读节奏，可以去设置里打开它。",
        recentTitle = "最近阅读",
        recentEmpty = "还没有最近阅读轨迹。",
        openRecent = "打开",
        goalPages = { read, target -> "今天 $read / $target 页" },
        weekPages = { read, target, days -> "本周 $read / $target · 达标日 $days" },
        historyTitle = "阅读历史",
        historyEmpty = "还没有记录到阅读活动。",
        historyWindow = { range, activeDays, totalDays -> "$range · 活跃日 $activeDays / $totalDays" },
        historyPages = { pages -> "$pages 页" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes 分钟" },
        historyCheckpoints = { checkpoints -> "$checkpoints 个检查点" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays 活跃" },
        highlightsTitle = "阶段亮点",
        highlightsCompletedTitles = "完成作品",
        highlightsCompletedTitlesValue = { titles -> "$titles 部" },
        highlightsBestStreak = "最佳连读",
        highlightsBestStreakValue = { days -> "$days 天" },
        highlightsBestWeek = "最佳一周",
        highlightsBestWeekValue = { pages -> "$pages 页" },
        highlightsBestWeekSupporting = { activeDays -> "$activeDays 个活跃日" },
        highlightsBestWeekEmpty = "还没有周数据",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "全部",
        streakGraceTitle = "连读与宽限",
        streakGraceDisabled = "柔性连读当前关闭，所以这个区块会继续独立显示，但会保持静止直到目标层重新开启。",
        streakGraceIdle = "现在还没有活跃连读。下一次跨天阅读就会重新拉起这条返回链。",
        streakGraceLive = "这条连读链和原始页数历史分开显示，所以连续阅读和宽限状态更容易单独看清。",
        bestStreak = { days -> "最佳 $days" },
        streakGoalDays = { days -> "达标日 $days / 7" },
        graceOff = "宽限关闭",
        graceReady = "宽限可用",
        graceSpent = "本周宽限已用",
        streak = { days -> "连续 $days 天" },
        grace = { left -> "剩余宽限 $left" },
        pagesRead = { pages -> "已读 $pages 页" },
        completedTitles = { titles -> "完成 $titles 部作品" }
    )
    "ko" -> MrComicProgressText(
        title = "진행 상황과 프로필",
        summaryTitle = "Mr.Comic 성장",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · 업적 $unlocked/$total" },
        achievementsProgressTitle = "업적 진행",
        achievementsUnlocked = { unlocked, total -> "해금 $unlocked / $total" },
        achievementsInProgress = { pending -> "진행 중 ${pending}개" },
        achievementsSecretUnlocked = "시크릿 해금됨",
        achievementsVisibleComplete = "보이는 업적 세트는 완료되었습니다. 시크릿 업적은 공개 다음 목표로 올리지 않습니다.",
        nextUnlockTitle = "다음 해금",
        noNextUnlock = "보이는 업적은 모두 이미 해금되었습니다.",
        rhythmTitle = "읽기 리듬",
        rhythmDisabled = "지금은 일일 목표가 꺼져 있습니다. 여기서 더 부드러운 읽기 리듬을 보려면 설정에서 켤 수 있습니다.",
        recentTitle = "최근 읽기",
        recentEmpty = "아직 최근 읽기 흔적이 없습니다.",
        openRecent = "열기",
        goalPages = { read, target -> "오늘 ${read} / ${target}페이지" },
        weekPages = { read, target, days -> "이번 주 ${read} / ${target} · 목표일 $days" },
        historyTitle = "읽기 기록",
        historyEmpty = "아직 기록된 읽기 활동이 없습니다.",
        historyWindow = { range, activeDays, totalDays -> "$range · 활동일 $activeDays / $totalDays" },
        historyPages = { pages -> "$pages 페이지" },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes 분" },
        historyCheckpoints = { checkpoints -> "체크포인트 $checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays 활동" },
        highlightsTitle = "누적 하이라이트",
        highlightsCompletedTitles = "완료 작품",
        highlightsCompletedTitlesValue = { titles -> "$titles 작품" },
        highlightsBestStreak = "최고 스트릭",
        highlightsBestStreakValue = { days -> "${days}일" },
        highlightsBestWeek = "최고의 주간",
        highlightsBestWeekValue = { pages -> "$pages 페이지" },
        highlightsBestWeekSupporting = { activeDays -> "활동일 $activeDays" },
        highlightsBestWeekEmpty = "아직 주간 데이터 없음",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "전체",
        streakGraceTitle = "스트릭과 완충일",
        streakGraceDisabled = "소프트 스트릭이 지금 꺼져 있어서, 이 구역은 분리된 채 목표 레이어가 돌아올 때까지 조용히 대기합니다.",
        streakGraceIdle = "아직 살아 있는 스트릭은 없습니다. 다음 읽기 날이 오면 새 복귀 흐름이 시작됩니다.",
        streakGraceLive = "이 흐름은 순수 페이지 기록과 분리되어 있어서 스트릭과 완충일 상태를 더 쉽게 읽을 수 있습니다.",
        bestStreak = { days -> "최고 $days" },
        streakGoalDays = { days -> "목표일 $days / 7" },
        graceOff = "완충일 꺼짐",
        graceReady = "완충일 준비됨",
        graceSpent = "이번 주 완충일 사용됨",
        streak = { days -> "연속 ${days}일" },
        grace = { left -> "유예 $left 남음" },
        pagesRead = { pages -> "$pages 페이지 읽음" },
        completedTitles = { titles -> "$titles 작품 완료" }
    )
    else -> MrComicProgressText(
        title = "Прогресс и профиль",
        summaryTitle = "Рост Mr.Comic",
        summaryBody = { stage, xp, unlocked, total -> "$stage · $xp XP · достижений $unlocked/$total" },
        achievementsProgressTitle = "Прогресс достижений",
        achievementsUnlocked = { unlocked, total -> "Открыто $unlocked / $total" },
        achievementsInProgress = { pending -> "В процессе ещё $pending" },
        achievementsSecretUnlocked = "Секрет открыт",
        achievementsVisibleComplete = "Видимый набор достижений уже закрыт. Секретные не становятся публичной следующей целью.",
        nextUnlockTitle = "Следующее открытие",
        noNextUnlock = "Все видимые достижения уже открыты.",
        rhythmTitle = "Ритм чтения",
        rhythmDisabled = "Дневная цель сейчас выключена. Если нужен спокойный слой ритма и здесь, его можно включить в настройках.",
        recentTitle = "Недавнее чтение",
        recentEmpty = "Пока нет живого следа недавнего чтения.",
        openRecent = "Открыть",
        goalPages = { read, target -> "Сегодня $read / $target стр." },
        weekPages = { read, target, days -> "Неделя $read / $target · дней с целью $days" },
        historyTitle = "История чтения",
        historyEmpty = "Пока нет записанной активности чтения.",
        historyWindow = { range, activeDays, totalDays -> "$range · активных дней $activeDays из $totalDays" },
        historyPages = { pages -> "$pages стр." },
        historyXp = { xp -> "$xp XP" },
        historyMinutes = { minutes -> "$minutes мин" },
        historyCheckpoints = { checkpoints -> "точек прогресса $checkpoints" },
        historyActiveDays = { activeDays, totalDays -> "$activeDays/$totalDays активных" },
        highlightsTitle = "Лучшее за всё время",
        highlightsCompletedTitles = "Завершённые тайтлы",
        highlightsCompletedTitlesValue = { titles -> "$titles тайтлов" },
        highlightsBestStreak = "Лучший стрик",
        highlightsBestStreakValue = { days -> "$days дней" },
        highlightsBestWeek = "Лучшая неделя",
        highlightsBestWeekValue = { pages -> "$pages стр." },
        highlightsBestWeekSupporting = { activeDays -> "Активных дней $activeDays" },
        highlightsBestWeekEmpty = "Пока нет живой недели",
        historyRangeWeek = "7",
        historyRangeMonth = "30",
        historyRangeAll = "Всё",
        streakGraceTitle = "Серия и запасной день",
        streakGraceDisabled = "Мягкая серия сейчас выключена, поэтому этот блок остаётся отдельно, но спокойно ждёт возвращения слоя целей.",
        streakGraceIdle = "Живой серии пока нет. Следующий день чтения поднимет новую цепочку возврата.",
        streakGraceLive = "Эта цепочка вынесена отдельно от сырой истории страниц, чтобы серию и запасной день было проще считывать отдельно.",
        bestStreak = { days -> "Лучшее $days" },
        streakGoalDays = { days -> "Дней с целью $days / 7" },
        graceOff = "Запасной день выкл.",
        graceReady = "Запасной день готов",
        graceSpent = "Запасной день уже потрачен на этой неделе",
        streak = { days -> "Стрик $days" },
        grace = { left -> "Запасных дней осталось $left" },
        pagesRead = { pages -> "Прочитано $pages стр." },
        completedTitles = { titles -> "Завершено $titles тайтлов" }
    )
}

private fun mrComicRecentProgressText(language: String, comic: Comic): String {
    val percent = (comic.readingProgress * 100).toInt()
    return when (language) {
        "en" -> "Page ${comic.currentPage + 1} · $percent%"
        "ja" -> "${comic.currentPage + 1} ページ ・ $percent%"
        "zh" -> "第 ${comic.currentPage + 1} 页 · $percent%"
        "ko" -> "${comic.currentPage + 1}페이지 · $percent%"
        else -> "Страница ${comic.currentPage + 1} · $percent%"
    }
}

private fun mrComicActivityDayLabel(language: String, dayKey: String): String {
    val day = dayKey.takeLast(2).toIntOrNull() ?: return dayKey.takeLast(2)
    return when (language) {
        "en" -> day.toString()
        "ja" -> "${day}日"
        "zh" -> "${day}日"
        "ko" -> "${day}일"
        else -> day.toString()
    }
}

internal fun shouldShowMrComicRhythmStreak(goalState: DailyReadingGoalState): Boolean =
    goalState.enabled &&
        goalState.streakEnabled &&
        goalState.currentStreak > 0

internal fun shouldShowMrComicRhythmGrace(goalState: DailyReadingGoalState): Boolean =
    shouldShowMrComicRhythmStreak(goalState) && goalState.graceEnabled

internal fun shouldShowMrComicProgressSearchContext(searchActive: Boolean): Boolean = searchActive

internal fun mrComicProgressRecentEmptyState(
    totalTitles: Int,
    searchActive: Boolean
): MrComicProgressRecentEmptyState = when {
    totalTitles <= 0 -> MrComicProgressRecentEmptyState.EMPTY_LIBRARY
    searchActive -> MrComicProgressRecentEmptyState.SEARCH_RESULTS
    else -> MrComicProgressRecentEmptyState.GENERIC
}

internal fun shouldShowMrComicStreakGracePills(goalState: DailyReadingGoalState): Boolean =
    goalState.enabled && goalState.streakEnabled

internal fun mrComicProgressStreakDays(
    goalState: DailyReadingGoalState
): List<DailyReadingCalendarDay> = goalState.recentActivity.takeLast(7)

internal fun shouldShowMrComicProgressHighlights(
    completedTitles: Int,
    bestStreak: Int,
    bestWeek: MrComicProgressBestWeekSummary?
): Boolean = completedTitles > 0 || bestStreak > 0 || bestWeek != null

internal fun resolveMrComicProgressBestWeek(
    historyActivity: List<DailyReadingCalendarDay>,
    recentActivity: List<DailyReadingCalendarDay>
): MrComicProgressBestWeekSummary? {
    val sourceDays = historyActivity.ifEmpty { recentActivity }
    if (sourceDays.isEmpty()) return null

    return sourceDays
        .mapNotNull { day ->
            mrComicProgressWeekKey(day.dayKey)?.let { weekKey -> weekKey to day }
        }
        .groupBy(keySelector = { it.first }, valueTransform = { it.second })
        .map { (weekKey, weekDays) ->
            MrComicProgressBestWeekSummary(
                weekKey = weekKey,
                pagesRead = weekDays.sumOf { it.pagesRead },
                activeDays = weekDays.count { day ->
                    day.pagesRead > 0 || day.xpEarned > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
                },
                completedCheckpoints = weekDays.sumOf { it.completedCheckpoints }
            )
        }
        .filter { summary ->
            summary.pagesRead > 0 || summary.activeDays > 0 || summary.completedCheckpoints > 0
        }
        .maxWithOrNull(
            compareBy<MrComicProgressBestWeekSummary>(
                { it.pagesRead },
                { it.activeDays },
                { it.completedCheckpoints },
                { it.weekKey }
            )
        )
}

internal fun isMrComicGraceSpentThisWeek(
    goalState: DailyReadingGoalState
): Boolean = goalState.enabled &&
    goalState.streakEnabled &&
    goalState.graceEnabled &&
    goalState.graceDaysRemainingThisWeek == 0

private fun mrComicProgressStreakGraceStatusText(
    text: MrComicProgressText,
    goalState: DailyReadingGoalState
): String = when {
    !goalState.enabled -> text.streakGraceDisabled
    !goalState.streakEnabled -> text.streakGraceDisabled
    goalState.currentStreak > 0 -> text.streakGraceLive
    else -> text.streakGraceIdle
}

internal fun mrComicProgressHistoryDays(
    goalState: DailyReadingGoalState,
    range: MrComicProgressHistoryRange
): List<DailyReadingCalendarDay> = when (range) {
    MrComicProgressHistoryRange.LAST_7 -> goalState.recentActivity.ifEmpty {
        goalState.historyActivity.takeLast(7)
    }
    MrComicProgressHistoryRange.LAST_30 -> goalState.historyActivity.takeLast(30).ifEmpty {
        goalState.recentActivity
    }
    MrComicProgressHistoryRange.ALL -> goalState.historyActivity.ifEmpty {
        goalState.recentActivity
    }
}

internal fun summarizeMrComicProgressHistory(
    days: List<DailyReadingCalendarDay>
): MrComicProgressHistorySummary = MrComicProgressHistorySummary(
    pagesRead = days.sumOf { it.pagesRead },
    xpEarned = days.sumOf { it.xpEarned },
    minutesRead = days.sumOf { it.minutesRead },
    completedCheckpoints = days.sumOf { it.completedCheckpoints },
    activeDays = days.count { day ->
        day.pagesRead > 0 || day.xpEarned > 0 || day.minutesRead > 0 || day.completedCheckpoints > 0
    }
)

internal fun hasMrComicMeaningfulHistory(
    summary: MrComicProgressHistorySummary
): Boolean = summary.pagesRead > 0 ||
    summary.xpEarned > 0 ||
    summary.minutesRead > 0 ||
    summary.completedCheckpoints > 0 ||
    summary.activeDays > 0

private fun mrComicProgressHistoryRangeLabel(
    language: String,
    range: MrComicProgressHistoryRange
): String = when (range) {
    MrComicProgressHistoryRange.LAST_7 -> when (language) {
        "ja" -> "直近7日"
        "zh" -> "近 7 天"
        "ko" -> "최근 7일"
        "ru" -> "Последние 7 дней"
        else -> "Last 7 days"
    }
    MrComicProgressHistoryRange.LAST_30 -> when (language) {
        "ja" -> "直近30日"
        "zh" -> "近 30 天"
        "ko" -> "최근 30일"
        "ru" -> "Последние 30 дней"
        else -> "Last 30 days"
    }
    MrComicProgressHistoryRange.ALL -> when (language) {
        "ja" -> "全履歴"
        "zh" -> "全部历史"
        "ko" -> "전체 기록"
        "ru" -> "Вся история"
        else -> "All history"
    }
}

internal fun mrComicProgressRecentEmptyText(
    language: String,
    genericEmpty: String,
    totalTitles: Int,
    searchActive: Boolean
): String = when (mrComicProgressRecentEmptyState(totalTitles, searchActive)) {
    MrComicProgressRecentEmptyState.EMPTY_LIBRARY -> when (language) {
        "en" -> "No titles in the library yet. Add a file or folder to start Mr.Comic progress."
        "ja" -> "ライブラリにはまだタイトルがありません。ファイルかフォルダを追加すると、Mr.Comic の進捗が始まります。"
        "zh" -> "书库里还没有条目。添加文件或文件夹后，Mr.Comic 的进度才会开始。"
        "ko" -> "라이브러리에 아직 타이틀이 없습니다. 파일이나 폴더를 추가하면 Mr.Comic 진행이 시작됩니다."
        else -> "В библиотеке пока нет тайтлов. Добавь файл или папку, чтобы прогресс Mr.Comic начал жить."
    }
    MrComicProgressRecentEmptyState.SEARCH_RESULTS -> when (language) {
        "en" -> "No recent reading trail inside the current search results."
        "ja" -> "現在の検索結果の中には最近の読書トレイルがありません。"
        "zh" -> "当前搜索结果里没有最近阅读轨迹。"
        "ko" -> "현재 검색 결과 안에는 최근 읽기 흔적이 없습니다."
        else -> "В текущих результатах поиска нет недавнего следа чтения."
    }
    MrComicProgressRecentEmptyState.GENERIC -> genericEmpty
}

private fun mrComicProgressSearchContextTitle(language: String): String = when (language) {
    "en" -> "Search is still active"
    "ja" -> "検索はまだ有効です"
    "zh" -> "搜索仍在生效"
    "ko" -> "검색이 아직 켜져 있습니다"
    else -> "Поиск всё ещё активен"
}

private fun mrComicProgressSearchContextText(language: String): String = when (language) {
    "en" -> "This profile stays global so stage, XP and the next unlock do not drift with the current search slice."
    "ja" -> "このプロフィールは全体ビューのままです。現在の検索結果によって段階、XP、次の解除がぶれないようにしています。"
    "zh" -> "这个档案保持全局视图，这样阶段、XP 和下一项解锁不会跟着当前搜索结果漂移。"
    "ko" -> "이 프로필은 전역 뷰를 유지합니다. 그래서 현재 검색 결과에 따라 단계, XP, 다음 해금이 흔들리지 않습니다."
    else -> "Этот профиль остаётся глобальным, чтобы этап, XP и следующее открытие не плавали вместе с текущим поисковым срезом."
}

private fun mrComicProgressWeekKey(dayKey: String): String? {
    val formatter = SimpleDateFormat("yyyy-MM-dd", Locale.US).apply {
        isLenient = false
        timeZone = TimeZone.getTimeZone("UTC")
    }
    val parsedDate = formatter.parse(dayKey) ?: return null
    val calendar = GregorianCalendar(TimeZone.getTimeZone("UTC"), Locale.US).apply {
        firstDayOfWeek = java.util.Calendar.MONDAY
        minimalDaysInFirstWeek = 4
        time = parsedDate
    }
    return String.format(Locale.US, "%04d-W%02d", calendar.weekYear, calendar.get(java.util.Calendar.WEEK_OF_YEAR))
}
