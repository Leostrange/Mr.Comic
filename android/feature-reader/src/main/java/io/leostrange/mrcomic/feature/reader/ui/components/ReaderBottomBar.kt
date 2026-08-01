package io.leostrange.mrcomic.feature.reader.ui.components

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.height
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.feature.reader.ui.ReaderPanelChip

@Composable
fun ReaderBottomBar(
    currentPage: Int,
    totalPages: Int,
    readingMode: ReadingMode,
    isLandscape: Boolean,
    isTextBook: Boolean = false,
    sectionPageCount: Int = 0,
    sectionCurrentPage: Int = 0,
    chapterTitle: String? = null,
    epubAccumulatedTotalPages: Int = 0,
    epubAccumulatedCurrentPage: Int = 0,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val compactImageLayout = isLandscape && !isTextBook
    val showPageCountText = true
    val showSectionPage = sectionPageCount > 0 && isTextBook
    // For text books with section paging: show section-local values so the counter
    // and slider stay in sync (both advance only on section boundary, not per visual page).
    // For image-based comics or EPUBs without section paging: use book-wide accumulated values.
    val useSectionLocal = isTextBook && sectionPageCount > 0
    val effectiveTotalPages = when {
        useSectionLocal -> totalPages
        epubAccumulatedTotalPages > 0 -> epubAccumulatedTotalPages
        else -> totalPages
    }
    val effectiveCurrentPage = when {
        useSectionLocal -> currentPage
        epubAccumulatedTotalPages > 0 -> epubAccumulatedCurrentPage
        else -> currentPage
    }
    val bookProgress = if (effectiveTotalPages > 0) ((effectiveCurrentPage + 1) * 100f / effectiveTotalPages).toInt() else 0

    Column(
        modifier = modifier
            .fillMaxWidth()
            .padding(
                start = 16.dp,
                end = 16.dp,
                top = if (compactImageLayout) 10.dp else 16.dp,
                bottom = if (compactImageLayout) 10.dp else 16.dp
            ),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        if (compactImageLayout) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = strings.readingModeDual,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    style = MaterialTheme.typography.labelMedium
                )
                Text(
                    text = if (showSectionPage) "${sectionCurrentPage + 1}/$sectionPageCount" else "${currentPage + 1} / $totalPages",
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium
                )
            }
            Spacer(Modifier.height(8.dp))
        } else {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterHorizontally)
            ) {
                if (isLandscape && !isTextBook) {
                    ReaderPanelChip(
                        selected = true,
                        onClick = {},
                        label = { Text(strings.readingModeDual) }
                    )
                } else {
                    ReaderPanelChip(
                        selected = readingMode == ReadingMode.PAGE_LTR || readingMode == ReadingMode.PAGE_RTL,
                        onClick = { onReadingModeChange(ReadingMode.PAGE_LTR) },
                        label = { Text(strings.readerPages) }
                    )
                    ReaderPanelChip(
                        selected = readingMode == ReadingMode.WEBTOON,
                        onClick = { onReadingModeChange(ReadingMode.WEBTOON) },
                        label = { Text(strings.readingModeWebtoon) }
                    )
                }
            }

            Spacer(Modifier.height(12.dp))
            if (showPageCountText) {
                val counterText = when {
                    chapterTitle != null ->
                        "$chapterTitle (${effectiveCurrentPage + 1}/$effectiveTotalPages)"
                    else ->
                        "${effectiveCurrentPage + 1} / $effectiveTotalPages"
                }
                Text(
                    text = counterText,
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium
                )
                if (isTextBook && totalPages > 0) {
                    Spacer(Modifier.height(2.dp))
                    Text(
                        text = "$bookProgress%",
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        style = MaterialTheme.typography.labelSmall
                    )
                }
                Spacer(Modifier.height(8.dp))
            } else {
                Spacer(Modifier.height(4.dp))
            }
        }

        if (totalPages > 1) {
            Slider(
                value = currentPage.toFloat(),
                onValueChange = { onPageChange(it.toInt()) },
                valueRange = 0f..(totalPages - 1).toFloat(),
                steps = (totalPages - 2).coerceAtLeast(0),
                modifier = Modifier.fillMaxWidth(),
                colors = SliderDefaults.colors(
                    thumbColor = MaterialTheme.colorScheme.primary,
                    activeTrackColor = MaterialTheme.colorScheme.primary,
                    inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
                    activeTickColor = MaterialTheme.colorScheme.onPrimary,
                    inactiveTickColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.36f)
                )
            )
        }
    }
}
