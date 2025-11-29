package com.example.feature.library

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun FolderDetailsScreen(
    folderId: String,
    onNavigateBack: () -> Unit,
    onComicClick: (String) -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    var viewMode by remember { mutableStateOf(ViewMode.GRID) }
    var showDeleteDialog: Comic? by remember { mutableStateOf(null) }
    var showSortMenu by remember { mutableStateOf(false) }
    
    LaunchedEffect(folderId) {
        val folder = uiState.folders.find { it.id == folderId }
        if (folder != null) {
            viewModel.selectFolder(folder)
        }
    }
    
    val folder = uiState.folders.find { it.id == folderId }
    val folderName = folder?.name ?: "Папка"
    
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(folderName) },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = "Back"
                        )
                    }
                },
                actions = {
                    IconButton(onClick = { 
                        viewMode = if (viewMode == ViewMode.GRID) ViewMode.LIST else ViewMode.GRID
                    }) {
                        Icon(
                            imageVector = when (viewMode) {
                                ViewMode.GRID -> Icons.Default.GridView
                                ViewMode.LIST -> Icons.AutoMirrored.Filled.List
                                else -> Icons.Default.GridView
                            },
                            contentDescription = "View mode"
                        )
                    }
                    
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
                                viewModel.setSortOrder(SortOrder.TITLE_ASC)
                                showSortMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("По названию (Я-А)") },
                            onClick = {
                                viewModel.setSortOrder(SortOrder.TITLE_DESC)
                                showSortMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Новые") },
                            onClick = {
                                viewModel.setSortOrder(SortOrder.DATE_ADDED_DESC)
                                showSortMenu = false
                            }
                        )
                        DropdownMenuItem(
                            text = { Text("Старые") },
                            onClick = {
                                viewModel.setSortOrder(SortOrder.DATE_ADDED_ASC)
                                showSortMenu = false
                            }
                        )
                    }
                }
            )
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            when {
                uiState.isLoading -> {
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center)
                    )
                }
                
                uiState.error != null -> {
                    ErrorView(
                        error = uiState.error!!,
                        onRetry = { 
                            val f = uiState.folders.find { it.id == folderId }
                            if (f != null) viewModel.selectFolder(f)
                        },
                        modifier = Modifier.align(Alignment.Center)
                    )
                }
                
                uiState.comics.isEmpty() -> {
                    EmptyFolderView(
                        modifier = Modifier.align(Alignment.Center)
                    )
                }
                
                else -> {
                    when (viewMode) {
                        ViewMode.GRID -> {
                            ComicGridView(
                                comics = uiState.comics,
                                onComicClick = { comic -> onComicClick(comic.id) },
                                onComicLongClick = { comic ->
                                    showDeleteDialog = comic
                                }
                            )
                        }
                        
                        ViewMode.LIST -> {
                            ComicListView(
                                comics = uiState.comics,
                                onComicClick = { comic -> onComicClick(comic.id) },
                                onComicLongClick = { comic ->
                                    showDeleteDialog = comic
                                }
                            )
                        }
                        
                        else -> {
                            ComicGridView(
                                comics = uiState.comics,
                                onComicClick = { comic -> onComicClick(comic.id) },
                                onComicLongClick = { comic ->
                                    showDeleteDialog = comic
                                }
                            )
                        }
                    }
                }
            }
        }
        
        showDeleteDialog?.let { comic ->
            DeleteConfirmDialog(
                comicTitle = comic.title,
                onDismiss = { showDeleteDialog = null },
                onConfirm = {
                    viewModel.deleteComic(comic.id)
                    showDeleteDialog = null
                }
            )
        }
    }
}

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

@Composable
private fun EmptyFolderView(
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Icon(
            imageVector = Icons.Default.FolderOpen,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant
        )
        
        Text(
            text = "Папка пуста",
            style = MaterialTheme.typography.titleLarge
        )
        
        Text(
            text = "В этой папке нет комиксов",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}
