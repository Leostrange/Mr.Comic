package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

/**
 * Compact (64 dp) or expanded (96 dp with subtitle) variant of the top app bar.
 */
enum class MrComicTopAppBarVariant(val minHeight: Dp) {
    Compact(64.dp),
    Expanded(96.dp),
}

/** A single top-bar action — either a direct icon button or an overflow menu item. */
sealed interface MrComicTopAppBarAction {
    val key: String

    data class Icon(
        override val key: String,
        val icon: ImageVector,
        val contentDescription: String,
        val tint: androidx.compose.ui.graphics.Color? = null,
        val onClick: () -> Unit,
    ) : MrComicTopAppBarAction

    data class Overflow(
        override val key: String,
        val label: String,
        val onClick: () -> Unit,
    ) : MrComicTopAppBarAction
}

/**
 * Editorial Ink top app bar. Single 64 dp (or 96 dp expanded) row with an
 * optional tinted back button, a 24 sp title, a subtitle, and 1-3 direct
 * icon actions with a trailing overflow menu.
 *
 *  • Container: `surface` (no alpha tricks).
 *  • Border-bottom: 0.5 dp `outlineVariant` at [MrComicAlphaTokens.Hairline].
 *  • Default action density: 4 dp between same-group icons, 16 dp between
 *    groups, single overflow at the end.
 */
@Composable
fun MrComicTopAppBar(
    title: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    onNavigateUp: (() -> Unit)? = null,
    actions: List<MrComicTopAppBarAction> = emptyList(),
    overflowActions: List<MrComicTopAppBarAction.Overflow> = emptyList(),
    variant: MrComicTopAppBarVariant = MrComicTopAppBarVariant.Compact,
) {
    val colorScheme = MaterialTheme.colorScheme
    val resolvedVariant = if (!subtitle.isNullOrBlank()) MrComicTopAppBarVariant.Expanded else variant
    val (iconActions, remainingOverflow) = remember(actions, overflowActions) {
        val direct = actions.filterIsInstance<MrComicTopAppBarAction.Icon>()
        val inline = actions.filterIsInstance<MrComicTopAppBarAction.Overflow>()
        val effectiveOverflow = (inline + overflowActions).distinctBy { it.key }
        direct to effectiveOverflow
    }

    Surface(
        modifier = modifier.fillMaxWidth(),
        color = colorScheme.surface,
        contentColor = colorScheme.onSurface,
        tonalElevation = 0.dp,
        shadowElevation = 0.dp,
    ) {
        Column {
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .windowInsetsPadding(WindowInsets.statusBars)
                    .heightIn(min = resolvedVariant.minHeight)
                    .padding(horizontal = MrComicSpacingTokens.x4),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2),
            ) {
                if (onNavigateUp != null) {
                    MrComicTopAppBarIconButton(
                        icon = Icons.AutoMirrored.Filled.ArrowBack,
                        contentDescription = "Back",
                        onClick = onNavigateUp,
                    )
                }
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp),
                ) {
                    Text(
                        text = title,
                        style = MrComicType.h1,
                        color = colorScheme.onSurface,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                    )
                    if (!subtitle.isNullOrBlank() && resolvedVariant == MrComicTopAppBarVariant.Expanded) {
                        Text(
                            text = subtitle,
                            style = MrComicType.meta,
                            color = colorScheme.onSurfaceVariant,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis,
                        )
                    }
                }
                MrComicTopAppBarActions(iconActions, remainingOverflow)
            }
            HorizontalDivider(
                thickness = 0.5.dp,
                color = colorScheme.outlineVariant.copy(alpha = MrComicAlphaTokens.Hairline),
            )
        }
    }
}

@Composable
private fun MrComicTopAppBarActions(
    iconActions: List<MrComicTopAppBarAction.Icon>,
    overflowActions: List<MrComicTopAppBarAction.Overflow>,
) {
    val visibleIcons = iconActions.take(MAX_INLINE_ICONS)
    val hiddenIcons = iconActions.drop(MAX_INLINE_ICONS)
    val colorScheme = MaterialTheme.colorScheme

    Row(
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x1),
    ) {
        visibleIcons.forEach { action ->
            MrComicTopAppBarIconButton(
                icon = action.icon,
                contentDescription = action.contentDescription,
                tint = action.tint,
                onClick = action.onClick,
            )
        }
        if (hiddenIcons.isNotEmpty() || overflowActions.isNotEmpty()) {
            var menuExpanded by remember { mutableStateOf(false) }
            Box {
                MrComicTopAppBarIconButton(
                    icon = Icons.Default.MoreVert,
                    contentDescription = "More",
                    onClick = { menuExpanded = true },
                )
                DropdownMenu(
                    expanded = menuExpanded,
                    onDismissRequest = { menuExpanded = false },
                    shape = RoundedCornerShape(MrComicCornerScale.lg),
                    containerColor = colorScheme.surfaceContainer,
                ) {
                    (hiddenIcons.map { icon ->
                        MrComicTopAppBarAction.Overflow(
                            key = icon.key,
                            label = icon.contentDescription,
                            onClick = icon.onClick,
                        )
                    } + overflowActions).forEach { item ->
                        DropdownMenuItem(
                            text = { Text(item.label, style = MrComicType.body) },
                            onClick = {
                                menuExpanded = false
                                item.onClick()
                            },
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun MrComicTopAppBarIconButton(
    icon: ImageVector,
    contentDescription: String,
    onClick: () -> Unit,
    tint: androidx.compose.ui.graphics.Color? = null,
) {
    val colorScheme = MaterialTheme.colorScheme
    IconButton(
        onClick = onClick,
        modifier = Modifier.size(40.dp),
    ) {
        Icon(
            imageVector = icon,
            contentDescription = contentDescription,
            tint = tint ?: colorScheme.onSurface,
        )
    }
}

private const val MAX_INLINE_ICONS = 2
