package com.example.feature.reader.ui.gestures

import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.IntSize
import kotlin.math.abs

/**
 * Modifier for detecting reader gestures
 * Handles tap, double tap, long press, and pinch-to-zoom
 */
fun Modifier.readerGestures(
    screenSize: IntSize,
    tapZoneConfig: TapZoneConfig = TapZoneConfig(),
    gestureSensitivity: Float = 1.0f,
    isZoomed: Boolean = false,
    blockSwipeWhenZoomed: Boolean = true,
    onGestureAction: (GestureAction) -> Unit
): Modifier {
    val gestureHandler = GestureHandler(screenSize, tapZoneConfig)
    val doubleTapThreshold = (300 / gestureSensitivity).toLong()
    val doubleTapDistanceThreshold = 50f
    
    return this
        // Tap gestures (tap, double tap, long press)
        .pointerInput(screenSize, tapZoneConfig, gestureSensitivity) {
            var lastTapTime = 0L
            var lastTapPosition = Offset.Zero
            
            detectTapGestures(
                onTap = { offset ->
                    val currentTime = System.currentTimeMillis()
                    val timeDiff = currentTime - lastTapTime
                    val distance = (offset - lastTapPosition).getDistance()
                    
                    // Check for double tap
                    if (timeDiff < doubleTapThreshold && distance < doubleTapDistanceThreshold) {
                        // Double tap detected - cancel any pending single tap and process double tap
                        val action = gestureHandler.onDoubleTap(offset)
                        onGestureAction(action)
                        lastTapTime = 0L // Reset to prevent triple tap
                        lastTapPosition = Offset.Zero
                    } else {
                        // Potential single tap - store position and time
                        // Single tap will be processed with delay to wait for possible double tap
                        lastTapTime = currentTime
                        lastTapPosition = offset
                        
                        // Process single tap immediately (double tap will override if detected)
                        val action = gestureHandler.onTap(offset)
                        onGestureAction(action)
                    }
                },
                onLongPress = { offset ->
                    val action = gestureHandler.onLongPress(offset)
                    onGestureAction(action)
                }
            )
        }
        // Transform gestures (pinch-to-zoom)
        .pointerInput(gestureSensitivity) {
            detectTransformGestures { centroid, pan, zoom, rotation ->
                if (zoom != 1f) {
                    val action = gestureHandler.onPinchZoom(zoom, centroid)
                    onGestureAction(action)
                }
            }
        }
        // Swipe gestures (only when not zoomed)
        .pointerInput(isZoomed, blockSwipeWhenZoomed, screenSize) {
            if (!isZoomed || !blockSwipeWhenZoomed) {
                var startPosition = Offset.Zero
                var isDragging = false
                
                detectDragGestures(
                    onDragStart = { offset ->
                        startPosition = offset
                        isDragging = true
                    },
                    onDragEnd = {
                        isDragging = false
                    },
                    onDrag = { change, _ ->
                        if (isDragging) {
                            val delta = change.position - startPosition
                            val screenWidth = screenSize.width.toFloat()
                            val screenHeight = screenSize.height.toFloat()
                            
                            // Check if it's a horizontal swipe (more horizontal than vertical movement)
                            if (abs(delta.x) > abs(delta.y) && abs(delta.x) > screenWidth * 0.1f) {
                                val direction = if (delta.x > 0) SwipeDirection.RIGHT else SwipeDirection.LEFT
                                val action = gestureHandler.onSwipe(direction)
                                onGestureAction(action)
                                isDragging = false // Prevent multiple triggers
                            }
                            // Check if it's a vertical swipe
                            else if (abs(delta.y) > abs(delta.x) && abs(delta.y) > screenHeight * 0.1f) {
                                val direction = if (delta.y > 0) SwipeDirection.DOWN else SwipeDirection.UP
                                val action = gestureHandler.onSwipe(direction)
                                onGestureAction(action)
                                isDragging = false // Prevent multiple triggers
                            }
                        }
                    }
                )
            }
        }
}
