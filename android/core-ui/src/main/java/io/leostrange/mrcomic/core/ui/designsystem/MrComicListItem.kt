package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.KeyboardArrowRight
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp

/** Leading slot for [MrComicListItem]. */
sealed interface MrComicListItemLeading {
    data class Icon(
        val image: ImageVector,
        val contentDescription: String? = null,
        val tintContainer: Boolean = true,
    ) : MrComicListItemLeading

    data class Custom(val content: @Composable () -> Unit) : MrComicListItemLeading
}

/** Trailing slot for [MrComicListItem]. */
sealed interface MrComicListItemTrailing {
    data class Value(val text: String) : MrComicListItemTrailing
    data class Chevron(val show: Boolean = true) : MrComicListItemTrailing
    data class Switch(
        val checked: Boolean,
        val onCheckedChange: (Boolean) -> Unit,
        val enabled: Boolean = true,
    ) : MrComicListItemTrailing
    data class Custom(val content: @Composable () -> Unit) : MrComicListItemTrailing
}

/**
 * Editorial Ink list item. Flat (no card background) with an optional hairline
 * divider. Use this for settings rows, picker rows, and any list where each
 * row belongs to a section rather than its own container.
 *
 * Sizing: 16 dp vertical padding, 20 dp horizontal padding (or screen padding
 * via [modifier]). Leading icon container is 36 dp square with 10 dp radius.
 * Title is 16 sp Medium ([MrComicType.listTitle]); subtitle is 14 sp Normal
 * ([MrComicType.bodySm]).
 */
@Composable
fun MrComicListItem(
    title: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    leading: MrComicListItemLeading? = null,
    trailing: MrComicListItemTrailing? = MrComicListItemTrailing.Chevron(),
    onClick: (() -> Unit)? = null,
    enabled: Boolean = true,
    divider: Boolean = true,
) {
    val colorScheme = MaterialTheme.colorScheme
    val interactionSource = remember { MutableInteractionSource() }
    val titleAlpha = if (enabled) MrComicAlphaTokens.Solid else MrComicAlphaTokens.Subtle
    val subtitleAlpha = if (enabled) MrComicAlphaTokens.Solid else MrComicAlphaTokens.Hairline

    Surface(
        modifier = modifier
            .fillMaxWidth()
            .then(
                if (onClick != null && enabled) {
                    Modifier.clickable(
                        interactionSource = interactionSource,
                        indication = null,
                        onClick = onClick,
                    )
                } else {
                    Modifier
                }
            ),
        color = Color.Transparent,
        contentColor = colorScheme.onSurface,
    ) {
        Column {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(horizontal = MrComicSpacingTokens.x5, vertical = MrComicSpacingTokens.x4),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x3),
            ) {
                if (leading != null) {
                    MrComicListItemLeading(leading, enabled)
                }
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp),
                ) {
                    Text(
                        text = title,
                        style = MrComicType.listTitle,
                        color = colorScheme.onSurface.copy(alpha = titleAlpha),
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis,
                    )
                    if (!subtitle.isNullOrBlank()) {
                        Text(
                            text = subtitle,
                            style = MrComicType.bodySm,
                            color = colorScheme.onSurfaceVariant.copy(alpha = subtitleAlpha),
                            maxLines = 3,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                }
                if (trailing != null) {
                    MrComicListItemTrailing(trailing, enabled)
                }
            }
            if (divider) {
                HorizontalDivider(
                    modifier = Modifier.padding(
                        start = if (leading != null) MrComicSpacingTokens.x10 else MrComicSpacingTokens.x5,
                    ),
                    thickness = 0.5.dp,
                    color = colorScheme.outlineVariant.copy(alpha = MrComicAlphaTokens.Hairline),
                )
            }
        }
    }
}

@Composable
private fun MrComicListItemLeading(leading: MrComicListItemLeading, enabled: Boolean) {
    when (leading) {
        is MrComicListItemLeading.Icon -> {
            val colorScheme = MaterialTheme.colorScheme
            val containerColor = if (leading.tintContainer) {
                colorScheme.primary.copy(alpha = MrComicAlphaTokens.Hairline)
            } else {
                Color.Transparent
            }
            val contentColor = colorScheme.primary
            Box(
                modifier = Modifier
                    .size(36.dp),
                contentAlignment = Alignment.Center,
            ) {
                Surface(
                    modifier = Modifier.size(36.dp),
                    shape = RoundedCornerShape(MrComicCornerScale.md),
                    color = containerColor,
                    contentColor = contentColor.copy(alpha = if (enabled) MrComicAlphaTokens.Solid else MrComicAlphaTokens.Subtle),
                ) {
                    Box(contentAlignment = Alignment.Center) {
                        Icon(
                            imageVector = leading.image,
                            contentDescription = leading.contentDescription,
                            modifier = Modifier.size(18.dp),
                        )
                    }
                }
            }
        }
        is MrComicListItemLeading.Custom -> leading.content()
    }
}

@Composable
private fun MrComicListItemTrailing(trailing: MrComicListItemTrailing, enabled: Boolean) {
    val colorScheme = MaterialTheme.colorScheme
    when (trailing) {
        is MrComicListItemTrailing.Value -> {
            Surface(
                shape = RoundedCornerShape(MrComicCornerScale.pill),
                color = colorScheme.primary.copy(alpha = MrComicAlphaTokens.Hairline),
                contentColor = colorScheme.primary,
            ) {
                Text(
                    text = trailing.text,
                    style = MrComicType.micro,
                    color = colorScheme.primary.copy(
                        alpha = if (enabled) MrComicAlphaTokens.Solid else MrComicAlphaTokens.Subtle,
                    ),
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(horizontal = 10.dp, vertical = 4.dp),
                )
            }
        }
        is MrComicListItemTrailing.Chevron -> if (trailing.show) {
            Icon(
                imageVector = Icons.AutoMirrored.Filled.KeyboardArrowRight,
                contentDescription = null,
                modifier = Modifier.size(20.dp),
                tint = colorScheme.onSurfaceVariant.copy(
                    alpha = if (enabled) MrComicAlphaTokens.Subtle else MrComicAlphaTokens.Hairline,
                ),
            )
        }
        is MrComicListItemTrailing.Switch -> {
            Switch(
                checked = trailing.checked,
                onCheckedChange = trailing.onCheckedChange,
                enabled = enabled && trailing.enabled,
            )
        }
        is MrComicListItemTrailing.Custom -> trailing.content()
    }
}
