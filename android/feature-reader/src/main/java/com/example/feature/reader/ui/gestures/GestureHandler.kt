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
            TapZone.LEFT -> GestureAction.PreviousPage      // Зона 4: листание назад
            TapZone.RIGHT -> GestureAction.NextPage        // Зона 3: листание вперёд
            TapZone.CENTER -> GestureAction.ToggleUI
            TapZone.TOP_LEFT -> GestureAction.ShowTopPanel // Зона 2: верхняя панель
            TapZone.TOP_RIGHT -> GestureAction.ShowRightPanel // Зона 1: боковая панель (только верхний правый угол)
        }
    }
    
    /**
     * Handle double tap gesture
     * Toggles zoom in/out at tap position
     */
    fun onDoubleTap(position: Offset): GestureAction {
        return GestureAction.DoubleTapZoom(position)
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
            TapZone.TOP_LEFT -> GestureAction.ShowTopPanel
            TapZone.TOP_RIGHT -> GestureAction.ShowRightPanel
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
        val screenHeight = screenSize.height.toFloat()
        
        // Define corner zones (smaller areas for precise targeting)
        val cornerZoneSize = 100f // 100dp corner zones
        
        // Check corner zones first
        if (position.x < cornerZoneSize && position.y < cornerZoneSize) {
            return TapZone.TOP_LEFT  // Зона 2: верхняя панель
        }
        if (position.x > screenWidth - cornerZoneSize && position.y < cornerZoneSize) {
            return TapZone.TOP_RIGHT // Зона 1: боковая панель (только верхний правый угол)
        }
        
        // Узкие невидимые зоны для листания (~56dp)
        val edgeZone = 56f // 56dp edge zones
        return when {
            position.x < edgeZone -> TapZone.LEFT  // Зона 4: листание назад
            position.x > screenWidth - edgeZone -> TapZone.RIGHT // Зона 3: листание вперёд
            else -> TapZone.CENTER
        }
    }
}

/**
 * Tap zones for navigation
 */
enum class TapZone {
    LEFT,         // Зона 4: Previous page
    CENTER,       // Toggle UI
    RIGHT,        // Зона 3: Next page
    TOP_LEFT,     // Зона 2: Show top panel
    TOP_RIGHT     // Зона 1: Show right panel (только верхний правый угол)
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
    object ToggleOrientation : GestureAction()
    data class CycleZoom(val position: Offset) : GestureAction()
    data class DoubleTapZoom(val position: Offset) : GestureAction()
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
