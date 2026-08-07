package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.filled.AutoStories
import androidx.compose.material.icons.filled.EmojiEvents
import androidx.compose.material.icons.filled.Schedule
import androidx.compose.material.icons.filled.TaskAlt
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine

@Composable
internal fun MrComicProgressRecentCard(
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
internal fun MrComicProgressAchievementHeader(
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
