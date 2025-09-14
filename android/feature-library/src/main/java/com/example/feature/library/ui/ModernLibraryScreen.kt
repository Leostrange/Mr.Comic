package com.example.feature.library.ui

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.GridView
import androidx.compose.material.icons.filled.List
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material.icons.outlined.BookmarkBorder
import androidx.compose.material.icons.outlined.FolderOpen
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LargeTopAppBar
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.Comic
import com.example.core.ui.components.ComicGridCard
import com.example.core.ui.components.ComicInfo
import com.example.core.ui.components.ComicListCard
import com.example.core.ui.components.MrComicCard
import com.example.core.ui.components.MrComicEmptyStateCard
import com.example.core.ui.components.MrComicFAB
import com.example.core.ui.components.MrComicSearchField
import com.example.core.ui.theme.MrComicTheme

/**
 * Modern library screen with Material Design 3
 * 
 * Features:
 * - Large top app bar with collapsing behavior
 * - Search functionality
 * - Grid/List view toggle
 * - Filter chips
 * - Beautiful comic cards
 * - Empty states
 * - Smooth animations
 */
@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun ModernLibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddClick: () -> Unit,
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier,
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    var searchQuery by remember { mutableStateOf("") }
    var isGridView by remember { mutableStateOf(true) }
    var selectedFilter by remember { mutableStateOf("All") }
    
    val scrollBehavior = TopAppBarDefaults.exitUntilCollapsedScrollBehavior()
    
    // Convert Comic to ComicInfo and filter
    val filteredComics = remember(uiState.comics, searchQuery, selectedFilter) {
        uiState.comics
            .map { comic -> comic.toComicInfo() }
            .filter { comic ->
                val matchesSearch = if (searchQuery.isBlank()) {
                    true
                } else {
                    comic.title.contains(searchQuery, ignoreCase = true)
                }
                
                val matchesFilter = when (selectedFilter) {
                    "All" -> true
                    "Recent" -> true // TODO: Add recent logic
                    "Favorites" -> comic.isFavorite
                    "Reading" -> comic.readingProgress > 0f
                    else -> true
                }
                
                matchesSearch && matchesFilter
            }
    }
    
    Scaffold(
        modifier = modifier.nestedScroll(scrollBehavior.nestedScrollConnection),
        topBar = {
            LargeTopAppBar(
                title = {
                    Text(
                        text = "Library",
                        style = MaterialTheme.typography.headlineLarge
                    )
                },
                actions = {
                    IconButton(
                        onClick = { isGridView = !isGridView }
                    ) {
                        Icon(
                            imageVector = if (isGridView) Icons.Default.List else Icons.Default.GridView,
                            contentDescription = if (isGridView) "List view" else "Grid view"
                        )
                    }
                    
                    IconButton(onClick = { /* TODO: Sort options */ }) {
                        Icon(
                            imageVector = Icons.Default.Sort,
                            contentDescription = "Sort"
                        )
                    }
                },
                scrollBehavior = scrollBehavior,
                windowInsets = WindowInsets(0),
                colors = TopAppBarDefaults.largeTopAppBarColors(
                    containerColor = MaterialTheme.colorScheme.surface,
                    scrolledContainerColor = MaterialTheme.colorScheme.surfaceContainer
                )
            )
        },
        floatingActionButton = {
            MrComicFAB(
                onClick = onAddClick,
                icon = Icons.Default.Add,
                contentDescription = "Add Comic"
            )
        },
        contentWindowInsets = WindowInsets(0)
    ) { paddingValues ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues)
        ) {
            // Search and filters section
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = 16.dp)
                    .padding(bottom = 8.dp)
            ) {
                // Search bar
                MrComicSearchField(
                    value = searchQuery,
                    onValueChange = { searchQuery = it },
                    placeholder = "Search comics...",
                    modifier = Modifier.fillMaxWidth()
                )
                
                Spacer(modifier = Modifier.height(12.dp))
                
                // Filter chips
                Row(
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    val filters = listOf("All", "Recent", "Favorites", "Reading")
                    filters.forEach { filter ->
                        FilterChip(
                            onClick = { selectedFilter = filter },
                            label = { Text(filter) },
                            selected = selectedFilter == filter
                        )
                    }
                }
            }
            
            // Content area
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 16.dp)
            ) {
                when {
                    uiState.error != null -> {
                        // Error state
                        Column(
                            modifier = Modifier.fillMaxSize(),
                            verticalArrangement = Arrangement.Center,
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            MrComicEmptyStateCard(
                                title = "Something went wrong",
                                description = uiState.error ?: "Unknown error occurred",
                                icon = Icons.Outlined.FolderOpen,
                                action = {
                                    com.example.core.ui.components.MrComicButton(
                                        onClick = { viewModel.onPermissionsGranted() },
                                        text = "Retry"
                                    )
                                }
                            )
                        }
                    }
                    
                    filteredComics.isEmpty() && searchQuery.isNotBlank() -> {
                        // No search results
                        Column(
                            modifier = Modifier.fillMaxSize(),
                            verticalArrangement = Arrangement.Center,
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            MrComicEmptyStateCard(
                                title = "No comics found",
                                description = "Try adjusting your search or filters",
                                icon = Icons.Default.Search
                            )
                        }
                    }
                    
                    uiState.comics.isEmpty() -> {
                        // Empty library
                        Column(
                            modifier = Modifier.fillMaxSize(),
                            verticalArrangement = Arrangement.Center,
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            MrComicEmptyStateCard(
                                title = "Your library is empty",
                                description = "Add some comics to get started",
                                icon = Icons.Outlined.BookmarkBorder,
                                action = {
                                    com.example.core.ui.components.MrComicButton(
                                        onClick = onAddClick,
                                        text = "Add Comics",
                                        icon = Icons.Default.Add
                                    )
                                }
                            )
                        }
                    }
                    
                    else -> {
                        // Comics grid/list
                        if (isGridView) {
                            ComicsGrid(
                                comics = filteredComics,
                                onComicClick = onBookClick
                            )
                        } else {
                            ComicsList(
                                comics = filteredComics,
                                onComicClick = onBookClick
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ComicsGrid(
    comics: List<ComicInfo>,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyVerticalGrid(
        columns = GridCells.Adaptive(minSize = 160.dp),
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(bottom = 80.dp), // Space for FAB
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        items(comics) { comic ->
            ComicGridCard(
                comic = comic,
                onClick = { onComicClick(comic.title) }, // TODO: Use proper path
                onFavoriteClick = { /* TODO: Handle favorite */ }
            )
        }
    }
}

@Composable
private fun ComicsList(
    comics: List<ComicInfo>,
    onComicClick: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(bottom = 80.dp), // Space for FAB
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        items(comics) { comic ->
            ComicListCard(
                comic = comic,
                onClick = { onComicClick(comic.title) }, // TODO: Use proper path
                onFavoriteClick = { /* TODO: Handle favorite */ }
            )
        }
    }
}

/**
 * Extension function to convert Comic to ComicInfo
 */
private fun Comic.toComicInfo(): ComicInfo {
    return ComicInfo(
        title = this.title,
        author = this.author,
        coverPath = this.coverPath,
        readingProgress = 0f, // TODO: Get real progress from database
        isFavorite = false, // TODO: Get real favorite status
        pageCount = null, // TODO: Get real page count
        currentPage = 0, // TODO: Get real current page
        genre = null // TODO: Get real genre
    )
}

@Preview(showBackground = true)
@Composable
private fun ModernLibraryScreenPreview() {
    MrComicTheme {
        ModernLibraryScreen(
            onBookClick = { },
            onAddClick = { },
            onSettingsClick = { }
        )
    }
}