package com.example.mrcomic.ui.screens

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Search
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.analytics.AnalyticsEvent
import com.example.core.analytics.AnalyticsHelper
import com.example.mrcomic.ui.analytics.TrackScreenView
import com.example.mrcomic.ui.analytics.AnalyticsButton
import com.example.mrcomic.ui.analytics.TrackScreenTime
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

/**
 * Пример экрана библиотеки с интегрированной аналитикой
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LibraryScreenWithAnalytics(
    analyticsHelper: AnalyticsHelper,
    viewModel: LibraryViewModel = hiltViewModel(),
    onComicClick: (String) -> Unit = {}
) {
    val scope = rememberCoroutineScope()
    
    // Автоматическое отслеживание просмотра экрана
    TrackScreenView(
        screenName = "Library",
        analyticsHelper = analyticsHelper,
        scope = scope
    )
    
    // Отслеживание времени на экране
    TrackScreenTime(
        screenName = "Library",
        analyticsHelper = analyticsHelper,
        scope = scope
    )
    
    val uiState by viewModel.uiState.collectAsState()
    
    ErrorBoundary(
        analyticsHelper = analyticsHelper,
        context = "LibraryScreen",
        scope = scope
    ) {
        Column(
            modifier = Modifier
                .fillMaxSize()
                .testTag("library_screen")
        ) {
            // Поисковая строка с аналитикой
            SearchBarWithAnalytics(
                query = uiState.searchQuery,
                onQueryChange = { query ->
                    viewModel.updateSearchQuery(query)
                    
                    // Отслеживаем поисковые запросы
                    if (query.isNotEmpty()) {
                        val event = object : AnalyticsEvent("search_performed", mapOf(
                            "query_length" to query.length,
                            "screen" to "library"
                        )) {}
                        analyticsHelper.track(event, scope)
                    }
                },
                analyticsHelper = analyticsHelper
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            // Контент с отслеживанием производительности
            PerformanceTracker(
                operationName = "library_content_render",
                analyticsHelper = analyticsHelper,
                scope = scope
            ) {
                when {
                    uiState.isLoading -> {
                        LoadingContent(analyticsHelper, scope)
                    }
                    uiState.comics.isEmpty() -> {
                        EmptyLibraryContent(analyticsHelper, scope)
                    }
                    else -> {
                        ComicsListContent(
                            comics = uiState.comics,
                            onComicClick = { comic ->
                                // Отслеживаем открытие комикса
                                val event = AnalyticsEvent.ComicOpened(
                                    format = comic.format,
                                    totalPages = comic.pageCount
                                )
                                analyticsHelper.track(event, scope)
                                
                                onComicClick(comic.id)
                            },
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun SearchBarWithAnalytics(
    query: String,
    onQueryChange: (String) -> Unit,
    analyticsHelper: AnalyticsHelper
) {
    val scope = rememberCoroutineScope()
    
    OutlinedTextField(
        value = query,
        onValueChange = onQueryChange,
        label = { Text("Поиск комиксов") },
        leadingIcon = {
            Icon(Icons.Default.Search, contentDescription = "Поиск")
        },
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 16.dp)
            .testTag("search_bar"),
        singleLine = true
    )
    
    // Отслеживаем фокус на поисковой строке
    LaunchedEffect(query) {
        if (query.isEmpty()) {
            val event = object : AnalyticsEvent("search_cleared", emptyMap()) {}
            analyticsHelper.track(event, scope)
        }
    }
}

@Composable
private fun LoadingContent(
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope
) {
    LaunchedEffect(Unit) {
        val event = object : AnalyticsEvent("library_loading_shown", emptyMap()) {}
        analyticsHelper.track(event, scope)
    }
    
    Box(
        modifier = Modifier
            .fillMaxSize()
            .testTag("loading_indicator"),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            CircularProgressIndicator()
            Spacer(modifier = Modifier.height(16.dp))
            Text("Загрузка комиксов...")
        }
    }
}

@Composable
private fun EmptyLibraryContent(
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope
) {
    LaunchedEffect(Unit) {
        val event = object : AnalyticsEvent("empty_library_shown", emptyMap()) {}
        analyticsHelper.track(event, scope)
    }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Text(
            text = "Библиотека пуста",
            style = MaterialTheme.typography.headlineMedium
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = "Добавьте первый комикс",
            style = MaterialTheme.typography.bodyLarge
        )
        Spacer(modifier = Modifier.height(24.dp))
        
        AnalyticsButton(
            onClick = { 
                // Здесь будет логика добавления комикса
            },
            analyticsHelper = analyticsHelper,
            eventName = "add_first_comic_clicked",
            eventParameters = mapOf("source" to "empty_library"),
            scope = scope,
            modifier = Modifier.testTag("add_comic_button")
        ) {
            Icon(Icons.Default.Add, contentDescription = null)
            Spacer(modifier = Modifier.width(8.dp))
            Text("Добавить")
        }
    }
}

@Composable
private fun ComicsListContent(
    comics: List<Comic>,
    onComicClick: (Comic) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope
) {
    LaunchedEffect(comics.size) {
        val event = object : AnalyticsEvent("library_loaded", mapOf(
            "comics_count" to comics.size
        )) {}
        analyticsHelper.track(event, scope)
    }
    
    LazyColumn(
        modifier = Modifier
            .fillMaxSize()
            .testTag("library_list"),
        contentPadding = PaddingValues(16.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        items(comics) { comic ->
            ComicItemWithAnalytics(
                comic = comic,
                onClick = { onComicClick(comic) },
                analyticsHelper = analyticsHelper,
                scope = scope
            )
        }
    }
}

@Composable
private fun ComicItemWithAnalytics(
    comic: Comic,
    onClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope
) {
    AnalyticsClickable(
        onClick = onClick,
        analyticsHelper = analyticsHelper,
        eventName = "comic_item_clicked",
        eventParameters = mapOf(
            "comic_format" to comic.format,
            "comic_page_count" to comic.pageCount,
            "has_progress" to (comic.currentPage > 0)
        ),
        scope = scope,
        modifier = Modifier.testTag("comic_item")
    ) {
        Card(
            modifier = Modifier.fillMaxWidth(),
            elevation = CardDefaults.cardElevation(defaultElevation = 2.dp)
        ) {
            Column(
                modifier = Modifier.padding(16.dp)
            ) {
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.titleMedium
                )
                Spacer(modifier = Modifier.height(4.dp))
                Text(
                    text = "${comic.currentPage}/${comic.pageCount} страниц",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                
                // Прогресс-бар
                if (comic.currentPage > 0) {
                    Spacer(modifier = Modifier.height(8.dp))
                    LinearProgressIndicator(
                        progress = comic.currentPage.toFloat() / comic.pageCount.toFloat(),
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}

// Модельные классы (заглушки)
data class Comic(
    val id: String,
    val title: String,
    val format: String,
    val pageCount: Int,
    val currentPage: Int = 0
)

data class LibraryUiState(
    val isLoading: Boolean = false,
    val comics: List<Comic> = emptyList(),
    val searchQuery: String = ""
)

@HiltViewModel
class LibraryViewModel @Inject constructor() : androidx.lifecycle.ViewModel() {
    private val _uiState = MutableStateFlow(LibraryUiState())
    val uiState: StateFlow<LibraryUiState> = _uiState.asStateFlow()
    
    fun updateSearchQuery(query: String) {
        _uiState.value = _uiState.value.copy(searchQuery = query)
    }
}