package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

/** Pure, testable inputs and outputs for reader chrome surfaces. */
internal data class ReaderChromeSurfacePlan(
    val forceOpaqueChromeSurface: Boolean,
    val effectiveToolbarOpacity: Float,
    val effectiveToolbarBlur: Float,
    val chromeSurface: Color,
    val overlaySurface: Color,
    val overlayStyle: ReaderHeaderFooterOverlayStyle,
) {
    companion object {
        fun compute(
            preset: ReadingPreset,
            isTextReader: Boolean,
            topToolbarOpacity: Float,
            bottomToolbarOpacity: Float,
            toolbarBlur: Float,
            baseColor: Color,
        ): ReaderChromeSurfacePlan {
            // isTextReader remains an explicit input because text and raster chrome
            // share the same surface contract; future format-specific policy can use it.
            @Suppress("UNUSED_PARAMETER")
            val ignoredTextReader = isTextReader
            val forceOpaque = readerChromeRequiresOpaqueSurface(preset, isTextReader)
            val combinedOpacity = (topToolbarOpacity + bottomToolbarOpacity) * 0.5f
            val effectiveOpacity = readerEffectiveToolbarOpacity(combinedOpacity, preset)
            val effectiveBlur = readerEffectiveToolbarBlur(toolbarBlur, preset)
            val minimumAlpha = if (forceOpaque) 1f else READER_TOOLBAR_MIN_OPACITY
            val chromeSurface = readerPanelSurfaceColor(
                base = baseColor,
                emphasis = (effectiveOpacity + effectiveBlur * 0.06f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                minAlpha = minimumAlpha,
            )
            val overlaySurface = readerPanelSurfaceColor(
                base = baseColor,
                emphasis = (effectiveOpacity + effectiveBlur * 0.03f).coerceIn(READER_TOOLBAR_MIN_OPACITY, 1f),
                minAlpha = minimumAlpha,
            )
            return ReaderChromeSurfacePlan(
                forceOpaqueChromeSurface = forceOpaque,
                effectiveToolbarOpacity = effectiveOpacity,
                effectiveToolbarBlur = effectiveBlur,
                chromeSurface = chromeSurface,
                overlaySurface = overlaySurface,
                overlayStyle = readerHeaderFooterOverlayStyle(
                    surfaceColor = overlaySurface,
                    eink = preset == ReadingPreset.EINK,
                ),
            )
        }
    }
}

@Composable
internal fun rememberReaderChromeSurfacePlan(
    preset: ReadingPreset,
    isTextReader: Boolean,
    topToolbarOpacity: Float,
    bottomToolbarOpacity: Float,
    toolbarBlur: Float,
    baseColor: Color,
): ReaderChromeSurfacePlan = remember(
    preset,
    isTextReader,
    topToolbarOpacity,
    bottomToolbarOpacity,
    toolbarBlur,
    baseColor,
) {
    ReaderChromeSurfacePlan.compute(
        preset = preset,
        isTextReader = isTextReader,
        topToolbarOpacity = topToolbarOpacity,
        bottomToolbarOpacity = bottomToolbarOpacity,
        toolbarBlur = toolbarBlur,
        baseColor = baseColor,
    )
}
