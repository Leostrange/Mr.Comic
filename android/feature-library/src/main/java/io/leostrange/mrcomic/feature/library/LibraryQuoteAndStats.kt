package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.mrComicCompletedColor
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.locale.libraryFileCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteCountLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuotePageLabel
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteSourceCountLabel
import io.leostrange.mrcomic.feature.library.formatQuoteDate
import io.leostrange.mrcomic.core.ui.locale.libraryQuoteSourceMissingLabel

@Composable
internal fun LibraryStatsBar(
    totalItems: Int,
    completedCount: Int,
    inProgressCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryFileCountLabel(totalItems)
    val completedLabel = strings.libraryStatsCompleted
    val inProgressLabel = strings.libraryStatsReading

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 7.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = "$totalItems",
                    style = MaterialTheme.typography.titleMedium.copy(fontWeight = FontWeight.Bold),
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = totalLabel,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
        if (completedCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = mrComicCompletedColor().copy(alpha = 0.15f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("✅", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = "$completedCount $completedLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = mrComicCompletedColor()
                    )
                }
            }
        }
        if (inProgressCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.82f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("📖", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = "$inProgressCount $inProgressLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSecondaryContainer
                    )
                }
            }
        }
    }
}

@Composable
internal fun QuoteStatsBar(
    totalQuotes: Int,
    sourceCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryQuoteCountLabel(totalQuotes)
    val sourceLabel = strings.libraryQuoteSourceCountLabel(sourceCount)

    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 8.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f)
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 7.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Text(
                    text = "$totalQuotes",
                    style = MaterialTheme.typography.titleMedium.copy(fontWeight = FontWeight.Bold),
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = totalLabel,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                )
            }
        }
        if (sourceCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.15f)
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 7.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text("📚", style = MaterialTheme.typography.bodySmall)
                    Text(
                        text = sourceLabel,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.secondary
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalFoundationApi::class, ExperimentalLayoutApi::class)
@Composable
internal fun QuoteCard(
    quote: SavedQuote,
    sourceAvailable: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    onUnavailableSourceClick: () -> Unit
) {
    val strings = LocalStrings.current
    val onOpenQuote = if (sourceAvailable) onClick else onUnavailableSourceClick
    MrComicCardSurface(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp)
            .combinedClickable(
                onClick = onOpenQuote,
                onLongClick = onLongClick
            ),
        containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.92f),
        cornerRadius = 12.dp,
        shadowElevation = 4.dp
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Text(
                text = "“${quote.text}”",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurface
            )
            quote.translatedText?.takeIf { it.isNotBlank() && it != quote.text }?.let { translated ->
                Text(
                    text = translated,
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                MrComicFilterChip(
                    selected = false,
                    onClick = onOpenQuote,
                    label = { Text("${quote.comicTitle} · ${strings.libraryQuotePageLabel(quote.page)}") }
                )
                MrComicFilterChip(
                    selected = false,
                    onClick = {},
                    enabled = false,
                    label = { Text(formatQuoteDate(quote.createdAt, strings.languageCode)) }
                )
                if (!sourceAvailable) {
                    MrComicFilterChip(
                        selected = false,
                        onClick = onUnavailableSourceClick,
                        label = { Text(strings.libraryQuoteSourceMissingLabel()) }
                    )
                }
            }
        }
    }
}
