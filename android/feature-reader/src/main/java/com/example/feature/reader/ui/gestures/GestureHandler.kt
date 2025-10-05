package com.example.feature.reader.ui.gestures

import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.unit.IntSize

/**
 * Gesture handler for reader interactions
 * Handles taps, double taps, long press, swipes, and pinch-to-zoom
 */
class GestureHandler(
    private val screenSize: IntSize,
    private val tapZoneConfig: TapZoneConfig = TapZoneConfig()
) {
    
    /**
     * Handle single tap gesture
     * Returns action based on tap position (left/center/right zones)
     */
    fun onTap(position: Offset): GestureAction {
        val zone = getTapZone(position)
        return when (zone) {
            TapZone.LEFT -> GestureAction.PreviousPage
            TapZone.RIGHT -> GestureAction.NextPage
            TapZone.CENTER -> GestureAction.ToggleUI
        }
    }
    
    /**
     * Handle double tap gesture
     * Cycles through zoom modes: fit-width -> fit-height -> fit-screen
     */
    fun onDoubleTap(position: Offset): GestureAction {
        return GestureAction.CycleZoom(position)
    }
    
    /**
     * Handle long press gesture
     * Shows panels based on press position
     */
    fun onLongPress(position: Offset): GestureAction {
        val zone = getTapZone(position)
        return when (zone) {
            TapZone.LEFT -> GestureAction.ShowLeftPanel
            TapZone.RIGHT -> GestureAction.ShowRightPanel
            TapZone.CENTER -> GestureAction.ShowTopPanel
        }
    }
    
    /**
     * Handle swipe gesture
     */
    fun onSwipe(direction: SwipeDirection): GestureAction {
        return when (direction) {
            SwipeDirection.LEFT -> GestureAction.NextPage
            SwipeDirection.RIGHT -> GestureAction.PreviousPage
            SwipeDirection.UP -> GestureAction.ShowBottomPanel
            SwipeDirection.DOWN -> GestureAction.HideUI
        }
    }
    
    /**
     * Handle pinch-to-zoom gesture
     */
    fun onPinchZoom(scale: Float, focusPoint: Offset): GestureAction {
        return GestureAction.Zoom(scale, focusPoint)
    }
    
    /**
     * Determine which tap zone was tapped based on position
     */
    private fun getTapZone(position: Offset): TapZone {
        val screenWidth = screenSize.width.toFloat()
        val leftBoundary = screenWidth * tapZoneConfig.leftZoneRatio
        val rightBoundary = screenWidth * (1f - tapZoneConfig.rightZoneRatio)
        
        return when {
            position.x < leftBoundary -> TapZone.LEFT
            position.x > rightBoundary -> TapZone.RIGHT
            else -> TapZone.CENTER
        }
    }
}

/**
 * Tap zones for navigation
 */
enum class TapZone {
    LEFT,    // Previous page
    CENTER,  // Toggle UI
    RIGHT    // Next page
}

/**
 * Swipe directions
 */
enum class SwipeDirection {
    LEFT,
    RIGHT,
    UP,
    DOWN
}

/**
 * Gesture actions that can be performed
 */
sealed class GestureAction {
    object PreviousPage : GestureAction()
    object NextPage : GestureAction()
    object ToggleUI : GestureAction()
    data class CycleZoom(val position: Offset) : GestureAction()
    object ShowTopPanel : GestureAction()
    object ShowLeftPanel : GestureAction()
    object ShowRightPanel : GestureAction()
    object ShowBottomPanel : GestureAction()
    object HideUI : GestureAction()
    data class Zoom(val scale: Float, val focusPoint: Offset) : GestureAction()
}

/**
 * Configuration for tap zones
 */
data class TapZoneConfig(
    val leftZoneRatio: Float = 0.25f,   // 25% of screen width
    val rightZoneRatio: Float = 0.25f,  // 25% of screen width
    val enabled: Boolean = true
)
