package com.example.feature.reader.ui

import androidx.compose.ui.graphics.Color

internal const val READER_TOOLBAR_MIN_OPACITY = 0.34f
internal const val READER_TOOLBAR_DEFAULT_BLUR = 0f

internal fun readerPanelSurfaceColor(
    base: Color,
    emphasis: Float = 1f,
    minAlpha: Float = READER_TOOLBAR_MIN_OPACITY
): Color {
    val themedAlpha = base.alpha.coerceIn(0f, 1f)
    val targetAlpha = if (themedAlpha < 0.999f) themedAlpha * emphasis else emphasis
    return base.copy(alpha = targetAlpha.coerceIn(minAlpha, 1f))
}
