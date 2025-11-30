package com.example.feature.reader.ui

import android.graphics.Bitmap
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import com.example.feature.reader.ui.components.PageIndicator
import com.example.feature.reader.ui.components.ZoomableComicPage
import com.example.feature.reader.ui.gestures.GestureAction
import com.example.feature.reader.ui.gestures.TapZoneConfig
import kotlinx.coroutines.launch

/**
 * Example integration of gesture system into reader screen
 * This demonstrates how to use ZoomableComicPage with gesture handling
 */
@Composable
fun GestureIntegrationExample(
    pages: List<Bitmap>,
    initialPage: Int = 0,
    gestureSensitivity: Float = 1.0f,
    tapZoneConfig: TapZoneConfig = TapZoneConfig(),
    blockSwipeWhenZoomed: Boolean = true,
    modifier: Modifier = Modifier
) {
    val pagerState = rememberPagerState(
        initialPage = initialPage,
        pageCount = { pages.size }
    )
    val coroutineScope = rememberCoroutineScope()
    
    // UI state
    var showUI by remember { mutableStateOf(true) }
    var showTopPanel by remember { mutableStateOf(false) }
    var showLeftPanel by remember { mutableStateOf(false) }
    var showRightPanel by remember { mutableStateOf(false) }
    var showBottomPanel by remember { mutableStateOf(false) }
    var isPinned by remember { mutableStateOf(false) }
    
    // Auto-hide UI after delay
    LaunchedEffect(showUI) {
        if (showUI) {
            kotlinx.coroutines.delay(3000)
            showUI = false
        }
    }
    
    Box(modifier = modifier.fillMaxSize()) {
        // Main pager with gesture-enabled pages
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.fillMaxSize()
        ) { page ->
            ZoomableComicPage(
                bitmap = pages.getOrNull(page),
                isLoading = pages.getOrNull(page) == null,
                errorMessage = null,
                tapZoneConfig = tapZoneConfig,
                gestureSensitivity = gestureSensitivity,
                blockSwipeWhenZoomed = blockSwipeWhenZoomed,
                onGestureAction = { action ->
                    when (action) {
                        is GestureAction.NextPage -> {
                            if (page < pages.size - 1) {
                                coroutineScope.launch {
                                    pagerState.animateScrollToPage(page + 1)
                                }
                            }
                        }
                        is GestureAction.PreviousPage -> {
                            if (page > 0) {
                                coroutineScope.launch {
                                    pagerState.animateScrollToPage(page - 1)
                                }
                            }
                        }
                        is GestureAction.ToggleUI -> {
                            showUI = !showUI
                        }
                        is GestureAction.ShowTopPanel -> {
                            showTopPanel = true
                            showUI = true
                        }
                        is GestureAction.ShowLeftPanel -> {
                            showLeftPanel = true
                            showUI = true
                        }
                        is GestureAction.ShowRightPanel -> {
                            showRightPanel = true
                            showUI = true
                        }
                        is GestureAction.ShowBottomPanel -> {
                            showBottomPanel = true
                            showUI = true
                        }
                        is GestureAction.HideUI -> {
                            showUI = false
                            showTopPanel = false
                            showLeftPanel = false
                            showRightPanel = false
                            showBottomPanel = false
                        }
                        else -> {
                            // Other actions handled by ZoomableComicPage
                        }
                    }
                },
                onZoomStateChanged = { scale ->
                    // Track zoom state for analytics or UI updates
                }
            )
        }
        
        // Page indicator (bottom-right corner)
        PageIndicator(
            currentPage = pagerState.currentPage + 1,
            totalPages = pages.size,
            isPinned = isPinned,
            visible = showUI,
            onPinToggle = { isPinned = !isPinned },
            modifier = Modifier
                .align(Alignment.BottomEnd)
                .padding(16.dp)
        )
        
        // TODO: Add panel components here
        // - TopSettingsPanel (when showTopPanel)
        // - SideQuickPanel left (when showLeftPanel)
        // - SideQuickPanel right (when showRightPanel)
        // - ThumbnailPanel (when showBottomPanel)
    }
}

/**
 * Usage example in your ReaderScreen:
 * 
 * @Composable
 * fun ModernReaderScreen(
 *     viewModel: ReaderViewModel = hiltViewModel()
 * ) {
 *     val uiState by viewModel.uiState.collectAsStateWithLifecycle()
 *     
 *     GestureIntegrationExample(
 *         pages = uiState.bitmaps.values.toList(),
 *         initialPage = uiState.currentPageIndex,
 *         gestureSensitivity = uiState.gestureSensitivity,
 *         tapZoneConfig = TapZoneConfig(
 *             leftZoneRatio = uiState.tapZoneLeftRatio,
 *             rightZoneRatio = uiState.tapZoneRightRatio,
 *             enabled = uiState.tapZonesEnabled
 *         ),
 *         blockSwipeWhenZoomed = uiState.blockSwipeWhenZoomed
 *     )
 * }
 */
