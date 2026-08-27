package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp

/**
 * Section header for in-screen sections (Editorial Ink design system).
 *
 * Visual rhythm: 24 dp top padding / 8 dp bottom padding. Title is 24 sp
 * SemiBold ([MrComicType.h2]), subtitle is 12 sp onSurfaceVariant ([MrComicType.meta]).
 * An optional [trailing] slot hosts a "See all" link, count chip, or any
 * other trailing action.
 */
@Composable
fun MrComicSectionHeader(
    title: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    trailing: (@Composable RowScope.() -> Unit)? = null,
) {
    val colorScheme = MaterialTheme.colorScheme
    Row(
        modifier = modifier
            .fillMaxWidth()
            .padding(top = MrComicSpacingTokens.x6, bottom = MrComicSpacingTokens.x2),
        verticalAlignment = Alignment.Top,
        horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x3),
    ) {
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(2.dp),
        ) {
            Text(
                text = title,
                style = MrComicType.h2,
                color = colorScheme.onSurface,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            if (!subtitle.isNullOrBlank()) {
                Text(
                    text = subtitle,
                    style = MrComicType.meta,
                    color = colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
        if (trailing != null) {
            trailing()
        }
    }
}
