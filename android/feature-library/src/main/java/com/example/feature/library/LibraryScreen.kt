package com.example.feature.library

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.automirrored.filled.Sort
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.Comic
import com.example.feature.library.components.*

/**
 * Экран библиотеки комиксов
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onComicClick: (String) -> Unit,
    onAddComicClick: () -> Unit = {},
    onAddFileClick: () -> Unit = {},
    onAddFolderClick: () -> Unit = {},
    onReselectFolderClick: (Folder) -> Unit = {},
    onRequestPermission: () -> Unit = {},
    viewModel: LibraryViewModel = hiltViewModel()
) {
    android.util.Log.d("LibraryScreen", "🎨 LibraryScreen composing...")
    val uiState by viewModel.uiState.collectAsState()
    android.util.Log.d("LibraryScreen", "🎨 UI State: isLoading=${uiState.isLoading}, comics=${uiState.comics.size}, error=${uiState.error}")
    var showFilterSheet by remember { mutableStateOf(false) }
    var showAddDialog by remember { mutableStateOf(false) }
    var showDeleteDialog: Comic? by remember { mutableStateOf(null) }
    var showDeleteFolderDialog: Folder? by remember { mutableStateOf(null) }
    
    Scaffold(
        topBar = {
            Column {
                LibraryTopBar(
                    viewMode = uiState.viewMode,
                    sortOrder = uiState.sortOrder,
                    onViewModeChange = { viewModel.setViewMode(it) },
                    onSortOrderChange = { viewModel.setSortOrder(it) },
                    onRefresh = { viewModel.refresh() },
                    onSearchClick = { viewModel.toggleSearch() },
                    onFilterClick = { showFilterSheet = true },
                    hasActiveFilters = uiState.filters.isActive
                )
                
                SearchBar(
                    query = uiState.searchQuery,
                    onQueryChange = { viewModel.setSearchQuery(it) },
                    onSearch = { viewModel.setSearchQuery(it) },
                    onClose = { viewModel.setSearchQuery("") },
                    isExpanded = uiState.isSearchExpanded,
                    onExpandedChange = { viewModel.toggleSearch() }
                )
            }
        },
        floatingActionButton = {
            FloatingActionButton(
                onClick = { showAddDialog = true }
            ) {
                Icon(
                    imageVector = Icons.Default.Add,
                    contentDescription = "Add comic"
                )
            }
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                if (!uiState.permissionState.isGranted) {
                    StoragePermissionBanner(
                        permissionState = uiState.permissionState,
                        onRequestPermission = onRequestPermission
                    )
                }
                
                if (uiState.foldersNeedingPermission.isNotEmpty()) {
                    FolderPermissionWarning(
                        folders = uiState.foldersNeedingPermission,
                        onReselectFolder = { folder ->
                            onReselectFolderClick(folder)
                        },
                        onDismiss = { folder ->
                            viewModel.dismissFolderPermissionWarning(folder)
                        }
                    )
                }
                
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f)
                ) {
                    when {
                        uiState.isLoading -> {
                            android.util.Log.d("LibraryScreen", "🔄 Showing loading spinner")
                            CircularProgressIndicator(
                                modifier = Modifier.align(Alignment.Center)
                            )
                        }
                        
                        uiState.error != null -> {
                            android.util.Log.d("LibraryScreen", "❌ Showing error: ${uiState.error}")
                            ErrorView(
                                error = uiState.error!!,
                                onRetry = { viewModel.refresh() },
                                modifier = Modifier.align(Alignment.Center)
                            )
                        }
                        
                        uiState.comics.isEmpty() -> {
                            android.util.Log.d("LibraryScreen", "📭 Showing empty view (comics list is empty)")
                            EmptyView(
                                modifier = Modifier.align(Alignment.Center)
                            )
                        }
                        
                        else -> {
                            android.util.Log.d("LibraryScreen", "📚 Showing comics: ${uiState.comics.size} comics, viewMode=${uiState.viewMode}")
                            when (uiState.viewMode) {
                                ViewMode.GRID -> {
                                    android.util.Log.d("LibraryScreen", "🔲 Rendering ComicGridView with ${uiState.comics.size} comics")
                                    ComicGridView(
                                        comics = uiState.comics,
                                        onComicClick = { comic -> onComicClick(comic.id) },
                                        onComicLongClick = { comic ->
                                            showDeleteDialog = comic
                                        }
                                    )
                                }
                                
                                ViewMode.LIST -> {
                                    android.util.Log.d("LibraryScreen", "📋 Rendering ComicListView with ${uiState.comics.size} comics")
                                    ComicListView(
                                        comics = uiState.comics,
                                        onComicClick = { comic -> onComicClick(comic.id) },
                                        onComicLongClick = { comic ->
                                            showDeleteDialog = comic
                                        }
                                    )
                                }
                                
                                ViewMode.FOLDER -> {
                                    android.util.Log.d("LibraryScreen", "📁 Rendering FolderView")
                                    FolderView(
                                        folders = uiState.folders,
                                        onFolderClick = { folder ->
                                            viewModel.selectFolder(folder)
                                        },
                                        onFolderLongClick = { folder ->
                                            showDeleteFolderDialog = folder
                                        }
                                    )
                                }
                            }
                        }
                    }
                }
            }
        }
        
        // Filter Sheet
        if (showFilterSheet) {
            FilterSheet(
                filters = uiState.filters,
                onFiltersChange = { viewModel.setFilters(it) },
                onDismiss = { showFilterSheet = false }
            )
        }
        
        // Add Comic Dialog
        if (showAddDialog) {
            AddComicDialog(
                onDismiss = { showAddDialog = false },
                onSelectFile = {
                    showAddDialog = false
                    onAddFileClick()
                },
                onSelectDirectory = {
                    showAddDialog = false
                    onAddFolderClick()
                }
            )
        }
        
        // Delete Confirmation Dialog
        showDeleteDialog?.let { comic ->
            DeleteConfirmDialog(
                comicTitle = comic.title,
                onDismiss = { showDeleteDialog = null },
                onConfirm = {
                    viewModel.deleteComic(comic.id)
                }
            )
        }
        
        showDeleteFolderDialog?.let { folder ->
            DeleteFolderConfirmDialog(
                folderName = folder.displayName,
                onDismiss = { showDeleteFolderDialog = null },
                onConfirm = {
                    viewModel.deleteFolder(folder.id)
                }
            )
        }
    }
}

/**
 * Верхняя панель библиотеки
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun LibraryTopBar(
    viewMode: ViewMode,
    sortOrder: SortOrder,
    onViewModeChange: (ViewMode) -> Unit,
    onSortOrderChange: (SortOrder) -> Unit,
    onRefresh: () -> Unit,
    onSearchClick: () -> Unit,
    onFilterClick: () -> Unit,
    hasActiveFilters: Boolean
) {
    var showViewModeMenu by remember { mutableStateOf(false) }
    var showSortMenu by remember { mutableStateOf(false) }
    
    TopAppBar(
        title = { Text("Библиотека") },
        actions = {
            // Кнопка поиска
            SearchButton(onClick = onSearchClick)
            
            // Кнопка фильтров
            BadgedBox(
                badge = {
                    if (hasActiveFilters) {
                        Badge()
                    }
                }
            ) {
                IconButton(onClick = onFilterClick) {
                    Icon(
                        imageVector = Icons.Default.FilterList,
                        contentDescription = "Filters"
                    )
                }
            }
            
            // Кнопка режима отображения
            IconButton(onClick = { showViewModeMenu = true }) {
                Icon(
                    imageVector = when (viewMode) {
                        ViewMode.GRID -> Icons.Default.GridView
                        ViewMode.LIST -> Icons.AutoMirrored.Filled.List
                        ViewMode.FOLDER -> Icons.Default.Folder
                    },
                    contentDescription = "View mode"
                )
            }
            
            DropdownMenu(
                expanded = showViewModeMenu,
                onDismissRequest = { showViewModeMenu = false }
            ) {
                DropdownMenuItem(
                    text = { Text("Сетка") },
                    onClick = {
                        onViewModeChange(ViewMode.GRID)
                        showViewModeMenu = false
                    }
                )
                DropdownMenuItem(
                    text = { Text("Список") },
                    onClick = {
                        onViewModeChange(ViewMode.LIST)
                        showViewModeMenu = false
                    }
                )
                DropdownMenuItem(
                    text = { Text("Папки") },
                    onClick = {
                        onViewModeChange(ViewMode.FOLDER)
                        showViewModeMenu = false
                    }
                )
            }
            
            // Кнопка сортировки
            IconButton(onClick = { showSortMenu = true }) {
                Icon(
                    imageVector = Icons.AutoMirrored.Filled.Sort,
                    contentDescription = "Sort"
                )
            }
            
            DropdownMenu(
                expanded = showSortMenu,
                onDismissRequest = { showSortMenu = false }
            ) {
                DropdownMenuItem(
                    text = { Text("По названию (А-Я)") },
                    onClick = {
                        onSortOrderChange(SortOrder.TITLE_ASC)
                        showSortMenu = false
                    }
                )
                DropdownMenuItem(
                    text = { Text("По названию (Я-А)") },
                    onClick = {
                        onSortOrderChange(SortOrder.TITLE_DESC)
                        showSortMenu = false
                    }
                )
                DropdownMenuItem(
                    text = { Text("Новые") },
                    onClick = {
                        onSortOrderChange(SortOrder.DATE_ADDED_DESC)
                        showSortMenu = false
                    }
                )
                DropdownMenuItem(
                    text = { Text("Старые") },
                    onClick = {
                        onSortOrderChange(SortOrder.DATE_ADDED_ASC)
                        showSortMenu = false
                    }
                )
            }
            
            // Кнопка обновления
            IconButton(onClick = onRefresh) {
                Icon(
                    imageVector = Icons.Default.Refresh,
                    contentDescription = "Refresh"
                )
            }
        }
    )
}

/**
 * Отображение ошибки
 */
@Composable
private fun ErrorView(
    error: String,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text(
            text = "Ошибка",
            style = MaterialTheme.typography.titleLarge
        )
        
        Text(
            text = error,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        
        Button(onClick = onRetry) {
            Text("Повторить")
        }
    }
}

/**
 * Пустое состояние
 */
@Composable
private fun EmptyView(
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Icon(
            imageVector = Icons.Default.CollectionsBookmark,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant
        )
        
        Text(
            text = "Библиотека пуста",
            style = MaterialTheme.typography.titleLarge
        )
        
        Text(
            text = "Нажмите кнопку \"+\" чтобы добавить комиксы",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}
