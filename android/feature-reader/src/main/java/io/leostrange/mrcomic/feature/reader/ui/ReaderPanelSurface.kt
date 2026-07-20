package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.toArgb
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import kotlin.math.max

internal const val READER_TOOLBAR_MIN_OPACITY = 0.72f
internal const val READER_TOOLBAR_DEFAULT_BLUR = 0f
private const val READER_LIGHT_PANEL_LUMINANCE_THRESHOLD = 0.72f
private const val READER_LIGHT_PANEL_MIN_ALPHA = 0.92f
private const val READER_LIGHT_OVERLAY_MIN_ALPHA = 0.84f
private const val READER_LIGHT_PANEL_DARKEN_FACTOR = 0.08f
private const val READER_LIGHT_PANEL_DARKEN_RANGE = 0.10f

internal fun readerEffectiveToolbarOpacity(
    rawOpacity: Float,
    preset: ReadingPreset
): Float = when (preset) {
    ReadingPreset.EINK -> 1f
    else -> rawOpacity.coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f)
}

internal fun readerEffectiveToolbarBlur(
    rawBlur: Float,
    preset: ReadingPreset
): Float = when (preset) {
    ReadingPreset.EINK -> 0f
    else -> rawBlur.coerceIn(0f, 1f)
}

internal fun readerPanelSurfaceColor(
    base: Color,
    emphasis: Float = 1f,
    minAlpha: Float = READER_TOOLBAR_MIN_OPACITY
): Color {
    val safeEmphasis = emphasis.coerceIn(0f, 1f)
    val needsOpaqueBackdrop = base.luminance() >= READER_LIGHT_PANEL_LUMINANCE_THRESHOLD
    val adjustedBase = if (needsOpaqueBackdrop) {
        val darkenAmount = (
            READER_LIGHT_PANEL_DARKEN_FACTOR +
                (1f - safeEmphasis) * READER_LIGHT_PANEL_DARKEN_RANGE
            ).coerceIn(0f, 0.34f)
        lerp(base.copy(alpha = 1f), Color.Black, darkenAmount)
    } else {
        base
    }
    if (safeEmphasis <= 0.001f && minAlpha <= 0.001f) {
        return adjustedBase.copy(alpha = 0f)
    }
    val themedAlpha = adjustedBase.alpha.coerceIn(0f, 1f)
    val targetAlpha = if (themedAlpha < 0.999f) themedAlpha * safeEmphasis else safeEmphasis
    val contrastMinAlpha = if (needsOpaqueBackdrop && minAlpha > 0f) {
        READER_LIGHT_OVERLAY_MIN_ALPHA +
            (READER_LIGHT_PANEL_MIN_ALPHA - READER_LIGHT_OVERLAY_MIN_ALPHA) * safeEmphasis
    } else {
        minAlpha
    }
    return adjustedBase.copy(alpha = targetAlpha.coerceIn(max(minAlpha, contrastMinAlpha), 1f))
}

internal fun readerPanelShadowElevation(
    blurAmount: Float,
    base: Float = 0f,
    extra: Float = 6f
): Dp = (base + blurAmount.coerceIn(0f, 1f) * extra).dp

internal fun readerPanelTonalElevation(
    blurAmount: Float,
    base: Float = 0f,
    extra: Float = 2f
): Dp = (base + blurAmount.coerceIn(0f, 1f) * extra).dp

internal fun readerPanelScrimColor(contentColor: Color, blurAmount: Float): Color =
    contentColor.copy(alpha = 0.06f + blurAmount.coerceIn(0f, 1f) * 0.14f)

