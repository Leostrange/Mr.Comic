package io.leostrange.mrcomic.core.ui.designsystem

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage

/** Aspect ratio of the cover in a [MrComicLibraryCard]. */
enum class MrComicLibraryCardAspect(val ratio: Float) {
    /** 2:3 — default, used for books, comics, manga. */
    Portrait(2f / 3f),

    /** 16:9 — wide, used for landscape covers and banners. */
    Wide(16f / 9f),
}

/**
 * Editorial Ink library card. Cover image on top (2:3 by default), 1-2 lines
 * of title and an optional meta line below. No drop shadow; the cover
 * itself provides visual weight, the card frame uses [MrComicCornerScale.md]
 * and a 0.5 dp hairline border.
 */
@Composable
fun MrComicLibraryCard(
    coverUrl: String?,
    title: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    aspect: MrComicLibraryCardAspect = MrComicLibraryCardAspect.Portrait,
    progress: Float? = null,
    onClick: (() -> Unit)? = null,
) {
    val colorScheme = MaterialTheme.colorScheme
    val interactionSource = remember { MutableInteractionSource() }
    val sanitizedProgress = progress?.coerceIn(0f, 1f)

    Column(
        modifier = modifier
            .then(
                if (onClick != null) {
                    Modifier.clickable(
                        interactionSource = interactionSource,
                        indication = null,
                        onClick = onClick,
                    )
                } else {
                    Modifier
                }
            ),
        verticalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x2),
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(aspect.ratio)
                .clip(RoundedCornerShape(MrComicCornerScale.md))
                .background(colorScheme.surfaceContainerHigh),
        ) {
            if (!coverUrl.isNullOrBlank()) {
                AsyncImage(
                    model = coverUrl,
                    contentDescription = title,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize(),
                )
            }
            if (sanitizedProgress != null) {
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomStart)
                        .fillMaxWidth()
                        .height(2.dp)
                        .background(colorScheme.outlineVariant.copy(alpha = MrComicAlphaTokens.Hairline)),
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth(sanitizedProgress)
                            .height(2.dp)
                            .background(colorScheme.primary),
                    )
                }
            }
        }
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(2.dp),
        ) {
            Text(
                text = title,
                style = MrComicType.listTitle,
                color = colorScheme.onSurface,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            if (!subtitle.isNullOrBlank()) {
                Text(
                    text = subtitle,
                    style = MrComicType.meta,
                    color = colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
    }
}

/**
 * Wide row variant of the library card. Cover on the left (72 dp square by
 * default), title/subtitle on the right, optional trailing meta. Useful for
 * continue-reading rows and search results.
 */
@Composable
fun MrComicLibraryCardRow(
    coverUrl: String?,
    title: String,
    modifier: Modifier = Modifier,
    subtitle: String? = null,
    trailing: String? = null,
    onClick: (() -> Unit)? = null,
    coverSize: Dp = 72.dp,
) {
    val colorScheme = MaterialTheme.colorScheme
    val interactionSource = remember { MutableInteractionSource() }
    Row(
        modifier = modifier
            .fillMaxWidth()
            .then(
                if (onClick != null) {
                    Modifier.clickable(
                        interactionSource = interactionSource,
                        indication = null,
                        onClick = onClick,
                    )
                } else {
                    Modifier
                }
            )
            .padding(vertical = MrComicSpacingTokens.x2),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.spacedBy(MrComicSpacingTokens.x3),
    ) {
        Surface(
            modifier = Modifier.size(coverSize),
            shape = RoundedCornerShape(MrComicCornerScale.md),
            color = colorScheme.surfaceContainerHigh,
            border = BorderStroke(
                width = 0.5.dp,
                color = colorScheme.outlineVariant.copy(alpha = MrComicAlphaTokens.Hairline),
            ),
        ) {
            if (!coverUrl.isNullOrBlank()) {
                AsyncImage(
                    model = coverUrl,
                    contentDescription = title,
                    contentScale = ContentScale.Crop,
                    modifier = Modifier
                        .fillMaxSize()
                        .clip(RoundedCornerShape(MrComicCornerScale.md))
                )
            }
        }
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(2.dp),
        ) {
            Text(
                text = title,
                style = MrComicType.listTitle,
                color = colorScheme.onSurface,
                maxLines = 2,
                overflow = TextOverflow.Ellipsis,
            )
            if (!subtitle.isNullOrBlank()) {
                Text(
                    text = subtitle,
                    style = MrComicType.bodySm,
                    color = colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                )
            }
        }
        if (!trailing.isNullOrBlank()) {
            Text(
                text = trailing,
                style = MrComicType.meta,
                color = colorScheme.onSurfaceVariant,
            )
        }
    }
}
