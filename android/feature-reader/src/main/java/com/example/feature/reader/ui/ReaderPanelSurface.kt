package com.example.feature.reader.ui

import androidx.compose.ui.graphics.Color

internal fun readerPanelSurfaceColor(
    base: Color,
    emphasis: Float = 1f,
    minAlpha: Float = 0.34f
): Color {
    val themedAlpha = base.alpha.coerceIn(0f, 1f)
    val targetAlpha = if (themedAlpha < 0.999f) themedAlpha * emphasis else emphasis
    return base.copy(alpha = targetAlpha.coerceIn(minAlpha, 1f))
}
