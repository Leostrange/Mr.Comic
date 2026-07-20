package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.basicMarquee
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.PlatformTextStyle
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp

@Composable
fun MrComicBottomNavigationBar(modifier: Modifier = Modifier, content: @Composable RowScope.() -> Unit) {
    val colorScheme = MaterialTheme.colorScheme
    Surface(modifier = modifier, color = colorScheme.surface.copy(alpha = 0.94f), tonalElevation = 0.dp, shadowElevation = 0.dp) {
        Column {
            HorizontalDivider(color = colorScheme.outlineVariant.copy(alpha = 0.44f))
            Row(
                modifier = Modifier.fillMaxWidth().navigationBarsPadding().padding(horizontal = MrComicSpacingTokens.x2, vertical = MrComicSpacingTokens.x1),
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
        modifier = modifier.weight(1f).height(52.dp).clickable(interactionSource = interactionSource, indication = null, onClick = onClick),
        contentAlignment = Alignment.Center
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, verticalArrangement = Arrangement.spacedBy(2.dp)) {
            Surface(
                modifier = Modifier.size(width = 64.dp, height = 32.dp),
                shape = RoundedCornerShape(MrComicRadiusTokens.lg),
                color = if (selected) colorScheme.primary.copy(alpha = 0.14f) else Color.Transparent,
                tonalElevation = 0.dp,
                shadowElevation = 0.dp
            ) {
                Box(contentAlignment = Alignment.Center) {
                    Icon(imageVector = icon, contentDescription = label, modifier = Modifier.size(22.dp), tint = contentColor)
                }
            }
            Text(
                text = label,
                maxLines = 1,
                softWrap = false,
                overflow = TextOverflow.Clip,
                textAlign = TextAlign.Center,
                color = contentColor,
                modifier = Modifier.fillMaxWidth().basicMarquee(),
                style = MaterialTheme.typography.labelSmall.copy(fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Medium, platformStyle = PlatformTextStyle(includeFontPadding = false))
            )
        }
    }
}
