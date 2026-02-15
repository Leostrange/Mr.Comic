package com.example.feature.reader.ui.gestures

import androidx.compose.runtime.Stable
import androidx.compose.ui.geometry.Offset
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlin.math.abs
import kotlin.math.max

/**
 * Модель состояния масштаба с поддержкой снэпа к базовой посадке
 */
@Stable
data class ScaleState(
    var scale: Float = 1f,
    var offset: Offset = Offset.Zero,
    var baseScale: Float = 1f,
    val minScale: Float = 0.8f,
    val maxScale: Float = 6f,
    val snapThreshold: Float = 0.05f, // 5% от базового масштаба
) {
    /**
     * Проверяет, нужно ли снэпнуть к базовой посадке
     * При scale ≤ baseScale * 1.05 — снэпнуть к базовой посадке
     */
    fun shouldSnapToBase(): Boolean {
        val threshold = baseScale * (1f + snapThreshold)
        return scale <= threshold
    }

    /**
     * Ограничивает масштаб в допустимых пределах
     */
    fun clampScale(): Float = scale.coerceIn(minScale, maxScale)

    /**
     * Обновляет базовый масштаб и сбрасывает к нему текущий
     */
    fun updateBaseScale(newBaseScale: Float) {
        baseScale = newBaseScale.coerceIn(minScale, maxScale)
        scale = baseScale
        offset = Offset.Zero
    }

    /**
     * Снэп к базовой посадке
     */
    fun snapToBase() {
        scale = baseScale
        offset = Offset.Zero
    }
}

/**
 * Состояние зума с поддержкой снэпа к базовой посадке (legacy)
 */
@Stable
data class ZoomState(
    var scale: Float = 1f,
    var offset: Offset = Offset.Zero,
    var baseScale: Float = 1f,
    val minScale: Float = 0.8f,
    val maxScale: Float = 6f,
) {
    /**
     * Проверяет, нужно ли снэпнуть к базовой посадке
     */
    fun shouldSnapToBase(eps: Float = 0.06f): Boolean =
        abs(scale - baseScale) <= eps

    /**
     * Ограничивает масштаб в допустимых пределах
     */
    fun clampScale(): Float = scale.coerceIn(minScale, maxScale)

    /**
     * Обновляет базовый масштаб и сбрасывает к нему текущий
     */
    fun updateBaseScale(newBaseScale: Float) {
        baseScale = newBaseScale.coerceIn(minScale, maxScale)
        scale = baseScale
        offset = Offset.Zero
    }
}

/**
 * Режимы отображения для вычисления базового масштаба
 */
enum class FitMode { 
    FitWidth, 
    FitHeight, 
    Fill 
}

/**
 * Вычисляет базовый масштаб для заданного режима отображения
 * Согласно тасклисту:
 * - Fit: min(Ws/Wi, Hs/Hi)
 * - FitWidth: Ws/Wi
 * - FitHeight: Hs/Hi
 * - Fill: max(Ws/Wi, Hs/Hi)
 */
fun computeBaseScale(
    mode: FitMode,
    containerW: Float, containerH: Float,
    imageW: Float, imageH: Float
): Float {
    // Safety check for zero or negative dimensions
    if (imageW <= 0 || imageH <= 0) return 1.0f

    return when (mode) {
        FitMode.FitWidth  -> containerW / imageW
        FitMode.FitHeight -> containerH / imageH
        FitMode.Fill      -> max(containerW / imageW, containerH / imageH)
    }
}

/**
 * Вычисляет базовый масштаб для режима Fit (минимум из ширины и высоты)
 */
fun computeFitScale(
    containerW: Float, containerH: Float,
    imageW: Float, imageH: Float
): Float {
    val scaleW = containerW / imageW
    val scaleH = containerH / imageH
    return minOf(scaleW, scaleH)
}

/**
 * Анимирует зум к базовой посадке
 */
suspend fun animateToBase(
    state: ZoomState, 
    center: Offset, 
    animate: (Float, Offset) -> Unit
) {
    val targetScale = state.baseScale.coerceIn(state.minScale, state.maxScale)
    val targetOffset = Offset.Zero // или вычислить сохранение точки под пальцами
    animate(targetScale, targetOffset)
}
