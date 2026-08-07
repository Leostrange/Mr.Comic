package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.domain.analytics.MascotProgressState
import io.leostrange.mrcomic.core.domain.analytics.MascotStageArchive
import io.leostrange.mrcomic.core.domain.analytics.MascotStageTimeline
import io.leostrange.mrcomic.core.domain.analytics.MrComicMascotState
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotContextLabel
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotContextText
import io.leostrange.mrcomic.core.domain.analytics.mrComicMascotMoodLabel
import io.leostrange.mrcomic.core.domain.analytics.resolveMascotStageTimeline
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.mascot.MrComicMiniAvatar
import io.leostrange.mrcomic.core.ui.mascot.MrComicStageArchivePortrait

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun MrComicProgressHeroCard(
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
internal fun MrComicProgressStageTimeline(
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
internal fun MrComicProgressSearchContextCard(
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
internal fun MrComicProgressStageArchiveCard(
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

@Composable
internal fun MrComicProgressPill(
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
