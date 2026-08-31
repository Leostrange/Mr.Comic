package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
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
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.ui.components.ReaderBottomBar

@Composable
fun ReaderExpandedBottomPanel(
    uiState: ReaderUiState,
    isLandscape: Boolean,
    onToggleBookmark: () -> Unit,
    onApplyPreset: (ReadingPreset) -> Unit,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit
) {
    val strings = LocalStrings.current
    val showReadingPresets = true
    val useCompactLandscapeImagePanel = shouldUseCompactLandscapeBottomPanel(
        isLandscape = isLandscape,
        isTextBook = uiState.currentHtmlContent != null
    )

    if (useCompactLandscapeImagePanel) {
        ReaderCompactLandscapeBottomPanel(
            currentPage = uiState.effectiveCurrentPage,
            totalPages = uiState.effectiveTotalPages,
            isResolved = uiState.isTextPaginationResolved || uiState.epubAccumulatedTotalPages > 0,
            readingMode = uiState.readingMode,
            bookmarked = uiState.currentPage in uiState.bookmarkedPages,
            onToggleBookmark = onToggleBookmark,
            onApplyPreset = onApplyPreset,
            onReadingModeChange = onReadingModeChange,
            onPageChange = onPageChange
        )
        return
    }

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(top = 10.dp, bottom = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(horizontalArrangement = Arrangement.spacedBy(8.dp), verticalAlignment = Alignment.CenterVertically) {
                ReaderPanelChip(
                    selected = uiState.currentPage in uiState.bookmarkedPages,
                    onClick = onToggleBookmark,
                    label = { Text(if (uiState.currentPage in uiState.bookmarkedPages) strings.readerBookmarked else strings.readerBookmark) }
                )
                ReaderPanelChip(
                    selected = uiState.readingMode != ReadingMode.WEBTOON,
                    onClick = { onReadingModeChange(ReadingMode.PAGE_LTR) },
                    label = { Text(strings.readerPages) }
                )
                ReaderPanelChip(
                    selected = uiState.readingMode == ReadingMode.WEBTOON,
                    onClick = { onReadingModeChange(ReadingMode.WEBTOON) },
                    label = { Text(strings.readingModeWebtoon) }
                )
            }
            if (showReadingPresets) {
                Text(
                    text = strings.readerReadingPresets,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                androidx.compose.foundation.lazy.LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
                        item {
                            ReaderPanelChip(
                                selected = uiState.readerPreset == preset.name,
                                onClick = { onApplyPreset(preset) },
                                label = {
                                    Text(
                                        readerPresetLabel(preset, strings.languageCode)
                                    )
                                }
                            )
                        }
                    }
                }
            }
        }

        ReaderBottomBar(
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode,
            isLandscape = isLandscape,
            isTextBook = uiState.currentHtmlContent != null,
            sectionPageCount = uiState.sectionPageCount,
            sectionCurrentPage = uiState.sectionCurrentPage,
            chapterTitle = uiState.tableOfContents
                .sortedBy { it.pageIndex }
                .lastOrNull { it.pageIndex <= uiState.currentPage }
                ?.title,
            epubAccumulatedTotalPages = uiState.epubAccumulatedTotalPages,
            epubAccumulatedCurrentPage = uiState.epubAccumulatedCurrentPage,
            isTextPaginationResolved = uiState.isTextPaginationResolved,
            isTextWebtoon = uiState.readerContainerKind == ReaderContainerKind.TEXT_WEBTOON,
            freeScrollProgression = uiState.freeScrollProgression,
            rasterWebtoonScrollProgression = uiState.rasterWebtoonScrollProgression,
            onReadingModeChange = onReadingModeChange,
            onPageChange = onPageChange,
            showReadingModeControls = false
        )
    }
}

@Composable
private fun ReaderCompactLandscapeBottomPanel(
    currentPage: Int,
    totalPages: Int,
    isResolved: Boolean = true,
    readingMode: ReadingMode,
    bookmarked: Boolean,
    onToggleBookmark: () -> Unit,
    onApplyPreset: (ReadingPreset) -> Unit,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit
) {
    val strings = LocalStrings.current

    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 12.dp, end = 12.dp, top = 8.dp, bottom = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            androidx.compose.foundation.lazy.LazyRow(
                modifier = Modifier.weight(1f),
                horizontalArrangement = Arrangement.spacedBy(6.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                item {
                    ReaderPanelChip(
                        selected = bookmarked,
                        onClick = onToggleBookmark,
                        label = { Text(if (bookmarked) strings.readerBookmarked else strings.readerBookmark) }
                    )
                }
                item {
                    ReaderPanelChip(
                        selected = readingMode != ReadingMode.WEBTOON,
                        onClick = { onReadingModeChange(ReadingMode.PAGE_LTR) },
                        label = { Text(strings.readerPages) }
                    )
                }
                item {
                    ReaderPanelChip(
                        selected = readingMode == ReadingMode.WEBTOON,
                        onClick = { onReadingModeChange(ReadingMode.WEBTOON) },
                        label = { Text(strings.readingModeWebtoon) }
                    )
                }
                io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
                    item {
                        ReaderPanelChip(
                            selected = false,
                            onClick = { onApplyPreset(preset) },
                            label = { Text(readerPresetLabel(preset, strings.languageCode)) }
                        )
                    }
                }
            }

            Text(
                text = if (!isResolved) {
                    "${currentPage.coerceAtLeast(0) + 1} / …"
                } else if (totalPages > 1) {
                    "${currentPage.coerceIn(0, totalPages - 1) + 1} / $totalPages"
                } else "1 / …",
                color = MaterialTheme.colorScheme.onSurface,
                style = MaterialTheme.typography.labelMedium
            )
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

internal fun shouldUseCompactLandscapeBottomPanel(
    isLandscape: Boolean,
    isTextBook: Boolean
): Boolean = isLandscape && !isTextBook
