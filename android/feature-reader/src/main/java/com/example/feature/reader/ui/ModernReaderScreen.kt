package com.example.feature.reader.ui

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.foundation.background
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.BottomAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import androidx.hilt.navigation.compose.hiltViewModel
import android.graphics.Bitmap
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import com.example.core.ui.theme.MrComicTheme
import com.example.feature.reader.ui.ReaderUiState
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.FloatingActionButton
import androidx.compose.ui.unit.Dp
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.PaddingValues
import androidx.lifecycle.compose.collectAsStateWithLifecycle

/**
 * Modern comic reader screen with Material Design 3
 * 
 * Features:
 * - Fullscreen immersive reading experience
 * - Horizontal pager for page navigation
 * - Auto-hiding UI controls
 * - Reading progress indicator
 * - Bookmark functionality
 * - Settings and navigation
 * - Touch zones for navigation
 * - Smooth animations
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ModernReaderScreen(
    comicTitle: String = "Sample Comic",
    onBackClick: () -> Unit = { },
    onSettingsClick: () -> Unit = { },
    modifier: Modifier = Modifier,
    viewModel: ReaderViewModel = hiltViewModel()
) {
    val coroutineScope = rememberCoroutineScope()
    var uiState by remember { mutableStateOf(ReaderUiState()) }

    // Подключаем настройки чтения
    val readingScaleMode by viewModel.readingScaleMode.collectAsStateWithLifecycle("width")
    val readingDoubleTapZoom by viewModel.readingDoubleTapZoom.collectAsStateWithLifecycle(2.0f)
    val readingBlockSwipeWhenZoomed by viewModel.readingBlockSwipeWhenZoomed.collectAsStateWithLifecycle(true)
    val readingOrientation by viewModel.readingOrientation.collectAsStateWithLifecycle("auto")

    LaunchedEffect(Unit) {
        viewModel.uiState.collect { state ->
            uiState = state
        }
    }
    
    // Use real data from ViewModel
    val totalPages = uiState.pageCount
    val pagerState = rememberPagerState(
        initialPage = uiState.currentPageIndex,
        pageCount = { totalPages }
    )
    
    // UI state
    var showUI by remember { mutableStateOf(true) }
    var isBookmarked by remember { mutableStateOf(false) }
    var showToc by remember { mutableStateOf(false) }
    
    // Auto-hide UI after 3 seconds
    LaunchedEffect(showUI) {
        if (showUI) {
            delay(3000)
            showUI = false
        }
    }
    
    // Load page when pager state changes
    LaunchedEffect(pagerState.currentPage) {
        viewModel.loadPage(pagerState.currentPage)
    }
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        // Main content - Comic pages
        var pagerUserInputEnabled by remember { mutableStateOf(true) }
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.fillMaxSize(),
            userScrollEnabled = pagerUserInputEnabled
        ) { page ->
            ComicPage(
                pageNumber = page + 1,
                onTap = { showUI = !showUI },
                bitmap = uiState.currentPageBitmap,
                isLoading = uiState.isLoading,
                onZoomStateChanged = { scale ->
                    // Применяем настройку блокировки свайпа при зуме
                    pagerUserInputEnabled = if (readingBlockSwipeWhenZoomed) {
                        scale <= 1.01f
                    } else {
                        true
                    }
                },
                readingScaleMode = readingScaleMode,
                readingDoubleTapZoom = readingDoubleTapZoom
            )
        }
        
        // Top bar
        AnimatedVisibility(
            visible = showUI,
            enter = slideInVertically(initialOffsetY = { -it }) + fadeIn(),
            exit = slideOutVertically(targetOffsetY = { -it }) + fadeOut(),
            modifier = Modifier
                .fillMaxWidth()
                .zIndex(2f)
        ) {
            Surface(
                color = Color.Black.copy(alpha = 0.5f),
                modifier = Modifier.windowInsetsPadding(WindowInsets.statusBars)
            ) {
                TopAppBar(
                    title = {
                        Text(
                            text = comicTitle,
                            color = Color.White,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBackClick) {
                            Icon(
                                imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                                contentDescription = "Back",
                                tint = Color.White
                            )
                        }
                    },
                    actions = {
                        IconButton(
                            onClick = { isBookmarked = !isBookmarked }
                        ) {
                            Icon(
                                imageVector = if (isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                                contentDescription = if (isBookmarked) "Remove bookmark" else "Add bookmark",
                                tint = if (isBookmarked) MaterialTheme.colorScheme.primary else Color.White
                            )
                        }
                        
                        IconButton(onClick = onSettingsClick) {
                            Icon(
                                imageVector = Icons.Default.Settings,
                                contentDescription = "Settings",
                                tint = Color.White
                            )
                        }
                        
                        IconButton(onClick = { /* TODO: More options */ }) {
                            Icon(
                                imageVector = Icons.Default.MoreVert,
                                contentDescription = "More options",
                                tint = Color.White
                            )
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = Color.Transparent
                    )
                )
            }
        }
        
        // Bottom controls
        AnimatedVisibility(
            visible = showUI,
            enter = slideInVertically(initialOffsetY = { it }) + fadeIn(),
            exit = slideOutVertically(targetOffsetY = { it }) + fadeOut(),
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .fillMaxWidth()
                .zIndex(2f)
        ) {
            Surface(
                color = Color.Black.copy(alpha = 0.5f)
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    // Page progress
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "Page ${pagerState.currentPage + 1}",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        
                        Text(
                            text = "of $totalPages",
                            color = Color.White.copy(alpha = 0.7f),
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                    
                    Spacer(modifier = Modifier.height(8.dp))
                    
                    // Progress bar
                    LinearProgressIndicator(
                        progress = { (pagerState.currentPage + 1).toFloat() / totalPages.toFloat() },
                        modifier = Modifier.fillMaxWidth(),
                        color = MaterialTheme.colorScheme.primary,
                        trackColor = Color.White.copy(alpha = 0.3f)
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // Page slider
                    Slider(
                        value = (pagerState.currentPage + 1).toFloat(),
                        onValueChange = { newPage ->
                            coroutineScope.launch {
                                pagerState.animateScrollToPage((newPage.toInt() - 1).coerceIn(0, totalPages - 1))
                            }
                        },
                        valueRange = 1f..totalPages.toFloat(),
                        steps = totalPages - 2,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
        
        // Кнопка гамбургер-меню с оглавлением (правый нижний угол)
        AnimatedVisibility(
            visible = showUI,
            enter = fadeIn(),
            exit = fadeOut(),
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .padding(16.dp)
                .windowInsetsPadding(WindowInsets.navigationBars)
                .zIndex(1f)
        ) {
            FloatingActionButton(
                onClick = { coroutineScope.launch { showToc = true } },
                containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.7f),
                contentColor = MaterialTheme.colorScheme.onPrimary
            ) {
                Icon(imageVector = Icons.Default.Menu, contentDescription = "Оглавление")
            }
        }

        // Узкая левая панель оглавления (не перекрывает комикс)
        AnimatedVisibility(visible = showToc, enter = slideInHorizontally(), exit = slideOutHorizontally(), modifier = Modifier.align(Alignment.TopStart)) {
            Surface(
                color = Color.Black.copy(alpha = 0.5f),
                modifier = Modifier
                    .width(240.dp)
                    .fillMaxHeight()
                    .zIndex(3f)
            ) {
                Column(modifier = Modifier.padding(12.dp)) {
                    // Заголовок с кнопкой закрытия
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(text = "Оглавление", color = Color.White, style = MaterialTheme.typography.titleMedium)
                        IconButton(
                            onClick = { showToc = false },
                            modifier = Modifier.size(24.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.Close,
                                contentDescription = "Закрыть",
                                tint = Color.White
                            )
                        }
                    }
                    Spacer(Modifier.height(8.dp))

                    // Список глав
                    LazyColumn(
                        modifier = Modifier.fillMaxHeight(),
                        contentPadding = androidx.compose.foundation.layout.PaddingValues(vertical = 8.dp)
                    ) {
                        items(totalPages) { idx ->
                            Text(
                                text = "Страница ${idx + 1}",
                                color = if (idx == pagerState.currentPage) MaterialTheme.colorScheme.primary else Color.White,
                                style = MaterialTheme.typography.bodyMedium,
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .padding(vertical = 8.dp, horizontal = 4.dp)
                                    .clip(RoundedCornerShape(4.dp))
                                    .background(
                                        if (idx == pagerState.currentPage) {
                                            MaterialTheme.colorScheme.primary.copy(alpha = 0.2f)
                                        } else {
                                            Color.Transparent
                                        }
                                    )
                                    .padding(vertical = 8.dp, horizontal = 8.dp)
                                    .clickable {
                                        showToc = false
                                        coroutineScope.launch { pagerState.animateScrollToPage(idx) }
                                    }
                            )
                        }
                    }
                }
            }
        }
        
        // Reading progress indicator (always visible)
        LinearProgressIndicator(
            progress = { (pagerState.currentPage + 1).toFloat() / totalPages.toFloat() },
            modifier = Modifier
                .fillMaxWidth()
                .height(2.dp)
                .align(Alignment.TopCenter)
                .zIndex(1f),
            color = MaterialTheme.colorScheme.primary,
            trackColor = Color.Transparent
        )
    }
}

/**
 * Individual comic page component
 */
@Composable
private fun ComicPage(
    pageNumber: Int,
    onTap: () -> Unit,
    bitmap: Bitmap?,
    isLoading: Boolean,
    onZoomStateChanged: (Float) -> Unit,
    readingScaleMode: String = "width",
    readingDoubleTapZoom: Float = 2.0f,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black),
        contentAlignment = Alignment.Center
    ) {
        // Состояние жестов масштабирования/панорамирования
        var scale by remember { mutableStateOf(1f) }
        var offsetX by remember { mutableStateOf(0f) }
        var offsetY by remember { mutableStateOf(0f) }
        val minScale = 1f
        val maxScale = 4f
        
        // Real comic page content
        if (bitmap != null) {
            // Show actual comic page image (жесты на контейнере для лучшей чувствительности)
            androidx.compose.foundation.Image(
                bitmap = bitmap.asImageBitmap(),
                contentDescription = "Comic page $pageNumber",
                modifier = Modifier
                    .fillMaxSize()
                    .clip(RoundedCornerShape(8.dp))
                    .graphicsLayer {
                        translationX = offsetX
                        translationY = offsetY
                        scaleX = scale
                        scaleY = scale
                    }
                    .pointerInput(Unit) {
                        detectTransformGestures { _, pan, zoom, _ ->
                            val newScale = (scale * zoom).coerceIn(minScale, maxScale)
                            // Корректируем смещения относительно текущего зума
                            // val scaleChange = newScale / scale // Not used
                            offsetX = (offsetX + pan.x * scale).coerceIn(-2000f, 2000f)
                            offsetY = (offsetY + pan.y * scale).coerceIn(-2000f, 2000f)
                            scale = newScale
                            if (scale == minScale) {
                                offsetX = 0f
                                offsetY = 0f
                            }
                            onZoomStateChanged(scale)
                        }
                    }
                    .pointerInput(onTap) {
                        detectTapGestures(
                            onDoubleTap = {
                                // Двойной тап: переключение масштаб 1x/настроенный зум
                                if (scale > 1f) {
                                    scale = 1f
                                    offsetX = 0f
                                    offsetY = 0f
                                } else {
                                    scale = readingDoubleTapZoom
                                }
                                onZoomStateChanged(scale)
                            },
                            onTap = { onTap() }
                        )
                    },
                contentScale = ContentScale.Fit
            )
        } else if (isLoading) {
            // Show loading indicator
        Surface(
            modifier = Modifier
                .size(300.dp, 400.dp)
                .clip(RoundedCornerShape(8.dp)),
            color = MaterialTheme.colorScheme.surfaceVariant
        ) {
            Box(
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(48.dp),
                        color = MaterialTheme.colorScheme.primary
                    )
                    
                    Text(
                        text = "Page $pageNumber",
                        style = MaterialTheme.typography.headlineMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    
                    Text(
                        text = "Loading comic page...",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    }
                }
            }
        } else {
            // Show error state
            Surface(
                modifier = Modifier
                    .size(300.dp, 400.dp)
                    .clip(RoundedCornerShape(8.dp)),
                color = MaterialTheme.colorScheme.errorContainer
            ) {
                Box(
                    contentAlignment = Alignment.Center
                ) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        Text(
                            text = "Page $pageNumber",
                            style = MaterialTheme.typography.headlineMedium,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                        
                        Text(
                            text = "Failed to load page",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                    }
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ModernReaderScreenPreview() {
    MrComicTheme {
        ModernReaderScreen(
            comicTitle = "Amazing Comic Adventures #1"
        )
    }
}