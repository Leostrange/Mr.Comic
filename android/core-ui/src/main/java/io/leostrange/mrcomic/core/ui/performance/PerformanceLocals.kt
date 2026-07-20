package io.leostrange.mrcomic.core.ui.performance

import androidx.compose.runtime.Immutable
import androidx.compose.runtime.compositionLocalOf

@Immutable
data class PerformanceUiHints(
    val reducedMotion: Boolean = false,
    val reducedVisualEffects: Boolean = false
)

val LocalPerformanceUiHints = compositionLocalOf { PerformanceUiHints() }
