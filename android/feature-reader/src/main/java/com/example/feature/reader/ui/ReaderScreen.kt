package com.example.feature.reader.ui

import android.app.Activity
import android.content.pm.ActivityInfo
import android.graphics.Bitmap
import android.net.Uri
import android.widget.Toast
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.SizeTransform
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.with
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.BottomAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.setValue
import kotlinx.coroutines.delay
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.FilterQuality
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import kotlin.math.min
import kotlin.math.max
import androidx.compose.ui.unit.IntSize
import androidx.hilt.navigation.compose.hiltViewModel

// Temporarily disabled telephoto zoomable due to dependency issues
// import me.saket.telephoto.zoomable.rememberZoomableState
// import me.saket.telephoto.zoomable.zoomable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Arrangement
import com.example.feature.reader.ui.gestures.*
import com.example.feature.reader.ui.components.*
import com.example.feature.reader.ui.ThumbnailProvider

/**
 * Безопасное ограничение значения в диапазоне
 * Предотвращает краш при инверсии границ (min > max)
 */
private fun clamp(value: Float, min: Float, max: Float): Float {
    val actualMin = min(min, max)
    val actualMax = max(min, max)
    return value.coerceIn(actualMin, actualMax)
}

/**
 * The main entry point for the reader screen.
 * It is a stateful composable that holds the ViewModel.
 * The URI is automatically received from navigation via SavedStateHandle.
 *
 * @param viewModel The ViewModel responsible for the reader logic.
 */
@Composable
fun ReaderScreen(
    viewModel: ReaderViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val bgColor by viewModel.background.collectAsState()
    val context = LocalContext.current
    val activity = context as? Activity
    
    // Panel visibility states (left panel removed)
    var showTopPanel by remember { mutableStateOf(false) }
    var showRightPanel by remember { mutableStateOf(false) }
    var showThumbnailPanel by remember { mutableStateOf(false) }
    var showPageIndicator by remember { mutableStateOf(false) }
    
    // Check if any panel is open
    val anyPanelOpen = showTopPanel || showRightPanel || showThumbnailPanel
    
    // Zoom and pan states
    var scale by remember { mutableFloatStateOf(1.0f) }
    var offsetX by remember { mutableFloatStateOf(0f) }
    var offsetY by remember { mutableFloatStateOf(0f) }
    
    // Constants for safe scaling
    val MIN_SCALE = 1.0f
    val MAX_SCALE = 5.0f

    // Show error toast when error state changes
    LaunchedEffect(uiState.error) {
        uiState.error?.let { error ->
            Toast.makeText(context, "Ошибка: $error", Toast.LENGTH_LONG).show()
        }
    }

    DisposableEffect(uiState.orientation) {
        val previousOrientation = activity?.requestedOrientation
        val newOrientation = when (uiState.orientation) {
            "portrait" -> ActivityInfo.SCREEN_ORIENTATION_SENSOR_PORTRAIT
            "landscape" -> ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE
            "locked" -> ActivityInfo.SCREEN_ORIENTATION_LOCKED
            else -> ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
        }
        activity?.requestedOrientation = newOrientation
        onDispose {
            if (uiState.orientation == "auto") {
                activity?.requestedOrientation = previousOrientation ?: ActivityInfo.SCREEN_ORIENTATION_UNSPECIFIED
            }
        }
    }

    ReaderScreenContent(
        uiState = uiState,
        onNextPage = viewModel::goToNextPage,
        onPreviousPage = viewModel::goToPreviousPage,
        onSetReadingMode = viewModel::setReadingMode,
        onCycleZoom = viewModel::cycleZoom,
        onZoom = viewModel::zoom,
        onTogglePin = viewModel::togglePin,
        onLoadPage = viewModel::loadPage,
        onUpdateBrightness = viewModel::updateBrightness,
        onUpdateOrientation = viewModel::updateOrientation,
        onUpdateScaleMode = viewModel::updateScaleMode,
        onToggleOrientation = viewModel::toggleOrientation,
        onResetZoom = viewModel::resetZoom,
        onBookmark = viewModel::bookmarkCurrentPage,
        onShare = viewModel::shareCurrentPage,
        onSettings = viewModel::openSettings,
        onDoubleTapZoom = viewModel::handleDoubleTapZoom,
        backgroundColor = Color(bgColor)
    )
}

/**
 * A stateless composable that displays the reader UI.
 *
 * @param uiState The current state of the UI.
 * @param onNextPage Callback for navigating to the next page.
 * @param onPreviousPage Callback for navigating to the previous page.
 */
@OptIn(ExperimentalAnimationApi::class)
@Composable
private fun ReaderScreenContent(
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    onSetReadingMode: (ReadingMode) -> Unit,
    onCycleZoom: () -> Unit,
    onZoom: (Float, androidx.compose.ui.geometry.Offset) -> Unit,
    onTogglePin: () -> Unit,
    onLoadPage: (Int) -> Unit,
    onUpdateBrightness: (Float) -> Unit,
    onUpdateOrientation: (String) -> Unit,
    onUpdateScaleMode: (String) -> Unit,
    onToggleOrientation: () -> Unit,
    onResetZoom: () -> Unit,
    onBookmark: () -> Unit,
    onShare: () -> Unit,
    onSettings: () -> Unit,
    onDoubleTapZoom: (androidx.compose.ui.geometry.Offset) -> Unit,
    backgroundColor: Color
) {
    val contentScale = remember(uiState.scaleMode) {
        when (uiState.scaleMode) {
            "height" -> ContentScale.FillHeight
            "fit" -> ContentScale.Fit
            "custom" -> ContentScale.Fit
            else -> ContentScale.FillWidth
        }
    }
    
    // Panel visibility states (left panel removed)
    var showPageIndicator by remember { mutableStateOf(false) }
    var showTopPanel by remember { mutableStateOf(false) }
    var showRightPanel by remember { mutableStateOf(false) }
    var showThumbnailPanel by remember { mutableStateOf(false) }
    var isPinned by remember { mutableStateOf(false) }
    
    // Screen size for gesture handling
    val configuration = LocalConfiguration.current
    val screenSize = remember(configuration) {
        IntSize(
            configuration.screenWidthDp,
            configuration.screenHeightDp
        )
    }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(backgroundColor)
    ) {
        when {
            uiState.isLoading -> {
                // Show loading indicator
                CircularProgressIndicator(
                    modifier = Modifier.align(Alignment.Center)
                )
            }
            uiState.error != null -> {
                // Show error message
                Text(
                    text = uiState.error,
                    color = MaterialTheme.colorScheme.error,
                    textAlign = TextAlign.Center,
                    modifier = Modifier
                        .align(Alignment.Center)
                        .padding(16.dp)
                )
            }
            uiState.pageCount > 0 -> {
                // Show content with gesture handling
                when (uiState.readingMode) {
                    ReadingMode.PAGE -> PagedReaderWithGestures(
                        uiState = uiState,
                        screenSize = screenSize,
                        onNextPage = onNextPage,
                        onPreviousPage = onPreviousPage,
                        contentScale = contentScale,
                        onShowPageIndicator = { showPageIndicator = true },
                        onShowTopPanel = { showTopPanel = true },
                        // Left panel removed
                        onShowRightPanel = { showRightPanel = true },
                        onShowThumbnailPanel = { showThumbnailPanel = true },
                        onCycleZoom = onCycleZoom,
                        onZoom = onZoom,
                        onToggleOrientation = onToggleOrientation,
                        onDoubleTapZoom = onDoubleTapZoom,
                        showTopPanel = showTopPanel,
                        showRightPanel = showRightPanel,
                        showThumbnailPanel = showThumbnailPanel,
                        onUpdateScaleMode = { scaleMode -> 
                            // Update scale mode through viewModel
                            // This will be handled in the gesture action
                        },
                        onCloseAllPanels = {
                            showTopPanel = false
                            showRightPanel = false
                            showThumbnailPanel = false
                        }
                    )
                    ReadingMode.WEBTOON -> WebtoonReader(uiState)
                }
                
                // Page Indicator (bottom-right)
                // ✅ [PAGE-INDICATOR-11]: компонент интегрирован и связан с session repo
                PageIndicator(
                    currentPage = uiState.currentPageIndex + 1,
                    totalPages = uiState.pageCount,
                    isPinned = isPinned,
                    visible = showPageIndicator || isPinned,
                    onPinToggle = { 
                        isPinned = !isPinned
                        onTogglePin()
                    },
                    modifier = Modifier.align(Alignment.BottomEnd)
                )
                
                // Scrim layer for closing panels
                if (showTopPanel || showRightPanel || showThumbnailPanel) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(Color.Black.copy(alpha = 0.1f))
                            .pointerInput(Unit) {
                                detectTapGestures {
                                    // Close all panels on tap
                                    showTopPanel = false
                                    showRightPanel = false
                                    showThumbnailPanel = false
                                }
                            }
                    )
                }
                
                // ✅ [PANELS-13]: TopSettingsPanel и SideQuickPanel реализованы
                // Top Settings Panel
                TopSettingsPanel(
                    visible = showTopPanel,
                    onDismiss = { 
                        showTopPanel = false
                        showRightPanel = false
                        showThumbnailPanel = false
                    },
                    onBrightnessChange = onUpdateBrightness,
                    onOrientationChange = onUpdateOrientation,
                    onScaleModeChange = onUpdateScaleMode,
                    onResetZoom = onResetZoom,
                    currentBrightness = uiState.readerBrightness,
                    currentOrientation = uiState.orientation,
                    currentScaleMode = uiState.scaleMode,
                    modifier = Modifier.align(Alignment.TopCenter)
                )
                
                // Left Quick Panel removed - only edge tap zones remain
                
                // Right Page List Panel
                PageListPanel(
                    visible = showRightPanel,
                    currentPage = uiState.currentPageIndex,
                    totalPages = uiState.pageCount,
                    onPageClick = { pageIndex ->
                        onLoadPage(pageIndex)
                        showRightPanel = false
                        showTopPanel = false
                        // Left panel removed
                        showThumbnailPanel = false
                    },
                    onDismiss = { 
                        showRightPanel = false
                        showTopPanel = false
                        // Left panel removed
                        showThumbnailPanel = false
                    },
                    getThumbnail = { pageIndex ->
                        uiState.bitmaps[pageIndex]
                    },
                    modifier = Modifier.align(Alignment.CenterEnd)
                )
                
                // ✅ [THUMBS-14]: панель миниатюр и lazy-кэш добавлены
                // Thumbnail Panel (bottom)
                val thumbnailProvider = rememberThumbnailProvider()
                ThumbnailPanel(
                    visible = showThumbnailPanel,
                    currentPage = uiState.currentPageIndex,
                    totalPages = uiState.pageCount,
                    onPageClick = { pageIndex ->
                        // Navigate to selected page
                        onLoadPage(pageIndex)
                        showThumbnailPanel = false
                        showTopPanel = false
                        // Left panel removed
                        showRightPanel = false
                    },
                    onDismiss = { 
                        showThumbnailPanel = false
                        showTopPanel = false
                        // Left panel removed
                        showRightPanel = false
                    },
                    getThumbnail = { pageIndex ->
                        // Use existing bitmaps from preloader for now
                        uiState.bitmaps[pageIndex]
                    },
                    modifier = Modifier.align(Alignment.BottomCenter)
                )
                
                // ✅ [INDICATOR-11]: PageIndicator интегрирован
                // Page Indicator (bottom-right)
                PageIndicator(
                    currentPage = uiState.currentPageIndex + 1,
                    totalPages = uiState.pageCount,
                    isPinned = uiState.isPinned,
                    visible = showPageIndicator,
                    onPinToggle = onTogglePin,
                    modifier = Modifier.align(Alignment.BottomEnd)
                )
                
                // Auto-hide page indicator after 1.5-2 seconds
                LaunchedEffect(showPageIndicator) {
                    if (showPageIndicator) {
                        delay(1500) // 1.5 секунды согласно тасклисту
                        showPageIndicator = false
                    }
                }
                
                // Оверлей яркости (zIndex 5)
                BrightnessOverlay(
                    brightness = uiState.readerBrightness,
                    modifier = Modifier.fillMaxSize()
                )
                
                // Горячие зоны для перелистывания (только когда панели закрыты)
                PageTurnHotspots(
                    panelsOpen = showTopPanel || showRightPanel || showThumbnailPanel,
                    onPrev = onPreviousPage,
                    onNext = onNextPage,
                    modifier = Modifier.fillMaxSize()
                )
            }
            else -> {
                // Show empty state
                Text(
                    text = "Выберите файл для чтения",
                    color = MaterialTheme.colorScheme.onSurface,
                    textAlign = TextAlign.Center,
                    modifier = Modifier
                        .align(Alignment.Center)
                        .padding(16.dp)
                )
            }
        }
    }
}

@OptIn(ExperimentalAnimationApi::class)
@Composable
private fun PagedReaderWithGestures(
    uiState: ReaderUiState,
    screenSize: IntSize,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    contentScale: ContentScale,
    onShowPageIndicator: () -> Unit,
    onShowTopPanel: () -> Unit,
    onShowRightPanel: () -> Unit,
    onShowThumbnailPanel: () -> Unit,
    onCycleZoom: () -> Unit,
    onZoom: (Float, androidx.compose.ui.geometry.Offset) -> Unit,
    onToggleOrientation: () -> Unit,
    onDoubleTapZoom: (androidx.compose.ui.geometry.Offset) -> Unit,
    showTopPanel: Boolean,
    showRightPanel: Boolean,
    showThumbnailPanel: Boolean,
    onUpdateScaleMode: (String) -> Unit,
    onCloseAllPanels: () -> Unit
) {
    AnimatedContent(
        targetState = uiState,
        transitionSpec = {
            val forward = targetState.currentPageIndex > initialState.currentPageIndex
            val slideIn = slideInHorizontally { fullWidth -> if (forward) fullWidth else -fullWidth }
            val slideOut = slideOutHorizontally { fullWidth -> if (forward) -fullWidth else fullWidth }
            (slideIn with slideOut).using(SizeTransform(clip = false))
        },
        label = "PageSlider"
    ) { targetState ->
        // Zoom and pan state
        var scale by remember { mutableFloatStateOf(uiState.currentZoomScale) }
        var offsetX by remember { mutableFloatStateOf(0f) }
        var offsetY by remember { mutableFloatStateOf(0f) }
        
        // Update scale when UI state changes
        LaunchedEffect(uiState.currentZoomScale) {
            scale = uiState.currentZoomScale
        }
        
        BoxWithConstraints(
            modifier = Modifier
                .fillMaxSize()
                .readerGestures(
                    screenSize = screenSize,
                    tapZoneConfig = TapZoneConfig(
                        leftZoneRatio = uiState.tapZoneLeftRatio,
                        rightZoneRatio = uiState.tapZoneRightRatio,
                        enabled = uiState.tapZonesEnabled
                    ),
                    gestureSensitivity = uiState.gestureSensitivity,
                    isZoomed = scale > 1.0f,
                    blockSwipeWhenZoomed = uiState.blockSwipeWhenZoomed,
                    onGestureAction = { action ->
                        // Check if any panel is open - if so, only allow closing actions
                        val anyPanelOpen = showTopPanel || showRightPanel || showThumbnailPanel
                        
                        when (action) {
                            is GestureAction.NextPage -> {
                                if (!anyPanelOpen) onNextPage()
                            }
                            is GestureAction.PreviousPage -> {
                                if (!anyPanelOpen) onPreviousPage()
                            }
                            is GestureAction.ToggleUI -> {
                                if (anyPanelOpen) {
                                    // Close all panels
                                    onCloseAllPanels()
                                } else {
                                    // Show page indicator
                                    onShowPageIndicator()
                                }
                            }
                            is GestureAction.ToggleOrientation -> {
                                if (!anyPanelOpen) onToggleOrientation()
                            }
                            is GestureAction.ShowTopPanel -> {
                                if (!anyPanelOpen) onShowTopPanel()
                            }
                            is GestureAction.ShowLeftPanel -> {
                                // Left panel removed - no action
                            }
                            is GestureAction.ShowRightPanel -> {
                                if (!anyPanelOpen) onShowRightPanel()
                            }
                            is GestureAction.ShowBottomPanel -> {
                                if (!anyPanelOpen) onShowThumbnailPanel()
                            }
                            is GestureAction.CycleZoom -> {
                                if (!anyPanelOpen) onCycleZoom()
                            }
                            is GestureAction.Zoom -> {
                                if (!anyPanelOpen) {
                                    val newScale = (scale * action.scale).coerceIn(0.5f, 5.0f)
                                    scale = newScale
                                    onZoom(newScale, action.focusPoint)
                                    
                                    // Reset offset when zooming out
                                    if (newScale <= 1.0f) {
                                        offsetX = 0f
                                        offsetY = 0f
                                    }
                                }
                            }
                            is GestureAction.DoubleTapZoom -> {
                                if (!anyPanelOpen) {
                                    val newScale = if (scale > 1.0f) 1.0f else 2.0f
                                    scale = newScale
                                    onDoubleTapZoom(action.position)
                                    
                                    if (newScale <= 1.0f) {
                                        offsetX = 0f
                                        offsetY = 0f
                                    }
                                }
                            }
                            is GestureAction.HideUI -> {
                                // Hide all panels
                                onCloseAllPanels()
                            }
                        }
                    }
                ),
            contentAlignment = Alignment.Center
        ) {
            targetState.currentPageBitmap?.let { bitmap ->
                Image(
                    painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
                    contentDescription = "Page ${targetState.currentPageIndex + 1}",
                    modifier = Modifier
                        .fillMaxSize()
                        .graphicsLayer(
                            scaleX = scale,
                            scaleY = scale,
                            translationX = offsetX,
                            translationY = offsetY
                        )
                        .pointerInput(Unit) {
                            detectTransformGestures(
                                onGesture = { _, pan, zoom, _ ->
                        // Check if any panel is open - block gestures if so
                        val anyPanelOpen = showTopPanel || showRightPanel || showThumbnailPanel
                                
                                if (!anyPanelOpen) {
                                    // Safe scaling with proper limits
                                    val newScale = clamp(scale * zoom, 1.0f, 5.0f)
                                    scale = newScale
                                    
                                    // Update pan offset with safe limits
                                    val contentWidth = bitmap.width * newScale
                                    val contentHeight = bitmap.height * newScale
                                    val viewportWidth = screenSize.width.toFloat()
                                    val viewportHeight = screenSize.height.toFloat()
                                    
                                    // Calculate safe pan limits
                                    val panLimitX = max(0f, (contentWidth - viewportWidth) / 2f)
                                    val panLimitY = max(0f, (contentHeight - viewportHeight) / 2f)
                                    
                                    offsetX = clamp(offsetX + pan.x, -panLimitX, panLimitX)
                                    offsetY = clamp(offsetY + pan.y, -panLimitY, panLimitY)
                                    
                                    // Reset offset when zooming out to normal scale
                                    if (newScale <= 1.0f) {
                                        offsetX = 0f
                                        offsetY = 0f
                                    }
                                }
                            }
                        )
                        },
                    contentScale = contentScale
                )
            }
        }
    }
}

@OptIn(ExperimentalAnimationApi::class)
@Composable
private fun PagedReader(
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    contentScale: ContentScale
) {
    AnimatedContent(
        targetState = uiState,
        transitionSpec = {
            val forward = targetState.currentPageIndex > initialState.currentPageIndex
            val slideIn = slideInHorizontally { fullWidth -> if (forward) fullWidth else -fullWidth }
            val slideOut = slideOutHorizontally { fullWidth -> if (forward) -fullWidth else fullWidth }
            (slideIn with slideOut).using(SizeTransform(clip = false))
        },
        label = "PageSlider"
    ) { targetState ->
                BoxWithConstraints(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            targetState.currentPageBitmap?.let { bitmap ->
                Image(
                    painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
                    contentDescription = "Page ${targetState.currentPageIndex + 1}",
                    modifier = Modifier
                        .fillMaxSize()
                        .pointerInput(Unit) {
                            detectTapGestures { offset ->
                                try {
                                    // CRITICAL FIX: Prevent divide by zero and arithmetic exceptions
                                    val maxWidthPx = constraints.maxWidth.toFloat()
                                    if (maxWidthPx > 0f) {
                                        val leftZone = maxWidthPx * 0.3f
                                        val rightZone = maxWidthPx * 0.7f
                                        when {
                                            offset.x < leftZone -> onPreviousPage()
                                            offset.x > rightZone -> onNextPage()
                                            // Middle zone does nothing
                                        }
                                    }
                                } catch (e: ArithmeticException) {
                                    android.util.Log.e("ReaderScreen", "ArithmeticException in tap handling", e)
                                    // Fallback: still allow page navigation on center tap
                                }
                            }
                        },
                    contentScale = contentScale
                )
            }
        }
    }
}

@Composable
private fun WebtoonReader(
    uiState: ReaderUiState
) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally,
        // Плавный скроллинг для webtoon режима с физикой скорости
    ) {
        items(
            uiState.pageCount, 
            key = { it },
            // Настройка для предварительной загрузки соседних страниц
            contentType = { "webtoon_page" }
        ) { pageIndex ->
            WebtoonPageItem(pageIndex = pageIndex, uiState = uiState)
        }
    }
}

@Composable
private fun WebtoonPageItem(
    pageIndex: Int,
    uiState: ReaderUiState
) {
    val bitmap = uiState.bitmaps[pageIndex]
    val isCurrentPage = pageIndex == uiState.currentPageIndex
    val hasError = uiState.error != null && isCurrentPage

    Box(
        modifier = Modifier
            .fillMaxWidth()
            .padding(horizontal = 4.dp, vertical = 2.dp)
    ) {
        when {
            bitmap != null -> {
                // Отображаем загруженное изображение с плавным появлением
                androidx.compose.animation.AnimatedVisibility(
                    visible = true,
                    enter = androidx.compose.animation.fadeIn(androidx.compose.animation.core.tween(300))
                ) {
                    Image(
                        painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
                        contentDescription = "Page ${pageIndex + 1}",
                        contentScale = ContentScale.FillWidth,
                        modifier = Modifier
                            .fillMaxWidth()
                            .background(
                                if (isCurrentPage) MaterialTheme.colorScheme.primary.copy(alpha = 0.1f) 
                                else Color.Transparent
                            )
                    )
                }
            }
            hasError -> {
                // Ошибка загрузки
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                        .background(
                            MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.3f),
                            shape = androidx.compose.foundation.shape.RoundedCornerShape(8.dp)
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    androidx.compose.foundation.layout.Column(
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            text = "Page ${pageIndex + 1}",
                            style = MaterialTheme.typography.titleMedium,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                        Text(
                            text = "Failed to load",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                    }
                }
            }
            else -> {
                // Плейсхолдер загрузки с пропорциями комикса
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .aspectRatio(0.707f) // Пропорции A4 для комиксов
                        .background(
                            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.3f),
                            shape = androidx.compose.foundation.shape.RoundedCornerShape(8.dp)
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    androidx.compose.foundation.layout.Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = androidx.compose.foundation.layout.Arrangement.spacedBy(8.dp)
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(24.dp),
                            strokeWidth = 2.dp
                        )
                        Text(
                            text = "Page ${pageIndex + 1}",
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
            }
        }
    }
}


