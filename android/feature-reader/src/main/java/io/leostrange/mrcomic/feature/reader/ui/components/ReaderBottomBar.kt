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
import androidx.compose.ui.text.style.TextOverflow
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
    isTextPaginationResolved: Boolean = true,
    isTextWebtoon: Boolean = false,
    freeScrollProgression: Double = -1.0,
    /** BUG-VERTICAL-01: Raster webtoon scroll progression for seekbar sync. */
    rasterWebtoonScrollProgression: Double = -1.0,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit,
    onProgressionChange: ((Float) -> Unit)? = null,
    showReadingModeControls: Boolean = true,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val compactImageLayout = isLandscape && !isTextBook
    val showPageCountText = true
    val showSectionPage = sectionPageCount > 0 && isTextBook
    // Text engines expose spine sections through currentPage/totalPages. Once visual-page
    // accumulation is available, the reader-facing counter must use the whole-book model.
    val effectiveProgress = resolveReaderBottomProgress(
        currentPage = currentPage,
        totalPages = totalPages,
        isTextBook = isTextBook,
        sectionPageCount = sectionPageCount,
        epubAccumulatedCurrentPage = epubAccumulatedCurrentPage,
        epubAccumulatedTotalPages = epubAccumulatedTotalPages,
        isTextPaginationResolved = isTextPaginationResolved,
    )
    val effectiveTotalPages = effectiveProgress.totalPages
    val effectiveCurrentPage = effectiveProgress.currentPage
    // BUG-READER-04: Use same formula as database: currentPage / (pageCount - 1)
    val bookProgress = if (effectiveTotalPages > 1) {
        (effectiveCurrentPage.toFloat() / (effectiveTotalPages - 1) * 100f).toInt().coerceIn(0, 100)
    } else 0

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
                    text = if (showSectionPage && effectiveTotalPages <= sectionPageCount) {
                        "${sectionCurrentPage + 1}/$sectionPageCount"
                    } else if (!effectiveProgress.isResolved) {
                        "${effectiveCurrentPage + 1} / …"
                    } else {
                        "${effectiveCurrentPage + 1} / $effectiveTotalPages"
                    },
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
                if (!showReadingModeControls) {
                    Spacer(Modifier.weight(1f))
                } else if (isLandscape && !isTextBook) {
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
                    chapterTitle != null && !effectiveProgress.isResolved ->
                        "$chapterTitle (${effectiveCurrentPage + 1}/…)"
                    chapterTitle != null ->
                        "$chapterTitle (${effectiveCurrentPage + 1}/$effectiveTotalPages)"
                    !effectiveProgress.isResolved ->
                        "${effectiveCurrentPage + 1} / …"
                    else ->
                        "${effectiveCurrentPage + 1} / $effectiveTotalPages"
                }
                Text(
                    text = counterText,
                    color = MaterialTheme.colorScheme.onSurface,
                    style = MaterialTheme.typography.labelMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                if (isTextBook && epubAccumulatedTotalPages > 0) {
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

        if (isTextWebtoon && freeScrollProgression in 0.0..1.0) {
            // Continuous slider for text webtoon — uses scroll progression (0.0..1.0)
            Slider(
                value = freeScrollProgression.toFloat().coerceIn(0f, 1f),
                onValueChange = { onProgressionChange?.invoke(it) },
                valueRange = 0f..1f,
                modifier = Modifier.fillMaxWidth(),
                colors = SliderDefaults.colors(
                    thumbColor = MaterialTheme.colorScheme.primary,
                    activeTrackColor = MaterialTheme.colorScheme.primary,
                    inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
                )
            )
        } else if (!isTextWebtoon && readingMode == ReadingMode.WEBTOON && rasterWebtoonScrollProgression in 0.0..1.0) {
            // BUG-VERTICAL-01: Continuous slider for raster webtoon — uses tracked scroll progression.
            // Converting progression fraction to page index so the user can scrub through the document.
            Slider(
                value = rasterWebtoonScrollProgression.toFloat().coerceIn(0f, 1f),
                onValueChange = { fraction ->
                    val targetPage = (fraction * totalPages).toInt().coerceIn(0, (totalPages - 1).coerceAtLeast(0))
                    onPageChange(targetPage)
                },
                valueRange = 0f..1f,
                modifier = Modifier.fillMaxWidth(),
                colors = SliderDefaults.colors(
                    thumbColor = MaterialTheme.colorScheme.primary,
                    activeTrackColor = MaterialTheme.colorScheme.primary,
                    inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
                )
            )
        } else if (totalPages > 1) {
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
