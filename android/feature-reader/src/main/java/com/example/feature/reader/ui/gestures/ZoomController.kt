package com.example.feature.reader.ui.gestures

import androidx.compose.animation.core.Animatable
import androidx.compose.animation.core.Spring
import androidx.compose.animation.core.spring
import androidx.compose.runtime.*
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.unit.IntSize
import kotlinx.coroutines.launch
import kotlin.math.*

/**
 * Controller for managing zoom state and transitions
 * Supports cyclic zoom modes: fit-width -> fit-height -> fit-screen
 * Derives base scale from scaleMode state
 */
class ZoomController(
    private val imageSize: IntSize,
    private val screenSize: IntSize,
    private val zoomSensitivity: Float = 1.0f,
    private val panSensitivity: Float = 1.0f,
    initialScaleMode: String = "width"
) {
    // Current zoom scale
    val scale = Animatable(1f)
    
    // Current pan offset
    val offsetX = Animatable(0f)
    val offsetY = Animatable(0f)
    
    // Current zoom mode - initialized from scaleMode state
    var currentMode by mutableStateOf(scaleModeStringToZoomMode(initialScaleMode))
        private set
    
    /**
     * Convert scaleMode string to ZoomMode enum
     */
    private fun scaleModeStringToZoomMode(scaleMode: String): ZoomMode {
        return when (scaleMode.lowercase()) {
            "width" -> ZoomMode.FIT_WIDTH
            "height" -> ZoomMode.FIT_HEIGHT
            "fit" -> ZoomMode.FIT_SCREEN
            "fill" -> ZoomMode.FILL
            else -> ZoomMode.FIT_WIDTH
        }
    }
    
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
     * Calculate scale for fit-screen mode
     * FIT = min(W/imgW, H/imgH) — вписать целиком без выхода за границы
     */
    fun calculateFitScreenScale(): Float {
        // FIT: вписать целиком = min(viewW/imgW, viewH/imgH)
        if (imageSize.width == 0 || imageSize.height == 0) return 1f
        val widthScale = screenSize.width.toFloat() / imageSize.width.toFloat()
        val heightScale = screenSize.height.toFloat() / imageSize.height.toFloat()
        return min(widthScale, heightScale)
    }
    
    /**
     * Calculate scale for fill mode (fill entire screen, may crop)
     * Формула: max(viewW/imgW, viewH/imgH) - заполнить экран, может обрезаться
     */
    fun calculateFillScale(): Float {
        if (imageSize.width == 0 || imageSize.height == 0) return 1f
        val widthScale = screenSize.width.toFloat() / imageSize.width.toFloat()
        val heightScale = screenSize.height.toFloat() / imageSize.height.toFloat()
        return max(widthScale, heightScale)
    }
    
    /**
     * Cycle to next zoom mode
     * Порядок: WIDTH -> HEIGHT -> FIT -> FILL -> WIDTH
     */
    suspend fun cycleZoomMode(focusPoint: Offset = Offset.Zero) {
        val nextMode = when (currentMode) {
            ZoomMode.FIT_WIDTH -> ZoomMode.FIT_HEIGHT
            ZoomMode.FIT_HEIGHT -> ZoomMode.FIT_SCREEN
            ZoomMode.FIT_SCREEN -> ZoomMode.FILL
            ZoomMode.FILL -> ZoomMode.FIT_WIDTH
        }
        
        setZoomMode(nextMode, focusPoint)
    }
    
    /**
     * Set specific zoom mode
     * Применяет формулы масштабирования и сбрасывает offset
     */
    suspend fun setZoomMode(mode: ZoomMode, focusPoint: Offset = Offset.Zero) {
        currentMode = mode
        
        val targetScale = when (mode) {
            ZoomMode.FIT_WIDTH -> calculateFitWidthScale()
            ZoomMode.FIT_HEIGHT -> calculateFitHeightScale()
            ZoomMode.FIT_SCREEN -> calculateFitScreenScale()
            ZoomMode.FILL -> calculateFillScale()
        }
        
        // Animate to target scale
        scale.animateTo(
            targetValue = targetScale,
            animationSpec = spring(
                dampingRatio = Spring.DampingRatioMediumBouncy,
                stiffness = Spring.StiffnessLow
            )
        )
        
        // Reset offset when changing modes (центрирование)
        offsetX.snapTo(0f)
        offsetY.snapTo(0f)
    }
    
    /**
     * Apply pinch zoom
     * При приближении к минимальному масштабу автоматически snap к базовому режиму
     */
    suspend fun applyPinchZoom(zoomFactor: Float, focusPoint: Offset) {
        // Определяем базовый масштаб на основе текущего режима
        val baseScale = when (currentMode) {
            ZoomMode.FIT_WIDTH -> calculateFitWidthScale()
            ZoomMode.FIT_HEIGHT -> calculateFitHeightScale()
            ZoomMode.FIT_SCREEN -> calculateFitScreenScale()
            ZoomMode.FILL -> calculateFillScale()
        }
        
        // Применяем настройку чувствительности зума
        val adjustedZoomFactor = 1f + (zoomFactor - 1f) * zoomSensitivity
        
        // Минимум - половина базового масштаба (можно уменьшать)
        val minScale = baseScale * 0.5f
        val maxScale = 5f
        
        val newScale = (scale.value * adjustedZoomFactor).coerceIn(minScale, maxScale)
        
        // Snap к базовому масштабу только если очень близко (в пределах 3%)
        // Убрана проверка newScale <= baseScale, чтобы разрешить уменьшение
        val finalScale = if (abs(newScale - baseScale) < baseScale * 0.03f) {
            baseScale
        } else {
            newScale
        }
        
        // Calculate new offset to zoom towards focus point
        // Формула: новая позиция = старая позиция - (фокусная_точка * изменение_масштаба)
        // Это обеспечивает что точка под пальцами остаётся на месте при зуме
        val scaleDiff = finalScale / scale.value - 1f  // Отношение нового масштаба к старому
        val newOffsetX = offsetX.value - (focusPoint.x * scaleDiff)
        val newOffsetY = offsetY.value - (focusPoint.y * scaleDiff)
        
        // Применяем ограничения для панорамирования
        val maxOffsetX = calculateMaxOffsetX()
        val maxOffsetY = calculateMaxOffsetY()
        
        val clampedOffsetX = newOffsetX.coerceIn(-maxOffsetX, maxOffsetX)
        val clampedOffsetY = newOffsetY.coerceIn(-maxOffsetY, maxOffsetY)
        
        // Если вернулись к базовому масштабу, сбрасываем offset
        if (finalScale == baseScale) {
            scale.snapTo(finalScale)
            offsetX.snapTo(0f)
            offsetY.snapTo(0f)
        } else {
            scale.snapTo(finalScale)
            offsetX.snapTo(clampedOffsetX)
            offsetY.snapTo(clampedOffsetY)
        }
        
        // Принудительный сброс если зумили слишком сильно
        forceResetIfNeeded()
    }
    
    /**
     * Apply pan offset with inertia
     */
    suspend fun applyPan(delta: Offset) {
        val maxOffsetX = calculateMaxOffsetX()
        val maxOffsetY = calculateMaxOffsetY()
        
        // Применяем настройку чувствительности панорамирования
        val adjustedDelta = delta * panSensitivity
        
        val newOffsetX = (offsetX.value + adjustedDelta.x).coerceIn(-maxOffsetX, maxOffsetX)
        val newOffsetY = (offsetY.value + adjustedDelta.y).coerceIn(-maxOffsetY, maxOffsetY)
        
        // Используем анимированный переход для плавной инерции
        offsetX.animateTo(newOffsetX, spring(
            dampingRatio = Spring.DampingRatioMediumBouncy,
            stiffness = Spring.StiffnessLow
        ))
        offsetY.animateTo(newOffsetY, spring(
            dampingRatio = Spring.DampingRatioMediumBouncy,
            stiffness = Spring.StiffnessLow
        ))
    }
    
    /**
     * Reset zoom to current mode's base scale
     * Сбрасывает зум к базовому масштабу текущего режима
     */
    suspend fun resetToBaseScale() {
        val targetScale = when (currentMode) {
            ZoomMode.FIT_WIDTH -> calculateFitWidthScale()
            ZoomMode.FIT_HEIGHT -> calculateFitHeightScale()
            ZoomMode.FIT_SCREEN -> calculateFitScreenScale()
            ZoomMode.FILL -> calculateFillScale()
        }
        
        scale.animateTo(
            targetValue = targetScale,
            animationSpec = spring(
                dampingRatio = Spring.DampingRatioMediumBouncy,
                stiffness = Spring.StiffnessMedium
            )
        )
        
        offsetX.animateTo(0f)
        offsetY.animateTo(0f)
    }
    
    /**
     * Reset zoom to fit-width mode
     */
    suspend fun reset() {
        setZoomMode(ZoomMode.FIT_WIDTH)
    }
    
    /**
     * Force reset to base scale if zoomed out too much
     * This fixes the issue where zoom doesn't reset when pinching out
     */
    suspend fun forceResetIfNeeded() {
        val baseScale = getBaseScale()
        if (scale.value <= baseScale * 0.8f) { // If zoomed out to 80% of base scale or less
            setZoomMode(currentMode) // Reset to current mode's base scale
        }
    }
    
    /**
     * Check if current scale matches a standard zoom mode
     */
    private fun isAtStandardScale(testScale: Float): Boolean {
        val tolerance = 0.01f
        return abs(testScale - calculateFitWidthScale()) < tolerance ||
               abs(testScale - calculateFitHeightScale()) < tolerance ||
               abs(testScale - calculateFitScreenScale()) < tolerance ||
               abs(testScale - calculateFillScale()) < tolerance
    }
    
    /**
     * Check if currently at base scale for current mode
     */
    fun isAtBaseScale(): Boolean {
        val baseScale = when (currentMode) {
            ZoomMode.FIT_WIDTH -> calculateFitWidthScale()
            ZoomMode.FIT_HEIGHT -> calculateFitHeightScale()
            ZoomMode.FIT_SCREEN -> calculateFitScreenScale()
            ZoomMode.FILL -> calculateFillScale()
        }
        return abs(scale.value - baseScale) < 0.01f
    }
    
    /**
     * Get current base scale for the active mode
     */
    fun getBaseScale(): Float {
        return when (currentMode) {
            ZoomMode.FIT_WIDTH -> calculateFitWidthScale()
            ZoomMode.FIT_HEIGHT -> calculateFitHeightScale()
            ZoomMode.FIT_SCREEN -> calculateFitScreenScale()
            ZoomMode.FILL -> calculateFillScale()
        }
    }
    
    /**
     * Calculate maximum horizontal offset based on current scale
     */
    private fun calculateMaxOffsetX(): Float {
        val scaledWidth = imageSize.width * scale.value
        return max(0f, (scaledWidth - screenSize.width) / 2f)
    }
    
    /**
     * Calculate maximum vertical offset based on current scale
     */
    private fun calculateMaxOffsetY(): Float {
        val scaledHeight = imageSize.height * scale.value
        return max(0f, (scaledHeight - screenSize.height) / 2f)
    }
    
    /**
     * Set zoom mode from string (for compatibility with settings)
     */
    suspend fun setZoomModeFromString(modeString: String) {
        val mode = when (modeString.lowercase()) {
            "width" -> ZoomMode.FIT_WIDTH
            "height" -> ZoomMode.FIT_HEIGHT
            "fit" -> ZoomMode.FIT_SCREEN
            "fill" -> ZoomMode.FILL
            else -> ZoomMode.FIT_WIDTH
        }
        setZoomMode(mode)
    }
    
    /**
     * Update scale mode from UI state changes
     * Synchronizes zoom controller with scale mode state
     */
    suspend fun updateScaleModeFromState(scaleMode: String) {
        val mode = scaleModeStringToZoomMode(scaleMode)
        if (mode != currentMode) {
            setZoomMode(mode)
        }
    }
}

/**
 * Zoom modes for reader
 * Соответствуют требованиям пользователя:
 * - WIDTH: растягивание по ширине, высота пропорциональна (может выходить за экран)
 * - HEIGHT: растягивание по высоте, ширина пропорциональна (может выходить за экран)
 * - FIT: вписать целиком, не выходя за границы экрана (min)
 * - FILL: заполнить экран с обрезкой (max)
 */
enum class ZoomMode {
    FIT_WIDTH,   // Fit width to screen (scale = viewW / imgW)
    FIT_HEIGHT,  // Fit height to screen (scale = viewH / imgH)
    FIT_SCREEN,  // Fit entire image (scale = min(viewW/imgW, viewH/imgH))
    FILL         // Fill screen with crop (scale = max(viewW/imgW, viewH/imgH))
}

/**
 * Composable function to remember zoom controller
 * Accepts scaleMode to derive base scale from state
 */
@Composable
fun rememberZoomController(
    imageSize: IntSize,
    screenSize: IntSize,
    scaleMode: String = "width",
    zoomSensitivity: Float = 1.0f,
    panSensitivity: Float = 1.0f
): ZoomController {
    return remember(imageSize, screenSize, scaleMode) {
        ZoomController(imageSize, screenSize, zoomSensitivity, panSensitivity, scaleMode)
    }
}

/**
 * Convert ZoomMode to string for settings
 */
fun ZoomMode.toSettingsString(): String {
    return when (this) {
        ZoomMode.FIT_WIDTH -> "width"
        ZoomMode.FIT_HEIGHT -> "height"
        ZoomMode.FIT_SCREEN -> "fit"
        ZoomMode.FILL -> "fill"
    }
}
