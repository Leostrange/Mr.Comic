package com.example.feature.reader.ui.gestures

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.runtime.*
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.unit.IntSize
import kotlinx.coroutines.launch

/**
 * Controller for managing zoom state and transitions
 * Supports cyclic zoom modes: fit-width -> fit-height -> fit-screen
 */
class ZoomController(
    private val imageSize: IntSize,
    private val screenSize: IntSize
) {
    // Current zoom scale
    val scale = Animatable(1f)
    
    // Current pan offset
    val offsetX = Animatable(0f)
    val offsetY = Animatable(0f)
    
    // Current zoom mode
    var currentMode by mutableStateOf(ZoomMode.FIT_WIDTH)
        private set
    
    /**
     * Calculate scale for fit-width mode
     */
    fun calculateFitWidthScale(): Float {
        if (imageSize.width == 0) return 1f
        return screenSize.width.toFloat() / imageSize.width.toFloat()
    }
    
    /**
     * Calculate scale for fit-height mode
     */
    fun calculateFitHeightScale(): Float {
        if (imageSize.height == 0) return 1f
        return screenSize.height.toFloat() / imageSize.height.toFloat()
    }
    
    /**
     * Calculate scale for fit-screen mode (fit entire image)
     */
    fun calculateFitScreenScale(): Float {
        if (imageSize.width == 0 || imageSize.height == 0) return 1f
        val widthScale = screenSize.width.toFloat() / imageSize.width.toFloat()
        val heightScale = screenSize.height.toFloat() / imageSize.height.toFloat()
        return minOf(widthScale, heightScale)
    }
    
    /**
     * Cycle to next zoom mode
     */
    suspend fun cycleZoomMode(focusPoint: Offset = Offset.Zero) {
        val nextMode = when (currentMode) {
            ZoomMode.FIT_WIDTH -> ZoomMode.FIT_HEIGHT
            ZoomMode.FIT_HEIGHT -> ZoomMode.FIT_SCREEN
            ZoomMode.FIT_SCREEN -> ZoomMode.FIT_WIDTH
        }
        
        setZoomMode(nextMode, focusPoint)
    }
    
    /**
     * Set specific zoom mode
     */
    suspend fun setZoomMode(mode: ZoomMode, focusPoint: Offset = Offset.Zero) {
        currentMode = mode
        
        val targetScale = when (mode) {
            ZoomMode.FIT_WIDTH -> calculateFitWidthScale()
            ZoomMode.FIT_HEIGHT -> calculateFitHeightScale()
            ZoomMode.FIT_SCREEN -> calculateFitScreenScale()
        }
        
        // Animate to target scale
        scale.animateTo(
            targetValue = targetScale,
            animationSpec = spring(
                dampingRatio = Spring.DampingRatioMediumBouncy,
                stiffness = Spring.StiffnessLow
            )
        )
        
        // Reset offset when changing modes
        offsetX.snapTo(0f)
        offsetY.snapTo(0f)
    }
    
    /**
     * Apply pinch zoom
     */
    suspend fun applyPinchZoom(zoomFactor: Float, focusPoint: Offset) {
        val newScale = (scale.value * zoomFactor).coerceIn(0.5f, 5f)
        
        // Calculate new offset to zoom towards focus point
        val scaleDiff = newScale - scale.value
        val newOffsetX = offsetX.value - (focusPoint.x * scaleDiff)
        val newOffsetY = offsetY.value - (focusPoint.y * scaleDiff)
        
        scale.snapTo(newScale)
        offsetX.snapTo(newOffsetX)
        offsetY.snapTo(newOffsetY)
        
        // Update mode to custom if not at standard scales
        if (!isAtStandardScale(newScale)) {
            currentMode = ZoomMode.FIT_WIDTH // Keep current mode for now
        }
    }
    
    /**
     * Apply pan offset
     */
    suspend fun applyPan(delta: Offset) {
        val maxOffsetX = calculateMaxOffsetX()
        val maxOffsetY = calculateMaxOffsetY()
        
        val newOffsetX = (offsetX.value + delta.x).coerceIn(-maxOffsetX, maxOffsetX)
        val newOffsetY = (offsetY.value + delta.y).coerceIn(-maxOffsetY, maxOffsetY)
        
        offsetX.snapTo(newOffsetX)
        offsetY.snapTo(newOffsetY)
    }
    
    /**
     * Reset zoom to fit-width
     */
    suspend fun reset() {
        setZoomMode(ZoomMode.FIT_WIDTH)
    }
    
    /**
     * Check if current scale matches a standard zoom mode
     */
    private fun isAtStandardScale(testScale: Float): Boolean {
        val tolerance = 0.01f
        return kotlin.math.abs(testScale - calculateFitWidthScale()) < tolerance ||
               kotlin.math.abs(testScale - calculateFitHeightScale()) < tolerance ||
               kotlin.math.abs(testScale - calculateFitScreenScale()) < tolerance
    }
    
    /**
     * Calculate maximum horizontal offset based on current scale
     */
    private fun calculateMaxOffsetX(): Float {
        val scaledWidth = imageSize.width * scale.value
        return maxOf(0f, (scaledWidth - screenSize.width) / 2f)
    }
    
    /**
     * Calculate maximum vertical offset based on current scale
     */
    private fun calculateMaxOffsetY(): Float {
        val scaledHeight = imageSize.height * scale.value
        return maxOf(0f, (scaledHeight - screenSize.height) / 2f)
    }
}

/**
 * Zoom modes for reader
 */
enum class ZoomMode {
    FIT_WIDTH,   // Fit image width to screen width
    FIT_HEIGHT,  // Fit image height to screen height
    FIT_SCREEN   // Fit entire image to screen
}

/**
 * Composable function to remember zoom controller
 */
@Composable
fun rememberZoomController(
    imageSize: IntSize,
    screenSize: IntSize
): ZoomController {
    return remember(imageSize, screenSize) {
        ZoomController(imageSize, screenSize)
    }
}
