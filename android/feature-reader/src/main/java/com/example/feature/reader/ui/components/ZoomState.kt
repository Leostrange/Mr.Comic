package com.example.feature.reader.ui.components

import androidx.compose.runtime.Stable
import androidx.compose.ui.geometry.Offset
import kotlin.math.abs
import kotlin.math.max

/**
 * Zoom state according to hotfix_v2 specification
 */
@Stable
data class ZoomState(
    var scale: Float = 1f,
    var offset: Offset = Offset.Zero,
    var baseScale: Float = 1f,
    val minScale: Float = 0.8f,
    val maxScale: Float = 6f,
)

/**
 * Check if scale should snap to base
 */
fun shouldSnapToBase(scale: Float, base: Float, eps: Float = 0.06f): Boolean =
    abs(scale - base) <= eps

/**
 * Fit modes for image display
 */
enum class FitMode {
    FitWidth,
    FitHeight,
    Fill
}

/**
 * Compute base scale for given fit mode
 */
fun computeBaseScale(
    mode: FitMode,
    containerW: Float,
    containerH: Float,
    imageW: Float,
    imageH: Float
): Float = when (mode) {
    FitMode.FitWidth -> containerW / imageW
    FitMode.FitHeight -> containerH / imageH
    FitMode.Fill -> max(containerW / imageW, containerH / imageH)
}
