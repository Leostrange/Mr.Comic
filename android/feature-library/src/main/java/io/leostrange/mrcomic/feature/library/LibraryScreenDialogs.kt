package io.leostrange.mrcomic.feature.library

import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.setValue
import io.leostrange.mrcomic.core.model.Audiobook
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.SortOrder
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.data.db.entity.SavedQuote
import io.leostrange.mrcomic.core.ui.locale.AppStrings

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun LibraryScreenDialogs(
    showFilterSheet: Boolean,
    onDismissFilterSheet: () -> Unit,
    selectedComicId: String?,
    onDismissComicInfo: () -> Unit,
    comicToDelete: String?,
    onDismissDeleteComic: () -> Unit,
    folderToDelete: LibraryFolderItem?,
    onDismissDeleteFolder: () -> Unit,
    audiobookToDelete: Audiobook?,
    onDismissDeleteAudiobook: () -> Unit,
    quoteToDelete: SavedQuote?,
    onDismissDeleteQuote: () -> Unit,
    uiState: LibraryUiState,
    comicsById: Map<String, Comic>,
    strings: AppStrings,
    viewModel: LibraryViewModel,
    onComicClick: (String) -> Unit,
    onSetComicToDelete: (String) -> Unit,
    onSetFolderToDelete: (LibraryFolderItem) -> Unit,
    onSetAudiobookToDelete: (Audiobook) -> Unit,
    onSetQuoteToDelete: (SavedQuote) -> Unit,
) {
    if (showFilterSheet && uiState.contentSection == LibraryContentSection.FILES) {
        ModalBottomSheet(
            onDismissRequest = onDismissFilterSheet,
            containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
                .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
            scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
        ) {
            FilterSheet(
                sortOrder = uiState.sortOrder,
                statusFilter = uiState.statusFilter,
                formatFilter = uiState.formatFilter,
                groupByMode = uiState.groupByMode,
                viewMode = uiState.viewMode,
                thumbnailMode = uiState.thumbnailMode,
                tileSizeDp = uiState.tileSizeDp,
                onSortChange = viewModel::setSortOrder,
                onStatusFilterChange = viewModel::setStatusFilter,
                onFormatFilterChange = viewModel::setFormatFilter,
                onGroupByChange = {
                    viewModel.setGroupBy(it)
                    if (it == GroupByMode.FOLDER) viewModel.openFolder(null)
                },
                onViewModeChange = viewModel::setViewMode,
                onThumbnailModeChange = viewModel::setThumbnailMode,
                onTileSizeChange = viewModel::setTileSizeDp,
                onReset = {
                    viewModel.setSortOrder(SortOrder.DATE_ADDED_DESC)
                    viewModel.setStatusFilter(LibraryStatusFilter.ALL)
                    viewModel.setFormatFilter(LibraryFormatFilter.ALL)
                    viewModel.setGroupBy(GroupByMode.FOLDER)
                    viewModel.setViewMode(LibraryViewMode.GRID)
                    viewModel.setThumbnailMode("RECTANGLE")
                    viewModel.setTileSizeDp(150)
                    viewModel.openFolder(null)
                    onDismissFilterSheet()
                }
            )
        }
    }

    selectedComicId?.let { id ->
        val comic = comicsById[id]
        if (comic == null) {
            LaunchedEffect(id) { onDismissComicInfo() }
        } else {
            ComicInfoSheet(
                comic = comic,
                onDismiss = onDismissComicInfo,
                onOpen = { onDismissComicInfo(); onComicClick(id) },
                onToggleBookmark = { viewModel.toggleBookmark(id); onDismissComicInfo() },
                onToggleCompleted = {
                    viewModel.markCompleted(id, !comic.isReadCompleted())
                    onDismissComicInfo()
                },
                onDelete = { onDismissComicInfo(); onSetComicToDelete(id) },
                onSaveMeta = { title, tags, shelf -> viewModel.updateComicMeta(id, title, tags, shelf) }
            )
        }
    }

    comicToDelete?.let { id ->
        DeleteComicDialog(
            comicId = id,
            comicsById = comicsById,
            strings = strings,
            onDelete = {
                viewModel.deleteComic(it)
                onDismissDeleteComic()
            },
            onDismiss = onDismissDeleteComic
        )
    }

    folderToDelete?.let { folder ->
        DeleteFolderDialog(
            folder = folder,
            comics = uiState.comics,
            strings = strings,
            onDelete = {
                viewModel.deleteFolder(it)
                onDismissDeleteFolder()
            },
            onDismiss = onDismissDeleteFolder
        )
    }

    audiobookToDelete?.let { audiobook ->
        DeleteAudiobookDialog(
            audiobook = audiobook,
            strings = strings,
            onDelete = {
                viewModel.deleteAudiobook(it)
                onDismissDeleteAudiobook()
            },
            onDismiss = onDismissDeleteAudiobook
        )
    }

    quoteToDelete?.let { quote ->
        DeleteQuoteDialog(
            quote = quote,
            strings = strings,
            onDelete = {
                viewModel.deleteQuote(it)
                onDismissDeleteQuote()
            },
            onDismiss = onDismissDeleteQuote
        )
    }

    LibraryFolderDialog(
        uiState = uiState,
        strings = strings,
        viewModel = viewModel,
        onComicClick = onComicClick,
        onComicLongClick = onSetComicToDelete,
        onFolderLongClick = onSetFolderToDelete
    )
}
