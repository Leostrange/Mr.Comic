package com.example.feature.reader.ui

import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import kotlin.math.max

internal const val READER_TOOLBAR_MIN_OPACITY = 0.34f
internal const val READER_TOOLBAR_DEFAULT_BLUR = 0f
private const val READER_LIGHT_PANEL_LUMINANCE_THRESHOLD = 0.72f
private const val READER_LIGHT_PANEL_MIN_ALPHA = 0.94f
private const val READER_LIGHT_OVERLAY_MIN_ALPHA = 0.88f
private const val READER_LIGHT_PANEL_DARKEN_FACTOR = 0.08f

internal fun readerPanelSurfaceColor(
    base: Color,
    emphasis: Float = 1f,
    minAlpha: Float = READER_TOOLBAR_MIN_OPACITY
): Color {
    val needsOpaqueBackdrop = base.luminance() >= READER_LIGHT_PANEL_LUMINANCE_THRESHOLD
    val adjustedBase = if (needsOpaqueBackdrop) {
        lerp(base.copy(alpha = 1f), Color.Black, READER_LIGHT_PANEL_DARKEN_FACTOR)
    } else {
        base
    }
    val themedAlpha = adjustedBase.alpha.coerceIn(0f, 1f)
    val targetAlpha = if (themedAlpha < 0.999f) themedAlpha * emphasis else emphasis
    val contrastMinAlpha = if (needsOpaqueBackdrop) {
        if (emphasis >= 0.45f) READER_LIGHT_PANEL_MIN_ALPHA else READER_LIGHT_OVERLAY_MIN_ALPHA
    } else {
        minAlpha
    }
    return adjustedBase.copy(alpha = targetAlpha.coerceIn(max(minAlpha, contrastMinAlpha), 1f))
}
