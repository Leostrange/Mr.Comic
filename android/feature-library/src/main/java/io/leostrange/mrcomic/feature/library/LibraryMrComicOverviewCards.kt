package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.Alignment
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.domain.analytics.DailyReadingGoalState
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.LocalStrings

@Composable
internal fun MrComicRecentCard(
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
                    text = mrComicRecentLabel(language = appLanguage, searchActive = searchActive),
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
                        Icon(Icons.AutoMirrored.Filled.OpenInNew, contentDescription = null)
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
internal fun MrComicQuickActionsCard(
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
    val actionOrder = listOf(MrComicQuickAction.FILES, MrComicQuickAction.BOOKMARKS, MrComicQuickAction.QUOTES)
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
                FilledTonalButton(
                    onClick = { mrComicQuickActionHandler(primaryAction, onOpenFiles, onOpenBookmarks, onOpenQuotes)() }
                ) {
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
                actionOrder.filter { it != primaryAction }.forEach { action ->
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
                            Icon(mrComicQuickActionIcon(action), contentDescription = null)
                        }
                    )
                }
            }
        }
    }
}

@Composable
internal fun MrComicSummaryPill(
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
internal fun MrComicAnalyticsCard(
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
                        text = if (searchActive) mrComicSearchSummaryCaption(appLanguage)
                        else mrComicAnalyticsSummaryText(appLanguage, goalState),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                TextButton(onClick = onOpenProgress, contentPadding = PaddingValues(0.dp)) {
                    Text(mrComicProgressEntryCtaLabel(appLanguage))
                }
            }
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicSummaryPill(
                    value = totalTitles.toString(),
                    label = mrComicMetricLabel(appLanguage, MrComicMetric.TITLES, searchActive),
                    compact = true
                )
                MrComicSummaryPill(
                    value = completedTitles.toString(),
                    label = mrComicMetricLabel(appLanguage, MrComicMetric.COMPLETED, searchActive),
                    compact = true
                )
                MrComicSummaryPill(
                    value = bookmarkedTitles.toString(),
                    label = mrComicMetricLabel(appLanguage, MrComicMetric.BOOKMARKS, searchActive),
                    compact = true
                )
                MrComicSummaryPill(
                    value = quotesCount.toString(),
                    label = mrComicMetricLabel(appLanguage, MrComicMetric.QUOTES, searchActive),
                    compact = true
                )
            }
        }
    }
}
