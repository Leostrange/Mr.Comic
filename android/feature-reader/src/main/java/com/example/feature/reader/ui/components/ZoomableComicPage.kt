package com.example.feature.reader.ui.components

import android.graphics.Bitmap
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.layout.onSizeChanged
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import com.example.feature.reader.ui.gestures.*
import kotlinx.coroutines.launch

/**
 * Zoomable comic page with gesture support
 * Supports tap zones, double tap zoom, pinch-to-zoom, and pan
 */
@Composable
fun ZoomableComicPage(
    bitmap: Bitmap?,
    isLoading: Boolean,
    errorMessage: String?,
    tapZoneConfig: TapZoneConfig = TapZoneConfig(),
    gestureSensitivity: Float = 1.0f,
    blockSwipeWhenZoomed: Boolean = true,
    onGestureAction: (GestureAction) -> Unit,
    onZoomStateChanged: (Float) -> Unit = {},
    modifier: Modifier = Modifier
) {
    var screenSize by remember { mutableStateOf(IntSize.Zero) }
    var imageSize by remember { mutableStateOf(IntSize.Zero) }
    
    // Update image size when bitmap changes
    LaunchedEffect(bitmap) {
        bitmap?.let {
            imageSize = IntSize(it.width, it.height)
        }
    }
    
    // Zoom controller - only create when we have valid sizes
    val zoomController = remember(imageSize, screenSize) {
        if (screenSize.width > 0 && screenSize.height > 0) {
            ZoomController(imageSize, screenSize)
        } else {
            null
        }
    }
    
    val coroutineScope = rememberCoroutineScope()
    
    // Track zoom state
    LaunchedEffect(zoomController?.scale?.value) {
        zoomController?.let {
            onZoomStateChanged(it.scale.value)
        }
    }
    
    // Handle gesture actions
    val handleGestureAction: (GestureAction) -> Unit = { action ->
        when (action) {
            is GestureAction.CycleZoom -> {
                zoomController?.let { controller ->
                    coroutineScope.launch {
                        controller.cycleZoomMode(action.position)
                    }
                }
            }
            is GestureAction.Zoom -> {
                zoomController?.let { controller ->
                    coroutineScope.launch {
                        controller.applyPinchZoom(action.scale, action.focusPoint)
                    }
                }
            }
            else -> {
                // Forward other actions to parent
                onGestureAction(action)
            }
        }
    }
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.surface)
            .onSizeChanged { size ->
                screenSize = size
            },
        contentAlignment = Alignment.Center
    ) {
        when {
            isLoading -> {
                // Loading state
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center
                ) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(48.dp),
                        color = MaterialTheme.colorScheme.primary
                    )
                    Spacer(modifier = Modifier.height(16.dp))
                    Text(
                        text = "Loading page...",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                }
            }
            
            errorMessage != null -> {
                // Error state
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.Center,
                    modifier = Modifier.padding(32.dp)
                ) {
                    Text(
                        text = "Error loading page",
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.error
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                    Text(
                        text = errorMessage,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f)
                    )
                }
            }
            
            bitmap != null -> {
                // Display image with zoom and pan
                val currentScale = zoomController?.scale?.value ?: 1f
                val currentOffsetX = zoomController?.offsetX?.value ?: 0f
                val currentOffsetY = zoomController?.offsetY?.value ?: 0f
                
                Image(
                    bitmap = bitmap.asImageBitmap(),
                    contentDescription = "Comic page",
                    contentScale = ContentScale.Fit,
                    modifier = Modifier
                        .fillMaxSize()
                        .graphicsLayer(
                            scaleX = currentScale,
                            scaleY = currentScale,
                            translationX = currentOffsetX,
                            translationY = currentOffsetY
                        )
                        .readerGesturesDebug(
                            screenSize = screenSize,
                            tapZoneConfig = tapZoneConfig,
                            gestureSensitivity = gestureSensitivity,
                            isZoomed = currentScale > 1.01f,
                            blockSwipeWhenZoomed = blockSwipeWhenZoomed,
                            onGestureAction = handleGestureAction
                        )
                )
            }
        }
    }
}
