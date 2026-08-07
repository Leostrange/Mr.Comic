package io.leostrange.mrcomic.feature.library

// Phase A (2026-08-05): MrComic* cards extracted from LibraryScreen.kt

import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
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
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotContext
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotFocusText
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodHeadline
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodLabel
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStagePreview
import io.leostrange.mrcomic.core.domain.analytics.resolveMrComicMascotState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isReadingInProgress
import io.leostrange.mrcomic.core.model.readingStatus
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.designsystem.mrComicCompletedColor
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.core.ui.mascot.MrComicStagePreviewLead
import io.leostrange.mrcomic.feature.library.components.AchievementId
import io.leostrange.mrcomic.feature.library.components.AchievementQuestTransition
import io.leostrange.mrcomic.feature.library.components.AchievementStrings
import io.leostrange.mrcomic.feature.library.components.LibraryAchievement
import io.leostrange.mrcomic.feature.library.components.LibraryAchievementsRow
import io.leostrange.mrcomic.feature.library.components.questTransitionFeedback
import java.util.Calendar

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun MrComicHubCard(
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
internal fun MrComicCompactStagePreviewCard(
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
internal fun MrComicStagePreviewCard(
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

@Composable
internal fun MrComicQuestFeedbackCard(
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

@Composable
internal fun MrComicSearchContextCard(
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
internal fun MrComicPresenceCard(
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
internal fun MrComicQuestLine(
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
internal fun MrComicQuestStepRow(
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

// Mr.Comic mascot strings and quest logic extracted to MrComicStrings.kt
