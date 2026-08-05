package io.leostrange.mrcomic.feature.library

// Phase C (2026-08-05): Section/strip/divider UI extracted from LibraryScreen.kt

import androidx.compose.foundation.clickable
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.library.*
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.feature.library.components.ComicGridItem

@Composable
internal fun LibrarySectionSwitcher(
    current: LibraryContentSection,
    onSectionChange: (LibraryContentSection) -> Unit
) {
    val strings = LocalStrings.current
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        LibrarySectionChip(
            text = strings.navLibrary,
            selected = current == LibraryContentSection.FILES,
            onClick = { onSectionChange(LibraryContentSection.FILES) }
        )
        LibrarySectionChip(
            text = strings.libraryBookmarks,
            selected = current == LibraryContentSection.BOOKMARKS,
            onClick = { onSectionChange(LibraryContentSection.BOOKMARKS) }
        )
        LibrarySectionChip(
            text = strings.libraryQuotes,
            selected = current == LibraryContentSection.QUOTES,
            onClick = { onSectionChange(LibraryContentSection.QUOTES) }
        )
        LibrarySectionChip(
            text = strings.libraryAchievements,
            selected = current == LibraryContentSection.ACHIEVEMENTS,
            onClick = { onSectionChange(LibraryContentSection.ACHIEVEMENTS) }
        )
    }
}

@Composable
internal fun LibrarySectionChip(
    text: String,
    selected: Boolean,
    onClick: () -> Unit,
    enabled: Boolean = true
) {
    val colorScheme = MaterialTheme.colorScheme
    Surface(
        modifier = Modifier.clickable(enabled = enabled, onClick = onClick),
        shape = RootChromePillShape,
        color = if (enabled) {
            rootChromePillContainerColor(colorScheme, selected)
        } else {
            colorScheme.surfaceVariant.copy(alpha = 0.34f)
        },
        border = if (enabled) rootChromePillBorder(colorScheme, selected) else null
    ) {
        Text(
            text = text,
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 9.dp),
            style = MaterialTheme.typography.labelLarge,
            color = if (enabled) {
                rootChromePillContentColor(colorScheme, selected)
            } else {
                colorScheme.onSurfaceVariant.copy(alpha = 0.58f)
            },
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
internal fun LibraryAudiobookStatsBar(
    audiobookCount: Int,
    chapterCount: Int,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        FolderMetaChip(
            text = "$audiobookCount аудиокниг",
            accent = MaterialTheme.colorScheme.primary,
            strong = true
        )
        FolderMetaChip(
            text = "$chapterCount глав",
            accent = MaterialTheme.colorScheme.secondary,
            strong = false
        )
    }
}

// Library strip logic extracted to LibraryStripLogic.kt
@Composable
internal fun LibraryDisplayStripSection(
    section: LibraryStripSectionData,
    uiState: LibraryUiState,
    onComicClick: (Comic) -> Unit,
    onComicLongClick: (Comic) -> Unit,
    onFolderClick: (LibraryFolderItem) -> Unit,
    onFolderLongClick: (LibraryFolderItem) -> Unit,
    onAudiobookClick: (Audiobook) -> Unit,
    onAudiobookLongClick: (Audiobook) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(top = 8.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            if (section.audiobooks.isNotEmpty()) {
                Icon(
                    Icons.Default.Headphones,
                    contentDescription = null,
                    modifier = Modifier.size(18.dp),
                    tint = MaterialTheme.colorScheme.primary
                )
            }
            Text(
                text = section.title,
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
        LazyRow(
            contentPadding = PaddingValues(horizontal = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            if (section.folders.isNotEmpty()) {
                items(section.folders, key = { it.path }) { folder ->
                    Box(modifier = Modifier.width(uiState.tileSizeDp.dp)) {
                        FolderCard(
                            folder = folder,
                            isGrid = true,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            coverScale = uiState.coverScale,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            cardShadow = uiState.cardShadow,
                            onClick = { onFolderClick(folder) },
                            onLongClick = { onFolderLongClick(folder) }
                        )
                    }
                }
            } else if (section.audiobooks.isNotEmpty()) {
                items(section.audiobooks, key = { it.id }) { audiobook ->
                    LibraryGridCell(isGrid = true, tileSizeDp = uiState.tileSizeDp) {
                        AudiobookGridItem(
                            audiobook = audiobook,
                            isGrid = true,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            cardShadow = uiState.cardShadow,
                            titleScale = uiState.titleScale,
                            titleLines = uiState.titleLines,
                            cardStroke = uiState.cardStroke,
                            cardCornerRadius = uiState.cardCornerRadius,
                            titlePanelOpacity = uiState.titlePanelOpacity,
                            showCoverTitles = uiState.showCoverTitlesOnGrid,
                            onClick = { onAudiobookClick(audiobook) },
                            onLongClick = { onAudiobookLongClick(audiobook) }
                        )
                    }
                }
            } else {
                items(section.comics, key = { it.id }) { comic ->
                    Box(modifier = Modifier.width(uiState.tileSizeDp.dp)) {
                        ComicGridItem(
                            comic = comic,
                            isGrid = true,
                            cardStyle = uiState.cardStyle,
                            tileSizeDp = uiState.tileSizeDp,
                            coverScaleMode = uiState.coverScale,
                            thumbnailMode = uiState.thumbnailMode,
                            shelfStyle = uiState.shelfStyle,
                            shelfDepth = uiState.shelfDepth,
                            graphicCoverStyle = uiState.graphicCoverStyle,
                            cardShadow = uiState.cardShadow,
                            titleScale = uiState.titleScale,
                            titleLines = uiState.titleLines,
                            cardStroke = uiState.cardStroke,
                            cardCornerRadius = uiState.cardCornerRadius,
                            titlePanelOpacity = uiState.titlePanelOpacity,
                            showProgressIndicators = uiState.showProgressIndicators,
                            showCoverTitles = uiState.showCoverTitlesOnGrid,
                            onClick = { onComicClick(comic) },
                            onLongClick = { onComicLongClick(comic) }
                        )
                    }
                }
            }
        }
    }
}

@Composable
internal fun LibraryStatusScopeRow(
    current: LibraryStatusFilter,
    totalFiles: Int,
    readingFiles: Int,
    completedFiles: Int,
    bookmarkedFiles: Int,
    onStatusChange: (LibraryStatusFilter) -> Unit
) {
    val strings = LocalStrings.current

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .horizontalScroll(rememberScrollState())
            .padding(horizontal = 16.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        LibrarySectionChip(
            text = strings.libraryFileCountLabel(totalFiles),
            selected = current == LibraryStatusFilter.ALL,
            onClick = { onStatusChange(LibraryStatusFilter.ALL) }
        )
        LibrarySectionChip(
            text = "${strings.libraryStatusReading} ($readingFiles)",
            selected = current == LibraryStatusFilter.IN_PROGRESS,
            onClick = { onStatusChange(LibraryStatusFilter.IN_PROGRESS) },
            enabled = readingFiles > 0 || current == LibraryStatusFilter.IN_PROGRESS
        )
        LibrarySectionChip(
            text = "${strings.libraryStatusCompleted} ($completedFiles)",
            selected = current == LibraryStatusFilter.COMPLETED,
            onClick = { onStatusChange(LibraryStatusFilter.COMPLETED) },
            enabled = completedFiles > 0 || current == LibraryStatusFilter.COMPLETED
        )
        LibrarySectionChip(
            text = "${strings.libraryStatusBookmarked} ($bookmarkedFiles)",
            selected = current == LibraryStatusFilter.BOOKMARKED,
            onClick = { onStatusChange(LibraryStatusFilter.BOOKMARKED) },
            enabled = bookmarkedFiles > 0 || current == LibraryStatusFilter.BOOKMARKED
        )
    }
}

@Composable
internal fun LibrarySectionHeader(
    title: String,
    icon: ImageVector? = null
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        icon?.let {
            Icon(
                imageVector = it,
                contentDescription = null,
                modifier = Modifier.size(20.dp),
                tint = MaterialTheme.colorScheme.primary
            )
        }
        Text(
            text = title,
            style = MaterialTheme.typography.titleSmall,
            color = MaterialTheme.colorScheme.primary
        )
    }
}

@Composable
internal fun AudiobookStripSection(
    title: String,
    audiobooks: List<Audiobook>,
    tileSizeDp: Int,
    thumbnailMode: String,
    cardStyle: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showCoverTitles: Boolean,
    onClick: (Audiobook) -> Unit,
    onLongClick: (Audiobook) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .padding(top = 8.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Icon(
                Icons.Default.Headphones,
                contentDescription = null,
                modifier = Modifier.size(18.dp),
                tint = MaterialTheme.colorScheme.primary
            )
            Text(
                text = title,
                style = MaterialTheme.typography.titleSmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
        LazyRow(
            contentPadding = PaddingValues(horizontal = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(10.dp),
            modifier = Modifier.fillMaxWidth()
        ) {
            items(audiobooks, key = { it.id }) { audiobook ->
                LibraryGridCell(isGrid = true, tileSizeDp = tileSizeDp) {
                    AudiobookGridItem(
                        audiobook = audiobook,
                        isGrid = true,
                        cardStyle = cardStyle,
                        tileSizeDp = tileSizeDp,
                        thumbnailMode = thumbnailMode,
                        shelfStyle = shelfStyle,
                        shelfDepth = shelfDepth,
                        cardShadow = cardShadow,
                        titleScale = titleScale,
                        titleLines = titleLines,
                        cardStroke = cardStroke,
                        cardCornerRadius = cardCornerRadius,
                        titlePanelOpacity = titlePanelOpacity,
                        showCoverTitles = showCoverTitles,
                        onClick = { onClick(audiobook) },
                        onLongClick = { onLongClick(audiobook) }
                    )
                }
            }
        }
    }
}

// Mr.Comic hub/calendar/quick-action strings extracted to MrComicHubStrings.kt

@Composable
internal fun LibraryFileSectionDivider(section: LibraryFileSection) {
    val strings = LocalStrings.current
    val label = when (section) {
        LibraryFileSection.GRAPHIC -> strings.libraryGraphicSectionLabel()
        LibraryFileSection.BOOKS -> strings.libraryBooksSectionLabel()
    }
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp, vertical = 4.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        HorizontalDivider(
            modifier = Modifier.weight(1f),
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.65f)
        )
        Text(
            text = label,
            style = MaterialTheme.typography.labelLarge,
            color = MaterialTheme.colorScheme.primary
        )
        HorizontalDivider(
            modifier = Modifier.weight(1f),
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.65f)
        )
    }
}

