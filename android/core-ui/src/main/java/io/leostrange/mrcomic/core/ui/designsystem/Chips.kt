package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

@Composable
fun MrComicFilterChip(
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    minHeight: Dp = 38.dp,
    leadingIcon: @Composable (() -> Unit)? = null,
    trailingIcon: @Composable (() -> Unit)? = null,
    label: @Composable () -> Unit
) {
    FilterChip(
        selected = selected,
        onClick = onClick,
        enabled = enabled,
        modifier = modifier.heightIn(min = minHeight),
        shape = RoundedCornerShape(MrComicRadiusTokens.pill),
        colors = FilterChipDefaults.filterChipColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant,
            selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
            labelColor = MaterialTheme.colorScheme.onSurface,
            selectedLabelColor = MaterialTheme.colorScheme.onPrimaryContainer
        ),
        leadingIcon = leadingIcon,
        trailingIcon = trailingIcon,
        label = label
    )
}

@Composable
fun MrComicPill(
    modifier: Modifier = Modifier,
    containerColor: Color = MaterialTheme.colorScheme.surfaceVariant,
    contentColor: Color = MaterialTheme.colorScheme.onSurfaceVariant,
    border: BorderStroke? = null,
    contentPadding: PaddingValues = PaddingValues(horizontal = 10.dp, vertical = 6.dp),
    horizontalSpacing: Dp = MrComicSpacingTokens.x1,
    content: @Composable RowScope.() -> Unit
) {
    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(MrComicRadiusTokens.pill),
        color = containerColor,
        contentColor = contentColor,
        border = border
    ) {
        Row(
            modifier = Modifier.padding(contentPadding),
            horizontalArrangement = Arrangement.spacedBy(horizontalSpacing),
            verticalAlignment = Alignment.CenterVertically,
            content = content
        )
    }
}

@Composable
fun MrComicFormatBadge(label: String, isGraphic: Boolean, modifier: Modifier = Modifier) {
    val container = MaterialTheme.colorScheme.surface.copy(alpha = if (isGraphic) 0.9f else 0.92f)
    val borderAlpha = if (isGraphic) 0.3f else 0.26f
    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(MrComicRadiusTokens.sm),
        color = container,
        border = BorderStroke(0.6.dp, MaterialTheme.colorScheme.outlineVariant.copy(alpha = borderAlpha))
    ) {
        Text(
            text = label,
            modifier = Modifier.padding(horizontal = 5.dp, vertical = 2.dp),
            style = MaterialTheme.typography.labelSmall.copy(fontSize = MrComicTypographyTokens.badge),
            color = MaterialTheme.colorScheme.onSurface,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
fun MrComicStatusBadge(
    text: String,
    modifier: Modifier = Modifier,
    tone: MrComicStatusTone = MrComicStatusTone.Neutral,
    leadingIcon: ImageVector? = null,
    contentDescription: String? = null,
    containerColor: Color? = null,
    contentColor: Color? = null
) {
    val colorScheme = MaterialTheme.colorScheme
    val (toneContainerColor, toneContentColor) = when (tone) {
        MrComicStatusTone.Neutral -> colorScheme.surface.copy(alpha = 0.9f) to colorScheme.onSurface
        MrComicStatusTone.Info -> colorScheme.primary.copy(alpha = 0.14f) to colorScheme.primary
        MrComicStatusTone.Success -> colorScheme.tertiary.copy(alpha = 0.16f) to colorScheme.tertiary
        MrComicStatusTone.Warning -> colorScheme.secondary.copy(alpha = 0.18f) to colorScheme.secondary
        MrComicStatusTone.Error -> colorScheme.error.copy(alpha = 0.14f) to colorScheme.error
    }
    val resolvedContainerColor = containerColor ?: toneContainerColor
    val resolvedContentColor = contentColor ?: toneContentColor
    MrComicPill(
        modifier = modifier,
        containerColor = resolvedContainerColor,
        contentColor = resolvedContentColor,
        border = BorderStroke(0.6.dp, colorScheme.outlineVariant.copy(alpha = 0.28f)),
        contentPadding = PaddingValues(horizontal = 6.dp, vertical = 3.dp),
        horizontalSpacing = 4.dp
    ) {
        if (leadingIcon != null) {
            Icon(
                imageVector = leadingIcon,
                contentDescription = contentDescription ?: text,
                tint = resolvedContentColor,
                modifier = Modifier.height(14.dp).width(14.dp)
            )
        }
        Text(
            text = text,
            style = MaterialTheme.typography.labelSmall.copy(fontSize = MrComicTypographyTokens.badge),
            color = resolvedContentColor,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}
