package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingCalendarDay
import io.leostrange.mrcomic.core.interfaces.analytics.DailyReadingGoalState

@Composable
internal fun MrComicReadingCalendarCard(
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
internal fun MrComicReadingCalendarDayChip(
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
internal fun MrComicSectionHint(
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
