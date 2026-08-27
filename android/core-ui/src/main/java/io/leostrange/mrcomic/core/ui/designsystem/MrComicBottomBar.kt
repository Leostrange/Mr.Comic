package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBars
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.HorizontalDivider
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
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp

/**
 * Editorial Ink bottom navigation bar.
 *
 *  • 64 dp content height plus the navigation-bars inset.
 *  • Indicator: 64×32 dp pill with 14 dp radius, [MrComicCornerScale.lg].
 *  • Icon: 24 dp; label: 11 sp Medium ([MrComicType.navLabel]).
 *  • Up to 5 destinations per Material 3 spec.
 */
@Composable
fun MrComicBottomBar(
    destinations: List<MrComicBottomBarDestination>,
    currentRoute: String?,
    onDestinationClick: (MrComicBottomBarDestination) -> Unit,
    modifier: Modifier = Modifier,
) {
    val colorScheme = MaterialTheme.colorScheme
    Surface(
        modifier = modifier.fillMaxWidth(),
        color = colorScheme.surface,
        contentColor = colorScheme.onSurface,
        tonalElevation = 0.dp,
        shadowElevation = 0.dp,
    ) {
        Column {
            HorizontalDivider(
                thickness = 0.5.dp,
                color = colorScheme.outlineVariant.copy(alpha = MrComicAlphaTokens.Hairline),
            )
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .windowInsetsPadding(WindowInsets.navigationBars)
                    .height(BAR_HEIGHT)
                    .padding(horizontal = MrComicSpacingTokens.x2),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceEvenly,
            ) {
                destinations.forEach { destination ->
                    MrComicBottomBarItem(
                        destination = destination,
                        selected = currentRoute == destination.route,
                        onClick = { onDestinationClick(destination) },
                    )
                }
            }
        }
    }
}

/** A single bottom-bar entry. */
data class MrComicBottomBarDestination(
    val route: String,
    val label: String,
    val icon: ImageVector,
    val contentDescription: String = label,
)

@Composable
private fun RowScope.MrComicBottomBarItem(
    destination: MrComicBottomBarDestination,
    selected: Boolean,
    onClick: () -> Unit,
) {
    val colorScheme = MaterialTheme.colorScheme
    val interactionSource = remember { MutableInteractionSource() }
    val contentColor = if (selected) colorScheme.onPrimaryContainer else colorScheme.onSurfaceVariant

    Box(
        modifier = Modifier
            .weight(1f)
            .height(BAR_HEIGHT)
            .clickable(
                interactionSource = interactionSource,
                indication = null,
                onClick = onClick,
            ),
        contentAlignment = Alignment.Center,
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(2.dp),
        ) {
            Box(
                modifier = Modifier
                    .size(width = INDICATOR_WIDTH, height = INDICATOR_HEIGHT)
                    .background(
                        color = if (selected) {
                            colorScheme.primaryContainer
                        } else {
                            colorScheme.surface
                        },
                        shape = RoundedCornerShape(MrComicCornerScale.lg),
                    ),
                contentAlignment = Alignment.Center,
            ) {
                Icon(
                    imageVector = destination.icon,
                    contentDescription = destination.contentDescription,
                    modifier = Modifier.size(24.dp),
                    tint = contentColor,
                )
            }
            Text(
                text = destination.label,
                style = MrComicType.navLabel.copy(
                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium,
                ),
                color = contentColor,
                maxLines = 1,
                softWrap = false,
                overflow = TextOverflow.Clip,
                textAlign = TextAlign.Center,
            )
        }
    }
}

private val BAR_HEIGHT: Dp = 64.dp
private val INDICATOR_WIDTH: Dp = 64.dp
private val INDICATOR_HEIGHT: Dp = 32.dp
