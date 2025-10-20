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
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.core.tween
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.rememberLazyListState
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
import com.example.core.ui.FullscreenHandler
import com.example.core.ui.rememberSystemUiManager
import androidx.compose.ui.zIndex
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
import com.example.core.reader.cache.BitmapCache

/**
 * Безопасное ограничение значения в диапазоне
 * Предотвращает краш при инверсии границ (min > max)
 */
private fun clamp(value: Float, minValue: Float, maxValue: Float): Float {
    val actualMin = min(minValue, maxValue)
    val actualMax = max(minValue, maxValue)
    return value.coerceIn(actualMin, actualMax)
}

/**
 * The main entry point for the reader screen.
 * It is a stateful composable that holds the ViewModel.
 * The URI is automatically received from navigation via SavedStateHandle.
 *
 * @param viewModel The ViewModel responsible for the reader logic.
 * @param onNavigateBack Callback when back button is pressed
 */
@Composable
fun ReaderScreen(
    viewModel: ReaderViewModel = hiltViewModel(),
    onNavigateBack: () -> Unit = {}
) {
    val uiState by viewModel.uiState.collectAsState()
    val bgColor by viewModel.background.collectAsState()
    val context = LocalContext.current
    val activity = context as? Activity
    
    // System UI Manager для полноэкранного режима
    val systemUiManager = rememberSystemUiManager()
    
    // Settings
    val readerTapZonesSize by viewModel.readerTapZonesSize.collectAsState()
    val readerTapZonesSensitivity by viewModel.readerTapZonesSensitivity.collectAsState()
    val readerShowPageIndicator by viewModel.readerShowPageIndicator.collectAsState()
    val readerShowProgressBar by viewModel.readerShowProgressBar.collectAsState()
    val readerAutoHideUI by viewModel.readerAutoHideUI.collectAsState()
    val readerAutoHideDelay by viewModel.readerAutoHideDelay.collectAsState()
    val readerGestureSensitivity by viewModel.readerGestureSensitivity.collectAsState()
    val readerVibrationFeedback by viewModel.readerVibrationFeedback.collectAsState()
    val navigationTapZonesEnabled by viewModel.navigationTapZonesEnabled.collectAsState()
    val navigationSwipeEnabled by viewModel.navigationSwipeEnabled.collectAsState()
    val gestureSwipeThreshold by viewModel.gestureSwipeThreshold.collectAsState()
    val gestureZoomSensitivity by viewModel.gestureZoomSensitivity.collectAsState()
    val gesturePanSensitivity by viewModel.gesturePanSensitivity.collectAsState()
    val imageRenderDpi by viewModel.imageRenderDpi.collectAsState()
    val imagePreloadPages by viewModel.imagePreloadPages.collectAsState()
    val soundPageTurn by viewModel.soundPageTurn.collectAsState()
    val vibrationPageTurn by viewModel.vibrationPageTurn.collectAsState()
    
    // UI Controller для управления панелями с автоскрытием
    val uiController = rememberUIController(
        autoHideDelayMs = readerAutoHideDelay.toLong(),
        autoHideEnabled = readerAutoHideUI
    )
    
    // Создаем объект настроек для передачи в функции
    val readerSettings = ReaderSettings(
        readerTapZonesSize = readerTapZonesSize,
        readerTapZonesSensitivity = readerTapZonesSensitivity,
        readerShowPageIndicator = readerShowPageIndicator,
        readerShowProgressBar = readerShowProgressBar,
        readerAutoHideUI = readerAutoHideUI,
        readerAutoHideDelay = readerAutoHideDelay,
        readerGestureSensitivity = readerGestureSensitivity,
        readerVibrationFeedback = readerVibrationFeedback,
        imageQuality = "high", // TODO: добавить в ViewModel
        imageRenderDpi = imageRenderDpi,
        imageCacheSize = 100, // TODO: добавить в ViewModel
        imagePreloadPages = imagePreloadPages,
        imageCompressionLevel = 80, // TODO: добавить в ViewModel
        gestureSwipeThreshold = gestureSwipeThreshold,
        gestureZoomSensitivity = gestureZoomSensitivity,
        gesturePanSensitivity = gesturePanSensitivity,
        navigationSwipeEnabled = navigationSwipeEnabled,
        navigationTapZonesEnabled = navigationTapZonesEnabled,
        navigationKeyboardShortcuts = true, // TODO: добавить в ViewModel
        soundPageTurn = soundPageTurn,
        soundVolume = 0.5f, // TODO: добавить в ViewModel
        vibrationPageTurn = vibrationPageTurn,
        vibrationIntensity = 0.5f, // TODO: добавить в ViewModel
        notificationProgress = true // TODO: добавить в ViewModel
    )
    
    // Panel visibility states (left panel removed)
    var showTopPanel by remember { mutableStateOf(false) }
    var showRightPanel by remember { mutableStateOf(false) }
    var showThumbnailPanel by remember { mutableStateOf(false) }
    var showPageIndicator by remember { mutableStateOf(false) }
    
    // Check if any panel is open
    val anyPanelOpen = showTopPanel || showRightPanel || showThumbnailPanel
    
    // Handle back button press
    androidx.activity.compose.BackHandler(enabled = true) {
        if (anyPanelOpen) {
            // Close panels first
            uiController.hideAll()
        } else {
            // Navigate back to library
            onNavigateBack()
        }
    }
    
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

    // Save progress when leaving reader
    DisposableEffect(Unit) {
        onDispose {
            // Save current reading progress before leaving
            viewModel.saveCurrentProgress()
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
        backgroundColor = Color(bgColor),
        bitmapCache = viewModel.bitmapCache,
        currentComicUri = uiState.currentComicUri,
        readerSettings = readerSettings,
        uiController = uiController,
        systemUiManager = systemUiManager
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
    backgroundColor: Color,
    bitmapCache: BitmapCache,
    currentComicUri: String?,
    readerSettings: ReaderSettings,
    uiController: UIController,
    systemUiManager: com.example.core.ui.SystemUiManager
) {
    val contentScale = remember(uiState.scaleMode) {
        when (uiState.scaleMode) {
            "width" -> ContentScale.FillWidth // Растягивание по ширине
            "height" -> ContentScale.FillHeight // Растягивание по высоте
            "fit" -> ContentScale.Fit // Вписывание в экран с сохранением пропорций
            "fill" -> ContentScale.Crop // Заполнение экрана с обрезкой
            "custom" -> ContentScale.Fit
            else -> ContentScale.FillWidth
        }
    }
    
    // Используем UIController для управления панелями
    val uiVisible by uiController.uiVisible.collectAsState()
    val showTopPanel by uiController.topPanelVisible.collectAsState()
    val showRightPanel by uiController.rightPanelVisible.collectAsState()
    val showThumbnailPanel by uiController.thumbnailPanelVisible.collectAsState()
    
    // Screen size for gesture handling
    val configuration = LocalConfiguration.current
    val screenSize = remember(configuration) {
        IntSize(
            configuration.screenWidthDp,
            configuration.screenHeightDp
        )
    }

    // FullscreenHandler для управления системными барами
    FullscreenHandler(
        isFullscreen = !uiVisible,
        onSystemBarsVisibilityChanged = { isVisible ->
            // Логика обработки изменения видимости системных баров
        }
    )
    
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
                        onShowTopPanel = { uiController.showTopPanel() },
                        // Left panel removed
                        onShowRightPanel = { uiController.showRightPanel() },
                        onShowThumbnailPanel = { uiController.showThumbnailPanel() },
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
                            uiController.hideAll()
                        },
                        readerSettings = readerSettings
                    )
                        ReadingMode.WEBTOON -> OptimizedWebtoonLazyColumn(
                            uiState = uiState,
                            onNextPage = onNextPage,
                            onPreviousPage = onPreviousPage,
                            onShowTopPanel = { uiController.showTopPanel() },
                            onShowRightPanel = { uiController.showRightPanel() },
                            onShowThumbnailPanel = { uiController.showThumbnailPanel() },
                            readerSettings = readerSettings
                        )
                }
                
                // Persistent Page Indicator (bottom-right)
                // ✅ [PAGE-INDICATOR-11]: постоянный индикатор согласно тасклисту
                PersistentPageIndicator(
                    currentPage = uiState.currentPageIndex + 1,
                    totalPages = uiState.pageCount,
                    backgroundColor = Color.Black.copy(alpha = 0.5f),
                    modifier = Modifier.align(Alignment.BottomEnd)
                )
                
                // ✅ [PANELS-13]: TopSettingsPanel и SideQuickPanel реализованы
                // Top Settings Panel (поверх основного контента)
                if (showTopPanel) {
                    TopSettingsPanel(
                        visible = true,
                        onDismiss = {
                            uiController.hideAll()
                        },
                        onBrightnessChange = onUpdateBrightness,
                        onOrientationChange = onUpdateOrientation,
                        onScaleModeChange = onUpdateScaleMode,
                        onReadingModeChange = { mode ->
                            val readingMode = when (mode) {
                                "webtoon" -> ReadingMode.WEBTOON
                                else -> ReadingMode.PAGE
                            }
                            onSetReadingMode(readingMode)
                        },
                        onResetZoom = onResetZoom,
                        currentBrightness = uiState.readerBrightness,
                        currentOrientation = uiState.orientation,
                        currentScaleMode = uiState.scaleMode,
                        currentReadingMode = when (uiState.readingMode) {
                            ReadingMode.WEBTOON -> "webtoon"
                            ReadingMode.PAGE -> "page"
                        },
                        modifier = Modifier
                            .align(Alignment.TopCenter)
                            .zIndex(10f) // Высокий z-index для отображения поверх всего
                    )
                }
                
        // Мониторинг памяти (только в debug режиме)
        // if (BuildConfig.DEBUG) {
        //     MemoryMonitor(
        //         isVisible = true,
        //         modifier = Modifier
        //             .align(Alignment.TopEnd)
        //             .padding(8.dp)
        //     )
        // }
                
                // Left Quick Panel removed - only edge tap zones remain
                
                // Right Page List Panel
                if (showRightPanel) {
                    PageListPanel(
                        visible = true,
                        currentPage = uiState.currentPageIndex,
                        totalPages = uiState.pageCount,
                        onPageClick = { pageIndex ->
                            onLoadPage(pageIndex)
                            uiController.hideAll()
                        },
                        onDismiss = { 
                            uiController.hideAll()
                        },
                        getThumbnail = { pageIndex ->
                            uiState.bitmaps[pageIndex]
                        },
                        modifier = Modifier
                            .align(Alignment.CenterEnd)
                            .zIndex(10f) // Высокий z-index для отображения поверх всего
                    )
                }
                
                // ✅ [THUMBS-14]: панель миниатюр и lazy-кэш добавлены
                // Thumbnail Panel (bottom) - теперь использует кэш миниатюр
                if (showThumbnailPanel) {
                    ThumbnailPanel(
                        visible = true,
                        currentPage = uiState.currentPageIndex,
                        totalPages = uiState.pageCount,
                        onPageClick = { pageIndex ->
                            // Navigate to selected page
                            onLoadPage(pageIndex)
                            uiController.hideAll()
                        },
                        onDismiss = {
                            uiController.hideAll()
                        },
                        bitmapCache = bitmapCache,
                        currentUri = currentComicUri,
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .zIndex(10f) // Высокий z-index для отображения поверх всего
                    )
                }
                
                // Scrim layer for closing panels (поверх основного контента, под панелями)
                if (showTopPanel || showRightPanel || showThumbnailPanel) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .background(Color.Black.copy(alpha = 0.1f))
                            .pointerInput(Unit) {
                                detectTapGestures {
                                    // Close all panels on tap
                                    uiController.hideAll()
                                }
                            }
                    )
                }
                
                // Новые хит-зоны согласно тасклисту (только когда панели закрыты)
                ReaderTapZones(
                    panelsOpen = showTopPanel || showRightPanel || showThumbnailPanel,
                    onOpenTopBar = { uiController.showTopPanel() },
                    onOpenSideBar = { uiController.showRightPanel() },
                    onPrev = { 
                        uiController.onUserInteraction()
                        onPreviousPage() 
                    },
                    onNext = { 
                        uiController.onUserInteraction()
                        onNextPage() 
                    },
                    tapZonesSize = readerSettings.readerTapZonesSize,
                    tapZonesSensitivity = readerSettings.readerTapZonesSensitivity,
                    navigationTapZonesEnabled = readerSettings.navigationTapZonesEnabled,
                    modifier = Modifier.fillMaxSize()
                )
                
                // Оверлей яркости (самый верхний уровень для предотвращения скачков)
                BrightnessOverlay(
                    brightness = uiState.readerBrightness,
                    modifier = Modifier.fillMaxSize()
                )

                // Основной контент ридера
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center
                ) {
                    // Show content with gesture handling
                    when (uiState.readingMode) {
                        ReadingMode.PAGE -> PagedReaderWithGestures(
                            uiState = uiState,
                            screenSize = screenSize,
                            onNextPage = onNextPage,
                            onPreviousPage = onPreviousPage,
                            contentScale = contentScale,
                            onShowTopPanel = { uiController.showTopPanel() },
                            // Left panel removed
                            onShowRightPanel = { uiController.showRightPanel() },
                            onShowThumbnailPanel = { uiController.showThumbnailPanel() },
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
                                uiController.hideAll()
                            },
                            readerSettings = readerSettings
                        )
                        ReadingMode.WEBTOON -> WebtoonReader(
                            uiState = uiState,
                            onNextPage = onNextPage,
                            onPreviousPage = onPreviousPage,
                            onShowTopPanel = { uiController.showTopPanel() },
                            onShowRightPanel = { uiController.showRightPanel() },
                            onShowThumbnailPanel = { uiController.showThumbnailPanel() }
                        )
                    }
                }
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
    onCloseAllPanels: () -> Unit,
    readerSettings: ReaderSettings = ReaderSettings()
) {
    AnimatedContent(
        targetState = uiState,
        transitionSpec = {
            val forward = targetState.currentPageIndex > initialState.currentPageIndex
            val slideIn = slideInHorizontally(
                initialOffsetX = { fullWidth -> if (forward) fullWidth else -fullWidth },
                animationSpec = tween(250, easing = FastOutSlowInEasing)
            ) + fadeIn(animationSpec = tween(150))
            val slideOut = slideOutHorizontally(
                targetOffsetX = { fullWidth -> if (forward) -fullWidth else fullWidth },
                animationSpec = tween(250, easing = FastOutSlowInEasing)
            ) + fadeOut(animationSpec = tween(150))
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
                                }
                                // Page indicator now always visible (PersistentPageIndicator)
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
            val slideIn = slideInHorizontally(
                initialOffsetX = { fullWidth -> if (forward) fullWidth else -fullWidth },
                animationSpec = tween(250, easing = FastOutSlowInEasing)
            ) + fadeIn(animationSpec = tween(150))
            val slideOut = slideOutHorizontally(
                targetOffsetX = { fullWidth -> if (forward) -fullWidth else fullWidth },
                animationSpec = tween(250, easing = FastOutSlowInEasing)
            ) + fadeOut(animationSpec = tween(150))
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
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    onShowTopPanel: () -> Unit = {},
    onShowRightPanel: () -> Unit = {},
    onShowThumbnailPanel: () -> Unit = {},
    readerSettings: ReaderSettings = ReaderSettings()
) {
    val listState = rememberLazyListState()

    Box(
        modifier = Modifier
            .fillMaxSize()
            .readerGestures(
                screenSize = IntSize(0, 0), // Будет рассчитан автоматически
                onGestureAction = { action ->
                    when (action) {
                        is GestureAction.NextPage -> onNextPage()
                        is GestureAction.PreviousPage -> onPreviousPage()
                        // Игнорируем остальные жесты для вебтун
                        else -> {}
                    }
                }
            )
    ) {
        LazyColumn(
            state = listState,
            modifier = Modifier.fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            // Добавляем плавную прокрутку
            contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp),
            // Оптимизации для производительности
            userScrollEnabled = true,
            reverseLayout = false
            // LazyColumn автоматически предзагружает соседние элементы
        ) {
            items(
                count = uiState.pageCount,
                key = { it },
                contentType = { "webtoon_page" }
            ) { pageIndex ->
                WebtoonPageItem(pageIndex = pageIndex, uiState = uiState)
            }
        }
        
        // Добавляем зоны для открытия панелей в режиме Webtoon
        ReaderTapZones(
            panelsOpen = false, // В Webtoon режиме панели всегда доступны
            onOpenTopBar = onShowTopPanel,
            onOpenSideBar = onShowRightPanel,
            onPrev = onPreviousPage,
            onNext = onNextPage,
            tapZonesSize = readerSettings.readerTapZonesSize,
            tapZonesSensitivity = readerSettings.readerTapZonesSensitivity,
            navigationTapZonesEnabled = readerSettings.navigationTapZonesEnabled,
            modifier = Modifier.fillMaxSize()
        )
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

    // Оптимизация: используем remember для стабильных значений
    val contentScale = remember { ContentScale.FillWidth }
    val backgroundColor = if (isCurrentPage) MaterialTheme.colorScheme.primary.copy(alpha = 0.1f)
        else Color.Transparent

    Box(
        modifier = Modifier
            .fillMaxWidth()
            // Убираем зазоры между страницами в режиме Webtoon
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
                        contentScale = contentScale,
                        // filterQuality = androidx.compose.ui.graphics.FilterQuality.High, // Высокое качество для четкости
                        modifier = Modifier
                            .fillMaxWidth()
                            .background(backgroundColor)
                            // Оптимизация: отключаем клиппинг для лучшей производительности
                            .graphicsLayer {
                                // Используем аппаратное ускорение
                                renderEffect = null
                            }
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


