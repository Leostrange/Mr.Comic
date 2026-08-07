package io.leostrange.mrcomic.feature.library

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.GridItemSpan
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.feature.library.components.ComicGridItem

@Composable
internal fun LibraryFolderDialog(
    uiState: LibraryUiState,
    strings: AppStrings,
    viewModel: LibraryViewModel,
    onComicClick: (String) -> Unit,
    onComicLongClick: (String) -> Unit,
    onFolderLongClick: (LibraryFolderItem) -> Unit
) {
    val folderPath = uiState.folderSheetPath ?: return
    val screenHeight = LocalConfiguration.current.screenHeightDp.dp
    Dialog(
        onDismissRequest = viewModel::dismissFolderSheet,
        properties = DialogProperties(usePlatformDefaultWidth = false)
    ) {
        val sheetColumns = if (uiState.viewMode == LibraryViewMode.LIST) {
            GridCells.Fixed(1)
        } else {
            GridCells.Fixed(uiState.libraryGridColumns)
        }
        val itemSpacing = when (uiState.cardStyle) {
            "COMPACT" -> 6.dp
            "SHOWCASE" -> 12.dp
            else -> 8.dp
        }
        val folderTitle = uiState.folderSheetBreadcrumbs.lastOrNull()?.label ?: strings.actionFolder
        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            Surface(
                modifier = Modifier
                    .fillMaxWidth(0.92f)
                    .widthIn(max = 760.dp)
                    .heightIn(max = screenHeight * 0.7f),
                shape = RoundedCornerShape(28.dp),
                color = MaterialTheme.colorScheme.surfaceContainerHigh.copy(
                    alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.9f)
                ),
                tonalElevation = 8.dp,
                shadowElevation = 18.dp
            ) {
                Column(modifier = Modifier.fillMaxWidth()) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 20.dp, vertical = 12.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column(modifier = Modifier.weight(1f)) {
                            Text(
                                text = folderTitle,
                                style = MaterialTheme.typography.titleMedium,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis
                            )
                            Text(
                                text = folderDescription(
                                    LibraryFolderItem(
                                        path = folderPath,
                                        title = folderTitle,
                                        coverPath = null,
                                        fileCount = uiState.folderSheetItems.count { it is LibraryComicItem },
                                        subfolderCount = uiState.folderSheetItems.count { it is LibraryFolderItem },
                                        newestAdded = 0L,
                                        lastReadDate = null,
                                        totalSize = 0L,
                                        progress = 0f
                                    ),
                                    strings
                                ),
                                style = MaterialTheme.typography.bodySmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            if (uiState.folderSheetBreadcrumbs.size > 1) {
                                FilledTonalButton(onClick = viewModel::navigateUpFromFolderSheet) {
                                    Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = null)
                                    Spacer(Modifier.width(6.dp))
                                    Text(strings.back)
                                }
                            }
                            IconButton(onClick = viewModel::dismissFolderSheet) {
                                Icon(Icons.Default.Close, contentDescription = strings.cancel)
                            }
                        }
                    }
                    if (uiState.folderSheetBreadcrumbs.size > 1) {
                        BreadcrumbRow(
                            breadcrumbs = uiState.folderSheetBreadcrumbs,
                            canNavigateUp = true,
                            onNavigateUp = viewModel::navigateUpFromFolderSheet,
                            onNavigateTo = { path ->
                                if (path == null) {
                                    viewModel.dismissFolderSheet()
                                } else {
                                    viewModel.openFolderSheet(path)
                                }
                            }
                        )
                    }
                    LazyVerticalGrid(
                        columns = sheetColumns,
                        modifier = Modifier
                            .fillMaxWidth()
                            .heightIn(max = screenHeight * 0.54f),
                        contentPadding = PaddingValues(start = 16.dp, end = 16.dp, top = 12.dp, bottom = 20.dp),
                        horizontalArrangement = Arrangement.spacedBy(itemSpacing),
                        verticalArrangement = Arrangement.spacedBy(itemSpacing)
                    ) {
                        items(
                            items = uiState.folderSheetItems,
                            key = { it.key },
                            span = { item ->
                                if (item is LibrarySectionDividerItem) {
                                    GridItemSpan(maxLineSpan)
                                } else {
                                    GridItemSpan(1)
                                }
                            }
                        ) { item ->
                            when (item) {
                                is LibrarySectionDividerItem -> LibraryFileSectionDivider(section = item.section)
                                is LibraryComicItem -> {
                                    LibraryGridCell(
                                        isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                        tileSizeDp = uiState.tileSizeDp
                                    ) {
                                        ComicGridItem(
                                            comic = item.comic,
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
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
                                            onClick = { onComicClick(item.comic.id) },
                                            onLongClick = { onComicLongClick(item.comic.id) }
                                        )
                                    }
                                }
                                is LibraryFolderItem -> {
                                    LibraryGridCell(
                                        isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                        tileSizeDp = uiState.tileSizeDp
                                    ) {
                                        FolderCard(
                                            folder = item,
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                            cardStyle = uiState.cardStyle,
                                            tileSizeDp = uiState.tileSizeDp,
                                            coverScale = uiState.coverScale,
                                            thumbnailMode = uiState.thumbnailMode,
                                            shelfStyle = uiState.shelfStyle,
                                            shelfDepth = uiState.shelfDepth,
                                            cardShadow = uiState.cardShadow,
                                            onClick = {
                                                if (item.fileCount == 1 && item.subfolderCount == 0) {
                                                    val singleComic = uiState.folderSheetItems
                                                        .filterIsInstance<LibraryComicItem>()
                                                        .find { it.comic.folderId == item.path }
                                                        ?.comic
                                                    if (singleComic != null) {
                                                        viewModel.dismissFolderSheet()
                                                        onComicClick(singleComic.id)
                                                    } else {
                                                        viewModel.openFolderSheet(item.path)
                                                    }
                                                } else {
                                                    viewModel.openFolderSheet(item.path)
                                                }
                                            },
                                            onLongClick = { onFolderLongClick(item) }
                                        )
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
