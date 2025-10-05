package com.example.feature.reader.ui.gestures

import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.IntSize

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
                        // Double tap detected
                        val action = gestureHandler.onDoubleTap(offset)
                        onGestureAction(action)
                        lastTapTime = 0L
                    } else {
                        // Single tap
                        val action = gestureHandler.onTap(offset)
                        onGestureAction(action)
                        lastTapTime = currentTime
                        lastTapPosition = offset
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
}
