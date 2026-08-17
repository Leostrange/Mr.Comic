// Phase Q (2026-08-03):
// Пресет-карточки (4 шт.) → SettingsLibraryPresets.kt.
// Остались: 4 визуальных превью.

// Phase P (2026-08-03): презеты + превью вынесены из SettingsLibrarySection.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import android.net.Uri
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.library.LibraryBackdropLayer
import io.leostrange.mrcomic.core.ui.library.LibraryShelfBar
import io.leostrange.mrcomic.core.ui.library.libraryCardElevation

/**
 * Library presets and previews (Phase P, 2026-08-03): non-viewModel composables
 * — background/shelf preset cards, theme preset cards, quick preset tiles,
 * style/volume/folder previews, and background image preview.
 * Moved from SettingsLibrarySection.kt; behavior is unchanged.
 */

/* ──── LibraryBackgroundPresetCard ──── */
// LibraryBackgroundPresetCard → SettingsLibraryPresets.kt (Phase Q 2026-08-03)

/* ──── SelectedLibraryBackgroundPreview ──── */
@Composable
internal fun SelectedLibraryBackgroundPreview(
    imageUri: String,
    title: String,
    hint: String,
    modifier: Modifier = Modifier
) {
    val parsedUri = remember(imageUri) { Uri.parse(imageUri) }
    val displayName = remember(imageUri) {
        parsedUri.lastPathSegment
            ?.substringAfterLast('/')
            ?.substringAfterLast(':')
            ?.takeIf { it.isNotBlank() }
            ?: imageUri
    }

    MrComicCardSurface(
        modifier = modifier.fillMaxWidth(),
        cornerRadius = 16.dp,
        containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.24f)
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(10.dp),
            horizontalArrangement = Arrangement.spacedBy(12.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            AsyncImage(
                model = parsedUri,
                contentDescription = null,
                modifier = Modifier
                    .size(width = 88.dp, height = 56.dp)
                    .clip(RoundedCornerShape(12.dp)),
                contentScale = androidx.compose.ui.layout.ContentScale.Crop
            )
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = displayName,
                    style = MaterialTheme.typography.bodyMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Text(
                    text = hint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

/* ──── LibraryShelfPresetCard ──── */
// LibraryShelfPresetCard → SettingsLibraryPresets.kt (Phase Q 2026-08-03)

/* ──── LibraryThemePresetCard ──── */
// LibraryThemePresetCard → SettingsLibraryPresets.kt (Phase Q 2026-08-03)

/* ──── FlowRowScope.LibraryQuickPresetTile ──── */
// FlowRowScope.LibraryQuickPresetTile → SettingsLibraryPresets.kt (Phase Q 2026-08-03)

/* ──── LibraryStylePreview ──── */
@Composable
internal fun LibraryStylePreview(
    uiState: SettingsUiState,
    libraryText: LibrarySectionText,
    modifier: Modifier = Modifier
) {
    val styleLabel = libraryBackgroundStyleLabel(uiState.libraryBackgroundStyle, uiState.appLanguage)
    val shelfLabel = libraryShelfStyleLabel(uiState.libraryShelfStyle, uiState.appLanguage)
    val shape = RoundedCornerShape(22.dp)
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        shape = shape,
        containerColor = Color.Transparent
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(184.dp)
                .clip(shape)
        ) {
            LibraryBackdropLayer(
                backgroundStyle = uiState.libraryBackgroundStyle,
                backgroundImageUri = uiState.libraryBackgroundImageUri,
                colorScheme = MaterialTheme.colorScheme,
                backdropStrength = uiState.libraryBackdropStrength,
                backgroundBlur = uiState.libraryBackgroundBlur,
                imageVeil = uiState.libraryBackgroundVeil,
                modifier = Modifier.fillMaxSize()
            )
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(MaterialTheme.colorScheme.scrim.copy(alpha = 0.06f))
            )
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 12.dp, vertical = 10.dp),
                verticalArrangement = Arrangement.SpaceBetween
            ) {
                Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                    Text(
                        text = libraryText.previewTitle,
                        style = MaterialTheme.typography.titleSmall,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                    Text(
                        text = "${libraryText.backgroundStyle}: $styleLabel",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Text(
                        text = "${libraryText.shelfStyle}: $shelfLabel",
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        verticalAlignment = Alignment.Bottom
                    ) {
                        LibraryPreviewVolume(
                            title = libraryText.previewNovel,
                            accent = MaterialTheme.colorScheme.secondary,
                            isGraphic = false,
                            cardStyle = uiState.libraryCardStyle,
                            coverScaleMode = uiState.libraryCoverScale,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
                            titleScale = uiState.libraryTitleScale,
                            titleLines = uiState.libraryTitleLines,
                            cardStroke = uiState.libraryCardStroke,
                            cardCornerRadius = uiState.libraryCardCornerRadius,
                            titlePanelOpacity = uiState.libraryTitlePanelOpacity,
                            showProgress = uiState.libraryShowProgress,
                            modifier = Modifier.weight(1f)
                        )
                        LibraryPreviewVolume(
                            title = libraryText.previewGraphic,
                            accent = MaterialTheme.colorScheme.primary,
                            isGraphic = true,
                            cardStyle = uiState.libraryCardStyle,
                            coverScaleMode = uiState.libraryCoverScale,
                            graphicCoverStyle = uiState.libraryGraphicCoverStyle,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
                            titleScale = uiState.libraryTitleScale,
                            titleLines = uiState.libraryTitleLines,
                            cardStroke = uiState.libraryCardStroke,
                            cardCornerRadius = uiState.libraryCardCornerRadius,
                            titlePanelOpacity = uiState.libraryTitlePanelOpacity,
                            showProgress = uiState.libraryShowProgress,
                            modifier = Modifier.weight(1f)
                        )
                        LibraryPreviewFolder(
                            title = libraryText.previewFolder,
                            cardStyle = uiState.libraryCardStyle,
                            isSquare = uiState.libraryThumbnailMode == "SQUARE",
                            shadow = uiState.libraryCardShadow,
                            titleScale = uiState.libraryTitleScale,
                            titleLines = uiState.libraryTitleLines,
                            cardStroke = uiState.libraryCardStroke,
                            cardCornerRadius = uiState.libraryCardCornerRadius,
                            titlePanelOpacity = uiState.libraryTitlePanelOpacity,
                            modifier = Modifier.weight(1f)
                        )
                    }
                    LibraryShelfBar(
                        shelfStyle = uiState.libraryShelfStyle,
                        colorScheme = MaterialTheme.colorScheme,
                        depth = uiState.libraryShelfDepth,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
    }
}

/* ──── LibraryPreviewVolume ──── */
@Composable
internal fun LibraryPreviewVolume(
    title: String,
    accent: Color,
    isGraphic: Boolean,
    cardStyle: String,
    coverScaleMode: String,
    graphicCoverStyle: String = "POSTER",
    isSquare: Boolean,
    shadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showProgress: Boolean,
    modifier: Modifier = Modifier
) {
    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val coverShape = RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(6.dp))
    val cardPadding = when (cardStyle) {
        "COMPACT" -> 5.dp
        "SHOWCASE" -> 7.dp
        else -> 6.dp
    }
    val coverRatio = if (isSquare) 1f else when (cardStyle) {
        "COMPACT" -> 0.64f
        "SHOWCASE" -> 0.69f
        else -> 0.66f
    }
    val fitInset = if (coverScaleMode == "FIT") 6.dp else 0.dp
    val isInk = graphicCoverStyle == "INK"
    val isMinimal = graphicCoverStyle == "MINIMAL"
    val containerColor = when {
        isGraphic -> MaterialTheme.colorScheme.surfaceContainerLowest.copy(alpha = 0.74f)
        else -> lerp(
            MaterialTheme.colorScheme.surfaceContainerLow,
            MaterialTheme.colorScheme.secondaryContainer,
            0.18f
        ).copy(alpha = 0.82f)
    }
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        shape = cardShape,
        shadowElevation = libraryCardElevation(shadow),
        containerColor = containerColor,
        border = BorderStroke(
            width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.06f + cardStroke.coerceIn(0f, 1f) * if (isGraphic) 0.18f else 0.14f)
        )
    ) {
        Column(modifier = Modifier.padding(cardPadding), verticalArrangement = Arrangement.spacedBy(4.dp)) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio)
                    .clip(coverShape)
                    .background(
                        if (isGraphic) {
                            Brush.verticalGradient(
                                listOf(
                                    when {
                                        isMinimal -> accent.copy(alpha = 0.18f)
                                        isInk -> Color.Black.copy(alpha = 0.84f)
                                        else -> accent.copy(alpha = 0.84f)
                                    },
                                    when {
                                        isMinimal -> MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.76f)
                                        isInk -> accent.copy(alpha = 0.52f)
                                        else -> accent.copy(alpha = 0.56f)
                                    },
                                    if (isMinimal) Color.Transparent else Color.Black.copy(alpha = if (isInk) 0.3f else 0.12f)
                                )
                            )
                        } else {
                            Brush.verticalGradient(
                                listOf(
                                    MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.92f),
                                    MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.82f)
                                )
                            )
                        }
                    )
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(fitInset)
                        .clip(coverShape)
                ) {
                    if (isGraphic) {
                        Box(
                            modifier = Modifier
                                .fillMaxSize()
                                .border(
                                    if (isMinimal) 0.65.dp else if (isInk) 1.55.dp else 0.9.dp,
                                    if (isMinimal) {
                                        MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.16f)
                                    } else {
                                        Color.Black.copy(alpha = if (isInk) 0.62f else 0.16f)
                                    },
                                    coverShape
                                )
                        )
                        if (!isMinimal) {
                            if (isInk) {
                                Box(
                                    modifier = Modifier
                                        .fillMaxHeight()
                                        .width(5.dp)
                                        .background(
                                            Brush.verticalGradient(
                                                listOf(Color.Black.copy(alpha = 0.68f), accent.copy(alpha = 0.32f))
                                            )
                                        )
                                )
                            } else {
                                Box(
                                    modifier = Modifier
                                        .fillMaxHeight()
                                        .width(3.dp)
                                        .background(
                                            Brush.verticalGradient(
                                                listOf(accent.copy(alpha = 0.36f), MaterialTheme.colorScheme.tertiary.copy(alpha = 0.14f))
                                            )
                                        )
                                )
                            }
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(if (isInk) 14.dp else 8.dp)
                                    .align(Alignment.BottomCenter)
                                    .background(
                                        Brush.verticalGradient(
                                            listOf(Color.Transparent, Color.Black.copy(alpha = if (isInk) 0.22f else 0.1f))
                                        )
                                    )
                            )
                        }
                        if (!isMinimal) {
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth(if (isInk) 0.2f else 0.22f)
                                    .height(5.dp)
                                    .align(Alignment.TopEnd)
                                    .padding(end = 9.dp, top = 8.dp)
                                    .clip(RoundedCornerShape(999.dp))
                                    .background(Color.White.copy(alpha = if (isInk) 0.06f else 0.08f))
                            )
                        }
                        if (isMinimal) {
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth()
                                    .height(2.dp)
                                    .align(Alignment.BottomCenter)
                                    .background(Color.Black.copy(alpha = 0.06f))
                            )
                        }
                    } else {
                        Box(
                            modifier = Modifier
                                .fillMaxHeight()
                                .width(if (cardStyle == "COMPACT") 5.dp else 6.dp)
                                .background(accent.copy(alpha = 0.32f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxHeight()
                                .width(1.dp)
                                .padding(start = if (cardStyle == "COMPACT") 5.dp else 6.dp)
                                .background(Color.White.copy(alpha = 0.1f))
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(if (cardStyle == "SHOWCASE") 12.dp else 10.dp)
                                .align(Alignment.TopCenter)
                                .background(
                                    Brush.verticalGradient(
                                        listOf(Color.White.copy(alpha = 0.04f), Color.Transparent)
                                    )
                                )
                        )
                        Icon(
                            Icons.AutoMirrored.Filled.MenuBook,
                            contentDescription = null,
                            tint = MaterialTheme.colorScheme.onSurfaceVariant,
                            modifier = Modifier.align(Alignment.Center)
                        )
                    }
                }
                if (showProgress) {
                    val previewProgress = if (isGraphic) 0.68f else 0.42f
                    Box(
                        modifier = Modifier
                            .align(Alignment.BottomCenter)
                            .fillMaxWidth()
                            .height(2.dp)
                            .background(Color.Black.copy(alpha = 0.12f))
                    ) {
                        Box(
                            modifier = Modifier
                                .fillMaxHeight()
                                .fillMaxWidth(previewProgress)
                                .background(
                                    if (isGraphic) {
                                        Brush.horizontalGradient(
                                            listOf(MaterialTheme.colorScheme.primary, MaterialTheme.colorScheme.tertiary)
                                        )
                                    } else {
                                        Brush.horizontalGradient(
                                            listOf(MaterialTheme.colorScheme.secondary, MaterialTheme.colorScheme.primary)
                                        )
                                    }
                                )
                        )
                    }
                    Surface(
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(start = 4.dp, bottom = 5.dp),
                        shape = RoundedCornerShape((radiusBase * 0.42f).coerceAtLeast(4.dp)),
                        color = MaterialTheme.colorScheme.scrim.copy(alpha = titlePanelOpacity.coerceIn(0.18f, 0.78f))
                    ) {
                        Text(
                            if (isGraphic) "68%" else "42%",
                            style = MaterialTheme.typography.labelSmall,
                            color = Color.White.copy(alpha = 0.92f),
                            modifier = Modifier.padding(horizontal = 4.dp, vertical = 1.dp)
                        )
                    }
                }
            }
            Text(
                text = title,
                style = MaterialTheme.typography.labelSmall.copy(fontSize = (11.sp * titleScale.coerceIn(0.85f, 1.3f))),
                maxLines = titleLines.coerceIn(1, 3),
                overflow = TextOverflow.Ellipsis,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
            )
        }
    }
}

/* ──── LibraryPreviewFolder ──── */
@Composable
internal fun LibraryPreviewFolder(
    title: String,
    cardStyle: String,
    isSquare: Boolean,
    shadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    modifier: Modifier = Modifier
) {
    val containerColor = lerp(
        MaterialTheme.colorScheme.surfaceContainerLow,
        MaterialTheme.colorScheme.secondaryContainer,
        0.1f
    ).copy(alpha = 0.8f)
    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val contentPadding = when (cardStyle) {
        "COMPACT" -> 6.dp
        "SHOWCASE" -> 8.dp
        else -> 7.dp
    }
    val coverRatio = if (isSquare) 1f else when (cardStyle) {
        "COMPACT" -> 0.64f
        "SHOWCASE" -> 0.69f
        else -> 0.66f
    }
    MrComicCardSurface(
        modifier = modifier,
        fillMaxWidth = false,
        shape = cardShape,
        shadowElevation = libraryCardElevation(shadow),
        containerColor = containerColor,
        border = BorderStroke(
            width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
            color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.08f + cardStroke.coerceIn(0f, 1f) * 0.16f)
        )
    ) {
        Column(modifier = Modifier.padding(contentPadding), verticalArrangement = Arrangement.spacedBy(5.dp)) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio)
                    .clip(RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(6.dp)))
                    .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.9f))
            ) {
                repeat(3) { index ->
                    Box(
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(start = (10 + index * 9).dp, bottom = 10.dp)
                            .width(8.dp)
                            .fillMaxHeight(0.36f + index * 0.05f)
                            .clip(RoundedCornerShape(4.dp))
                            .background(
                                Brush.verticalGradient(
                                    listOf(
                                        MaterialTheme.colorScheme.primary.copy(alpha = 0.34f - index * 0.05f),
                                        MaterialTheme.colorScheme.surfaceContainerHighest.copy(alpha = 0.44f)
                                    )
                                )
                            )
                    )
                }
                Surface(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(top = 8.dp, end = 8.dp),
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.surface.copy(alpha = 0.82f),
                    border = BorderStroke(
                        width = 0.6.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f)
                    )
                ) {
                    Text(
                        text = "7",
                        modifier = Modifier.padding(horizontal = 7.dp, vertical = 3.dp),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Box(
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .padding(start = 10.dp, top = 8.dp)
                        .width(46.dp)
                        .height(12.dp)
                        .clip(RoundedCornerShape(999.dp))
                        .background(MaterialTheme.colorScheme.secondaryContainer.copy(alpha = 0.78f))
                )
                Box(
                    modifier = Modifier
                        .align(Alignment.Center)
                        .size(30.dp)
                        .clip(RoundedCornerShape(10.dp))
                        .background(MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        Icons.Default.FolderOpen,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
            }
            Text(
                text = title,
                style = MaterialTheme.typography.labelSmall.copy(fontSize = (11.sp * titleScale.coerceIn(0.85f, 1.3f))),
                maxLines = titleLines.coerceIn(1, 3),
                overflow = TextOverflow.Ellipsis,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f),
                modifier = Modifier
                    .background(
                        MaterialTheme.colorScheme.scrim.copy(alpha = titlePanelOpacity.coerceIn(0.18f, 0.78f)),
                        RoundedCornerShape((radiusBase * 0.42f).coerceAtLeast(4.dp))
                    )
                    .padding(horizontal = 6.dp, vertical = 3.dp)
            )
        }
    }
}

