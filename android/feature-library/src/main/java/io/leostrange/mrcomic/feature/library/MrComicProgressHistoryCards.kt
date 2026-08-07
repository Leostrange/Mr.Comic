package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.DateRange
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun MrComicProgressHistoryCard(
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
                fontWeight = androidx.compose.ui.text.font.FontWeight.SemiBold
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
internal fun MrComicProgressHistoryDayCell(
    day: DailyReadingCalendarDay,
    isToday: Boolean,
    size: Dp
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
