package com.example.feature.reader.ui

import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.SizeTransform
import androidx.compose.animation.togetherWith
import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.animation.core.tween
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.PagerState
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.runtime.snapshotFlow
import kotlinx.coroutines.flow.distinctUntilChanged
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons as MaterialIcons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Fullscreen
import androidx.compose.material.icons.filled.FullscreenExit
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material3.Card
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.*
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.flow.collectLatest
import android.content.Context
import android.util.DisplayMetrics
import android.view.WindowManager
import androidx.compose.ui.platform.LocalView
import androidx.compose.ui.unit.IntSize
import androidx.compose.material3.BottomAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.Surface
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.tooling.preview.Preview
import com.example.core.reader.utils.BitmapUtils
import kotlin.math.*
import androidx.compose.ui.zIndex
import android.app.Activity
import android.content.pm.ActivityInfo
import android.graphics.Bitmap
import androidx.compose.ui.graphics.asImageBitmap
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import com.example.core.ui.theme.MrComicTheme
import com.example.feature.reader.ui.ReaderUiState
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.FloatingActionButton
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.PaddingValues
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.core.ui.theme.ReaderSystemBars

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
@OptIn(ExperimentalMaterial3Api::class, ExperimentalFoundationApi::class)
@Composable
fun ModernReaderScreen(
    comicTitle: String = "Sample Comic",
    onBackClick: () -> Unit = { },
    onSettingsClick: () -> Unit = { },
    modifier: Modifier = Modifier,
    viewModel: ReaderViewModel = hiltViewModel()
) {
    // Get screen dimensions for optimal image loading
    val context = LocalContext.current
    val localView = LocalView.current
    val windowManager = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    val displayMetrics = DisplayMetrics().also { windowManager.defaultDisplay.getMetrics(it) }
    val screenWidth = displayMetrics.widthPixels
    val screenHeight = displayMetrics.heightPixels
    val coroutineScope = rememberCoroutineScope()
    var uiState by remember { mutableStateOf(ReaderUiState()) }

    // Reading prefs collected from ViewModel
    val readerBrightness by viewModel.readerBrightness.collectAsStateWithLifecycle(1.0f)
    val pageTurnSoundEnabled by viewModel.pageTurnSoundEnabled.collectAsStateWithLifecycle(false)
    val readerAnimationSpeed by viewModel.readerAnimationSpeed.collectAsStateWithLifecycle(1.0f)
    
    // Animatable for smooth brightness transitions (float interpolation, not wrap)
    val animatedBrightness = remember { Animatable(1.0f) }
    
    // Animate brightness changes smoothly
    LaunchedEffect(readerBrightness) {
        animatedBrightness.animateTo(
            targetValue = readerBrightness,
            animationSpec = tween(durationMillis = 150)
        )
    }
    
    // Track if we should show the UI controls
    var showControls by remember { mutableStateOf(true) }
    var isBookmarked by remember { mutableStateOf(false) }
    var showToc by remember { mutableStateOf(false) }
    val showUI = true
    
    // Reading settings
    val readingScaleMode by viewModel.readingScaleMode.collectAsStateWithLifecycle("width")
    val readingDoubleTapZoom by viewModel.readingDoubleTapZoom.collectAsStateWithLifecycle(2.0f)
    val readingBlockSwipeWhenZoomed by viewModel.readingBlockSwipeWhenZoomed.collectAsStateWithLifecycle(true)
    val readingOrientation by viewModel.readingOrientation.collectAsStateWithLifecycle("auto")
    
    // Animation speed factor affects UI animation durations
    val uiAnimBase = 200
    val uiAnimDuration = (uiAnimBase / readerAnimationSpeed.coerceIn(0.5f, 2.0f)).roundToInt()

    // Auto-hide controls after a few seconds
    LaunchedEffect(showControls) {
        if (showControls) {
            val delayMs = (3000 / readerAnimationSpeed.coerceIn(0.5f, 2.0f)).roundToInt()
            kotlinx.coroutines.delay(delayMs.toLong())
            showControls = false
        }
    }

    // Handle screen orientation
    val activity = context as? Activity
    DisposableEffect(readingOrientation) {
        val previousOrientation = activity?.requestedOrientation
        val newOrientation = when (readingOrientation) {
            "portrait" -> ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT
            "landscape" -> ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE
            "locked" -> ActivityInfo.SCREEN_ORIENTATION_LOCKED
            else -> ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
        }
        activity?.requestedOrientation = newOrientation
        onDispose {
            if (readingOrientation == "auto") {
                activity?.requestedOrientation = previousOrientation ?: ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
            }
        }
    }

    // Apply reader brightness to Window using animated value for smooth interpolation
    LaunchedEffect(animatedBrightness.value) {
        val lp = activity?.window?.attributes
        if (lp != null) {
            // Use animated value for smooth float interpolation (no cycling/wrapping)
            lp.screenBrightness = animatedBrightness.value.coerceIn(0.0f, 1.0f)
            activity.window.attributes = lp
        }
    }
    
    // Restore original brightness on dispose
    DisposableEffect(Unit) {
        val originalBrightness = activity?.window?.attributes?.screenBrightness ?: -1f
        onDispose {
            val restore = activity?.window?.attributes
            if (restore != null) {
                restore.screenBrightness = originalBrightness
                activity.window.attributes = restore
            }
        }
    }

    // Collect UI state from ViewModel
    LaunchedEffect(Unit) {
        viewModel.uiState.collectLatest { state ->
            uiState = state
        }
    }

    // Track the current page and total pages
    val totalPages = uiState.pageCount
    
    // Pager state - completely independent from uiState to prevent recomposition loops
    val pagerState = rememberPagerState(
        initialPage = 0,
        pageCount = { totalPages }
    )
    
    // Use snapshotFlow to observe SETTLED page changes only
    LaunchedEffect(pagerState) {
        snapshotFlow { pagerState.settledPage }
            .distinctUntilChanged()
            .collect { page ->
                // Only load when page is settled (not during scroll)
                viewModel.loadPage(page)
                
                // Play page turn sound if enabled
                if (pageTurnSoundEnabled) {
                    localView.playSoundEffect(android.view.SoundEffectConstants.CLICK)
                }
            }
    }
    // Edge swipe detection for navigation
    val swipeThreshold = 0.2f // 20% of screen width

    // Применяем оптимизированные системные панели для режима чтения
    ReaderSystemBars(
        darkTheme = true,
        hideSystemBars = !showControls
    )
    
    // Main reader container - gestures handled per page
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.surface)
    ) {
        // Main pager content
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.fillMaxSize(),
            pageSpacing = 8.dp,
            contentPadding = androidx.compose.foundation.layout.PaddingValues(horizontal = 16.dp),
        ) { page ->
            // Only load visible and nearby pages
            val isPageNearby = abs(pagerState.currentPage - page) <= 1
            
            // Get page bitmap with fallback to loading state
            val pageBitmap = if (isPageNearby) {
                uiState.bitmaps[page] ?: uiState.currentPageBitmap.takeIf { page == pagerState.currentPage }
            } else {
                null
            }
            
            val pageError = uiState.error?.takeIf { page == pagerState.currentPage }
            val pageIsLoading = pageBitmap == null && pageError == null

            // Track zoom state per page
            var isZoomed by remember { mutableStateOf(false) }
            
            com.example.feature.reader.ui.components.ZoomableComicPage(
                bitmap = pageBitmap,
                isLoading = pageIsLoading,
                errorMessage = pageError,
                tapZoneConfig = com.example.feature.reader.ui.gestures.TapZoneConfig(
                    leftZoneRatio = uiState.tapZoneLeftRatio,
                    rightZoneRatio = uiState.tapZoneRightRatio,
                    enabled = uiState.tapZonesEnabled
                ),
                gestureSensitivity = uiState.gestureSensitivity,
                blockSwipeWhenZoomed = uiState.blockSwipeWhenZoomed,
                onGestureAction = { action ->
                    when (action) {
                        is com.example.feature.reader.ui.gestures.GestureAction.NextPage -> {
                            if (page < totalPages - 1) {
                                coroutineScope.launch {
                                    pagerState.animateScrollToPage(page + 1)
                                }
                            }
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.PreviousPage -> {
                            if (page > 0) {
                                coroutineScope.launch {
                                    pagerState.animateScrollToPage(page - 1)
                                }
                            }
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.ToggleUI -> {
                            showControls = !showControls
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.ShowTopPanel -> {
                            showControls = true
                            // TODO: Show top panel
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.ShowLeftPanel -> {
                            showControls = true
                            // TODO: Show left panel
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.ShowRightPanel -> {
                            showControls = true
                            // TODO: Show right panel
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.ShowBottomPanel -> {
                            showToc = true
                        }
                        is com.example.feature.reader.ui.gestures.GestureAction.HideUI -> {
                            showControls = false
                        }
                        else -> {
                            // Zoom actions handled by ZoomableComicPage
                        }
                    }
                },
                onZoomStateChanged = { scale ->
                    isZoomed = scale > 1.01f
                    viewModel.trackZoom(scale)
                },
                // Настройки жестов из ViewModel
                zoomSensitivity = uiState.gestureSensitivity,
                panSensitivity = uiState.gestureSensitivity,
                modifier = Modifier.fillMaxSize()
            )
        }
        
        // Top bar with smooth animations and bottom-right hamburger button
        androidx.compose.animation.AnimatedVisibility(
            visible = showControls,
            enter = androidx.compose.animation.slideInVertically(initialOffsetY = { -it }) + androidx.compose.animation.fadeIn(
                animationSpec = tween(durationMillis = uiAnimDuration)
            ),
            exit = androidx.compose.animation.slideOutVertically(targetOffsetY = { -it }) + androidx.compose.animation.fadeOut(
                animationSpec = tween(durationMillis = uiAnimDuration)
            ),
            modifier = Modifier
                .fillMaxWidth()
                .zIndex(2f)
        ) {
            Surface(
                color = MaterialTheme.colorScheme.surface.copy(alpha = 0.85f),
                modifier = Modifier
                    .windowInsetsPadding(WindowInsets.statusBars)
                    .height(48.dp) // Компактная высота
            ) {
                Box(Modifier.fillMaxWidth()) {
                    TopAppBar(
                        title = {
                            Text(
                                text = comicTitle,
                                color = MaterialTheme.colorScheme.onSurface,
                                maxLines = 1,
                                overflow = TextOverflow.Ellipsis,
                                style = MaterialTheme.typography.titleSmall
                            )
                        },
                        navigationIcon = {
                            IconButton(onClick = onBackClick) {
                                Icon(
                                    imageVector = MaterialIcons.AutoMirrored.Filled.ArrowBack,
                                    contentDescription = "Back",
                                    tint = MaterialTheme.colorScheme.onSurface
                                )
                            }
                        },
                        actions = {
                            IconButton(onClick = { isBookmarked = !isBookmarked }) {
                                Icon(
                                    imageVector = if (isBookmarked) MaterialIcons.Default.Bookmark else MaterialIcons.Default.BookmarkBorder,
                                    contentDescription = if (isBookmarked) "Remove bookmark" else "Add bookmark",
                                    tint = if (isBookmarked) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
                                )
                            }
                            IconButton(onClick = onSettingsClick) {
                                Icon(
                                    imageVector = MaterialIcons.Default.Settings,
                                    contentDescription = "Settings",
                                    tint = MaterialTheme.colorScheme.onSurface
                                )
                            }
                            IconButton(onClick = { /* TODO: More options */ }) {
                                Icon(
                                    imageVector = MaterialIcons.Default.MoreVert,
                                    contentDescription = "More options",
                                    tint = MaterialTheme.colorScheme.onSurface
                                )
                            }
                            IconButton(onClick = { showToc = !showToc }) {
                                Icon(
                                    imageVector = MaterialIcons.Default.Menu,
                                    contentDescription = "Меню",
                                    tint = MaterialTheme.colorScheme.onSurface
                                )
                            }
                        },
                        colors = TopAppBarDefaults.topAppBarColors(
                            containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.7f),
                            titleContentColor = MaterialTheme.colorScheme.onSurface,
                            navigationIconContentColor = MaterialTheme.colorScheme.onSurface,
                            actionIconContentColor = MaterialTheme.colorScheme.onSurface
                        )
                    )
                }
            }
        }
        
        // Bottom controls with smooth animations
        androidx.compose.animation.AnimatedVisibility(
            visible = showControls,
            enter = androidx.compose.animation.slideInVertically(initialOffsetY = { it }) + androidx.compose.animation.fadeIn(
                animationSpec = tween(durationMillis = uiAnimDuration)
            ),
            exit = androidx.compose.animation.slideOutVertically(targetOffsetY = { it }) + androidx.compose.animation.fadeOut(
                animationSpec = tween(durationMillis = uiAnimDuration)
            ),
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .fillMaxWidth()
        ) {
            Surface(
                color = MaterialTheme.colorScheme.surface.copy(alpha = 0.9f),
                modifier = Modifier
                    .padding(horizontal = 8.dp, vertical = 4.dp)
                    .clip(RoundedCornerShape(16.dp)) // Закругленные углы
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp)
                ) {
                    // Page progress with smooth transitions
                    AnimatedContent(
                        targetState = pagerState.currentPage,
                        transitionSpec = {
                            if (targetState > initialState) {
                                // Moving right
                                slideInHorizontally { width -> width } + fadeIn() togetherWith
                                    slideOutHorizontally { width -> -width } + fadeOut()
                            } else {
                                // Moving left
                                slideInHorizontally { width -> -width } + fadeIn() togetherWith
                                    slideOutHorizontally { width -> width } + fadeOut()
                            }.using(
                                SizeTransform(clip = false)
                            )
                        },
                        label = "PageIndicatorAnimation"
                    ) { currentPage ->
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text(
                                text = "Page ${currentPage + 1}",
                                color = MaterialTheme.colorScheme.onSurface,
                                style = MaterialTheme.typography.bodySmall
                            )
                            
                            Text(
                                text = "of $totalPages",
                                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f),
                                style = MaterialTheme.typography.bodySmall
                            )
                        }
                    }
                    
                    Spacer(modifier = Modifier.height(4.dp))
                    
                    // Animated progress bar
                    LinearProgressIndicator(
                        progress = { (pagerState.currentPage + 1).toFloat() / totalPages.coerceAtLeast(1).toFloat() },
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(2.dp)
                            .clip(RoundedCornerShape(1.dp)),
                        color = MaterialTheme.colorScheme.primary,
                        trackColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.5f)
                    )
                    
                    Spacer(modifier = Modifier.height(8.dp))
                    
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
        
// Удален дублирующийся PageIndicator (строки 520-531)
        
        // Кнопка гамбургер-меню с оглавлением (правый нижний угол, выше индикатора)
        androidx.compose.animation.AnimatedVisibility(
            visible = showUI && !showControls,
            enter = androidx.compose.animation.fadeIn(animationSpec = tween(durationMillis = uiAnimDuration)),
            exit = androidx.compose.animation.fadeOut(animationSpec = tween(durationMillis = uiAnimDuration)),
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .padding(bottom = 80.dp, end = 8.dp)
                .windowInsetsPadding(WindowInsets.navigationBars)
                .zIndex(1f)
        ) {
            FloatingActionButton(
                onClick = { coroutineScope.launch { showToc = true } },
                containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.8f),
                contentColor = MaterialTheme.colorScheme.onPrimary,
                modifier = Modifier.size(40.dp)
            ) {
                Icon(imageVector = MaterialIcons.Default.Menu, contentDescription = "Оглавление")
            }
        }
        
        // TOC side panel overlay
        androidx.compose.animation.AnimatedVisibility(
            visible = showToc, 
            enter = androidx.compose.animation.slideInHorizontally(
                animationSpec = spring(dampingRatio = Spring.DampingRatioMediumBouncy)
            ) + androidx.compose.animation.fadeIn(),
            exit = androidx.compose.animation.slideOutHorizontally(
                animationSpec = spring(dampingRatio = Spring.DampingRatioMediumBouncy)
            ) + androidx.compose.animation.fadeOut(),
            modifier = Modifier.align(Alignment.TopStart)
        ) {
            Surface(
                color = Color.Transparent,
                modifier = Modifier
                    .width(280.dp)
                    .fillMaxHeight()
                    .zIndex(3f)
                    .background(
                        brush = androidx.compose.ui.graphics.Brush.horizontalGradient(
                            colors = listOf(
                                MaterialTheme.colorScheme.surface.copy(alpha = 0.95f),
                                MaterialTheme.colorScheme.surface.copy(alpha = 0.85f),
                                Color.Transparent
                            )
                        )
                    )
            ) {
                Column(modifier = Modifier.padding(12.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "Оглавление", 
                            color = MaterialTheme.colorScheme.onSurface, 
                            style = MaterialTheme.typography.titleMedium
                        )
                        IconButton(
                            onClick = { showToc = false },
                            modifier = Modifier.size(24.dp)
                        ) {
                            Icon(
                                imageVector = MaterialIcons.Default.Close,
                                contentDescription = "Закрыть",
                                tint = MaterialTheme.colorScheme.onSurface
                            )
                        }
                    }
                    Spacer(Modifier.height(8.dp))

                    androidx.compose.foundation.lazy.LazyColumn(
                        modifier = Modifier.fillMaxHeight(),
                        contentPadding = androidx.compose.foundation.layout.PaddingValues(vertical = 8.dp)
                    ) {
                        items(totalPages) { idx ->
                            Text(
                                text = "Страница ${idx + 1}",
                                color = if (idx == pagerState.currentPage) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface,
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
        Box(
            modifier = Modifier
                .align(Alignment.TopCenter)
                .fillMaxWidth()
                .zIndex(1f)
        ) {
            LinearProgressIndicator(
                progress = { (pagerState.currentPage + 1).toFloat() / totalPages.toFloat() },
                modifier = Modifier
                    .fillMaxWidth()
                    .height(2.dp),
                color = MaterialTheme.colorScheme.primary,
                trackColor = Color.Transparent
            )
        }
        
        // Page indicator with Pin button (bottom-right corner)
        com.example.feature.reader.ui.components.PageIndicator(
            currentPage = pagerState.currentPage + 1,
            totalPages = totalPages,
            isPinned = uiState.isPinned,
            visible = showControls,
            onPinToggle = { viewModel.togglePin() },
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .windowInsetsPadding(WindowInsets.navigationBars)
                .zIndex(2f)
        )
    }
}

/**
 * Individual comic page component
 */
@Composable
fun ComicPage(
    pageNumber: Int,
    onTap: () -> Unit,
    bitmap: Bitmap?,
    isLoading: Boolean,
    errorMessage: String?,
    onZoomStateChanged: (Float) -> Unit,
    readingScaleMode: String = "width",
    readingDoubleTapZoom: Float = 2.0f,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background),
        contentAlignment = Alignment.Center
    ) {
        // Состояние жестов масштабирования/панорамирования
        var scale by remember { mutableStateOf(1f) }
        var offsetX by remember { mutableStateOf(0f) }
        var offsetY by remember { mutableStateOf(0f) }
        // Expanded zoom range per requirements (min 0.5x, max 5x)
        val minScale = 0.5f
        val maxScale = 5f
        val coroutineScope = rememberCoroutineScope()
        
        // Real comic page content
        if (bitmap != null) {
            // Show actual comic page image with improved scaling
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
                        // Добавляем плавную анимацию для лучшего UX
                        clip = true
                    }
                    .pointerInput(Unit) {
                        detectTransformGestures { _, pan, zoom, _ ->
                            val newScale = (scale * zoom).coerceIn(minScale, maxScale)
                            scale = newScale

                            // Улучшенная обработка панорамирования
                            val scaleFactor = if (newScale > 1f) newScale else 1f
                            offsetX = (offsetX + pan.x * scaleFactor).coerceIn(-2000f, 2000f)
                            offsetY = (offsetY + pan.y * scaleFactor).coerceIn(-2000f, 2000f)

                            // Автоматически центрируем при минимальном зуме
                            if (scale <= minScale + 0.01f) {
                                offsetX = 0f
                                offsetY = 0f
                            }
                            onZoomStateChanged(scale)
                        }
                    }
                    .pointerInput(onTap) {
                        detectTapGestures(
                            onDoubleTap = {
                                // Улучшенный двойной тап с плавной анимацией
                                coroutineScope.launch {
                                    if (scale > 1.01f) {
                                        // Плавное уменьшение до 1x
                                        val scaleAnimatable = Animatable(scale)
                                        val offsetXAnimatable = Animatable(offsetX)
                                        val offsetYAnimatable = Animatable(offsetY)
                                        
                                        launch {
                                            scaleAnimatable.animateTo(
                                                1f,
                                                animationSpec = spring(
                                                    dampingRatio = Spring.DampingRatioMediumBouncy,
                                                    stiffness = Spring.StiffnessMediumLow
                                                )
                                            ) {
                                                scale = value
                                            }
                                        }
                                        launch {
                                            offsetXAnimatable.animateTo(0f) { offsetX = value }
                                        }
                                        launch {
                                            offsetYAnimatable.animateTo(0f) { offsetY = value }
                                        }
                                    } else {
                                        // Плавное увеличение до заданного зума
                                        val scaleAnimatable = Animatable(scale)
                                        scaleAnimatable.animateTo(
                                            readingDoubleTapZoom,
                                            animationSpec = spring(
                                                dampingRatio = Spring.DampingRatioMediumBouncy,
                                                stiffness = Spring.StiffnessMediumLow
                                            )
                                        ) {
                                            scale = value
                                        }
                                    }
                                    onZoomStateChanged(scale)
                                }
                            },
                            onTap = { onTap() }
                        )
                    },
                contentScale = when (readingScaleMode) {
                    "width" -> ContentScale.FillWidth
                    "height" -> ContentScale.FillHeight
                    "fit" -> ContentScale.Fit
                    else -> ContentScale.Fit
                }
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
        } else if (errorMessage != null) {
            Surface(
                modifier = Modifier
                    .size(300.dp, 400.dp)
                    .clip(RoundedCornerShape(8.dp)),
                color = MaterialTheme.colorScheme.errorContainer
            ) {
                Box(contentAlignment = Alignment.Center) {
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
                            text = errorMessage,
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                    }
                }
            }
        } else {
            Surface(
                modifier = Modifier
                    .size(300.dp, 400.dp)
                    .clip(RoundedCornerShape(8.dp)),
                color = MaterialTheme.colorScheme.surfaceVariant
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(32.dp),
                            color = MaterialTheme.colorScheme.primary
                        )
                        Text(
                            text = "Page $pageNumber",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Text(
                            text = "Preparing preview...",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
}

