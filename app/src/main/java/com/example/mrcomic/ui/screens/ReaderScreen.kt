package com.example.mrcomic.ui.screens

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceProfiler
import com.example.mrcomic.ui.analytics.*
import com.example.mrcomic.ui.performance.*
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import kotlin.math.abs

/**
 * Production-ready экран чтения комиксов
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderScreen(
    comicId: String,
    onBackClick: () -> Unit,
    viewModel: ReaderViewModel = hiltViewModel(),
    analyticsHelper: AnalyticsHelper = hiltViewModel(),
    performanceProfiler: PerformanceProfiler = hiltViewModel()
) {
    val scope = rememberCoroutineScope()
    val configuration = LocalConfiguration.current
    val isTablet = configuration.screenWidthDp >= 600
    
    // Отслеживание экрана
    TrackScreenView("Reader", analyticsHelper, scope)
    TrackScreenTime("Reader", analyticsHelper, scope)
    
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    
    // Инициализация комикса
    LaunchedEffect(comicId) {
        viewModel.loadComic(comicId)
        
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.ReadingStarted(
                comicId = comicId,
                format = uiState.comic?.format ?: "unknown"
            ),
            scope
        )
    }
    
    // Performance tracking
    PerformanceTracker(
        operationName = "reader_screen_render",
        analyticsHelper = analyticsHelper,
        scope = scope
    ) {
        ErrorBoundary(
            analyticsHelper = analyticsHelper,
            context = "ReaderScreen",
            scope = scope
        ) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(Color.Black)
                    .testTag("reader_screen")
            ) {
                when {
                    uiState.isLoading -> {
                        ReaderLoadingState(analyticsHelper, scope)
                    }
                    uiState.error != null -> {
                        ReaderErrorState(
                            error = uiState.error,
                            onRetry = { viewModel.loadComic(comicId) },
                            onBackClick = onBackClick,
                            analyticsHelper = analyticsHelper,
                            scope = scope
                        )
                    }
                    uiState.comic != null -> {
                        ReaderContent(
                            uiState = uiState,
                            onPageChange = viewModel::goToPage,
                            onBackClick = onBackClick,
                            onSettingsClick = { viewModel.toggleSettings() },
                            isTablet = isTablet,
                            analyticsHelper = analyticsHelper,
                            performanceProfiler = performanceProfiler,
                            scope = scope
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun ReaderContent(
    uiState: ReaderUiState,
    onPageChange: (Int) -> Unit,
    onBackClick: () -> Unit,
    onSettingsClick: () -> Unit,
    isTablet: Boolean,
    analyticsHelper: AnalyticsHelper,
    performanceProfiler: PerformanceProfiler,
    scope: kotlinx.coroutines.CoroutineScope
) {
    val comic = uiState.comic ?: return
    var isUIVisible by remember { mutableStateOf(true) }
    var scale by remember { mutableFloatStateOf(1f) }
    var offsetX by remember { mutableFloatStateOf(0f) }
    var offsetY by remember { mutableFloatStateOf(0f) }
    
    val pagerState = rememberPagerState(
        initialPage = uiState.currentPage,
        pageCount = { comic.pageCount }
    )
    
    // Отслеживание изменения страниц
    LaunchedEffect(pagerState.currentPage) {
        if (pagerState.currentPage != uiState.currentPage) {
            onPageChange(pagerState.currentPage)
            
            analyticsHelper.track(
                com.example.core.analytics.AnalyticsEvent.PageTurned(
                    pageNumber = pagerState.currentPage,
                    direction = if (pagerState.currentPage > uiState.currentPage) "forward" else "backward"
                ),
                scope
            )
        }
    }
    
    // Автоскрытие UI
    LaunchedEffect(isUIVisible) {
        if (isUIVisible) {
            delay(3000) // Скрыть через 3 секунды
            isUIVisible = false
        }
    }
    
    Box(modifier = Modifier.fillMaxSize()) {
        // Основной контент страниц
        HorizontalPager(
            state = pagerState,
            modifier = Modifier
                .fillMaxSize()
                .pointerInput(Unit) {
                    detectTapGestures(
                        onTap = { 
                            isUIVisible = !isUIVisible
                            
                            analyticsHelper.track(
                                com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                    metricName = "reader_ui_toggled",
                                    value = if (isUIVisible) 1.0 else 0.0,
                                    unit = "state"
                                ),
                                scope
                            )
                        },
                        onDoubleTap = { tapOffset ->
                            // Zoom to fit / Reset zoom
                            scale = if (scale > 1f) 1f else 2f
                            if (scale == 1f) {
                                offsetX = 0f
                                offsetY = 0f
                            }
                            
                            analyticsHelper.track(
                                com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                    metricName = "reader_zoom_changed",
                                    value = scale.toDouble(),
                                    unit = "scale"
                                ),
                                scope
                            )
                        }
                    )
                }
                .pointerInput(Unit) {
                    detectTransformGestures { _, pan, zoom, _ ->
                        scale = (scale * zoom).coerceIn(0.5f, 4f)
                        
                        if (scale > 1f) {
                            offsetX += pan.x
                            offsetY += pan.y
                        } else {
                            offsetX = 0f
                            offsetY = 0f
                        }
                    }
                }
        ) { page ->
            ComicPage(
                pageNumber = page,
                comic = comic,
                scale = scale,
                offsetX = offsetX,
                offsetY = offsetY,
                analyticsHelper = analyticsHelper,
                performanceProfiler = performanceProfiler,
                scope = scope
            )
        }
        
        // Top toolbar
        AnimatedVisibility(
            visible = isUIVisible,
            enter = slideInVertically(initialOffsetY = { -it }) + fadeIn(),
            exit = slideOutVertically(targetOffsetY = { -it }) + fadeOut(),
            modifier = Modifier.align(Alignment.TopCenter)
        ) {
            ReaderTopBar(
                comic = comic,
                currentPage = pagerState.currentPage,
                onBackClick = onBackClick,
                onSettingsClick = onSettingsClick,
                analyticsHelper = analyticsHelper,
                scope = scope
            )
        }
        
        // Bottom controls
        AnimatedVisibility(
            visible = isUIVisible,
            enter = slideInVertically(initialOffsetY = { it }) + fadeIn(),
            exit = slideOutVertically(targetOffsetY = { it }) + fadeOut(),
            modifier = Modifier.align(Alignment.BottomCenter)
        ) {
            ReaderBottomControls(
                comic = comic,
                currentPage = pagerState.currentPage,
                onPageSliderChange = { page ->
                    scope.launch {
                        pagerState.animateScrollToPage(page)
                    }
                },
                scale = scale,
                onScaleChange = { newScale -> scale = newScale },
                analyticsHelper = analyticsHelper,
                scope = scope
            )
        }
        
        // Reading progress indicator
        if (!isUIVisible) {
            LinearProgressIndicator(
                progress = { (pagerState.currentPage + 1).toFloat() / comic.pageCount },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(2.dp)
                    .align(Alignment.TopCenter),
                color = MaterialTheme.colorScheme.primary.copy(alpha = 0.7f),
                trackColor = Color.Transparent
            )
        }
        
        // Settings panel
        if (uiState.showSettings) {
            ReaderSettingsPanel(
                settings = uiState.settings,
                onSettingsChange = { /* TODO */ },
                onDismiss = { /* TODO */ },
                analyticsHelper = analyticsHelper,
                scope = scope
            )
        }
    }
}

@Composable
private fun ComicPage(
    pageNumber: Int,
    comic: Comic,
    scale: Float,
    offsetX: Float,
    offsetY: Float,
    analyticsHelper: AnalyticsHelper,
    performanceProfiler: PerformanceProfiler,
    scope: kotlinx.coroutines.CoroutineScope
) {
    val measurementId = remember(pageNumber) {
        performanceProfiler.startMeasurement("page_render_$pageNumber")
    }
    
    Box(
        modifier = Modifier
            .fillMaxSize()
            .testTag("comic_page_$pageNumber"),
        contentAlignment = Alignment.Center
    ) {
        // Page content with zoom and pan
        Box(
            modifier = Modifier
                .fillMaxSize()
                .graphicsLayer(
                    scaleX = scale,
                    scaleY = scale,
                    translationX = offsetX,
                    translationY = offsetY
                )
        ) {
            // TODO: Replace with actual page loading from ImageOptimizer
            CachedAsyncImage(
                imageUrl = "page_${pageNumber}.jpg", // Placeholder
                contentDescription = "Страница ${pageNumber + 1}",
                modifier = Modifier.fillMaxSize(),
                placeholder = {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(MaterialTheme.colorScheme.surfaceVariant),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            CircularProgressIndicator(
                                modifier = Modifier.size(48.dp),
                                color = MaterialTheme.colorScheme.primary
                            )
                            Spacer(modifier = Modifier.height(16.dp))
                            Text(
                                text = "Загрузка страницы ${pageNumber + 1}",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                },
                error = {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(MaterialTheme.colorScheme.errorContainer),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally
                        ) {
                            Icon(
                                Icons.Default.Error,
                                contentDescription = null,
                                modifier = Modifier.size(48.dp),
                                tint = MaterialTheme.colorScheme.error
                            )
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Ошибка загрузки",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onErrorContainer
                            )
                        }
                    }
                }
            )
        }
        
        // Page number indicator
        Surface(
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .padding(16.dp),
            shape = RoundedCornerShape(16.dp),
            color = Color.Black.copy(alpha = 0.6f)
        ) {
            Text(
                text = "${pageNumber + 1}/${comic.pageCount}",
                style = MaterialTheme.typography.bodySmall,
                color = Color.White,
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp)
            )
        }
    }
    
    LaunchedEffect(pageNumber) {
        performanceProfiler.finishMeasurement(
            measurementId,
            "page_render",
            scope,
            mapOf(
                "page_number" to pageNumber,
                "comic_id" to comic.id
            )
        )
    }
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
private fun ReaderTopBar(
    comic: Comic,
    currentPage: Int,
    onBackClick: () -> Unit,
    onSettingsClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    TopAppBar(
        title = {
            Column {
                Text(
                    text = comic.title,
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Medium,
                    maxLines = 1,
                    color = Color.White
                )
                Text(
                    text = "Страница ${currentPage + 1} из ${comic.pageCount}",
                    style = MaterialTheme.typography.bodySmall,
                    color = Color.White.copy(alpha = 0.7f)
                )
            }
        },
        navigationIcon = {
            AnalyticsClickable(
                onClick = onBackClick,
                analyticsHelper = analyticsHelper,
                eventName = "reader_back_clicked",
                eventParameters = mapOf(
                    "current_page" to currentPage,
                    "total_pages" to comic.pageCount,
                    "progress" to (currentPage.toFloat() / comic.pageCount)
                ),
                scope = scope
            ) {
                IconButton(onClick = { }) {
                    Icon(
                        Icons.Default.ArrowBack,
                        contentDescription = "Назад",
                        tint = Color.White
                    )
                }
            }
        },
        actions = {
            AnalyticsClickable(
                onClick = onSettingsClick,
                analyticsHelper = analyticsHelper,
                eventName = "reader_settings_opened",
                scope = scope
            ) {
                IconButton(onClick = { }) {
                    Icon(
                        Icons.Default.Settings,
                        contentDescription = "Настройки",
                        tint = Color.White
                    )
                }
            }
        },
        colors = TopAppBarDefaults.topAppBarColors(
            containerColor = Color.Black.copy(alpha = 0.7f)
        )
    )
}

@Composable
private fun ReaderBottomControls(
    comic: Comic,
    currentPage: Int,
    onPageSliderChange: (Int) -> Unit,
    scale: Float,
    onScaleChange: (Float) -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    Surface(
        modifier = Modifier.fillMaxWidth(),
        color = Color.Black.copy(alpha = 0.8f),
        shape = RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            // Page slider
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = "1",
                    style = MaterialTheme.typography.bodySmall,
                    color = Color.White,
                    modifier = Modifier.width(24.dp)
                )
                
                Slider(
                    value = currentPage.toFloat(),
                    onValueChange = { value ->
                        onPageSliderChange(value.toInt())
                        
                        analyticsHelper.track(
                            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                metricName = "page_slider_used",
                                value = value.toDouble(),
                                unit = "page"
                            ),
                            scope
                        )
                    },
                    valueRange = 0f..(comic.pageCount - 1).toFloat(),
                    steps = comic.pageCount - 2,
                    modifier = Modifier.weight(1f),
                    colors = SliderDefaults.colors(
                        thumbColor = MaterialTheme.colorScheme.primary,
                        activeTrackColor = MaterialTheme.colorScheme.primary,
                        inactiveTrackColor = Color.White.copy(alpha = 0.3f)
                    )
                )
                
                Text(
                    text = comic.pageCount.toString(),
                    style = MaterialTheme.typography.bodySmall,
                    color = Color.White,
                    modifier = Modifier.width(24.dp)
                )
            }
            
            Spacer(modifier = Modifier.height(12.dp))
            
            // Zoom controls
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                // Zoom out
                AnalyticsClickable(
                    onClick = { 
                        onScaleChange((scale - 0.25f).coerceAtLeast(0.5f))
                    },
                    analyticsHelper = analyticsHelper,
                    eventName = "zoom_out_clicked",
                    eventParameters = mapOf("current_scale" to scale),
                    scope = scope
                ) {
                    IconButton(onClick = { }) {
                        Icon(
                            Icons.Default.ZoomOut,
                            contentDescription = "Уменьшить",
                            tint = Color.White
                        )
                    }
                }
                
                // Scale indicator
                Text(
                    text = "${(scale * 100).toInt()}%",
                    style = MaterialTheme.typography.bodyMedium,
                    color = Color.White,
                    fontWeight = FontWeight.Medium
                )
                
                // Zoom in
                AnalyticsClickable(
                    onClick = { 
                        onScaleChange((scale + 0.25f).coerceAtMost(4f))
                    },
                    analyticsHelper = analyticsHelper,
                    eventName = "zoom_in_clicked",
                    eventParameters = mapOf("current_scale" to scale),
                    scope = scope
                ) {
                    IconButton(onClick = { }) {
                        Icon(
                            Icons.Default.ZoomIn,
                            contentDescription = "Увеличить",
                            tint = Color.White
                        )
                    }
                }
                
                Spacer(modifier = Modifier.width(16.dp))
                
                // Fit to width
                AnalyticsClickable(
                    onClick = { onScaleChange(1f) },
                    analyticsHelper = analyticsHelper,
                    eventName = "fit_to_width_clicked",
                    scope = scope
                ) {
                    IconButton(onClick = { }) {
                        Icon(
                            Icons.Default.FitScreen,
                            contentDescription = "По ширине",
                            tint = Color.White
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun ReaderSettingsPanel(
    settings: ReaderSettings,
    onSettingsChange: (ReaderSettings) -> Unit,
    onDismiss: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    // TODO: Implement settings panel
    Surface(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.5f)),
        color = Color.Transparent
    ) {
        Box(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            Card(
                modifier = Modifier
                    .fillMaxWidth(0.8f)
                    .fillMaxHeight(0.6f),
                shape = RoundedCornerShape(16.dp)
            ) {
                Column(
                    modifier = Modifier.padding(24.dp)
                ) {
                    Text(
                        text = "Настройки чтения",
                        style = MaterialTheme.typography.headlineSmall,
                        fontWeight = FontWeight.Bold
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // TODO: Add settings controls
                    Text("Настройки будут добавлены")
                    
                    Spacer(modifier = Modifier.weight(1f))
                    
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.End
                    ) {
                        TextButton(onClick = onDismiss) {
                            Text("Закрыть")
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ReaderLoadingState(
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    LaunchedEffect(Unit) {
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                metricName = "reader_loading_shown",
                value = 1.0,
                unit = "state"
            ),
            scope
        )
    }
    
    Box(
        modifier = Modifier
            .fillMaxSize()
            .testTag("reader_loading_state"),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            CircularProgressIndicator(
                modifier = Modifier.size(64.dp),
                color = MaterialTheme.colorScheme.primary,
                strokeWidth = 6.dp
            )
            Spacer(modifier = Modifier.height(24.dp))
            Text(
                text = "Загрузка комикса...",
                style = MaterialTheme.typography.titleMedium,
                color = Color.White
            )
        }
    }
}

@Composable
private fun ReaderErrorState(
    error: String,
    onRetry: () -> Unit,
    onBackClick: () -> Unit,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    LaunchedEffect(error) {
        analyticsHelper.track(
            com.example.core.analytics.AnalyticsEvent.Error(
                errorType = "reader_error",
                errorMessage = error
            ),
            scope
        )
    }
    
    Box(
        modifier = Modifier
            .fillMaxSize()
            .padding(32.dp),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                Icons.Default.Error,
                contentDescription = null,
                modifier = Modifier.size(64.dp),
                tint = MaterialTheme.colorScheme.error
            )
            
            Spacer(modifier = Modifier.height(16.dp))
            
            Text(
                text = "Ошибка загрузки комикса",
                style = MaterialTheme.typography.headlineSmall,
                fontWeight = FontWeight.Medium,
                color = Color.White
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = error,
                style = MaterialTheme.typography.bodyMedium,
                color = Color.White.copy(alpha = 0.7f),
                textAlign = androidx.compose.ui.text.style.TextAlign.Center
            )
            
            Spacer(modifier = Modifier.height(24.dp))
            
            Row {
                AnalyticsButton(
                    onClick = onBackClick,
                    analyticsHelper = analyticsHelper,
                    eventName = "reader_error_back_clicked",
                    eventParameters = mapOf("error_message" to error),
                    scope = scope
                ) {
                    Icon(Icons.Default.ArrowBack, contentDescription = null)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("Назад")
                }
                
                Spacer(modifier = Modifier.width(16.dp))
                
                AnalyticsButton(
                    onClick = onRetry,
                    analyticsHelper = analyticsHelper,
                    eventName = "reader_error_retry_clicked",
                    eventParameters = mapOf("error_message" to error),
                    scope = scope
                ) {
                    Icon(Icons.Default.Refresh, contentDescription = null)
                    Spacer(modifier = Modifier.width(8.dp))
                    Text("Повторить")
                }
            }
        }
    }
}

// Data classes
data class ReaderSettings(
    val brightness: Float = 0.5f,
    val readingMode: ReadingMode = ReadingMode.FIT_WIDTH,
    val pageTransition: PageTransition = PageTransition.SLIDE,
    val keepScreenOn: Boolean = true
)

enum class ReadingMode {
    FIT_WIDTH, FIT_HEIGHT, ORIGINAL_SIZE
}

enum class PageTransition {
    SLIDE, FADE, NONE
}

data class ReaderUiState(
    val isLoading: Boolean = false,
    val comic: Comic? = null,
    val currentPage: Int = 0,
    val showSettings: Boolean = false,
    val settings: ReaderSettings = ReaderSettings(),
    val error: String? = null
)