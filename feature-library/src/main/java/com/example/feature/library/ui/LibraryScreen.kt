package com.example.feature.library.ui

import android.Manifest
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.text.KeyboardActions
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.FloatingActionButton
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.SnackbarDuration
import androidx.compose.material3.SnackbarHost
import androidx.compose.material3.SnackbarHostState
import androidx.compose.material3.SnackbarResult
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material.icons.filled.Add
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TextField
import androidx.compose.material3.TextFieldDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalFocusManager
import androidx.compose.ui.text.input.ImeAction
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.ui.components.MrComicPrimaryButton
import com.example.core.ui.components.*
import com.example.core.model.BottomNavItem
import com.example.core.model.SortOrder
import com.example.core.ui.theme.PaddingMedium
import com.google.accompanist.permissions.ExperimentalPermissionsApi
import com.google.accompanist.permissions.isGranted
import com.google.accompanist.permissions.rememberPermissionState
import kotlinx.coroutines.launch
import com.example.core.model.Comic

@Composable
fun LibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddClick: () -> Unit,
    onSettingsClick: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    LibraryScreenContent(
        uiState = uiState,
        onBookClick = onBookClick,
        onGrantPermission = viewModel::onPermissionsGranted,
        onEnterSelectionMode = viewModel::onEnterSelectionMode,
        onComicSelected = viewModel::onComicSelected,
        onClearSelection = viewModel::onClearSelection,
        onDeleteRequest = viewModel::onDeleteRequest,
        onUndoDelete = viewModel::onUndoDelete,
        onDeletionTimeout = viewModel::onDeletionTimeout,
        onSortOrderChange = viewModel::onSortOrderChange,
        onSearchQueryChange = viewModel::onSearchQueryChange,
        onToggleSearch = viewModel::onToggleSearch,
        onAddComicClick = viewModel::onAddComicClick,
        onDismissAddComicDialog = viewModel::onDismissAddComicDialog,
        onConfirmAddComicDialog = viewModel::onConfirmAddComicDialog,
        onPermissionRequest = { viewModel.onPermissionRequest() },
        onSettingsClick = onSettingsClick
    )
}

@OptIn(ExperimentalPermissionsApi::class, ExperimentalFoundationApi::class)
@Composable
private fun LibraryScreenContent(
    uiState: LibraryUiState,
    onAddClick: () -> Unit,
    onBookClick: (filePath: String) -> Unit,
    onGrantPermission: () -> Unit,
    onEnterSelectionMode: (comicId: String) -> Unit,
    onComicSelected: (comicId: String) -> Unit,
    onClearSelection: () -> Unit,
    onDeleteRequest: () -> Unit,
    onUndoDelete: () -> Unit,
    onDeletionTimeout: () -> Unit,
    onSortOrderChange: (SortOrder) -> Unit,
    onSearchQueryChange: (String) -> Unit,
    onToggleSearch: () -> Unit,
    onAddComicClick: () -> Unit,
    onDismissAddComicDialog: () -> Unit,
    onConfirmAddComicDialog: (title: String, author: String, coverPath: String) -> Unit,
    onPermissionRequest: () -> Unit,
    onSettingsClick: () -> Unit
) {
    // Placeholder for bottom navigation state
    var currentRoute by remember { mutableStateOf("library") }
    val bottomNavItems = remember { listOf(
        BottomNavItem("Library", Icons.Default.Home, "library"),
        BottomNavItem("Settings", Icons.Default.Settings, "settings")
    )}

    val storagePermissionState = rememberPermissionState(Manifest.permission.READ_EXTERNAL_STORAGE)
    val scope = rememberCoroutineScope()
    val snackbarHostState = remember { SnackbarHostState() }

    LaunchedEffect(uiState.pendingDeletionIds) {
        if (uiState.pendingDeletionIds.isNotEmpty()) {
            scope.launch {
                val result = snackbarHostState.showSnackbar(
                    message = "${uiState.pendingDeletionIds.size} item(s) will be deleted",
                    actionLabel = "Undo",
                    duration = SnackbarDuration.Long
                )
                when (result) {
                    SnackbarResult.ActionPerformed -> {
                        onUndoDelete()
                    }
                    SnackbarResult.Dismissed -> {
                        onDeletionTimeout()
                    }
                }
            }
        }
    }

    LaunchedEffect(storagePermissionState.status.isGranted) {
        if (storagePermissionState.status.isGranted) {
            onGrantPermission()
        }
    }

    Scaffold(
        topBar = {
            if (uiState.inSelectionMode) {
                ContextualTopAppBar(
                    selectionCount = uiState.selectedComicIds.size,
                    onClose = onClearSelection,
                    onDelete = onDeleteRequest
                )
            } else if (uiState.isSearchActive) {
                SearchAppBar(
                    query = uiState.searchQuery,
                    onQueryChange = onSearchQueryChange,
                    onClose = onToggleSearch
                )
            } else {
                MrComicTopAppBar(
                    title = "Library",
                    actions = {
                        IconButton(onClick = onToggleSearch) {
                            Icon(Icons.Default.Search, contentDescription = "Search")
                        }
                        SortMenu(onSortOrderChange = onSortOrderChange)
                    }
                )
            }
        },
        bottomBar = {
            MrComicBottomAppBar(
                items = bottomNavItems,
                currentRoute = currentRoute,
                onItemClick = { item ->
                    when (item.route) {
                        "settings" -> onSettingsClick()
                        else -> currentRoute = item.route
                    }
                }
            )
        },
        floatingActionButton = {
            FloatingActionButton(onClick = onAddComicClick) {
                Icon(Icons.Default.Add, contentDescription = "Add Comic")
            }
        },
        snackbarHost = { SnackbarHost(hostState = snackbarHostState) }
    ) { paddingValues ->
        if (uiState.showAddComicDialog) {
            AddComicDialog(
                onDismiss = onDismissAddComicDialog,
                onConfirm = onConfirmAddComicDialog
            )
        }
        Box(
            modifier = Modifier.fillMaxSize().padding(paddingValues),
            contentAlignment = Alignment.Center
        ) {
            if (uiState.hasStoragePermission) {
                if (uiState.isLoading) {
                    CircularProgressIndicator()
                } else if (uiState.error != null) {
                    Text(text = uiState.error)
                } else {
                    val visibleComics = uiState.comics.filter { it.filePath !in uiState.pendingDeletionIds }
                    if (visibleComics.isEmpty()) {
                        Text("No comics found.")
                    }
                    LazyVerticalGrid(
                        columns = GridCells.Adaptive(minSize = 160.dp),
                        modifier = Modifier.fillMaxSize(),
                        contentPadding = PaddingValues(PaddingMedium),
                        verticalArrangement = Arrangement.spacedBy(PaddingMedium),
                        horizontalArrangement = Arrangement.spacedBy(PaddingMedium)
                    ) {
                        items(visibleComics, key = { it.filePath }) { comic ->
                            ComicCoverCard(
                                comic = comic,
                                isSelected = uiState.selectedComicIds.contains(comic.filePath),
                                onClick = {
                                    if (uiState.inSelectionMode) {
                                        onComicSelected(comic.filePath)
                                    } else {
                                        onBookClick(comic.filePath)
                                    }
                                },
                                onLongClick = { onEnterSelectionMode(comic.filePath) }
                            )
                        }
                    }
                }
            } else {
                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text("Storage permission is required to find comics.")
                    MrComicPrimaryButton(
                        onClick = { storagePermissionState.launchPermissionRequest() },
                        text = "Grant Permission"
                    )
                }
            }
        }
    }
}

@Composable
private fun ContextualTopAppBar(
    selectionCount: Int,
    onClose: () -> Unit,
    onDelete: () -> Unit
) {
    MrComicTopAppBar(
        title = "$selectionCount selected",
        navigationIcon = {
            IconButton(onClick = onClose) {
                Icon(Icons.Default.Close, contentDescription = "Close selection mode")
            }
        },
        actions = {
            IconButton(onClick = onDelete) {
                Icon(Icons.Default.Delete, contentDescription = "Delete selected items")
            }
        }
    )
}

@Composable
private fun SearchAppBar(
    query: String,
    onQueryChange: (String) -> Unit,
    onClose: () -> Unit
) {
    val focusManager = LocalFocusManager.current
    MrComicTopAppBar(
        title = "",
        navigationIcon = {
            IconButton(onClick = onClose) {
                Icon(Icons.Default.Close, contentDescription = "Close Search")
            }
        },
        actions = {
            TextField(
                value = query,
                onValueChange = onQueryChange,
                modifier = Modifier.fillMaxWidth(),
                placeholder = { Text("Search library...") },
                singleLine = true,
                colors = TextFieldDefaults.colors(
                    focusedContainerColor = Color.Transparent,
                    unfocusedContainerColor = Color.Transparent,
                    disabledContainerColor = Color.Transparent,
                    focusedIndicatorColor = Color.Transparent,
                    unfocusedIndicatorColor = Color.Transparent,
                ),
                keyboardOptions = KeyboardOptions(imeAction = ImeAction.Search),
                keyboardActions = KeyboardActions(onSearch = { focusManager.clearFocus() })
            )
        }
    )
}

@Composable
private fun SortMenu(
    onSortOrderChange: (SortOrder) -> Unit
) {
    var expanded by remember { mutableStateOf(false) }

    Box {
        IconButton(onClick = { expanded = true }) {
            Icon(Icons.Default.Sort, contentDescription = "Sort")
        }
        DropdownMenu(
            expanded = expanded,
            onDismissRequest = { expanded = false }
        ) {
            DropdownMenuItem(
                text = { Text("By Title (A-Z)") },
                onClick = { onSortOrderChange(SortOrder.TITLE_ASC); expanded = false }
            )
            DropdownMenuItem(
                text = { Text("By Title (Z-A)") },
                onClick = { onSortOrderChange(SortOrder.TITLE_DESC); expanded = false }
            )
            DropdownMenuItem(
                text = { Text("By Date Added") },
                onClick = { onSortOrderChange(SortOrder.DATE_ADDED_DESC); expanded = false }
            )
        }
    }
}


