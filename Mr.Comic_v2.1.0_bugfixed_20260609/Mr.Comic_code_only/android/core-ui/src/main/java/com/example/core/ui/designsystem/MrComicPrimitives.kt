package com.example.core.ui.designsystem

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ColumnScope
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.CardDefaults
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.IconButton
import androidx.compose.material3.IconButtonDefaults
import androidx.compose.material3.Icon
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.OutlinedCard
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Shape
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import java.util.Locale

enum class MrComicCardVariant {
    Default,
    Muted,
    Primary,
    Secondary,
    Tertiary,
}

enum class MrComicIconButtonVariant {
    Plain,
    Tonal,
    Filled,
}

enum class MrComicButtonVariant {
    Filled,
    Tonal,
    Outlined,
    Text,
}

enum class MrComicStatusTone {
    Neutral,
    Info,
    Success,
    Warning,
    Error,
}

@Composable
fun MrComicBottomNavigationBar(
    modifier: Modifier = Modifier,
    content: @Composable RowScope.() -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    Surface(
        modifier = modifier,
        color = colorScheme.surface.copy(alpha = 0.94f),
        tonalElevation = 0.dp,
        shadowElevation = 0.dp
    ) {
        Column {
            HorizontalDivider(
                color = colorScheme.outlineVariant.copy(alpha = 0.44f)
            )
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .navigationBarsPadding()
                    .padding(horizontal = MrComicSpacingTokens.x2, vertical = MrComicSpacingTokens.x1),
                horizontalArrangement = Arrangement.SpaceAround,
                verticalAlignment = Alignment.Top,
                content = content
            )
        }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun RowScope.MrComicBottomNavigationItem(
    icon: ImageVector,
    label: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val colorScheme = MaterialTheme.colorScheme
    val interactionSource = remember { MutableInteractionSource() }
    val contentColor = if (selected) colorScheme.primary else colorScheme.onSurfaceVariant

    Box(
        modifier = modifier
            .weight(1f)
            .height(52.dp)
            .clickable(
                interactionSource = interactionSource,
                indication = null,
                onClick = onClick
            ),
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(2.dp)
        ) {
            Surface(
                modifier = Modifier.size(width = 64.dp, height = 32.dp),
                shape = RoundedCornerShape(MrComicRadiusTokens.lg),
                color = if (selected) {
                    colorScheme.primary.copy(alpha = 0.14f)
                } else {
                    Color.Transparent
                },
                tonalElevation = 0.dp,
                shadowElevation = 0.dp
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(
                        imageVector = icon,
                        contentDescription = label,
                        modifier = Modifier.size(22.dp),
                        tint = contentColor
                    )
                }
            }
            Text(
                text = label,
                maxLines = 1,
                softWrap = false,
                overflow = TextOverflow.Clip,
                textAlign = TextAlign.Center,
                color = contentColor,
                modifier = Modifier
                    .fillMaxWidth()
                    .basicMarquee(),
                style = MaterialTheme.typography.labelSmall.copy(
                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                    platformStyle = PlatformTextStyle(includeFontPadding = false)
                )
            )
        }
    }
}

@Composable
fun MrComicButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    variant: MrComicButtonVariant = MrComicButtonVariant.Filled,
    enabled: Boolean = true,
    contentPadding: PaddingValues = PaddingValues(horizontal = 22.dp, vertical = 10.dp),
    content: @Composable RowScope.() -> Unit
) {
    val shape = RoundedCornerShape(MrComicRadiusTokens.pill)
    when (variant) {
        MrComicButtonVariant.Filled -> Button(
            onClick = onClick,
            modifier = modifier.heightIn(min = 40.dp),
            enabled = enabled,
            shape = shape,
            contentPadding = contentPadding,
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.primary,
                contentColor = MaterialTheme.colorScheme.onPrimary
            ),
            content = content
        )

        MrComicButtonVariant.Tonal -> FilledTonalButton(
            onClick = onClick,
            modifier = modifier.heightIn(min = 40.dp),
            enabled = enabled,
            shape = shape,
            contentPadding = contentPadding,
            colors = ButtonDefaults.filledTonalButtonColors(
                containerColor = MaterialTheme.colorScheme.primaryContainer,
                contentColor = MaterialTheme.colorScheme.onPrimaryContainer
            ),
            content = content
        )

        MrComicButtonVariant.Outlined -> OutlinedButton(
            onClick = onClick,
            modifier = modifier.heightIn(min = 40.dp),
            enabled = enabled,
            shape = shape,
            contentPadding = contentPadding,
            border = BorderStroke(1.dp, MaterialTheme.colorScheme.outline.copy(alpha = 0.44f)),
            colors = ButtonDefaults.outlinedButtonColors(
                contentColor = MaterialTheme.colorScheme.primary
            ),
            content = content
        )

        MrComicButtonVariant.Text -> TextButton(
            onClick = onClick,
            modifier = modifier.heightIn(min = 40.dp),
            enabled = enabled,
            shape = shape,
            contentPadding = PaddingValues(horizontal = 12.dp, vertical = 10.dp),
            colors = ButtonDefaults.textButtonColors(
                contentColor = MaterialTheme.colorScheme.primary
            ),
            content = content
        )
    }
}

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
            Text(
                title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold
            )
            if (!hint.isNullOrBlank()) {
                Text(
                    hint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
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
            modifier = Modifier
                .fillMaxWidth()
                .padding(contentPadding),
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
    val resolvedBorder = border ?: if (selected) {
        BorderStroke(1.dp, colorScheme.primary.copy(alpha = 0.34f))
    } else {
        null
    }
    val resolvedShape = shape ?: RoundedCornerShape(cornerRadius)
    Surface(
        modifier = if (fillMaxWidth) modifier.fillMaxWidth() else modifier,
        shape = resolvedShape,
        color = resolvedContainer,
        contentColor = contentColor,
        border = resolvedBorder,
        tonalElevation = tonalElevation,
        shadowElevation = shadowElevation
    ) {
        content()
    }
}

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
        containerColor = if (selected) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.84f)
        } else {
            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
        },
        cornerRadius = MrComicRadiusTokens.lg,
        contentPadding = contentPadding,
        verticalSpacing = verticalSpacing,
        content = content
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
fun MrComicFormatBadge(
    label: String,
    isGraphic: Boolean,
    modifier: Modifier = Modifier
) {
    val container = MaterialTheme.colorScheme.surface.copy(alpha = if (isGraphic) 0.9f else 0.92f)
    val borderAlpha = if (isGraphic) 0.3f else 0.26f
    Surface(
        modifier = modifier,
        shape = RoundedCornerShape(MrComicRadiusTokens.sm),
        color = container,
        border = BorderStroke(
            width = 0.6.dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = borderAlpha)
        )
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
            val resolvedContentDescription = contentDescription ?: text
            Icon(
                imageVector = leadingIcon,
                contentDescription = resolvedContentDescription,
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

@Composable
fun MrComicSectionHeader(
    title: String,
    modifier: Modifier = Modifier
) {
    Text(
        text = title.uppercase(Locale.getDefault()),
        modifier = modifier
            .fillMaxWidth()
            .padding(horizontal = MrComicSpacingTokens.x4, vertical = MrComicSpacingTokens.x2),
        style = MaterialTheme.typography.labelSmall.copy(
            fontWeight = FontWeight.SemiBold,
            letterSpacing = 0.8.sp
        ),
        color = MaterialTheme.colorScheme.primary,
        maxLines = 1,
        overflow = TextOverflow.Ellipsis
    )
}

@Composable
fun MrComicSettingsRow(
    title: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    icon: ImageVector? = null,
    iconContentDescription: String? = null,
    value: String? = null,
    enabled: Boolean = true,
    compact: Boolean = false,
    onClick: (() -> Unit)? = null,
    trailing: @Composable RowScope.() -> Unit = {}
) {
    val colorScheme = MaterialTheme.colorScheme
    val interactionSource = remember { MutableInteractionSource() }
    val rowModifier = Modifier
        .fillMaxWidth()
        .then(
            if (onClick != null && enabled) {
                Modifier.clickable(
                    interactionSource = interactionSource,
                    indication = null,
                    onClick = onClick
                )
            } else {
                Modifier
            }
        )
        .padding(
            horizontal = MrComicSpacingTokens.x4,
            vertical = if (compact) MrComicSpacingTokens.x2 else 14.dp
        )

    Surface(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(MrComicRadiusTokens.xl),
        color = colorScheme.surfaceVariant,
        tonalElevation = 0.dp,
        shadowElevation = 0.dp
    ) {
        Row(
            modifier = rowModifier,
            horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x3),
            verticalAlignment = Alignment.CenterVertically
        ) {
            if (icon != null) {
                Surface(
                    modifier = Modifier.size(36.dp),
                    shape = RoundedCornerShape(MrComicRadiusTokens.md),
                    color = colorScheme.primary.copy(alpha = 0.11f),
                    contentColor = colorScheme.primary,
                    tonalElevation = 0.dp,
                    shadowElevation = 0.dp
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Icon(
                            imageVector = icon,
                            contentDescription = iconContentDescription,
                            modifier = Modifier.size(18.dp)
                        )
                    }
                }
            }
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.titleSmall,
                    color = if (enabled) {
                        colorScheme.onSurface
                    } else {
                        colorScheme.onSurface.copy(alpha = 0.6f)
                    },
                    maxLines = if (compact) 1 else 2,
                    overflow = TextOverflow.Ellipsis
                )
                if (!subtitle.isNullOrBlank()) {
                    Text(
                        text = subtitle,
                        style = MaterialTheme.typography.bodySmall,
                        color = if (enabled) {
                            colorScheme.onSurfaceVariant
                        } else {
                            colorScheme.onSurfaceVariant.copy(alpha = 0.75f)
                        },
                        maxLines = if (compact) 1 else 3,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
            if (!value.isNullOrBlank()) {
                MrComicSettingsValuePill(value = value)
            }
            trailing()
        }
    }
}

@Composable
fun MrComicCompactValueRow(
    title: String,
    value: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    icon: ImageVector? = null,
    iconContentDescription: String? = null,
    compact: Boolean = true,
    enabled: Boolean = true,
    onClick: () -> Unit
) {
    MrComicSettingsRow(
        title = title,
        subtitle = subtitle,
        icon = icon,
        iconContentDescription = iconContentDescription,
        value = value,
        enabled = enabled,
        compact = compact,
        onClick = onClick,
        modifier = modifier
    ) {
        Text(
            text = "›",
            style = MaterialTheme.typography.titleMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.62f)
        )
    }
}

@Composable
private fun MrComicSettingsValuePill(
    value: String,
    modifier: Modifier = Modifier
) {
    MrComicPill(
        modifier = modifier.widthIn(max = 180.dp),
        containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.1f),
        contentColor = MaterialTheme.colorScheme.primary,
        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)
    ) {
        Text(
            text = value,
            style = MaterialTheme.typography.labelSmall.copy(
                fontWeight = FontWeight.SemiBold,
                letterSpacing = 0.2.sp
            ),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
fun MrComicIconButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    size: Dp = 40.dp,
    enabled: Boolean = true,
    variant: MrComicIconButtonVariant = MrComicIconButtonVariant.Plain,
    content: @Composable () -> Unit
) {
    IconButton(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier
            .width(size)
            .height(size),
        colors = when (variant) {
            MrComicIconButtonVariant.Plain -> IconButtonDefaults.iconButtonColors()
            MrComicIconButtonVariant.Tonal -> IconButtonDefaults.filledTonalIconButtonColors()
            MrComicIconButtonVariant.Filled -> IconButtonDefaults.filledIconButtonColors()
        }
    ) {
        content()
    }
}

@Composable
fun MrComicProgressLine(
    progress: () -> Float,
    modifier: Modifier = Modifier,
    color: Color? = null,
    trackColor: Color? = null
) {
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
fun mrComicCompletedColor(): Color =
    if (MaterialTheme.colorScheme.background.luminance() > 0.45f) {
        mrComicArgbColor(MrComicColorTokens.InkPaperCompletedArgb)
    } else {
        mrComicArgbColor(MrComicColorTokens.InkPaperDarkCompletedArgb)
    }

@Composable
fun MrComicSwitchRow(
    title: String,
    subtitle: String? = null,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    switchScale: Float = 1f
) {
    val shape = RoundedCornerShape(20.dp)
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceVariant,
        shape = shape
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    title,
                    style = MaterialTheme.typography.titleSmall,
                    color = if (enabled) {
                        MaterialTheme.colorScheme.onSurface
                    } else {
                        MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                    }
                )
                if (!subtitle.isNullOrBlank()) {
                    Spacer(Modifier.height(2.dp))
                    Text(
                        subtitle,
                        style = MaterialTheme.typography.bodySmall,
                        color = if (enabled) {
                            MaterialTheme.colorScheme.onSurfaceVariant
                        } else {
                            MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.75f)
                        }
                    )
                }
            }
            Spacer(Modifier.width(MrComicSpacingTokens.x3))
            Switch(
                checked = checked,
                enabled = enabled,
                onCheckedChange = onCheckedChange,
                modifier = Modifier.scale(switchScale)
            )
        }
    }
}

@Composable
fun MrComicSliderTile(
    title: String,
    valueLabel: String,
    value: Float,
    onValueChange: (Float) -> Unit,
    valueRange: ClosedFloatingPointRange<Float>,
    modifier: Modifier = Modifier,
    steps: Int = 0,
    subtitle: String? = null,
    enabled: Boolean = true
) {
    val shape = RoundedCornerShape(20.dp)
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = MaterialTheme.colorScheme.surfaceVariant,
        shape = shape
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(title, style = MaterialTheme.typography.titleSmall)
                    if (!subtitle.isNullOrBlank()) {
                        Text(
                            subtitle,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                Spacer(Modifier.width(MrComicSpacingTokens.x3))
                Text(
                    valueLabel,
                    modifier = Modifier.widthIn(max = 112.dp),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary,
                    fontWeight = FontWeight.SemiBold
                )
            }
            Slider(
                value = value,
                onValueChange = onValueChange,
                valueRange = valueRange,
                steps = steps,
                enabled = enabled,
                modifier = Modifier.fillMaxWidth()
            )
        }
    }
}

@Composable
fun MrComicShelfPreview(
    title: String,
    modifier: Modifier = Modifier,
    accentColor: Color = MrComicLibraryColorTokens.oakTop,
    backgroundColor: Color = MaterialTheme.colorScheme.surfaceContainerHigh,
    label: String? = null,
    selected: Boolean = false
) {
    val shape = RoundedCornerShape(MrComicRadiusTokens.lg)
    val books = listOf(
        MaterialTheme.colorScheme.primary,
        MaterialTheme.colorScheme.secondary,
        MaterialTheme.colorScheme.tertiary,
        accentColor,
        MaterialTheme.colorScheme.surface
    )
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        selected = selected,
        shape = shape,
        containerColor = backgroundColor,
        border = BorderStroke(
            width = 1.dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = if (selected) 0.7f else 0.28f)
        )
    ) {
        Column(
            modifier = Modifier
                .width(156.dp)
                .padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(58.dp),
                horizontalArrangement = Arrangement.spacedBy(4.dp, Alignment.CenterHorizontally),
                verticalAlignment = Alignment.Bottom
            ) {
                books.forEachIndexed { index, color ->
                    Box(
                        modifier = Modifier
                            .width(14.dp)
                            .height((36 + (index % 3) * 6).dp)
                            .clip(RoundedCornerShape(topStart = 3.dp, topEnd = 3.dp))
                            .background(
                                Brush.verticalGradient(
                                    colors = listOf(color.copy(alpha = 0.92f), color.copy(alpha = 0.58f))
                                )
                            )
                    )
                }
            }
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(10.dp)
                    .clip(RoundedCornerShape(2.dp))
                    .background(
                        Brush.verticalGradient(
                            listOf(accentColor.copy(alpha = 0.95f), accentColor.copy(alpha = 0.62f))
                        )
                    )
            )
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = title.uppercase(Locale.getDefault()),
                    style = MaterialTheme.typography.labelSmall.copy(
                        fontWeight = FontWeight.Bold,
                        letterSpacing = 0.8.sp
                    ),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
                if (!label.isNullOrBlank()) {
                    Text(
                        text = label,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = MrComicTypographyTokens.badge),
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1
                    )
                }
            }
        }
    }
}

@Composable
fun MrComicLibraryPresetCard(
    title: String,
    subtitle: String,
    selected: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    accentColor: Color = MaterialTheme.colorScheme.primary,
    previewContent: @Composable ColumnScope.() -> Unit = {}
) {
    MrComicCard(
        modifier = modifier,
        fillMaxWidth = false,
        selected = selected,
        containerColor = if (selected) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.72f)
        } else {
            MaterialTheme.colorScheme.surface
        },
        border = BorderStroke(
            width = 1.dp,
            color = if (selected) {
                accentColor.copy(alpha = 0.46f)
            } else {
                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.32f)
            }
        ),
        contentPadding = PaddingValues(MrComicSpacingTokens.x3),
        verticalSpacing = MrComicSpacingTokens.x2
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .clickable(onClick = onClick),
            verticalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2)
        ) {
            previewContent()
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Box(
                    modifier = Modifier
                        .size(8.dp)
                        .clip(RoundedCornerShape(MrComicRadiusTokens.pill))
                        .background(accentColor)
                )
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = title,
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.SemiBold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    if (subtitle.isNotBlank()) {
                        Text(
                            text = subtitle,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant,
                            maxLines = 2,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                }
            }
        }
    }
}
