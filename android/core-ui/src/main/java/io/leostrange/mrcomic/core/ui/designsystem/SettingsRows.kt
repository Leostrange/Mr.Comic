package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.widthIn
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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
    val rowModifier = Modifier.fillMaxWidth()
        .then(if (onClick != null && enabled) Modifier.clickable(interactionSource = interactionSource, indication = null, onClick = onClick) else Modifier)
        .padding(horizontal = MrComicSpacingTokens.x4, vertical = if (compact) MrComicSpacingTokens.x2 else 14.dp)
    Surface(modifier = modifier.fillMaxWidth(), shape = RoundedCornerShape(MrComicRadiusTokens.xl), color = colorScheme.surfaceVariant, tonalElevation = 0.dp, shadowElevation = 0.dp) {
        Row(modifier = rowModifier, horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x3), verticalAlignment = Alignment.CenterVertically) {
            if (icon != null) {
                Surface(modifier = Modifier.size(36.dp), shape = RoundedCornerShape(MrComicRadiusTokens.md), color = colorScheme.primary.copy(alpha = 0.11f), contentColor = colorScheme.primary, tonalElevation = 0.dp, shadowElevation = 0.dp) {
                    Box(contentAlignment = Alignment.Center) { Icon(imageVector = icon, contentDescription = iconContentDescription, modifier = Modifier.size(18.dp)) }
                }
            }
            Column(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(2.dp)) {
                Text(title, style = MaterialTheme.typography.titleSmall, color = if (enabled) colorScheme.onSurface else colorScheme.onSurface.copy(alpha = 0.6f), maxLines = if (compact) 1 else 2, overflow = TextOverflow.Ellipsis)
                if (!subtitle.isNullOrBlank()) Text(subtitle, style = MaterialTheme.typography.bodySmall, color = if (enabled) colorScheme.onSurfaceVariant else colorScheme.onSurfaceVariant.copy(alpha = 0.75f), maxLines = if (compact) 1 else 3, overflow = TextOverflow.Ellipsis)
            }
            if (!value.isNullOrBlank()) MrComicSettingsValuePill(value)
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
    MrComicSettingsRow(title, modifier, subtitle, icon, iconContentDescription, value, enabled, compact, onClick) {
        Text(text = "\u203A", style = MaterialTheme.typography.titleMedium, color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.62f))
    }
}

@Composable
private fun MrComicSettingsValuePill(value: String, modifier: Modifier = Modifier) {
    MrComicPill(modifier = modifier.widthIn(max = 180.dp), containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.1f), contentColor = MaterialTheme.colorScheme.primary, contentPadding = PaddingValues(horizontal = 10.dp, vertical = 4.dp)) {
        Text(text = value, style = MaterialTheme.typography.labelSmall.copy(fontWeight = FontWeight.SemiBold, letterSpacing = 0.2.sp), maxLines = 1, overflow = TextOverflow.Ellipsis)
    }
}
