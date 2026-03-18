package com.example.feature.library

import android.net.Uri
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.horizontalScroll
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.FlowRowScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.GridItemSpan
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.InsertDriveFile
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.automirrored.filled.OpenInNew
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Edit
import androidx.compose.material.icons.filled.Folder
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.RadioButtonUnchecked
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Button
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.LocalContentColor
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.OutlinedTextField
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Snackbar
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableIntStateOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.foundation.rememberScrollState
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.foundation.verticalScroll
import androidx.hilt.navigation.compose.hiltViewModel
import coil.compose.AsyncImage
import com.example.core.model.Comic
import com.example.core.model.SortOrder
import com.example.core.ui.library.LibraryBackdropLayer
import com.example.core.ui.library.LibraryShelfBar
import com.example.core.ui.library.libraryCardElevation
import com.example.core.ui.locale.AppStrings
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.locale.libraryComicCountLabel
import com.example.core.ui.locale.libraryFileCountLabel
import com.example.core.ui.locale.libraryFolderCountLabel
import com.example.core.ui.locale.librarySetCountLabel
import com.example.core.ui.locale.libraryVolumeCountLabel
import com.example.feature.library.components.AchievementStrings
import com.example.feature.library.components.ComicCoverTreatment
import com.example.feature.library.components.ComicGridItem
import com.example.feature.library.components.CoverArt
import com.example.feature.library.components.FolderBackgroundStack
import com.example.feature.library.components.FolderCoverTreatment
import com.example.feature.library.components.FormatBadge
import com.example.feature.library.components.LibraryTopBar
import com.example.feature.library.components.computeAchievements
import com.example.feature.library.components.formatLabel
import com.example.feature.library.components.isGraphicVolumeFormat
import java.io.File
@Suppress("UNUSED_PARAMETER")
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onComicClick: (String) -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onSettingsClick: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val strings = LocalStrings.current
    val comicsById = remember(uiState.comics) { uiState.comics.associateBy { it.id } }

    var selectedComicId by remember { mutableStateOf<String?>(null) }
    var comicToDelete by remember { mutableStateOf<String?>(null) }
    var folderToDelete by remember { mutableStateOf<LibraryFolderItem?>(null) }
    var showFilterSheet by remember { mutableStateOf(false) }
    var showControlsMenu by remember { mutableStateOf(false) }
    // Достижения — для уведомления при разблокировке
    val achievementStrings = rememberAchievementStrings(strings)
    val achievements = remember(
        uiState.allComicsRawCount, uiState.completedComicCount,
        uiState.bookmarkedComicCount, uiState.rawAuthors, uiState.rawGenres,
        uiState.secretCatUnlocked
    ) {
        computeAchievements(
            totalComics = uiState.allComicsRawCount,
            completedComics = uiState.completedComicCount,
            bookmarkedComics = uiState.bookmarkedComicCount,
            allAuthors = uiState.rawAuthors,
            allGenres = uiState.rawGenres,
            secretUnlocked = uiState.secretCatUnlocked,
            strings = achievementStrings
        )
    }
    val snackbarHostState = remember { androidx.compose.material3.SnackbarHostState() }
    // Краткое уведомление при разблокировке нового достижения
    var prevUnlockedCount by remember { mutableIntStateOf(0) }
    val unlockedCount = achievements.count { it.isUnlocked }
    LaunchedEffect(unlockedCount) {
        if (unlockedCount > prevUnlockedCount && prevUnlockedCount > 0) {
            val newest = achievements.filter { it.isUnlocked }.getOrNull(unlockedCount - 1)
            snackbarHostState.showSnackbar(
                message = "${newest?.emoji ?: "🏅"} ${newest?.title.orEmpty()}"
            )
        }
        prevUnlockedCount = unlockedCount
    }

    Scaffold(
        snackbarHost = { androidx.compose.material3.SnackbarHost(hostState = snackbarHostState) },
        topBar = {
            LibraryTopBar(
                isControlsExpanded = showControlsMenu,
                sortOrder = uiState.sortOrder,
                statusFilter = uiState.statusFilter,
                formatFilter = uiState.formatFilter,
                groupByMode = uiState.groupByMode,
                thumbnailMode = uiState.thumbnailMode,
                viewMode = uiState.viewMode,
                onToggleControls = { showControlsMenu = !showControlsMenu },
                onToggleView = {
                    viewModel.setViewMode(
                        if (uiState.viewMode == LibraryViewMode.GRID) LibraryViewMode.LIST
                        else LibraryViewMode.GRID
                    )
                },
                onOpenFilters = { showFilterSheet = true },
                onThumbnailModeChange = viewModel::setThumbnailMode,
                onAddFileClick = onAddFileClick,
                onAddFolderClick = onAddFolderClick,
                canNavigateUp = uiState.groupByMode == GroupByMode.FOLDER && uiState.currentFolderPath != null,
                onNavigateUp = viewModel::navigateUpFromFolder
            )
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
        ) {
            LibraryBackground(
                backgroundStyle = uiState.backgroundStyle,
                backgroundImageUri = uiState.backgroundImageUri,
                backdropStrength = (uiState.backdropStrength * 1.2f).coerceIn(0f, 1f),
                backgroundVeil = (uiState.backgroundVeil * 1.2f).coerceIn(0f, 1f)
            )

            when {
                uiState.isLoading && uiState.totalComicCount == 0 -> {
                    CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
                }

                uiState.totalComicCount == 0 -> {
                    EmptyLibraryPlaceholder(
                        modifier = Modifier.align(Alignment.Center),
                        onAddFile = onAddFileClick,
                        onAddFolder = onAddFolderClick
                    )
                }

                else -> {
                    val columns = when (uiState.viewMode) {
                        LibraryViewMode.GRID -> GridCells.Fixed(uiState.libraryGridColumns)
                        LibraryViewMode.LIST -> GridCells.Fixed(1)
                    }
                    val itemSpacing = when (uiState.cardStyle) {
                        "COMPACT" -> 6.dp
                        "SHOWCASE" -> 12.dp
                        else -> 8.dp
                    }
                    LazyVerticalGrid(
                        columns = columns,
                        contentPadding = PaddingValues(top = 12.dp, bottom = 24.dp),
                        horizontalArrangement = Arrangement.spacedBy(itemSpacing),
                        verticalArrangement = Arrangement.spacedBy(itemSpacing),
                        modifier = Modifier.fillMaxSize()
                    ) {
                        // ── Статистика библиотеки ──
                        item(key = "library_stats", span = { GridItemSpan(maxLineSpan) }) {
                            LibraryStatsBar(
                                totalComics = uiState.allComicsRawCount,
                                completedCount = uiState.completedComicCount,
                                inProgressCount = uiState.recentlyRead.size,
                                modifier = Modifier.fillMaxWidth()
                            )
                        }

                        if (uiState.breadcrumbs.size > 1) {
                            item(key = "breadcrumbs", span = { GridItemSpan(maxLineSpan) }) {
                                BreadcrumbRow(
                                    breadcrumbs = uiState.breadcrumbs,
                                    canNavigateUp = uiState.currentFolderPath != null,
                                    onNavigateUp = viewModel::navigateUpFromFolder,
                                    onNavigateTo = viewModel::openFolder
                                )
                            }
                        }

                        if (uiState.groupByMode == GroupByMode.SERIES && uiState.groupSections.isNotEmpty()) {
                            uiState.groupSections.forEach { (title, comics) ->
                                item(key = "section_$title", span = { GridItemSpan(maxLineSpan) }) {
                                    Text(
                                        text = title,
                                        style = MaterialTheme.typography.titleSmall,
                                        color = MaterialTheme.colorScheme.primary,
                                        modifier = Modifier
                                            .fillMaxWidth()
                                            .padding(horizontal = 16.dp)
                                            .padding(top = 8.dp, bottom = 4.dp)
                                    )
                                }
                                items(comics, key = { it.id }) { comic ->
                                    LibraryGridCell(
                                        isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                        tileSizeDp = uiState.tileSizeDp
                                    ) {
                                        ComicGridItem(
                                            comic = comic,
                                            isGrid = uiState.viewMode != LibraryViewMode.LIST,
                                            cardStyle = uiState.cardStyle,
                                            tileSizeDp = uiState.tileSizeDp,
                                            coverScaleMode = uiState.coverScale,
                                            thumbnailMode = uiState.thumbnailMode,
                                            shelfStyle = uiState.shelfStyle,
                                            shelfDepth = uiState.shelfDepth,
                                            graphicCoverStyle = uiState.graphicCoverStyle,
                                            cardShadow = uiState.cardShadow,
                                            showProgressIndicators = uiState.showProgressIndicators,
                                            onClick = { onComicClick(comic.id) },
                                            onLongClick = { selectedComicId = comic.id }
                                        )
                                    }
                                }
                            }
                        } else {
                            if (uiState.displayItems.isEmpty()) {
                                item(key = "empty_folder", span = { GridItemSpan(maxLineSpan) }) {
                                    EmptyFolderPlaceholder(
                                        title = uiState.breadcrumbs.lastOrNull()?.label ?: strings.actionFolder
                                    )
                                }
                            } else {
                                items(uiState.displayItems, key = { it.key }) { item ->
                                    when (item) {
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
                                                    showProgressIndicators = uiState.showProgressIndicators,
                                                    onClick = { onComicClick(item.comic.id) },
                                                    onLongClick = { selectedComicId = item.comic.id }
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
                                                    onClick = { viewModel.openFolder(item.path) },
                                                    onLongClick = { folderToDelete = item }
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

            uiState.error?.let { message ->
                Snackbar(
                    modifier = Modifier
                        .align(Alignment.BottomCenter)
                        .padding(16.dp),
                    action = { TextButton(onClick = viewModel::clearError) { Text(strings.ok) } }
                ) {
                    Text(message)
                }
            }
        }
            }

            if (showFilterSheet) {
                ModalBottomSheet(
                    onDismissRequest = { showFilterSheet = false },
                    containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
                        .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
                    scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
                ) {
                    FilterSheet(
                        sortOrder = uiState.sortOrder,
                        statusFilter = uiState.statusFilter,
                formatFilter = uiState.formatFilter,
                groupByMode = uiState.groupByMode,
                thumbnailMode = uiState.thumbnailMode,
                onSortChange = viewModel::setSortOrder,
                onStatusFilterChange = viewModel::setStatusFilter,
                onFormatFilterChange = viewModel::setFormatFilter,
                onGroupByChange = {
                    viewModel.setGroupBy(it)
                    if (it == GroupByMode.FOLDER) viewModel.openFolder(null)
                },
                onThumbnailModeChange = viewModel::setThumbnailMode,
                onReset = {
                    viewModel.setSortOrder(SortOrder.DATE_ADDED_DESC)
                    viewModel.setStatusFilter(LibraryStatusFilter.ALL)
                    viewModel.setFormatFilter(LibraryFormatFilter.ALL)
                    viewModel.setGroupBy(GroupByMode.FOLDER)
                    viewModel.setThumbnailMode("RECTANGLE")
                    viewModel.openFolder(null)
                    showFilterSheet = false
                }
            )
        }
    }

    selectedComicId?.let { id ->
        val comic = comicsById[id]
        if (comic == null) {
            LaunchedEffect(id) { selectedComicId = null }
        } else {
            ComicInfoSheet(
                comic = comic,
                onDismiss = { selectedComicId = null },
                onOpen = { selectedComicId = null; onComicClick(id) },
                onToggleBookmark = { viewModel.toggleBookmark(id); selectedComicId = null },
                onToggleCompleted = {
                    viewModel.markCompleted(id, !comic.isCompleted)
                    selectedComicId = null
                },
                onDelete = { comicToDelete = id; selectedComicId = null },
                onSaveMeta = { title, tags -> viewModel.updateComicMeta(id, title, tags) }
            )
        }
    }

    comicToDelete?.let { id ->
        val title = comicsById[id]?.title ?: strings.libraryComicFallback
        AlertDialog(
            onDismissRequest = { comicToDelete = null },
            containerColor = MaterialTheme.colorScheme.surface,
            title = {
                Text(strings.libraryDeleteComicTitle)
            },
            text = {
                Text(strings.libraryDeleteComicMessage.replace("%s", title))
            },
            confirmButton = {
                TextButton(onClick = { viewModel.deleteComic(id); comicToDelete = null }) {
                    Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { comicToDelete = null }) { Text(strings.cancel) }
            }
        )
    }

    folderToDelete?.let { folder ->
        val affectedCount = remember(folder.path, uiState.comics) {
            uiState.comics.count { comic ->
                val folderId = comic.folderId
                    ?.trim()
                    ?.trim('/')
                    ?.replace('\\', '/')
                    ?.takeIf { it.isNotBlank() }
                folderId == folder.path || folderId?.startsWith(folder.path + "/") == true
            }
        }
        AlertDialog(
            onDismissRequest = { folderToDelete = null },
            containerColor = MaterialTheme.colorScheme.surface,
            title = {
                Text(strings.libraryDeleteFolderTitle)
            },
            text = {
                Text(strings.libraryDeleteFolderMessage.format(folder.title, affectedCount))
            },
            confirmButton = {
                TextButton(onClick = {
                    viewModel.deleteFolder(folder.path)
                    folderToDelete = null
                }) {
                    Text(strings.libraryDeleteAction, color = MaterialTheme.colorScheme.error)
                }
            },
            dismissButton = {
                TextButton(onClick = { folderToDelete = null }) { Text(strings.cancel) }
            }
        )
    }
}

@Composable
private fun LibraryBackground(
    backgroundStyle: String,
    backgroundImageUri: String?,
    backdropStrength: Float,
    backgroundVeil: Float
) {
    LibraryBackdropLayer(
        backgroundStyle = backgroundStyle,
        backgroundImageUri = backgroundImageUri,
        colorScheme = MaterialTheme.colorScheme,
        backdropStrength = backdropStrength,
        imageVeil = backgroundVeil,
        modifier = Modifier.fillMaxSize()
    )
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun QuickControlsPopup(
    onDismiss: () -> Unit,
    onAddFileClick: () -> Unit,
    onAddFolderClick: () -> Unit,
    onToggleView: () -> Unit,
    onOpenFilters: () -> Unit,
    thumbnailMode: String,
    onThumbnailModeChange: (String) -> Unit,
    viewMode: LibraryViewMode,
) {
    val strings = LocalStrings.current
    var addMenuExpanded by remember { mutableStateOf(false) }
    var thumbnailMenuExpanded by remember { mutableStateOf(false) }
    val dismissInteraction = remember { MutableInteractionSource() }
    val scrollState = rememberScrollState()

    Box(
        modifier = Modifier
            .fillMaxSize()
            .clickable(
                interactionSource = dismissInteraction,
                indication = null,
                onClick = onDismiss
            ),
        contentAlignment = Alignment.TopEnd
    ) {
         Surface(
             modifier = Modifier
                 .padding(top = 8.dp, end = 16.dp)
                 .clickable(
                     interactionSource = remember { MutableInteractionSource() },
                     indication = null,
                     onClick = {}
                 ),
             shape = RoundedCornerShape(22.dp),
             color = MaterialTheme.colorScheme.surface,
             tonalElevation = 2.dp,
             shadowElevation = 6.dp
         ) {
            Row(
                modifier = Modifier
                    .padding(horizontal = 12.dp, vertical = 10.dp)
                    .horizontalScroll(scrollState),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalButton(onClick = onToggleView) {
                    Icon(
                        if (viewMode == LibraryViewMode.GRID) Icons.AutoMirrored.Filled.ViewList else Icons.Default.GridView,
                        contentDescription = null
                    )
                    Spacer(Modifier.width(6.dp))
                    Text(
                        if (viewMode == LibraryViewMode.GRID) {
                            strings.libraryViewAsList
                        } else {
                            strings.libraryViewAsGrid
                        }
                    )
                }
                FilledTonalButton(onClick = onOpenFilters) {
                    Icon(Icons.Default.Tune, contentDescription = null)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.actionSort)
                }
                Box {
                    FilledTonalButton(onClick = { thumbnailMenuExpanded = true }) {
                        Text(
                            if (thumbnailMode == "SQUARE") {
                                strings.libraryCoversSquare
                            } else {
                                strings.libraryCoversRectangle
                            }
                        )
                    }
                    DropdownMenu(
                        expanded = thumbnailMenuExpanded,
                        onDismissRequest = { thumbnailMenuExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text(strings.actionRectangle) },
                            onClick = {
                                thumbnailMenuExpanded = false
                                onThumbnailModeChange("RECTANGLE")
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(strings.actionSquare) },
                            onClick = {
                                thumbnailMenuExpanded = false
                                onThumbnailModeChange("SQUARE")
                            }
                        )
                    }
                }
                Box {
                    FilledTonalButton(onClick = { addMenuExpanded = true }) {
                        Icon(Icons.Default.FolderOpen, contentDescription = null)
                        Spacer(Modifier.width(6.dp))
                        Text(strings.libraryAdd)
                    }
                    DropdownMenu(
                        expanded = addMenuExpanded,
                        onDismissRequest = { addMenuExpanded = false }
                    ) {
                        DropdownMenuItem(
                            text = { Text(strings.actionFile) },
                            leadingIcon = {
                                Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
                            },
                            onClick = {
                                addMenuExpanded = false
                                onAddFileClick()
                            }
                        )
                        DropdownMenuItem(
                            text = { Text(strings.actionFolder) },
                            leadingIcon = {
                                Icon(Icons.Default.FolderOpen, contentDescription = null)
                            },
                            onClick = {
                                addMenuExpanded = false
                                onAddFolderClick()
                            }
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun LibraryGridCell(
    isGrid: Boolean,
    tileSizeDp: Int,
    content: @Composable () -> Unit
) {
    if (!isGrid) {
        content()
        return
    }
    Box(
        modifier = Modifier.fillMaxWidth(),
        contentAlignment = Alignment.TopCenter
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = tileSizeDp.dp)
        ) {
            content()
        }
    }
}

@Composable
private fun BreadcrumbRow(
    breadcrumbs: List<LibraryBreadcrumb>,
    canNavigateUp: Boolean,
    onNavigateUp: () -> Unit,
    onNavigateTo: (String?) -> Unit
) {
    LazyRow(
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 2.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        modifier = Modifier.fillMaxWidth()
    ) {
        if (canNavigateUp) {
            item(key = "navigate_up") {
                Surface(
                    modifier = Modifier.clickable(onClick = onNavigateUp),
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = LocalStrings.current.back,
                            modifier = Modifier.size(16.dp),
                            tint = MaterialTheme.colorScheme.primary
                        )
                    }
                }
            }
        }
        items(breadcrumbs, key = { it.path ?: "root" }) { crumb ->
            Surface(
                modifier = Modifier.clickable { onNavigateTo(crumb.path) },
                shape = RoundedCornerShape(999.dp),
                color = if (crumb.path == breadcrumbs.lastOrNull()?.path) {
                    MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                } else {
                    MaterialTheme.colorScheme.surfaceContainerLow
                }
            ) {
                Text(
                    text = crumb.label,
                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
                    style = MaterialTheme.typography.labelMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
@OptIn(ExperimentalFoundationApi::class)
private fun FolderCard(
    folder: LibraryFolderItem,
    isGrid: Boolean,
    cardStyle: String,
    tileSizeDp: Int,
    coverScale: String,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    onClick: () -> Unit,
    onLongClick: () -> Unit
) {
    val strings = LocalStrings.current
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(8.dp)
        "SHOWCASE" -> RoundedCornerShape(14.dp)
        else -> RoundedCornerShape(10.dp)
    }
    val contentPadding = when (cardStyle) {
        "COMPACT" -> 8.dp
        "SHOWCASE" -> 12.dp
        else -> 10.dp
    }
    val containerColor = lerp(
        MaterialTheme.colorScheme.surfaceContainerLow,
        MaterialTheme.colorScheme.secondaryContainer,
        0.1f
    ).copy(alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.7f))
    val cardBorder = androidx.compose.foundation.BorderStroke(
        width = 0.75.dp,
        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
    )
    val gridCoverRatio = if (thumbnailMode == "SQUARE") {
        1f
    } else {
        when (cardStyle) {
            "COMPACT" -> 0.64f
            "SHOWCASE" -> 0.69f
            else -> 0.66f
        }
    }
    val listBaseHeight = (tileSizeDp * 0.52f).coerceIn(56f, 120f).dp
    val styleFactor = when (cardStyle) {
        "COMPACT" -> 0.92f
        "SHOWCASE" -> 1.12f
        else -> 1.0f
    }
    val rectHeight = (listBaseHeight.value * styleFactor).coerceIn(52f, 132f).dp
    val squareSize = (rectHeight.value * 0.82f).coerceIn(48f, 112f).dp
    val listThumbSize = if (thumbnailMode == "SQUARE") {
        squareSize to squareSize
    } else {
        (rectHeight * 0.7f) to rectHeight
    }
    if (isGrid) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                ),
            shape = cardShape,
            colors = CardDefaults.cardColors(containerColor = containerColor),
            border = cardBorder,
            elevation = CardDefaults.cardElevation(defaultElevation = libraryCardElevation(cardShadow))
        ) {
            Column {
                FolderCover(
                    coverPath = folder.coverPath,
                    title = folder.title,
                    fileCount = folder.fileCount,
                    subfolderCount = folder.subfolderCount,
                    coverScale = coverScale,
                    modifier = Modifier
                        .fillMaxWidth()
                        .aspectRatio(gridCoverRatio)
                )
                ShelfLine(
                    shelfStyle = shelfStyle,
                    shelfDepth = shelfDepth,
                    modifier = Modifier.padding(horizontal = contentPadding)
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(44.dp)
                        .padding(start = contentPadding, end = contentPadding, bottom = contentPadding)
                ) {
                    Text(
                        text = folder.title,
                        style = MaterialTheme.typography.labelLarge,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
                    )
                }
            }
        }
    } else {
        Card(
            modifier = Modifier
                .height(rectHeight)
                .fillMaxWidth()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                ),
            shape = cardShape,
            colors = CardDefaults.cardColors(containerColor = containerColor),
            border = cardBorder,
            elevation = CardDefaults.cardElevation(defaultElevation = libraryCardElevation(cardShadow))
        ) {
            Column(modifier = Modifier.padding(contentPadding + 2.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    FolderCover(
                        coverPath = folder.coverPath,
                        title = folder.title,
                        fileCount = folder.fileCount,
                        subfolderCount = folder.subfolderCount,
                        coverScale = coverScale,
                        modifier = Modifier
                            .size(listThumbSize.first, listThumbSize.second)
                            .clip(RoundedCornerShape(6.dp))
                    )
                    Spacer(Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        FolderCollectionMeta(
                            folder = folder,
                            strings = strings,
                            compact = false
                        )
                        Spacer(Modifier.height(4.dp))
                        Text(
                            text = folder.title,
                            style = MaterialTheme.typography.titleSmall,
                            maxLines = 2,
                            overflow = TextOverflow.Ellipsis,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
                        )
                        Text(
                            text = folderDescription(folder, strings),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                ShelfLine(shelfStyle = shelfStyle, shelfDepth = shelfDepth, modifier = Modifier.padding(top = 8.dp))
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun FolderCollectionMeta(
    folder: LibraryFolderItem,
    strings: AppStrings,
    compact: Boolean
) {
    val primaryLabel = folderCollectionLabel(strings)
    val secondaryLabel = folderVolumesLabel(folder.fileCount, strings)
    val tertiaryLabel = folderSubcollectionsLabel(folder.subfolderCount, strings)
    FlowRow(
        horizontalArrangement = Arrangement.spacedBy(6.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        FolderMetaChip(
            text = primaryLabel,
            accent = MaterialTheme.colorScheme.secondary,
            strong = true
        )
        FolderMetaChip(
            text = secondaryLabel,
            accent = MaterialTheme.colorScheme.primary,
            strong = false
        )
        if (!compact && tertiaryLabel != null) {
            FolderMetaChip(
                text = tertiaryLabel,
                accent = MaterialTheme.colorScheme.tertiary,
                strong = false
            )
        }
    }
}

@Composable
private fun FolderMetaChip(
    text: String,
    accent: Color,
    strong: Boolean
) {
    Surface(
        shape = RoundedCornerShape(999.dp),
        color = accent.copy(alpha = if (strong) 0.16f else 0.1f),
        border = androidx.compose.foundation.BorderStroke(
            width = if (strong) 0.8.dp else 0.6.dp,
            color = accent.copy(alpha = if (strong) 0.28f else 0.18f)
        )
    ) {
        Text(
            text = text,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 3.dp),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.84f),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
private fun FolderCover(
    coverPath: String?,
    title: String,
    fileCount: Int,
    subfolderCount: Int,
    coverScale: String,
    modifier: Modifier = Modifier
) {
    val hasCover = coverPath != null
    Box(modifier = modifier) {
        FolderBackgroundStack(hasCover = hasCover, modifier = Modifier.fillMaxSize())
        CoverArt(
            coverPath = coverPath,
            title = title,
            contentScale = if (coverScale == "FIT") ContentScale.Fit else ContentScale.Crop,
            modifier = Modifier.fillMaxSize()
                .let { if (hasCover) it.clip(RoundedCornerShape(12.dp)) else it }
        )
        FolderCoverTreatment(
            title = title,
            hasCover = hasCover,
            fileCount = fileCount,
            subfolderCount = subfolderCount,
            modifier = Modifier.fillMaxSize()
        )
    }
}

@Composable
private fun ShelfLine(
    shelfStyle: String,
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    val shelfAreaHeight = remember(shelfDepth) {
        val baseH = 8f + (shelfDepth.coerceIn(0f, 1f) * 8f)
        (baseH + 2f).dp + 8.dp
    }
    Box(
        modifier = modifier.fillMaxWidth().height(shelfAreaHeight),
        contentAlignment = Alignment.Center
    ) {
        LibraryShelfBar(
            shelfStyle = shelfStyle,
            colorScheme = MaterialTheme.colorScheme,
            depth = shelfDepth,
            modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp)
        )
    }
}

private fun folderDescription(folder: LibraryFolderItem, strings: AppStrings): String {
    val filesText = strings.libraryFileCountLabel(folder.fileCount)
    val foldersText = when {
        folder.subfolderCount <= 0 -> ""
        else -> " • ${strings.libraryFolderCountLabel(folder.subfolderCount)}"
    }
    return filesText + foldersText
}

private fun folderCollectionLabel(strings: AppStrings): String = strings.libraryCollectionLabel

private fun folderVolumesLabel(fileCount: Int, strings: AppStrings): String {
    return strings.libraryVolumeCountLabel(fileCount)
}

private fun folderSubcollectionsLabel(subfolderCount: Int, strings: AppStrings): String? {
    if (subfolderCount <= 0) return null
    return strings.librarySetCountLabel(subfolderCount)
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun FilterSheet(
    sortOrder: SortOrder,
    statusFilter: LibraryStatusFilter,
    formatFilter: LibraryFormatFilter,
    groupByMode: GroupByMode,
    thumbnailMode: String,
    onSortChange: (SortOrder) -> Unit,
    onStatusFilterChange: (LibraryStatusFilter) -> Unit,
    onFormatFilterChange: (LibraryFormatFilter) -> Unit,
    onGroupByChange: (GroupByMode) -> Unit,
    onThumbnailModeChange: (String) -> Unit,
    onReset: () -> Unit
) {
    val strings = LocalStrings.current
    val maxSheetHeight = LocalConfiguration.current.screenHeightDp.dp * 0.62f
    Column(
        modifier = Modifier
            .fillMaxWidth()
            .heightIn(max = maxSheetHeight)
            .padding(horizontal = 20.dp)
            .navigationBarsPadding()
            .verticalScroll(rememberScrollState())
            .padding(bottom = 20.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                strings.libraryOrderAndFilters,
                style = MaterialTheme.typography.titleMedium
            )
            TextButton(onClick = onReset) {
                Text(strings.libraryReset)
            }
        }

        HorizontalDivider()

        FilterSection(
            title = strings.librarySortSection
        ) {
            ChipWrap {
                listOf(
                    SortOrder.DATE_ADDED_DESC to strings.librarySortNewest,
                    SortOrder.DATE_READ_DESC to strings.librarySortRecent,
                    SortOrder.TITLE_ASC to strings.libraryTitle,
                    SortOrder.PROGRESS_DESC to strings.librarySortProgress,
                    SortOrder.FOLDER_ASC to strings.librarySortFolderAz
                ).forEach { (order, label) ->
                    FilterChip(
                        selected = sortOrder == order,
                        onClick = { onSortChange(order) },
                        label = { Text(label) },
                        leadingIcon = if (sortOrder == order) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryStatusSection
        ) {
            ChipWrap {
                listOf(
                    LibraryStatusFilter.ALL to strings.libraryStatusAll,
                    LibraryStatusFilter.BOOKMARKED to strings.libraryStatusBookmarked,
                    LibraryStatusFilter.IN_PROGRESS to strings.libraryStatusReading,
                    LibraryStatusFilter.COMPLETED to strings.libraryStatusCompleted
                ).forEach { (filter, label) ->
                    FilterChip(
                        selected = statusFilter == filter,
                        onClick = { onStatusFilterChange(filter) },
                        label = { Text(label) },
                        leadingIcon = if (statusFilter == filter) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryFormatSection
        ) {
            ChipWrap {
                listOf(
                    LibraryFormatFilter.ALL to strings.libraryFormatAll,
                    LibraryFormatFilter.IMAGE to strings.libraryFormatImages,
                    LibraryFormatFilter.PDF to "PDF",
                    LibraryFormatFilter.TEXT to strings.libraryFormatText
                ).forEach { (filter, label) ->
                    FilterChip(
                        selected = formatFilter == filter,
                        onClick = { onFormatFilterChange(filter) },
                        label = { Text(label) },
                        leadingIcon = if (formatFilter == filter) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryGroupingSection
        ) {
            ChipWrap {
                listOf(
                    GroupByMode.FOLDER to strings.libraryGroupingFolder,
                    GroupByMode.NONE to strings.libraryGroupingNone,
                    GroupByMode.SERIES to strings.libraryGroupingSeries
                ).forEach { (mode, label) ->
                    FilterChip(
                        selected = groupByMode == mode,
                        onClick = { onGroupByChange(mode) },
                        label = { Text(label) },
                        leadingIcon = if (groupByMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }

        FilterSection(
            title = strings.libraryThumbnailsSection
        ) {
            ChipWrap {
                listOf(
                    "RECTANGLE" to strings.actionRectangle,
                    "SQUARE" to strings.actionSquare
                ).forEach { (mode, label) ->
                    FilterChip(
                        selected = thumbnailMode == mode,
                        onClick = { onThumbnailModeChange(mode) },
                        label = { Text(label) },
                        leadingIcon = if (thumbnailMode == mode) ({
                            Icon(Icons.Default.Check, contentDescription = null, modifier = Modifier.size(16.dp))
                        }) else null
                    )
                }
            }
        }
    }
}

@Composable
private fun FilterSection(
    title: String,
    content: @Composable ColumnScope.() -> Unit
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        shape = RoundedCornerShape(20.dp),
        color = MaterialTheme.colorScheme.surfaceContainerLow
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(title, style = MaterialTheme.typography.titleSmall)
            content()
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ChipWrap(content: @Composable FlowRowScope.() -> Unit) {
    FlowRow(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp),
        content = content
    )
}

@Composable
private fun EmptyLibraryPlaceholder(
    modifier: Modifier,
    onAddFile: () -> Unit,
    onAddFolder: () -> Unit
) {
    val strings = LocalStrings.current
    Column(modifier = modifier.padding(32.dp), horizontalAlignment = Alignment.CenterHorizontally) {
        Icon(
            Icons.AutoMirrored.Filled.MenuBook,
            contentDescription = null,
            modifier = Modifier.size(80.dp),
            tint = MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)
        )
        Spacer(Modifier.height(16.dp))
        Text(
            strings.libraryEmptyTitle,
            style = MaterialTheme.typography.headlineSmall,
            textAlign = TextAlign.Center
        )
        Spacer(Modifier.height(8.dp))
        Text(
            strings.libraryEmptyHint,
            style = MaterialTheme.typography.bodyMedium,
            textAlign = TextAlign.Center,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(24.dp))
        Button(onClick = onAddFile) {
            Icon(Icons.AutoMirrored.Filled.InsertDriveFile, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFile)
        }
        Spacer(Modifier.height(8.dp))
        OutlinedButton(onClick = onAddFolder) {
            Icon(Icons.Default.FolderOpen, contentDescription = null)
            Spacer(Modifier.width(8.dp))
            Text(strings.libraryOpenFolder)
        }
    }
}

@Composable
private fun EmptyFolderPlaceholder(title: String) {
    val strings = LocalStrings.current
    Surface(
        modifier = Modifier.fillMaxWidth().padding(horizontal = 16.dp, vertical = 8.dp),
        shape = RoundedCornerShape(22.dp),
        color = MaterialTheme.colorScheme.surface
    ) {
        Column(
            modifier = Modifier.padding(24.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Icon(Icons.Default.FolderOpen, contentDescription = null, modifier = Modifier.size(48.dp))
            Text(
                strings.libraryEmptyFolderTitle.format(title),
                textAlign = TextAlign.Center
            )
            Text(
                strings.libraryEmptyFolderHint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                textAlign = TextAlign.Center
            )
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ComicInfoSheet(
    comic: Comic,
    onDismiss: () -> Unit,
    onOpen: () -> Unit,
    onToggleBookmark: () -> Unit,
    onToggleCompleted: () -> Unit,
    onDelete: () -> Unit,
    onSaveMeta: (title: String, tags: String) -> Unit
) {
    val strings = LocalStrings.current
    var titleEdit by remember(comic.id) { mutableStateOf(comic.title) }
    var tagsEdit by remember(comic.id) { mutableStateOf(comic.tags) }
    var isEditing by remember(comic.id) { mutableStateOf(false) }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        containerColor = MaterialTheme.colorScheme.surfaceContainerHigh
            .copy(alpha = MaterialTheme.colorScheme.surface.alpha),
        scrimColor = MaterialTheme.colorScheme.scrim.copy(alpha = 0.22f)
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 20.dp)
                .padding(bottom = 32.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.Top) {
                Card(modifier = Modifier.size(72.dp, 100.dp), shape = RoundedCornerShape(6.dp)) {
                    if (comic.coverPath != null) {
                        AsyncImage(
                            model = File(comic.coverPath!!),
                            contentDescription = null,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    } else {
                        Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                            Icon(Icons.AutoMirrored.Filled.MenuBook, contentDescription = null)
                        }
                    }
                }
                Spacer(Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    if (isEditing) {
                        OutlinedTextField(
                            value = titleEdit,
                            onValueChange = { titleEdit = it },
                            label = { Text(strings.libraryTitle) },
                            singleLine = true,
                            modifier = Modifier.fillMaxWidth()
                        )
                    } else {
                        Text(
                            text = comic.title,
                            style = MaterialTheme.typography.titleMedium,
                            maxLines = 3,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                    comic.author?.let {
                        Text(
                            text = it,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                IconButton(onClick = {
                    if (isEditing) {
                        onSaveMeta(titleEdit, tagsEdit)
                        isEditing = false
                    } else {
                        isEditing = true
                    }
                }) {
                    Icon(
                        imageVector = if (isEditing) Icons.Default.Check else Icons.Default.Edit,
                        contentDescription = if (isEditing) {
                            strings.librarySave
                        } else {
                            strings.libraryEdit
                        }
                    )
                }
            }

            if (isEditing) {
                OutlinedTextField(
                    value = tagsEdit,
                    onValueChange = { tagsEdit = it },
                    label = { Text(strings.libraryTagsComma) },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            HorizontalDivider()

            if (comic.pageCount > 0) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        strings.libraryProgress,
                        style = MaterialTheme.typography.bodySmall
                    )
                    Text(
                        strings.libraryProgressTemplate.format(
                            comic.currentPage + 1,
                            comic.pageCount,
                            (comic.readingProgress * 100).toInt()
                        ),
                        style = MaterialTheme.typography.bodySmall
                    )
                }
                LinearProgressIndicator(
                    progress = { comic.readingProgress },
                    modifier = Modifier.fillMaxWidth()
                )
            }

            comic.genre?.let { InfoRow(strings.libraryGenre, it) }
            comic.publisher?.let { InfoRow(strings.libraryPublisher, it) }
            comic.year?.let { InfoRow(strings.libraryYear, it.toString()) }
            if (comic.tags.isNotBlank() && !isEditing) {
                InfoRow(strings.libraryTags, comic.tags)
            }
            InfoRow(strings.libraryFormatLabel, comic.format.name)
            comic.folderId?.let { InfoRow(strings.actionFolder, it) }
            InfoRow(strings.librarySize, formatFileSize(comic.fileSize))

            HorizontalDivider()

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                ActionButton(
                    icon = Icons.AutoMirrored.Filled.OpenInNew,
                    label = strings.libraryOpen,
                    onClick = onOpen
                )
                ActionButton(
                    icon = if (comic.isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                    label = if (comic.isBookmarked) {
                        strings.libraryRemove
                    } else {
                        strings.readerBookmark
                    },
                    onClick = onToggleBookmark,
                    tint = if (comic.isBookmarked) MaterialTheme.colorScheme.primary else null
                )
                ActionButton(
                    icon = if (comic.isCompleted) Icons.Default.RadioButtonUnchecked else Icons.Default.CheckCircle,
                    label = if (comic.isCompleted) {
                        strings.libraryStatusReading
                    } else {
                        strings.libraryStatusCompleted
                    },
                    onClick = onToggleCompleted
                )
                ActionButton(
                    icon = Icons.Default.Delete,
                    label = strings.libraryDelete,
                    onClick = onDelete,
                    tint = MaterialTheme.colorScheme.error
                )
            }
        }
    }
}

@Composable
private fun ActionButton(
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    label: String,
    onClick: () -> Unit,
    tint: Color? = null
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .clickable(onClick = onClick)
            .padding(8.dp)
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = tint ?: LocalContentColor.current,
            modifier = Modifier.size(24.dp)
        )
        Spacer(Modifier.height(4.dp))
        Text(text = label, style = MaterialTheme.typography.labelSmall)
    }
}

@Composable
private fun InfoRow(label: String, value: String) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Text(label, style = MaterialTheme.typography.bodySmall)
        Text(
            text = value,
            style = MaterialTheme.typography.bodySmall,
            textAlign = TextAlign.End,
            modifier = Modifier.weight(1f, fill = false).padding(start = 16.dp),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

private fun formatFileSize(bytes: Long): String = when {
    bytes < 1_024 -> "$bytes B"
    bytes < 1_048_576 -> "%.1f KB".format(bytes / 1_024.0)
    bytes < 1_073_741_824L -> "%.1f MB".format(bytes / 1_048_576.0)
    else -> "%.2f GB".format(bytes / 1_073_741_824.0)
}

// ─────────────────────────────────────────────────────────────────────────────
// Строка статистики библиотеки
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun LibraryStatsBar(
    totalComics: Int,
    completedCount: Int,
    inProgressCount: Int,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    val totalLabel = strings.libraryComicCountLabel(totalComics)
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
                    text = "$totalComics",
                    style = MaterialTheme.typography.titleMedium.copy(
                        fontWeight = androidx.compose.ui.text.font.FontWeight.Bold
                    ),
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
                color = Color(0xFF4CAF50).copy(alpha = 0.15f)
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
                        color = Color(0xFF4CAF50)
                    )
                }
            }
        }
        if (inProgressCount > 0) {
            Surface(
                shape = RoundedCornerShape(12.dp),
                color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.15f)
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
                        color = MaterialTheme.colorScheme.secondary
                    )
                }
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
// Строки для достижений берём из AppStrings (с фолбэком на русский)
// ─────────────────────────────────────────────────────────────────────────────

@Composable
private fun rememberAchievementStrings(strings: AppStrings): AchievementStrings {
    return remember(strings.navLibrary) {
        AchievementStrings(
            achFirstBook = strings.achFirstBook,
            achFirstBookDesc = strings.achFirstBookDesc,
            achReader = strings.achReader,
            achReaderDesc = strings.achReaderDesc,
            achCollector = strings.achCollector,
            achCollectorDesc = strings.achCollectorDesc,
            achFirstComplete = strings.achFirstComplete,
            achFirstCompleteDesc = strings.achFirstCompleteDesc,
            achMarathon = strings.achMarathon,
            achMarathonDesc = strings.achMarathonDesc,
            achAuthorFan = strings.achAuthorFan,
            achAuthorFanDesc = strings.achAuthorFanDesc,
            achGenreGourmet = strings.achGenreGourmet,
            achGenreGourmetDesc = strings.achGenreGourmetDesc,
            achBookmarker = strings.achBookmarker,
            achBookmarkerDesc = strings.achBookmarkerDesc,
            achSecretCat = strings.achSecretCat,
            achSecretCatDesc = strings.achSecretCatDesc,
            achSecretHint = strings.achSecretHint
        )
    }
}
