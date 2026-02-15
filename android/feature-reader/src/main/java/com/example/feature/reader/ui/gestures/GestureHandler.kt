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
            TapZone.LEFT -> GestureAction.PreviousPage      // Листание назад
            TapZone.RIGHT -> GestureAction.NextPage        // Листание вперёд
            TapZone.CENTER -> GestureAction.ToggleUI
            TapZone.TOP_LEFT -> GestureAction.ShowTopPanel // Верхняя панель (верхний левый угол)
            TapZone.TOP_RIGHT -> GestureAction.ShowRightPanel // Правая панель (верхний правый угол)
            TapZone.BOTTOM_LEFT -> GestureAction.ShowLeftPanel // Левая панель (нижний левый угол)
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
            TapZone.BOTTOM_LEFT -> GestureAction.ShowLeftPanel
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
     * Handle pan gesture
     */
    fun onPan(delta: Offset): GestureAction {
        return GestureAction.Pan(delta)
    }
    
    /**
     * Determine which tap zone was tapped based on position
     */
    private fun getTapZone(position: Offset): TapZone {
        val screenWidth = screenSize.width.toFloat()
        val screenHeight = screenSize.height.toFloat()
        
        // Define corner zones (larger for better targeting)
        val cornerZoneSize = 150f // 150dp corner zones для лучшего таргетинга
        
        // Check corner zones first (higher priority than edge zones)
        // TOP LEFT corner - верхняя панель
        if (position.x < cornerZoneSize && position.y < cornerZoneSize) {
            return TapZone.TOP_LEFT
        }
        
        // TOP RIGHT corner - правая панель
        if (position.x > screenWidth - cornerZoneSize && position.y < cornerZoneSize) {
            return TapZone.TOP_RIGHT
        }
        
        // BOTTOM LEFT corner - левая панель
        if (position.x < cornerZoneSize && position.y > screenHeight - cornerZoneSize) {
            return TapZone.BOTTOM_LEFT
        }
        
        // Create buffer zones to prevent conflicts between corner and edge zones
        val bufferZone = 50f // 50dp buffer between corner and edge zones
        
        // Зоны для листания (только в середине экрана, не в углах)
        val edgeZoneStart = cornerZoneSize + bufferZone
        val edgeZoneEnd = screenWidth - cornerZoneSize - bufferZone
        val topZoneEnd = cornerZoneSize + bufferZone
        val bottomZoneStart = screenHeight - cornerZoneSize - bufferZone
        
        return when {
            // Левая зона листания (только в середине по вертикали)
            position.x < edgeZoneStart && position.y > topZoneEnd && position.y < bottomZoneStart -> TapZone.LEFT
            // Правая зона листания (только в середине по вертикали)
            position.x > edgeZoneEnd && position.y > topZoneEnd && position.y < bottomZoneStart -> TapZone.RIGHT
            // Центральная зона - только UI toggle
            else -> TapZone.CENTER
        }
    }
}

/**
 * Tap zones for navigation
 */
enum class TapZone {
    LEFT,         // Previous page (left edge middle, with buffer zone)
    CENTER,       // Toggle UI (center area, with buffer zones on sides)
    RIGHT,        // Next page (right edge middle, with buffer zone)
    TOP_LEFT,     // Show top panel (top-left corner, 150dp)
    TOP_RIGHT,    // Show right panel (top-right corner, 150dp)
    BOTTOM_LEFT   // Show left panel (bottom-left corner, 150dp)
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
    data class Pan(val delta: Offset) : GestureAction()
}

/**
 * Configuration for tap zones
 */
data class TapZoneConfig(
    val leftZoneRatio: Float = 0.25f,   // 25% of screen width
    val rightZoneRatio: Float = 0.25f,  // 25% of screen width
    val enabled: Boolean = true
)
