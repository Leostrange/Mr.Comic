package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.LocalFireDepartment
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardVariant

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun MrComicProgressHighlightsCard(
    text: MrComicProgressText,
    progress: io.leostrange.mrcomic.core.domain.analytics.MascotProgressState,
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
internal fun MrComicProgressHighlightTile(
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
internal fun MrComicProgressRhythmCard(
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
internal fun MrComicProgressStreakGraceCard(
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
internal fun MrComicProgressStreakWeekRow(
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
