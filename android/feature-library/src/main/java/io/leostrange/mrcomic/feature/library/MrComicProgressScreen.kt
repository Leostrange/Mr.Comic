package io.leostrange.mrcomic.feature.library

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
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotContext
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchive
import io.leostrange.mrcomic.core.domain.analytics.MascotStageTimeline
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotContextLabel
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotContextText
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodLabel
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStageArchive
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStageTimeline
import io.leostrange.mrcomic.core.domain.analytics.resolveMrComicMascotState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.library.RootChromeTopBarHost
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.mascot.MrComicStageArchivePortrait
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.core.ui.library.rootChromeTopBarColors
import io.leostrange.mrcomic.feature.library.components.AchievementStrings
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import io.leostrange.mrcomic.feature.library.components.LibraryAchievementsRow
import io.leostrange.mrcomic.feature.library.components.computeAchievements

// Data classes and strings extracted to MrComicProgressStrings.kt

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

private fun mrComicAchievementStrings(strings: io.leostrange.mrcomic.core.ui.locale.AppStrings): AchievementStrings = AchievementStrings(
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

// Helper functions extracted to MrComicProgressStrings.kt

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

// mrComicProgressWeekKey extracted to MrComicProgressStrings.kt
