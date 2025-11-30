package com.example.feature.reader.ui.gestures

import android.util.Log
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.IntSize

/**
 * Debug version of readerGestures with extensive logging
 * Use this to diagnose gesture detection issues
 */
fun Modifier.readerGesturesDebug(
    screenSize: IntSize,
    tapZoneConfig: TapZoneConfig = TapZoneConfig(),
    gestureSensitivity: Float = 1.0f,
    isZoomed: Boolean = false,
    blockSwipeWhenZoomed: Boolean = true,
    onGestureAction: (GestureAction) -> Unit
): Modifier {
    val TAG = "🔥GESTURE"  // Яркий тег для поиска
    
    Log.i(TAG, "========== GESTURE SYSTEM INITIALIZED ==========")
    Log.i(TAG, "Screen: $screenSize, Sensitivity: $gestureSensitivity")
    
    Log.i(TAG, "Creating GestureHandler")
    val gestureHandler = GestureHandler(screenSize, tapZoneConfig)
    
    val doubleTapThreshold = (300 / gestureSensitivity).toLong()
    val doubleTapDistanceThreshold = 50f
    
    Log.i(TAG, "DoubleTap: ${doubleTapThreshold}ms, Distance: ${doubleTapDistanceThreshold}px")
    
    return this
        // Tap gestures
        .pointerInput(screenSize, tapZoneConfig, gestureSensitivity) {
            var lastTapTime = 0L
            var lastTapPosition = Offset.Zero
            
            Log.i(TAG, "✅ Tap detection READY")
            detectTapGestures(
                onTap = { offset ->
                    Log.i(TAG, "👆 TAP at: $offset")
                    val currentTime = System.currentTimeMillis()
                    val timeDiff = currentTime - lastTapTime
                    val distance = (offset - lastTapPosition).getDistance()
                    
                    Log.i(TAG, "⏱️ Time: ${timeDiff}ms, Distance: ${distance}px")
                    
                    // Check for double tap
                    if (timeDiff < doubleTapThreshold && distance < doubleTapDistanceThreshold) {
                        Log.i(TAG, "🔥 DOUBLE TAP!")
                        val action = gestureHandler.onDoubleTap(offset)
                        Log.i(TAG, "➡️ Action: $action")
                        onGestureAction(action)
                        lastTapTime = 0L
                    } else {
                        Log.i(TAG, "✋ SINGLE TAP")
                        val action = gestureHandler.onTap(offset)
                        Log.i(TAG, "➡️ Action: $action")
                        onGestureAction(action)
                        lastTapTime = currentTime
                        lastTapPosition = offset
                    }
                },
                onLongPress = { offset ->
                    Log.i(TAG, "⏳ LONG PRESS at: $offset")
                    val action = gestureHandler.onLongPress(offset)
                    Log.i(TAG, "➡️ Action: $action")
                    onGestureAction(action)
                }
            )
        }
        // Transform gestures
        .pointerInput(gestureSensitivity) {
            Log.i(TAG, "✅ Pinch detection READY")
            detectTransformGestures { centroid, pan, zoom, rotation ->
                if (zoom != 1f) {
                    Log.i(TAG, "🤏 PINCH ZOOM - scale: $zoom")
                    val action = gestureHandler.onPinchZoom(zoom, centroid)
                    Log.i(TAG, "➡️ Action: $action")
                    onGestureAction(action)
                }
            }
        }
}
