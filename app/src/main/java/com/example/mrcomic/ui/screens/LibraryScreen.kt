package com.example.mrcomic.ui.screens

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.shadow
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import com.example.mrcomic.ui.analytics.TrackScreenView
import com.example.mrcomic.ui.analytics.AnalyticsButton
import com.example.mrcomic.ui.analytics.TrackScreenTime
import com.example.mrcomic.ui.performance.CachedAsyncImage
import com.example.mrcomic.ui.performance.LazyInitialized
import com.example.mrcomic.ui.performance.MemoizedComicCard
import com.example.mrcomic.ui.performance.PerformanceMonitor
import kotlinx.coroutines.launch

/**
 * Production-ready экран библиотеки комиксов
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreen(
    onComicClick: (String) -> Unit,
    onSettingsClick: () -> Unit,
    viewModel: LibraryViewModel = hiltViewModel(),
    analyticsHelper: AnalyticsHelper = hiltViewModel(),
    performanceProfiler: PerformanceProfiler = hiltViewModel()
) {
    val scope = rememberCoroutineScope()
    val configuration = LocalConfiguration.current
    val isTablet = configuration.screenWidthDp >= 600
    
    // Отслеживание экрана
    TrackScreenView("Library", analyticsHelper, scope)
    TrackScreenTime("Library", analyticsHelper, scope)
    
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    
    // Performance tracking
    PerformanceTracker(
        operationName = "library_screen_render",
        analyticsHelper = analyticsHelper,
        scope = scope
    ) {
        ErrorBoundary(
            analyticsHelper = analyticsHelper,
            context = "LibraryScreen",
            scope = scope
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.background)
                    .testTag("library_screen")
            ) {
                // App Bar
                LibraryTopBar(
                    searchQuery = uiState.searchQuery,
                    onSearchQueryChange = viewModel::updateSearchQuery,
                    viewMode = uiState.viewMode,
                    onViewModeChange = viewModel::setViewMode,
                    sortType = uiState.sortType,
                    onSortTypeChange = viewModel::setSortType,
                    onSettingsClick = onSettingsClick,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
                
                // Content
                LibraryContent(
                    uiState = uiState,
                    onComicClick = onComicClick,
                    onComicLongClick = viewModel::selectComic,
                    onRefresh = viewModel::refresh,
                    onLoadMore = viewModel::loadMore,
                    isTablet = isTablet,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
            }
        }
    }
    
    // FAB для добавления комиксов
    Box(modifier = Modifier.fillMaxSize()) {
        AnimatedVisibility(
            visible = !uiState.isLoading && uiState.selectedComics.isEmpty(),
            enter = scaleIn() + fadeIn(),
            exit = scaleOut() + fadeOut(),
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .padding(16.dp)
        ) {
            AnalyticsButton(
                onClick = { viewModel.addComics() },
                analyticsHelper = analyticsHelper,
                eventName = "add_comics_fab_clicked",
                eventParameters = mapOf(
                    "comics_count" to uiState.comics.size,
                    "view_mode" to uiState.viewMode.name
                ),
                scope = scope,
                modifier = Modifier.testTag("add_comics_fab")
            ) {
                Icon(Icons.Default.Add, contentDescription = "Добавить комиксы")
            }
        }
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun LibraryTopBar(
    searchQuery: String,
    onSearchQueryChange: (String) -> Unit,
    viewMode: ViewMode,
    onViewModeChange: (ViewMode) -> Unit,
    sortType: SortType,
    onSortTypeChange: (SortType) -> Unit,
    onSettingsClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    var isSearchActive by remember { mutableStateOf(false) }
    var showSortMenu by remember { mutableStateOf(false) }
    
    TopAppBar(
        title = {
            AnimatedVisibility(
                visible = !isSearchActive,
                enter = slideInHorizontally() + fadeIn(),
                exit = slideOutHorizontally() + fadeOut()
            ) {
                Text(
                    text = "Mr.Comic",
                    style = MaterialTheme.typography.headlineSmall,
                    fontWeight = FontWeight.Bold
                )
            }
        },
        actions = {
            // Search
            AnimatedVisibility(
                visible = isSearchActive,
                enter = expandHorizontally() + fadeIn(),
                exit = shrinkHorizontally() + fadeOut()
            ) {
                DebouncedSearchField(
                    query = searchQuery,
                    onQueryChange = onSearchQueryChange,
                    onSearch = { query ->
                        if (query.isNotEmpty()) {
                            analyticsHelper.track(
                                com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                    metricName = "search_performed",
                                    value = query.length.toDouble(),
                                    unit = "characters"
                                ),
                                scope
                            )
                        }
                    },
                    modifier = Modifier
                        .weight(1f)
                        .testTag("search_field"),
                    placeholder = "Поиск комиксов..."
                )
            }
            
            // Search toggle
            AnalyticsClickable(
                onClick = { 
                    isSearchActive = !isSearchActive
                    if (!isSearchActive) onSearchQueryChange("")
                },
                analyticsHelper = analyticsHelper,
                eventName = "search_toggle",
                eventParameters = mapOf("activated" to !isSearchActive),
                scope = scope
            ) {
                IconButton(onClick = { }) {
                    Icon(
                        if (isSearchActive) Icons.Default.Close else Icons.Default.Search,
                        contentDescription = if (isSearchActive) "Закрыть поиск" else "Поиск"
                    )
                }
            }
            
            // View mode toggle
            AnalyticsClickable(
                onClick = { 
                    val newMode = if (viewMode == ViewMode.GRID) ViewMode.LIST else ViewMode.GRID
                    onViewModeChange(newMode)
                },
                analyticsHelper = analyticsHelper,
                eventName = "view_mode_changed",
                eventParameters = mapOf(
                    "old_mode" to viewMode.name,
                    "new_mode" to (if (viewMode == ViewMode.GRID) ViewMode.LIST else ViewMode.GRID).name
                ),
                scope = scope
            ) {
                IconButton(onClick = { }) {
                    Icon(
                        if (viewMode == ViewMode.GRID) Icons.Default.ViewList else Icons.Default.GridView,
                        contentDescription = "Переключить вид"
                    )
                }
            }
            
            // Sort menu
            Box {
                AnalyticsClickable(
                    onClick = { showSortMenu = true },
                    analyticsHelper = analyticsHelper,
                    eventName = "sort_menu_opened",
                    scope = scope
                ) {
                    IconButton(onClick = { }) {
                        Icon(Icons.Default.Sort, contentDescription = "Сортировка")
                    }
                }
                
                DropdownMenu(
                    expanded = showSortMenu,
                    onDismissRequest = { showSortMenu = false }
                ) {
                    SortType.values().forEach { sort ->
                        DropdownMenuItem(
                            text = { Text(sort.displayName) },
                            onClick = {
                                onSortTypeChange(sort)
                                showSortMenu = false
                                
                                analyticsHelper.track(
                                    com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                        metricName = "sort_changed",
                                        value = 1.0,
                                        unit = "action"
                                    ),
                                    scope
                                )
                            },
                            leadingIcon = {
                                if (sortType == sort) {
                                    Icon(Icons.Default.Check, contentDescription = null)
                                }
                            }
                        )
                    }
                }
            }
            
            // Settings
            AnalyticsClickable(
                onClick = onSettingsClick,
                analyticsHelper = analyticsHelper,
                eventName = "settings_opened",
                eventParameters = mapOf("source" to "library_toolbar"),
                scope = scope
            ) {
                IconButton(onClick = { }) {
                    Icon(Icons.Default.Settings, contentDescription = "Настройки")
                }
            }
        },
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = MaterialTheme.colorScheme.surface,
            titleContentColor = MaterialTheme.colorScheme.onSurface
        )
    )
}

@Composable
private fun LibraryContent(
    uiState: LibraryUiState,
    onComicClick: (String) -> Unit,
    onComicLongClick: (String) -> Unit,
    onRefresh: () -> Unit,
    onLoadMore: () -> Unit,
    isTablet: Boolean,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    when {
        uiState.isLoading && uiState.comics.isEmpty() -> {
            LoadingState(analyticsHelper, scope)
        }
        uiState.error != null && uiState.comics.isEmpty() -> {
            ErrorState(
                error = uiState.error,
                onRetry = onRefresh,
                analyticsHelper = analyticsHelper,
                scope = scope
            )
        }
        uiState.comics.isEmpty() -> {
            EmptyState(analyticsHelper, scope)
        }
        else -> {
            ComicsGrid(
                comics = uiState.filteredComics,
                viewMode = uiState.viewMode,
                selectedComics = uiState.selectedComics,
                onComicClick = onComicClick,
                onComicLongClick = onComicLongClick,
                onLoadMore = onLoadMore,
                hasMore = uiState.hasMore,
                isLoading = uiState.isLoading,
                isTablet = isTablet,
                analyticsHelper = analyticsHelper,
                scope = scope
            )
        }
    }
}

@Composable
private fun ComicsGrid(
    comics: List<Comic>,
    viewMode: ViewMode,
    selectedComics: Set<String>,
    onComicClick: (String) -> Unit,
    onComicLongClick: (String) -> Unit,
    onLoadMore: () -> Unit,
    hasMore: Boolean,
    isLoading: Boolean,
    isTablet: Boolean,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    val gridColumns = when {
        isTablet && viewMode == ViewMode.GRID -> 4
        viewMode == ViewMode.GRID -> 2
        else -> 1
    }
    
    PaginatedLazyColumn(
        items = comics,
        isLoading = isLoading,
        hasMore = hasMore,
        onLoadMore = onLoadMore,
        modifier = Modifier.fillMaxSize(),
        threshold = 3
    ) { comic ->
        ComicCard(
            comic = comic,
            isSelected = comic.id in selectedComics,
            viewMode = viewMode,
            onClick = { onComicClick(comic.id) },
            onLongClick = { onComicLongClick(comic.id) },
            analyticsHelper = analyticsHelper,
            scope = scope,
            modifier = Modifier
                .padding(horizontal = 8.dp, vertical = 4.dp)
                .testTag("comic_item_${comic.id}")
        )
    }
}

@Composable
private fun ComicCard(
    comic: Comic,
    isSelected: Boolean,
    viewMode: ViewMode,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope,
    modifier: Modifier = Modifier
) {
    val animatedElevation by animateFloatAsState(
        targetValue = if (isSelected) 8f else 2f,
        animationSpec = tween(300)
    )
    
    AnalyticsClickable(
        onClick = {
            onClick()
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.ComicOpened(
                    format = comic.format,
                    totalPages = comic.pageCount
                ),
                scope
            )
        },
        analyticsHelper = analyticsHelper,
        eventName = "comic_card_clicked",
        eventParameters = mapOf(
            "comic_format" to comic.format,
            "comic_page_count" to comic.pageCount,
            "has_progress" to (comic.currentPage > 0),
            "view_mode" to viewMode.name
        ),
        scope = scope,
        modifier = modifier
    ) {
        Card(
            modifier = Modifier
                .fillMaxWidth()
                .shadow(animatedElevation.dp, RoundedCornerShape(12.dp))
                .clip(RoundedCornerShape(12.dp)),
            colors = CardDefaults.cardColors(
                containerColor = if (isSelected) 
                    MaterialTheme.colorScheme.primaryContainer 
                else 
                    MaterialTheme.colorScheme.surface
            )
        ) {
            when (viewMode) {
                ViewMode.GRID -> GridComicCard(comic)
                ViewMode.LIST -> ListComicCard(comic)
            }
        }
    }
}

@Composable
private fun GridComicCard(comic: Comic) {
    Column {
        // Cover image
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(0.75f)
                .background(MaterialTheme.colorScheme.surfaceVariant)
        ) {
            // TODO: Replace with actual image loading
            CachedAsyncImage(
                imageUrl = comic.coverPath,
                contentDescription = comic.title,
                modifier = Modifier.fillMaxSize(),
                placeholder = {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            Icons.Default.Book,
                            contentDescription = null,
                            modifier = Modifier.size(48.dp),
                            tint = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            )
            
            // Progress overlay
            if (comic.currentPage > 0) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(4.dp)
                        .align(Alignment.BottomCenter)
                        .background(MaterialTheme.colorScheme.onSurface.copy(alpha = 0.2f))
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxHeight()
                            .fillMaxWidth(comic.progress)
                            .background(MaterialTheme.colorScheme.primary)
                    )
                }
            }
        }
        
        // Info
        Column(
            modifier = Modifier.padding(12.dp)
        ) {
            Text(
                text = comic.title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Medium,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
            
            Spacer(modifier = Modifier.height(4.dp))
            
            Text(
                text = "${comic.currentPage}/${comic.pageCount} стр.",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun ListComicCard(comic: Comic) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .padding(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // Cover thumbnail
        Box(
            modifier = Modifier
                .size(80.dp)
                .clip(RoundedCornerShape(8.dp))
                .background(MaterialTheme.colorScheme.surfaceVariant)
        ) {
            CachedAsyncImage(
                imageUrl = comic.coverPath,
                contentDescription = comic.title,
                modifier = Modifier.fillMaxSize(),
                placeholder = {
                    Icon(
                        Icons.Default.Book,
                        contentDescription = null,
                        modifier = Modifier
                            .size(32.dp)
                            .align(Alignment.Center),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            )
        }
        
        Spacer(modifier = Modifier.width(16.dp))
        
        // Info
        Column(
            modifier = Modifier.weight(1f)
        ) {
            Text(
                text = comic.title,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Medium,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis
            )
            
            Spacer(modifier = Modifier.height(4.dp))
            
            Text(
                text = "${comic.currentPage}/${comic.pageCount} страниц",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            if (comic.currentPage > 0) {
                Spacer(modifier = Modifier.height(8.dp))
                LinearProgressIndicator(
                    progress = { comic.progress },
                    modifier = Modifier.fillMaxWidth(),
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
        
        // Format badge
        Surface(
            shape = RoundedCornerShape(12.dp),
            color = MaterialTheme.colorScheme.secondaryContainer,
            modifier = Modifier.padding(start = 8.dp)
        ) {
            Text(
                text = comic.format.uppercase(),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSecondaryContainer,
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
            )
        }
    }
}

@Composable
private fun LoadingState(
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    LaunchedEffect(Unit) {
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                metricName = "library_loading_shown",
                value = 1.0,
                unit = "state"
            ),
            scope
        )
    }
    
    Box(
        modifier = Modifier
            .fillMaxSize()
            .testTag("loading_state"),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp)
            )
            Spacer(modifier = Modifier.height(16.dp))
            Text(
                text = "Загрузка комиксов...",
                style = MaterialTheme.typography.bodyLarge,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun EmptyState(
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    LaunchedEffect(Unit) {
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                metricName = "empty_library_shown",
                value = 1.0,
                unit = "state"
            ),
            scope
        )
    }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            Icons.Default.LibraryBooks,
            contentDescription = null,
            modifier = Modifier.size(120.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
        )
        
        Spacer(modifier = Modifier.height(24.dp))
        
        Text(
            text = "Библиотека пуста",
            style = MaterialTheme.typography.headlineMedium,
            fontWeight = FontWeight.Medium,
            color = MaterialTheme.colorScheme.onSurface
        )
        
        Spacer(modifier = Modifier.height(8.dp))
        
        Text(
            text = "Добавьте первый комикс, чтобы начать чтение",
            style = MaterialTheme.typography.bodyLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = androidx.compose.ui.text.style.TextAlign.Center
        )
    }
}

@Composable
private fun ErrorState(
    error: String,
    onRetry: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    LaunchedEffect(error) {
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.Error(
                errorType = "library_error",
                errorMessage = error
            ),
            scope
        )
    }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            Icons.Default.Error,
            contentDescription = null,
            modifier = Modifier.size(64.dp),
            tint = MaterialTheme.colorScheme.error
        )
        
        Spacer(modifier = Modifier.height(16.dp))
        
        Text(
            text = "Произошла ошибка",
            style = MaterialTheme.typography.headlineSmall,
            fontWeight = FontWeight.Medium,
            color = MaterialTheme.colorScheme.onSurface
        )
        
        Spacer(modifier = Modifier.height(8.dp))
        
        Text(
            text = error,
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant,
            textAlign = androidx.compose.ui.text.style.TextAlign.Center
        )
        
        Spacer(modifier = Modifier.height(24.dp))
        
        AnalyticsButton(
            onClick = onRetry,
            analyticsHelper = analyticsHelper,
            eventName = "error_retry_clicked",
            eventParameters = mapOf("error_message" to error),
            scope = scope
        ) {
            Icon(Icons.Default.Refresh, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text("Повторить")
        }
    }
}

// Enums and data classes
enum class ViewMode { GRID, LIST }

enum class SortType(val displayName: String) {
    NAME("По названию"),
    DATE_ADDED("По дате добавления"),
    LAST_READ("По последнему чтению"),
    PROGRESS("По прогрессу")
}

data class Comic(
    val id: String,
    val title: String,
    val format: String,
    val pageCount: Int,
    val currentPage: Int = 0,
    val coverPath: String? = null,
    val dateAdded: Long = System.currentTimeMillis(),
    val lastRead: Long? = null
) {
    val progress: Float
        get() = if (pageCount > 0) currentPage.toFloat() / pageCount.toFloat() else 0f
}

data class LibraryUiState(
    val isLoading: Boolean = false,
    val comics: List<Comic> = emptyList(),
    val searchQuery: String = "",
    val viewMode: ViewMode = ViewMode.GRID,
    val sortType: SortType = SortType.DATE_ADDED,
    val selectedComics: Set<String> = emptySet(),
    val error: String? = null,
    val hasMore: Boolean = false
) {
    val filteredComics: List<Comic>
        get() = comics
            .filter { comic ->
                if (searchQuery.isBlank()) true
                else comic.title.contains(searchQuery, ignoreCase = true)
            }
            .sortedWith { a, b ->
                when (sortType) {
                    SortType.NAME -> a.title.compareTo(b.title, ignoreCase = true)
                    SortType.DATE_ADDED -> b.dateAdded.compareTo(a.dateAdded)
                    SortType.LAST_READ -> (b.lastRead ?: 0).compareTo(a.lastRead ?: 0)
                    SortType.PROGRESS -> b.progress.compareTo(a.progress)
                }
            }
}