package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.luminance

/**
 * Editorial Ink control primitives.
 *
 * `MrComicSwitchRow` and `MrComicSliderTile` were removed in the Editorial Ink
 * migration; use `MrComicListItem` with [MrComicListItemTrailing.Switch] and a
 * `MrComicSlider` row instead.
 */
@Composable
fun MrComicProgressLine(progress: () -> Float, modifier: Modifier = Modifier, color: Color? = null, trackColor: Color? = null) {
    LinearProgressIndicator(
        progress = { progress().coerceIn(0f, 1f) },
        modifier = modifier,
        color = color ?: MaterialTheme.colorScheme.primary,
        trackColor = trackColor ?: MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.48f)
    )
}

@Composable
fun MrComicSlider(
    value: Float,
    onValueChange: (Float) -> Unit,
    valueRange: ClosedFloatingPointRange<Float>,
    modifier: Modifier = Modifier,
    steps: Int = 0,
    enabled: Boolean = true
) {
    Slider(
        value = value,
        onValueChange = onValueChange,
        valueRange = valueRange,
        steps = steps,
        enabled = enabled,
        modifier = modifier,
        colors = androidx.compose.material3.SliderDefaults.colors(
            thumbColor = MaterialTheme.colorScheme.primary,
            activeTrackColor = MaterialTheme.colorScheme.primary,
            inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
            activeTickColor = MaterialTheme.colorScheme.onPrimary,
            inactiveTickColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.36f)
        )
    )
}

@Composable
fun mrComicCompletedColor(): Color = if (MaterialTheme.colorScheme.background.luminance() > 0.45f) {
    mrComicArgbColor(MrComicColorTokens.InkPaperCompletedArgb)
} else {
    mrComicArgbColor(MrComicColorTokens.InkPaperDarkCompletedArgb)
}
