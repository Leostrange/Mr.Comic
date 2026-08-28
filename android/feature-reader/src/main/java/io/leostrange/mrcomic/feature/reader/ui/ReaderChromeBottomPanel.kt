package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.SliderDefaults
import androidx.compose.material3.Surface
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
    val readerText = readerUiText(strings.languageCode)
    val showReadingPresets = true
    val useCompactLandscapeImagePanel = isLandscape && !showReadingPresets

    if (useCompactLandscapeImagePanel) {
        ReaderCompactLandscapeBottomPanel(
            currentPage = uiState.effectiveCurrentPage,
            totalPages = uiState.effectiveTotalPages,
            readingMode = uiState.readingMode,
            bookmarked = uiState.currentPage in uiState.bookmarkedPages,
            onToggleBookmark = onToggleBookmark,
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
    readingMode: ReadingMode,
    bookmarked: Boolean,
    onToggleBookmark: () -> Unit,
    onPageChange: (Int) -> Unit
) {
    val strings = LocalStrings.current
    val modeLabel = if (readingMode == ReadingMode.WEBTOON) {
        strings.readingModeWebtoon
    } else {
        strings.readingModeDual
    }

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
            Surface(
                shape = RoundedCornerShape(999.dp),
                color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
            ) {
                Row(
                    modifier = Modifier.padding(start = 4.dp, end = 10.dp, top = 2.dp, bottom = 2.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    IconButton(
                        onClick = onToggleBookmark,
                        modifier = Modifier.size(32.dp)
                    ) {
                        Icon(
                            imageVector = if (bookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                            contentDescription = if (bookmarked) strings.readerBookmarked else strings.readerBookmark,
                            tint = if (bookmarked) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                    Text(
                        text = modeLabel,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        style = MaterialTheme.typography.labelMedium
                    )
                }
            }

            Spacer(Modifier.weight(1f))

            Text(
                text = if (totalPages > 1) "${currentPage.coerceIn(0, totalPages - 1) + 1} / $totalPages" else "1 / …",
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
