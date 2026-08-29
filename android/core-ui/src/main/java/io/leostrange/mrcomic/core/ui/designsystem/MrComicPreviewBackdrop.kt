package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.BlurredEdgeTreatment
import androidx.compose.ui.draw.blur
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.unit.dp

/**
 * Soft bed placed behind preview surfaces ("Предпросмотр …").
 *
 * Preview panels often draw paper-like colors that match the surrounding
 * settings background or the reader page behind a bottom sheet, so their
 * edges visually merge with real content. The backdrop renders a slightly
 * oversized, lightly blurred contrast bed plus a hairline border under the
 * preview, keeping the preview surface readable on any background.
 *
 * Usage: wrap the preview composable's content — the backdrop matches the
 * content size.
 */
@Composable
fun MrComicPreviewBackdrop(
    modifier: Modifier = Modifier,
    shape: Shape = MaterialTheme.shapes.large,
    content: @Composable BoxScope.() -> Unit
) {
    val bedColor = MaterialTheme.colorScheme.surfaceContainerHighest
    val outlineColor = MaterialTheme.colorScheme.outlineVariant
    Box(modifier = modifier) {
        // Lightly blurred, slightly inflated contrast bed — the "light blur"
        // that separates the preview from the page/text behind it.
        Box(
            modifier = Modifier
                .matchParentSize()
                .graphicsLayer {
                    scaleX = PREVIEW_BED_OVERSCALE
                    scaleY = PREVIEW_BED_OVERSCALE_TALL
                    alpha = PREVIEW_BED_ALPHA
                }
                .blur(PREVIEW_BED_BLUR, BlurredEdgeTreatment.Unbounded)
                .background(bedColor, shape)
        )
        Box(
            modifier = Modifier
                .matchParentSize()
                .border(HairlineBorder, outlineColor.copy(alpha = HairlineBorderAlpha), shape)
        )
        content()
    }
}

private const val PREVIEW_BED_OVERSCALE = 1.04f
private const val PREVIEW_BED_OVERSCALE_TALL = 1.06f
private const val PREVIEW_BED_ALPHA = 0.92f
private val PREVIEW_BED_BLUR = 12.dp
private val HairlineBorder = 1.dp
private const val HairlineBorderAlpha = 0.55f
