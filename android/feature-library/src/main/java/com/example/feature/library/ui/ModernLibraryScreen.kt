package com.example.feature.library.ui

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.clickable
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
import androidx.compose.material.icons.filled.Mic
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.Sort
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.outlined.AutoStories
import androidx.compose.material.icons.outlined.BookmarkBorder
import androidx.compose.material.icons.outlined.CloudQueue
import androidx.compose.material.icons.outlined.Extension
import androidx.compose.material.icons.outlined.FolderOpen
import androidx.compose.material.icons.outlined.Notes
import androidx.compose.material3.DockedSearchBar
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LargeTopAppBar
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBarDefaults

import androidx.compose.material3.windowsizeclass.ExperimentalMaterial3WindowSizeClassApi
import androidx.compose.material3.windowsizeclass.WindowSizeClass
import androidx.compose.material3.windowsizeclass.WindowWidthSizeClass
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.nestedscroll.nestedScroll
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.DpSize
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.model.Comic
import com.example.core.ui.components.ComicGridCard
import com.example.core.ui.components.ComicInfo
import com.example.core.ui.components.ComicListCard
import com.example.core.ui.components.MrComicEmptyStateCard
import com.example.core.ui.components.MrComicFAB
import com.example.core.ui.theme.MrComicTheme
import kotlin.math.max

@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class, ExperimentalMaterial3WindowSizeClassApi::class)
@Composable
fun ModernLibraryScreen(
    onBookClick: (filePath: String) -> Unit,
    onAddClick: () -> Unit,
    onSettingsClick: () -> Unit,
    modifier: Modifier = Modifier,
    onVoiceSearchClick: () -> Unit = {},
    viewModel: LibraryViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val scrollBehavior = TopAppBarDefaults.exitUntilCollapsedScrollBehavior()

    var isGridView by rememberSaveable { mutableStateOf(true) }
    var selectedFilter by rememberSaveable { mutableStateOf("All") }

    val configuration = LocalConfiguration.current
    val windowSizeClass = remember(configuration) {
        WindowSizeClass.calculateFromSize(
            DpSize(configuration.screenWidthDp.dp, configuration.screenHeightDp.dp)
        )
    }
    val columnCount = remember(windowSizeClass.widthSizeClass) {
        when (windowSizeClass.widthSizeClass) {
            WindowWidthSizeClass.Compact -> 2
            WindowWidthSizeClass.Medium -> 3
            WindowWidthSizeClass.Expanded -> 4
            else -> 2
        }
    }

    val comicsInfo = remember(uiState.comics) {
        uiState.comics.map { it.toComicInfo() }
    }

    val filteredComics = remember(comicsInfo, uiState.searchQuery, selectedFilter) {
        comicsInfo.filter { comic ->
            val matchesSearch = if (uiState.searchQuery.isBlank()) {
                true
            } else {
                comic.title.contains(uiState.searchQuery, ignoreCase = true) ||
                    (comic.author?.contains(uiState.searchQuery, ignoreCase = true) == true)
            }

            val matchesFilter = when (selectedFilter) {
                "Recent" -> true
                "Favorites" -> comic.isFavorite
                "Reading" -> comic.readingProgress > 0f
                else -> true
            }

            matchesSearch && matchesFilter
        }
    }

    val suggestions = remember(filteredComics, uiState.searchQuery) {
        if (uiState.searchQuery.isBlank()) emptyList() else filteredComics.take(5)
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
                    IconButton(onClick = { isGridView = !isGridView }) {
                        Icon(
                            imageVector = if (isGridView) Icons.Default.List else Icons.Default.GridView,
                            contentDescription = if (isGridView) "List view" else "Grid view"
                        )
                    }

                    IconButton(onClick = { /* TODO: Show sort dialog */ }) {
                        Icon(
                            imageVector = Icons.Default.Sort,
                            contentDescription = "Sort"
                        )
                    }

                    IconButton(onClick = onSettingsClick) {
                        Icon(
                            imageVector = Icons.Filled.Settings,
                            contentDescription = "Settings"
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
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp)
                        .padding(top = 16.dp, bottom = 8.dp)
                ) {
                    DockedSearchBar(
                        query = uiState.searchQuery,
                        onQueryChange = { viewModel.onSearchQueryChange(it) },
                        onSearch = { query ->
                            viewModel.onSearchQueryChange(query)
                            viewModel.onSearchActiveChange(false)
                        },
                        active = uiState.isSearchActive,
                        onActiveChange = { viewModel.onSearchActiveChange(it) },
                        leadingIcon = { Icon(Icons.Default.Search, contentDescription = null) },
                        trailingIcon = {
                            IconButton(onClick = onVoiceSearchClick) {
                                Icon(Icons.Default.Mic, contentDescription = "Voice search")
                            }
                        },
                        placeholder = { Text("Search your library") },
                        modifier = Modifier.fillMaxWidth()
                    ) {
                        if (suggestions.isNotEmpty()) {
                            LazyColumn(modifier = Modifier.fillMaxWidth()) {
                                items(suggestions) { suggestion ->
                                    SearchSuggestionRow(
                                        comic = suggestion,
                                        onSuggestionClick = {
                                            viewModel.onSearchQueryChange(suggestion.title)
                                            viewModel.onSearchActiveChange(false)
                                            onBookClick(suggestion.filePath)
                                        }
                                    )
                                }
                            }
                        } else if (uiState.searchQuery.isNotBlank()) {
                            Text(
                                text = "No matches for \"${uiState.searchQuery}\"",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant,
                                modifier = Modifier.padding(16.dp)
                            )
                        }
                    }

                    Spacer(modifier = Modifier.height(12.dp))

                    LibraryTabRow(
                        selectedTab = uiState.selectedTab,
                        onTabSelected = viewModel::onTabSelected
                    )

                    AnimatedVisibility(visible = uiState.isRefreshing) {
                        LinearProgressIndicator(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(top = 8.dp)
                        )
                    }

                    if (uiState.selectedTab == LibraryTab.LIBRARY) {
                        Spacer(modifier = Modifier.height(12.dp))

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
                }

                when (uiState.selectedTab) {
                    LibraryTab.LIBRARY -> {
                        LibraryTabContent(
                            uiState = uiState,
                            filteredComics = filteredComics,
                            isGridView = isGridView,
                            columnCount = columnCount,
                            onBookClick = onBookClick,
                            onRetry = viewModel::refreshLibrary,
                            onAddClick = onAddClick
                        )
                    }

                    LibraryTab.CLOUD -> {
                        LibraryPlaceholder(
                            title = "Cloud library",
                            description = "Connect Google Drive, Dropbox or WebDAV to sync your collection.",
                            icon = Icons.Outlined.CloudQueue
                        )
                    }

                    LibraryTab.ANNOTATIONS -> {
                        LibraryPlaceholder(
                            title = "Annotations",
                            description = "Create highlights and notes for translated text blocks.",
                            icon = Icons.Outlined.Notes
                        )
                    }

                    LibraryTab.PLUGINS -> {
                        LibraryPlaceholder(
                            title = "Plugins",
                            description = "Enhance your reader with community extensions and automation.",
                            icon = Icons.Outlined.Extension
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun LibraryTabContent(
    uiState: LibraryUiState,
    filteredComics: List<ComicInfo>,
    isGridView: Boolean,
    columnCount: Int,
    onBookClick: (String) -> Unit,
    onRetry: () -> Unit,
    onAddClick: () -> Unit
) {
    Box(
        modifier = Modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp)
    ) {
        when {
            uiState.error != null -> {
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
                            androidx.compose.material3.TextButton(onClick = onRetry) {
                                Text("Retry")
                            }
                        }
                    )
                }
            }

            uiState.isLoading && filteredComics.isEmpty() -> {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.Center,
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    LinearProgressIndicator()
                    Spacer(modifier = Modifier.height(12.dp))
                    Text(
                        text = "Scanning your library...",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }

            filteredComics.isEmpty() -> {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.Center,
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    MrComicEmptyStateCard(
                        title = "Your library is empty",
                        description = "Add comics from storage or cloud services to get started.",
                        icon = Icons.Outlined.BookmarkBorder,
                        action = {
                            androidx.compose.material3.TextButton(onClick = onAddClick) {
                                Text("Add comics")
                            }
                        }
                    )
                }
            }

            else -> {
                if (isGridView) {
                    ComicsGrid(
                        comics = filteredComics,
                        onComicClick = onBookClick,
                        columnCount = columnCount
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

@Composable
private fun LibraryPlaceholder(
    title: String,
    description: String,
    icon: androidx.compose.ui.graphics.vector.ImageVector,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .padding(horizontal = 16.dp),
        contentAlignment = Alignment.Center
    ) {
        MrComicEmptyStateCard(
            title = title,
            description = description,
            icon = icon
        )
    }
}

@Composable
private fun LibraryTabRow(
    selectedTab: LibraryTab,
    onTabSelected: (LibraryTab) -> Unit
) {
    val tabs = remember { LibraryTab.values() }
    val selectedIndex = max(tabs.indexOf(selectedTab), 0)

    TabRow(
        selectedTabIndex = selectedIndex,
        containerColor = MaterialTheme.colorScheme.surfaceContainerLow,
        contentColor = MaterialTheme.colorScheme.onSurface,
        modifier = Modifier.fillMaxWidth()
    ) {
        tabs.forEachIndexed { index, tab ->
            Tab(
                selected = index == selectedIndex,
                onClick = { onTabSelected(tab) },
                text = { Text(tab.title) },
                icon = {
                    val icon = when (tab) {
                        LibraryTab.LIBRARY -> Icons.Outlined.AutoStories
                        LibraryTab.CLOUD -> Icons.Outlined.CloudQueue
                        LibraryTab.ANNOTATIONS -> Icons.Outlined.Notes
                        LibraryTab.PLUGINS -> Icons.Outlined.Extension
                    }
                    Icon(imageVector = icon, contentDescription = null)
                }
            )
        }
    }
}

@Composable
private fun SearchSuggestionRow(
    comic: ComicInfo,
    onSuggestionClick: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clickable(onClick = onSuggestionClick)
            .padding(horizontal = 16.dp, vertical = 12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Icon(
            imageVector = Icons.Default.Search,
            contentDescription = null,
            tint = MaterialTheme.colorScheme.primary,
            modifier = Modifier.size(20.dp)
        )
        Spacer(modifier = Modifier.width(12.dp))
        Column {
            Text(
                text = comic.title,
                style = MaterialTheme.typography.bodyLarge,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            comic.author?.takeIf { it.isNotBlank() }?.let { author ->
                Text(
                    text = author,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
private fun ComicsGrid(
    comics: List<ComicInfo>,
    onComicClick: (String) -> Unit,
    columnCount: Int,
    modifier: Modifier = Modifier
) {
    LazyVerticalGrid(
        columns = GridCells.Fixed(columnCount),
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(bottom = 80.dp),
        horizontalArrangement = Arrangement.spacedBy(12.dp),
        verticalArrangement = Arrangement.spacedBy(12.dp)
    ) {
        items(comics) { comic ->
            ComicGridCard(
                comic = comic,
                onClick = { onComicClick(comic.filePath) }
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
        contentPadding = PaddingValues(bottom = 80.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        items(comics) { comic ->
            ComicListCard(
                comic = comic,
                onClick = { onComicClick(comic.filePath) }
            )
        }
    }
}

private fun Comic.toComicInfo(): ComicInfo {
    return ComicInfo(
        title = this.title,
        author = this.author,
        coverPath = this.coverPath,
        readingProgress = 0f,
        isFavorite = false,
        pageCount = null,
        currentPage = 0,
        genre = null,
        filePath = this.filePath
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
