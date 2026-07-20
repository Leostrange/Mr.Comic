package com.example.core.ui.designsystem

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedCard
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

@Composable
fun MrComicPanelCard(
    title: String,
    modifier: Modifier = Modifier,
    hint: String? = null,
    content: @Composable ColumnScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val lightChrome = colorScheme.background.luminance() > 0.45f
    OutlinedCard(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(MrComicRadiusTokens.xl),
        border = BorderStroke(
            width = 1.dp,
            color = colorScheme.outlineVariant.copy(alpha = if (lightChrome) 0.44f else 0.28f)
        ),
        colors = CardDefaults.outlinedCardColors(
            containerColor = colorScheme.surface.copy(alpha = if (lightChrome) 0.94f else 0.9f)
        )
    ) {
        Column(
            modifier = Modifier.padding(horizontal = MrComicSpacingTokens.x4, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(9.dp)
        ) {
            Text(title, style = MaterialTheme.typography.titleSmall, fontWeight = FontWeight.SemiBold)
            if (!hint.isNullOrBlank()) {
                Text(hint, style = MaterialTheme.typography.bodySmall, color = MaterialTheme.colorScheme.onSurfaceVariant)
            }
            content()
        }
    }
}

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
    cornerRadius: Dp = MrComicRadiusTokens.xl,
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
    cornerRadius: Dp = MrComicRadiusTokens.xl,
    tonalElevation: Dp = 0.dp,
    shadowElevation: Dp = 0.dp,
    content: @Composable () -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val resolvedContainer = containerColor ?: when {
        selected -> colorScheme.primaryContainer.copy(alpha = 0.84f)
        variant == MrComicCardVariant.Muted -> colorScheme.surfaceContainerHigh.copy(alpha = 0.62f)
        variant == MrComicCardVariant.Primary -> colorScheme.primaryContainer.copy(alpha = 0.42f)
        variant == MrComicCardVariant.Secondary -> colorScheme.secondaryContainer.copy(alpha = 0.34f)
        variant == MrComicCardVariant.Tertiary -> colorScheme.tertiaryContainer.copy(alpha = 0.26f)
        else -> colorScheme.surface
    }
    val resolvedBorder = border ?: if (selected) BorderStroke(1.dp, colorScheme.primary.copy(alpha = 0.34f)) else null
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
    MrComicCard(
        modifier = modifier,
        fillMaxWidth = fillMaxWidth,
        selected = selected,
        containerColor = if (selected) MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.84f) else MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f),
        cornerRadius = MrComicRadiusTokens.lg,
        contentPadding = contentPadding,
        verticalSpacing = verticalSpacing,
        content = content
    )
}
