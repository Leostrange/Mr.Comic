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
import androidx.compose.runtime.derivedStateOf
import androidx.compose.runtime.key
import androidx.compose.ui.geometry.Offset
import kotlinx.coroutines.delay
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.FilterQuality
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import android.content.res.Configuration
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
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Arrangement
import com.example.feature.reader.ui.gestures.*
import com.example.feature.reader.ui.components.*
import com.example.feature.reader.ui.ReaderDiagnostics
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
    val configuration = LocalConfiguration.current
    
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
    val enableDualPageMode by viewModel.enableDualPageMode.collectAsState()
    val enableWebtoonMode by viewModel.enableWebtoonMode.collectAsState()
    
    // Additional settings from ViewModel (previously hardcoded)
    val imageQuality by viewModel.imageQuality.collectAsState()
    val imageCacheSize by viewModel.imageCacheSize.collectAsState()
    val imageCompressionLevel by viewModel.imageCompressionLevel.collectAsState()
    val navigationKeyboardShortcuts by viewModel.navigationKeyboardShortcuts.collectAsState()
    val soundVolume by viewModel.soundVolume.collectAsState()
    val vibrationIntensity by viewModel.vibrationIntensity.collectAsState()
    val notificationProgress by viewModel.notificationProgress.collectAsState()
    
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
        enableDualPageMode = enableDualPageMode,
        enableWebtoonMode = enableWebtoonMode,
        imageQuality = imageQuality,
        imageRenderDpi = imageRenderDpi,
        imageCacheSize = imageCacheSize,
        imagePreloadPages = imagePreloadPages,
        imageCompressionLevel = imageCompressionLevel,
        gestureSwipeThreshold = gestureSwipeThreshold,
        gestureZoomSensitivity = gestureZoomSensitivity,
        gesturePanSensitivity = gesturePanSensitivity,
        navigationSwipeEnabled = navigationSwipeEnabled,
        navigationTapZonesEnabled = navigationTapZonesEnabled,
        navigationKeyboardShortcuts = navigationKeyboardShortcuts,
        soundPageTurn = soundPageTurn,
        soundVolume = soundVolume,
        vibrationPageTurn = vibrationPageTurn,
        vibrationIntensity = vibrationIntensity,
        notificationProgress = notificationProgress
    )
    
    // Handle back button press - оптимизация: используем derivedStateOf для вычисляемого значения
    val topPanelVisible by uiController.topPanelVisible.collectAsState()
    val rightPanelVisible by uiController.rightPanelVisible.collectAsState()
    val anyPanelOpen by remember(topPanelVisible, rightPanelVisible) {
        derivedStateOf { topPanelVisible || rightPanelVisible }
    }
    
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

    val diagnostics by viewModel.diagnostics.collectAsState()
    val showDebugOverlay = false

    // Apply dual page logic based on device characteristics and enforce strict mode rules
    LaunchedEffect(uiState.pageCount, configuration.orientation, enableDualPageMode, enableWebtoonMode) {
        if (uiState.pageCount > 0) {
            val isLandscape = configuration.orientation == Configuration.ORIENTATION_LANDSCAPE
            viewModel.applyDualPageLogic(isLandscape)
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
        onGoToPage = viewModel::loadPage,
        onUpdateBrightness = viewModel::updateBrightness,
        onUpdateBrightnessMode = viewModel::updateBrightnessMode,
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
        systemUiManager = systemUiManager,
        pagePreloader = viewModel.pagePreloader,
        diagnostics = diagnostics,
        showDebugOverlay = showDebugOverlay,
        onVisibleWebtoonPageChanged = viewModel::updateVisibleWebtoonPage
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
    onGoToPage: (Int) -> Unit,
    onUpdateBrightness: (Float) -> Unit,
    onUpdateBrightnessMode: (String) -> Unit,
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
    systemUiManager: com.example.core.ui.SystemUiManager,
    pagePreloader: com.example.core.reader.preload.PagePreloader,
    diagnostics: ReaderDiagnostics,
    showDebugOverlay: Boolean,
    onVisibleWebtoonPageChanged: (Int) -> Unit
) {
    // Правильный маппинг scaleMode на ContentScale
    // ИСПРАВЛЕНИЕ: Height и Fill должны работать правильно через graphicsLayer
    val contentScale = remember(uiState.scaleMode) {
        when (uiState.scaleMode) {
            "width" -> ContentScale.FillWidth // Заполняет ширину экрана
            "height" -> ContentScale.FillHeight // Масштабируется по высоте
            "fit" -> ContentScale.Fit // Вписывается в экран с сохранением пропорций (min)
            "fill" -> ContentScale.Crop // Заполняет экран с обрезкой (max)
            // В custom‑режиме базовый ContentScale не используется — масштаб задаётся через graphicsLayer
            "custom" -> ContentScale.FillWidth
            else -> ContentScale.FillWidth
        }
    }
    
    // Используем UIController для управления панелями
    val uiVisible by uiController.uiVisible.collectAsState()
    val showTopPanel by uiController.topPanelVisible.collectAsState()
    val showRightPanel by uiController.rightPanelVisible.collectAsState()
    
    // Оптимизация: используем derivedStateOf для вычисляемых значений
    val anyPanelOpen = remember(showTopPanel, showRightPanel) {
        showTopPanel || showRightPanel
    }
    // Screen size for gesture handling - кэшируем для предотвращения пересоздания
    val configuration = LocalConfiguration.current
    val density = LocalDensity.current
    val screenSize = remember(
        configuration.screenWidthDp,
        configuration.screenHeightDp,
        density
    ) {
        with(density) {
            IntSize(
                configuration.screenWidthDp.dp.roundToPx(),
                configuration.screenHeightDp.dp.roundToPx()
            )
        }
    }

    // FullscreenHandler для управления системными барами
    FullscreenHandler(
        isFullscreen = !uiVisible,
        onSystemBarsVisibilityChanged = { _ ->
            // Логика обработки изменения видимости системных баров
        }
    )
    
    // При открытии верхней панели переводим яркость в ручной режим один раз,
    // чтобы движение слайдера не трогало системную автояркость
    LaunchedEffect(showTopPanel) {
        if (showTopPanel) {
            onUpdateBrightnessMode("manual")
        }
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
                // Persistent Page Indicator (bottom-right)
                // ✅ [PAGE-INDICATOR-11]: постоянный индикатор согласно тасклисту
                PersistentPageIndicator(
                    currentPage = uiState.currentPageIndex + 1,
                    totalPages = uiState.pageCount,
                    backgroundColor = Color.Black.copy(alpha = 0.5f),
                    modifier = Modifier.align(Alignment.BottomEnd)
                )

                if (showDebugOverlay) {
                    ReaderDebugOverlay(
                        isVisible = true,
                        diagnostics = diagnostics,
                        currentPage = uiState.currentPageIndex + 1,
                        totalPages = uiState.pageCount,
                        modifier = Modifier
                            .align(Alignment.TopEnd)
                            .padding(8.dp)
                            .zIndex(12f)
                    )
                }
                
                // ✅ [PANELS-13]: TopSettingsPanel и SideQuickPanel реализованы
                // Top Settings Panel (поверх основного контента)
                if (showTopPanel) {
                    TopSettingsPanel(
                        visible = true,
                        onDismiss = { 
                            uiController.hideAll()
                        },
                        onBrightnessChange = { brightness ->
                            // При регулировке слайдера переводим в ручной режим, если ещё не включен
                            if (uiState.readerBrightnessMode != "manual") {
                                onUpdateBrightnessMode("manual")
                            }
                            onUpdateBrightness(brightness)
                        },
                        onOrientationChange = onUpdateOrientation,
                        onScaleModeChange = onUpdateScaleMode,
                        onReadingModeChange = { mode ->
                            val readingMode = when (mode) {
                                "webtoon" -> ReadingMode.WEBTOON
                                "dual" -> ReadingMode.DUAL_PAGE
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
                            ReadingMode.DUAL_PAGE -> "dual"
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
                        pagePreloader = pagePreloader,
                        modifier = Modifier
                            .align(Alignment.CenterEnd)
                            .zIndex(10f) // Высокий z-index для отображения поверх всего
                    )
                }
                
                // Оверлей яркости под панелями и зонами навигации, но над контентом
                BrightnessOverlayThrottled(
                    brightness = uiState.readerBrightness,
                    brightnessMode = uiState.readerBrightnessMode,
                    modifier = Modifier
                        .fillMaxSize()
                        .zIndex(3f)
                )
                
                // Scrim layer for closing panels (поверх основного контента, под панелями)
                if (showTopPanel || showRightPanel) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .zIndex(4f)
                            .background(Color.Black.copy(alpha = 0.1f))
                            .pointerInput(showTopPanel, showRightPanel) {
                                detectTapGestures {
                                    uiController.hideAll()
                                }
                            }
                    )
                }
                
                // ✅ СТРОГИЕ gesture zones поверх контента и оверлея яркости, но под панелями
                ReaderTapZones(
                    panelsOpen = showTopPanel || showRightPanel,
                    onOpenTopBar = { uiController.showTopPanel() },
                    onOpenSideBar = { uiController.showRightPanel() },
                    onOpenLeftPanel = { }, // Removed - no longer used
                    onPrev = { 
                        if (!showTopPanel && !showRightPanel) {
                            uiController.onUserInteraction()
                            onPreviousPage()
                        }
                    },
                    onNext = { 
                        if (!showTopPanel && !showRightPanel) {
                            uiController.onUserInteraction()
                            onNextPage()
                        }
                    },
                    tapZonesSize = readerSettings.readerTapZonesSize,
                    tapZonesSensitivity = readerSettings.readerTapZonesSensitivity,
                    navigationTapZonesEnabled = readerSettings.navigationTapZonesEnabled,
                    modifier = Modifier
                        .fillMaxSize()
                        .zIndex(5f) // Выше контента/оверлея, ниже панелей (10f)
                )
                
                // Основной контент ридера (под оверлеем яркости и зонами навигации)
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
                            onCycleZoom = onCycleZoom,
                            onZoom = onZoom,
                            onToggleOrientation = onToggleOrientation,
                            onDoubleTapZoom = onDoubleTapZoom,
                            showTopPanel = showTopPanel,
                            showRightPanel = showRightPanel,
                            onUpdateScaleMode = { scaleMode -> 
                                // Update scale mode through viewModel
                                // This will be handled in the gesture action
                            },
                            onCloseAllPanels = {
                                uiController.hideAll()
                            },
                            readerSettings = readerSettings
                        )
                        ReadingMode.DUAL_PAGE -> DualPageReader(
                            uiState = uiState,
                            screenSize = screenSize,
                            onNextSpread = onNextPage,
                            onPreviousSpread = onPreviousPage,
                            onShowTopPanel = { uiController.showTopPanel() },
                            onShowRightPanel = { uiController.showRightPanel() },
                            showTopPanel = showTopPanel,
                            showRightPanel = showRightPanel,
                            onCloseAllPanels = { uiController.hideAll() },
                            readerSettings = readerSettings
                        )
                        ReadingMode.WEBTOON -> OptimizedWebtoonLazyColumn(
                            uiState = uiState,
                            onNextPage = onNextPage,
                            onPreviousPage = onPreviousPage,
                            onLoadPage = onLoadPage,
                            onShowTopPanel = { uiController.showTopPanel() },
                            onShowRightPanel = { uiController.showRightPanel() },
                            readerSettings = readerSettings,
                            onVisiblePageChanged = onVisibleWebtoonPageChanged,
                            panelsOpen = showTopPanel || showRightPanel
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
    onCycleZoom: () -> Unit,
    onZoom: (Float, androidx.compose.ui.geometry.Offset) -> Unit,
    onToggleOrientation: () -> Unit,
    onDoubleTapZoom: (androidx.compose.ui.geometry.Offset) -> Unit,
    showTopPanel: Boolean,
    showRightPanel: Boolean,
    onUpdateScaleMode: (String) -> Unit,
    onCloseAllPanels: () -> Unit,
    readerSettings: ReaderSettings = ReaderSettings()
) {
    AnimatedContent(
        targetState = uiState.currentPageIndex,
        transitionSpec = {
            val forward = targetState > initialState
            // Улучшенная анимация: более плавная и длительная для лучшего UX
            val slideIn = slideInHorizontally(
                initialOffsetX = { fullWidth -> if (forward) fullWidth else -fullWidth },
                animationSpec = tween(
                    durationMillis = 350, // Увеличено с 250 до 350 для плавности
                    easing = androidx.compose.animation.core.CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f) // Более плавная кривая
                )
            ) + fadeIn(animationSpec = tween(200, easing = androidx.compose.animation.core.LinearOutSlowInEasing))
            val slideOut = slideOutHorizontally(
                targetOffsetX = { fullWidth -> if (forward) -fullWidth else fullWidth },
                animationSpec = tween(
                    durationMillis = 350, // Увеличено с 250 до 350 для плавности
                    easing = androidx.compose.animation.core.CubicBezierEasing(0.4f, 0.0f, 0.2f, 1.0f) // Более плавная кривая
                )
            ) + fadeOut(animationSpec = tween(200, easing = androidx.compose.animation.core.LinearOutSlowInEasing))
            (slideIn with slideOut).using(SizeTransform(clip = false))
        },
        label = "PageSlider"
    ) { currentPageIndex ->
        // Per-page zoom state, reset on page change
        var scale by remember(currentPageIndex) { mutableFloatStateOf(1.0f) }
        var offsetX by remember(currentPageIndex) { mutableFloatStateOf(0f) }
        var offsetY by remember(currentPageIndex) { mutableFloatStateOf(0f) }

        // Keep scale in sync with ViewModel zoom state (coerced)
        LaunchedEffect(uiState.currentZoomScale) {
            val coerced = uiState.currentZoomScale.coerceIn(1.0f, 5.0f)
            scale = coerced
            if (coerced == 1.0f) {
                offsetX = 0f
                offsetY = 0f
            }
        }

        // Ensure reset when page index changes
        // Важно: сбрасываем масштаб только для зума, но сохраняем режим масштабирования (scaleMode)
        LaunchedEffect(currentPageIndex) {
            scale = 1.0f
            offsetX = 0f
            offsetY = 0f
            onZoom(1.0f, Offset.Zero)
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
                    isZoomed = scale > 1.0f + 0.001f,
                    blockSwipeWhenZoomed = true,
                    onGestureAction = { action ->
                        val anyPanelOpen = showTopPanel || showRightPanel
                        val isZoomed = scale > 1.0f + 0.001f

                        when (action) {
                            is GestureAction.NextPage -> {
                                if (!anyPanelOpen && !isZoomed) onNextPage()
                            }
                            is GestureAction.PreviousPage -> {
                                if (!anyPanelOpen && !isZoomed) onPreviousPage()
                            }
                            is GestureAction.ToggleUI -> {
                                if (anyPanelOpen) {
                                    onCloseAllPanels()
                                }
                            }
                            is GestureAction.ToggleOrientation -> {
                                if (!anyPanelOpen) onToggleOrientation()
                            }
                            is GestureAction.ShowTopPanel -> {
                                if (!anyPanelOpen) onShowTopPanel()
                            }
                            is GestureAction.ShowLeftPanel -> {
                                // no-op (left panel removed)
                            }
                            is GestureAction.ShowRightPanel -> {
                                if (!anyPanelOpen) onShowRightPanel()
                            }
                            is GestureAction.ShowBottomPanel -> {
                                // no-op (bottom panel removed)
                            }
                            is GestureAction.CycleZoom -> {
                                if (!anyPanelOpen) onCycleZoom()
                            }
                            is GestureAction.Zoom -> {
                                if (!anyPanelOpen) {
                                    val targetScale = (scale * action.scale).coerceIn(1.0f, 5.0f)
                                    val isNowZoomed = targetScale > 1.0f + 0.001f

                                    // Используем размеры экрана как базу (из screenSize аргумента)
                                    val screenW = screenSize.width.toFloat()
                                    val screenH = screenSize.height.toFloat()
                                    val baseImageW = screenW
                                    val baseImageH = screenH

                                    val rawOffset = if (isNowZoomed) {
                                        Offset(
                                            offsetX + action.focusPoint.x * (targetScale / scale - 1f),
                                            offsetY + action.focusPoint.y * (targetScale / scale - 1f)
                                        )
                                    } else {
                                        Offset.Zero
                                    }

                                    val clamped = if (isNowZoomed) {
                                        clampOffset(rawOffset, targetScale, baseImageW, baseImageH, screenW, screenH)
                                    } else {
                                        Offset.Zero
                                    }

                                    scale = targetScale
                                    offsetX = clamped.x
                                    offsetY = clamped.y

                                    onZoom(targetScale, action.focusPoint)
                                }
                            }
                            is GestureAction.DoubleTapZoom -> {
                                if (!anyPanelOpen) {
                                    val newScale = if (scale > 1.0f) 1.0f else 2.0f
                                    scale = newScale
                                    if (newScale <= 1.0f) {
                                        offsetX = 0f
                                        offsetY = 0f
                                    }
                                    onDoubleTapZoom(action.position)
                                }
                            }
                            is GestureAction.HideUI -> {
                                onCloseAllPanels()
                            }
                            is GestureAction.Pan -> {
                                val anyPanelOpen = showTopPanel || showRightPanel
                                if (anyPanelOpen) return@readerGestures
                                
                                val isZoomed = scale > 1.0f + 0.001f
                                if (isZoomed) {
                                    val rawOffset = Offset(offsetX + action.delta.x, offsetY + action.delta.y)
                                    val screenW = screenSize.width.toFloat()
                                    val screenH = screenSize.height.toFloat()
                                    
                                    // Recalculate base dimensions
                                    val baseScale = when (uiState.scaleMode) {
                                        "width" -> screenW / (uiState.currentPageBitmap?.width?.toFloat() ?: 1f)
                                        "height" -> screenH / (uiState.currentPageBitmap?.height?.toFloat() ?: 1f)
                                        "fit" -> minOf(
                                            screenW / (uiState.currentPageBitmap?.width?.toFloat() ?: 1f),
                                            screenH / (uiState.currentPageBitmap?.height?.toFloat() ?: 1f)
                                        )
                                        "fill" -> maxOf(
                                            screenW / (uiState.currentPageBitmap?.width?.toFloat() ?: 1f),
                                            screenH / (uiState.currentPageBitmap?.height?.toFloat() ?: 1f)
                                        )
                                        else -> 1.0f
                                    }
                                    
                                    val baseImageW = (uiState.currentPageBitmap?.width?.toFloat() ?: 0f) * baseScale
                                    val baseImageH = (uiState.currentPageBitmap?.height?.toFloat() ?: 0f) * baseScale
                                    
                                    val clamped = clampOffset(rawOffset, scale, baseImageW, baseImageH, screenW, screenH)
                                    
                                    offsetX = clamped.x
                                    offsetY = clamped.y
                                }
                            }
                        }
                    }
                ),
            contentAlignment = Alignment.Center
        ) {
            uiState.currentPageBitmap?.let { bitmap ->
                val screenW = constraints.maxWidth.toFloat()
                val screenH = constraints.maxHeight.toFloat()
                val imageW = bitmap.width.toFloat()
                val imageH = bitmap.height.toFloat()
                
                // Рассчитываем базовый масштаб для правильного применения offset
                val baseScale = when (uiState.scaleMode) {
                    "width" -> screenW / imageW
                    "height" -> screenH / imageH
                    "fit" -> minOf(screenW / imageW, screenH / imageH)
                    "fill" -> maxOf(screenW / imageW, screenH / imageH)
                    else -> 1.0f
                }
                
                val baseImageW = imageW * baseScale
                val baseImageH = imageH * baseScale
                
                // Определяем, используется ли custom режим масштабирования
                val zoomThreshold = 1.0f + 0.001f
                val customScaleActive = uiState.scaleMode == "custom" && uiState.currentZoomScale > zoomThreshold
                val gestureZoomActive = scale > zoomThreshold
                val isZoomed = gestureZoomActive || customScaleActive
                
                // Используем key для принудительного пересоздания Image при изменении страницы
                // Это гарантирует правильное применение масштаба для каждой страницы
                key(currentPageIndex, bitmap) {
                    Image(
                        painter = remember(bitmap, currentPageIndex) { 
                            BitmapPainter(bitmap.asImageBitmap()) 
                        },
                        contentDescription = "Page ${currentPageIndex + 1}",
                        modifier = Modifier
                            .fillMaxSize()
                        .then(
                            if (isZoomed) {
                                Modifier.graphicsLayer(
                                    scaleX = if (customScaleActive) uiState.currentZoomScale else scale,
                                    scaleY = if (customScaleActive) uiState.currentZoomScale else scale,
                                    translationX = offsetX,
                                    translationY = offsetY
                                )
                            } else {
                                Modifier
                            }
                        ),
                            // .pointerInput removed to avoid conflict with readerGestures
                        contentScale = if (customScaleActive) ContentScale.None else contentScale
                    )
                }
            }
        }
    }
}

/* Legacy WebtoonReader/WebtoonPageItem removed in favor of OptimizedWebtoonLazyColumn */

@Composable
private fun WebtoonPageItem(
    pageIndex: Int,
    uiState: ReaderUiState,
    isVisible: Boolean = true
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
            .padding(0.dp) // Убираем все отступы
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

/**
 * Clamp offset to prevent blank gaps when panning
 */
private fun clampOffset(
    offset: Offset,
    scale: Float,
    imageWidth: Float,
    imageHeight: Float,
    screenWidth: Float,
    screenHeight: Float
): Offset {
    val scaledWidth = imageWidth * scale
    val scaledHeight = imageHeight * scale
    
    val maxOffsetX = max(0f, (scaledWidth - screenWidth) / 2f)
    val maxOffsetY = max(0f, (scaledHeight - screenHeight) / 2f)
    
    return Offset(
        x = offset.x.coerceIn(-maxOffsetX, maxOffsetX),
        y = offset.y.coerceIn(-maxOffsetY, maxOffsetY)
    )
}


