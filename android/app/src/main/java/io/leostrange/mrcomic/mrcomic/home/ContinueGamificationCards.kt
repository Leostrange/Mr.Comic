package io.leostrange.mrcomic.home

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStage
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.library.RootChromeTone
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.core.ui.mascot.MrComicStagePreviewLead
import io.leostrange.mrcomic.core.ui.mascot.mrComicMascotStageHint
import io.leostrange.mrcomic.core.ui.mascot.mrComicMascotStageLabel
import io.leostrange.mrcomic.core.ui.mascot.mrComicMascotStagePreviewText
import io.leostrange.mrcomic.core.ui.mascot.mrComicMascotStagePreviewTitle
import io.leostrange.mrcomic.core.ui.library.rootChromePanelColor
import io.leostrange.mrcomic.ui.ContinueScreenText
import java.text.DateFormat
import java.text.SimpleDateFormat
import java.util.Calendar
import java.util.Date
import java.util.Locale

@Composable
internal fun WeeklyReadingPlanChip(
    goalState: DailyReadingGoalState,
    text: ContinueScreenText
) {
    MrComicCardSurface(
        shape = RoundedCornerShape(24.dp),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.ACCENT)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = if (goalState.isWeeklyPlanCompleted) Icons.Filled.TaskAlt else Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                tint = if (goalState.isWeeklyPlanCompleted) {
                    MaterialTheme.colorScheme.primary
                } else {
                    MaterialTheme.colorScheme.secondary
                }
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = text.weeklyPlanProgress(goalState.pagesReadThisWeek, goalState.weeklyTargetPages),
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = if (goalState.isWeeklyPlanCompleted) {
                        text.weeklyPlanCompleted(goalState.weeklyTargetPages)
                    } else {
                        text.weeklyPlanRemaining(
                            goalState.remainingPagesThisWeek,
                            goalState.completedDaysThisWeek
                        )
                    },
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.92f)
                )
                Text(
                    text = text.weeklyPlanCompletedDays(goalState.completedDaysThisWeek),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.secondary
                )
            }
        }
    }
}

@Composable
internal fun ReadingCalendarStrip(
    goalState: DailyReadingGoalState,
    text: ContinueScreenText,
    appLanguage: String
) {
    val activeDays = goalState.recentActivity.count { it.pagesRead > 0 }
    val goalDays = goalState.recentActivity.count { it.goalCompleted }
    Surface(
        shape = RoundedCornerShape(24.dp),
        color = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(
                    text = text.readingCalendarTitle,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = text.readingCalendarSummary(activeDays, goalDays),
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                goalState.recentActivity.forEach { day ->
                    ReadingCalendarDayChip(
                        day = day,
                        appLanguage = appLanguage,
                        modifier = Modifier.weight(1f)
                    )
                }
            }
        }
    }
}

@Composable
internal fun ReadingCalendarDayChip(
    day: DailyReadingCalendarDay,
    appLanguage: String,
    modifier: Modifier = Modifier
) {
    val containerColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
        day.pagesRead > 0 -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.14f)
        else -> MaterialTheme.colorScheme.surface
    }
    val accentColor = when {
        day.goalCompleted -> MaterialTheme.colorScheme.primary
        day.pagesRead > 0 -> MaterialTheme.colorScheme.secondary
        else -> MaterialTheme.colorScheme.outline
    }
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(
            text = readingCalendarDayLabel(day.dayKey, appLanguage),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
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
                    text = readingCalendarDayNumber(day.dayKey),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Box(
                    modifier = Modifier
                        .size(8.dp)
                        .background(accentColor, CircleShape)
                )
            }
        }
    }
}

private fun readingCalendarDayLabel(dayKey: String, appLanguage: String): String {
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

private fun readingCalendarDayNumber(dayKey: String): String {
    return dayKey.takeLast(2).trimStart('0').ifBlank { "0" }
}

@Composable
internal fun DailyReadingGoalChip(
    goalState: DailyReadingGoalState,
    text: ContinueScreenText
) {
    Surface(
        shape = RoundedCornerShape(24.dp),
        color = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = if (goalState.isCompleted) Icons.Filled.TaskAlt else Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = null,
                tint = if (goalState.isCompleted) {
                    MaterialTheme.colorScheme.primary
                } else {
                    MaterialTheme.colorScheme.onSurfaceVariant
                }
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = text.dailyGoalProgress(goalState.pagesReadToday, goalState.targetPages),
                    style = MaterialTheme.typography.labelMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Text(
                    text = if (goalState.isCompleted) {
                        text.dailyGoalCompleted(goalState.targetPages)
                    } else {
                        text.dailyGoalRemaining(goalState.remainingPages)
                    },
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.92f)
                )
            }
        }
    }
}

@Composable
internal fun ReaderCompanionCard(
    title: String,
    hint: String,
    progress: MascotProgressState,
    appLanguage: String,
    showMascot: Boolean,
    showProgress: Boolean,
    actionLabel: String,
    onOpenProgress: () -> Unit
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.ACCENT)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(32.dp),
                compact = true,
                neutralIcon = Icons.Filled.AutoStories,
                framedNeutral = true,
                neutralTint = MaterialTheme.colorScheme.secondary,
                neutralContainerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.86f)
            )
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleSmall,
                    fontWeight = FontWeight.SemiBold
                )
                Spacer(Modifier.height(2.dp))
                Text(
                    text = hint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                if (showProgress) {
                    Spacer(Modifier.height(8.dp))
                    MrComicCardSurface(
                        shape = RoundedCornerShape(14.dp),
                        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.NEUTRAL)
                    ) {
                        Column(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 10.dp, vertical = 8.dp),
                            verticalArrangement = Arrangement.spacedBy(5.dp)
                        ) {
                            Row(
                                modifier = Modifier.fillMaxWidth(),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text(
                                    text = mrComicMascotStageLabel(appLanguage, progress.stage),
                                    style = MaterialTheme.typography.labelMedium,
                                    color = MaterialTheme.colorScheme.secondary
                                )
                                Text(
                                    text = "${progress.xp} XP",
                                    style = MaterialTheme.typography.labelMedium,
                                    color = MaterialTheme.colorScheme.secondary
                                )
                            }
                            MrComicProgressLine(
                                progress = { progress.stageProgress },
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(5.dp),
                                color = MaterialTheme.colorScheme.secondary,
                                trackColor = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
                            )
                            Text(
                                text = mrComicMascotStageHint(appLanguage, progress),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
                Spacer(Modifier.height(6.dp))
                TextButton(onClick = onOpenProgress) {
                    Text(text = actionLabel)
                }
            }
        }
    }
}

@Composable
internal fun MascotStagePreviewCard(
    stage: MascotStage,
    progress: MascotProgressState,
    appLanguage: String,
    showMascot: Boolean,
    onDismiss: () -> Unit
) {
    MrComicCardSurface(
        modifier = Modifier.fillMaxWidth(),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.ACCENT)
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
                    text = mrComicMascotStagePreviewTitle(appLanguage),
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = mrComicMascotStagePreviewText(appLanguage, stage, progress),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            MrComicIconButton(onClick = onDismiss, modifier = Modifier.size(28.dp), size = 28.dp) {
                Icon(
                    imageVector = Icons.Filled.Close,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

@Composable
internal fun CheckpointRecapChip(
    checkpointTrail: List<ReaderCheckpoint>,
    text: ContinueScreenText,
    showMascot: Boolean,
    onDismiss: () -> Unit,
    onCheckpointClick: (ReaderCheckpoint) -> Unit
) {
    val latestCheckpoint = checkpointTrail.firstOrNull() ?: return
    val secondaryCheckpoints = checkpointTrail.drop(1).take(2)

    MrComicCardSurface(
        shape = RoundedCornerShape(24.dp),
        containerColor = rootChromePanelColor(MaterialTheme.colorScheme, RootChromeTone.SOFT)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 10.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            verticalAlignment = Alignment.Top
        ) {
            MrComicMiniAvatar(
                showMascot = showMascot,
                modifier = Modifier.size(24.dp),
                compact = true,
                neutralIcon = Icons.AutoMirrored.Filled.MenuBook,
                neutralTint = MaterialTheme.colorScheme.primary
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.Top
                ) {
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .clickable { onCheckpointClick(latestCheckpoint) },
                        verticalArrangement = Arrangement.spacedBy(2.dp)
                    ) {
                        Text(
                            text = text.checkpointRecap(
                                latestCheckpoint.comicTitle,
                                latestCheckpoint.chapterTitle,
                                latestCheckpoint.page + 1
                            ),
                            style = MaterialTheme.typography.labelMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                        if (latestCheckpoint.reachedAtMillis >= 0) {
                            Text(
                                text = text.checkpointUpdatedAt(formatCheckpointTime(latestCheckpoint.reachedAtMillis)),
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                        }
                    }
                    MrComicIconButton(onClick = onDismiss, modifier = Modifier.size(28.dp), size = 28.dp) {
                        Icon(
                            imageVector = Icons.Filled.Close,
                            contentDescription = text.checkpointDismiss,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }

                secondaryCheckpoints.forEach { checkpoint ->
                    HorizontalDivider(
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.08f)
                    )
                    Text(
                        text = text.checkpointRecap(
                            checkpoint.comicTitle,
                            checkpoint.chapterTitle,
                            checkpoint.page + 1
                        ),
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { onCheckpointClick(checkpoint) }
                            .padding(vertical = 2.dp),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.92f),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

private fun formatCheckpointTime(reachedAtMillis: Long): String {
    return DateFormat.getDateTimeInstance(DateFormat.MEDIUM, DateFormat.SHORT)
        .format(Date(reachedAtMillis))
}

