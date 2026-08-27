package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

/**
 * Editorial Ink cards.
 *
 * `MrComicPanelCard` was removed in the Editorial Ink migration. Use
 * [MrComicSectionHeader] + flat content (a Column of [MrComicListItem] rows) for
 * section groups, or [MrComicCardSurface] / [MrComicSurfaceCard] for visual
 * surfaces that need a container.
 */

@Composable
fun MrComicCard(
    modifier: Modifier = Modifier,
    fillMaxWidth: Boolean = true,
    variant: MrComicCardVariant = MrComicCardVariant.Default,
    selected: Boolean = false,
    containerColor: Color? = null,
    contentColor: Color = MaterialTheme.colorScheme.onSurface,
    border: BorderStroke? = null,
    shape: Shape? = null,
    cornerRadius: Dp = MrComicCornerScale.xl,
    tonalElevation: Dp = 0.dp,
    shadowElevation: Dp = 0.dp,
    contentPadding: PaddingValues = PaddingValues(MrComicSpacingTokens.x4),
    verticalSpacing: Dp = MrComicSpacingTokens.x3,
    content: @Composable ColumnScope.() -> Unit
) {
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = fillMaxWidth,
        variant = variant,
        selected = selected,
        containerColor = containerColor,
        contentColor = contentColor,
        border = border,
        shape = shape,
        cornerRadius = cornerRadius,
        tonalElevation = tonalElevation,
        shadowElevation = shadowElevation
    ) {
        Column(
            modifier = Modifier.fillMaxWidth().padding(contentPadding),
            verticalArrangement = Arrangement.spacedBy(verticalSpacing),
            content = content
        )
    }
}

@Composable
fun MrComicCardSurface(
    modifier: Modifier = Modifier,
    fillMaxWidth: Boolean = true,
    variant: MrComicCardVariant = MrComicCardVariant.Default,
    selected: Boolean = false,
    containerColor: Color? = null,
    contentColor: Color = MaterialTheme.colorScheme.onSurface,
    border: BorderStroke? = null,
    shape: Shape? = null,
    cornerRadius: Dp = MrComicCornerScale.xl,
    tonalElevation: Dp = 0.dp,
    shadowElevation: Dp = 0.dp,
    content: @Composable () -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    // Editorial Ink: container roles are pure M3 tones, no alpha dimming.
    // Material 3 already exposes surfaceContainer*, primaryContainer, etc.
    // with predictable luminance, so transparent overlays are no longer
    // needed to keep contrast on decorative backgrounds.
    val resolvedContainer = containerColor ?: when {
        selected -> colorScheme.primaryContainer
        variant == MrComicCardVariant.Muted -> colorScheme.surfaceContainerLow
        variant == MrComicCardVariant.Primary -> colorScheme.primaryContainer
        variant == MrComicCardVariant.Secondary -> colorScheme.secondaryContainer
        variant == MrComicCardVariant.Tertiary -> colorScheme.tertiaryContainer
        else -> colorScheme.surface
    }
    val resolvedBorder = border ?: if (selected) {
        BorderStroke(1.dp, colorScheme.primary.copy(alpha = MrComicAlphaTokens.Subtle))
    } else {
        null
    }
    Surface(
        modifier = if (fillMaxWidth) modifier.fillMaxWidth() else modifier,
        shape = shape ?: RoundedCornerShape(cornerRadius),
        color = resolvedContainer,
        contentColor = contentColor,
        border = resolvedBorder,
        tonalElevation = tonalElevation,
        shadowElevation = shadowElevation,
        content = content
    )
}

@Composable
fun MrComicSurfaceCard(
    modifier: Modifier = Modifier,
    fillMaxWidth: Boolean = true,
    selected: Boolean = false,
    contentPadding: PaddingValues = PaddingValues(horizontal = 10.dp, vertical = 8.dp),
    verticalSpacing: Dp = MrComicSpacingTokens.x1,
    content: @Composable ColumnScope.() -> Unit
) {
    // Editorial Ink: surfaceContainerHigh is a pure M3 tone (no alpha dimming).
    val colorScheme = MaterialTheme.colorScheme
    MrComicCard(
        modifier = modifier,
        fillMaxWidth = fillMaxWidth,
        selected = selected,
        containerColor = if (selected) colorScheme.primaryContainer else colorScheme.surfaceContainerHigh,
        cornerRadius = MrComicCornerScale.lg,
        contentPadding = contentPadding,
        verticalSpacing = verticalSpacing,
        content = content
    )
}
