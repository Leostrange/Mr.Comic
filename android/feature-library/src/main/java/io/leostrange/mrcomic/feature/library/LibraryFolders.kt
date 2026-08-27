package io.leostrange.mrcomic.feature.library

// Phase B (2026-08-05): Folder/grid UI extracted from LibraryScreen.kt

import androidx.compose.animation.core.animateDpAsState
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.library.*
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.library.components.CoverArt
import io.leostrange.mrcomic.feature.library.components.FolderBackgroundStack
import io.leostrange.mrcomic.feature.library.components.FolderCoverTreatment
import io.leostrange.mrcomic.feature.library.components.LibraryFallbackCover
import io.leostrange.mrcomic.feature.library.components.LibraryFallbackCoverKind
import io.leostrange.mrcomic.feature.library.components.libraryGridCoverRatio

@Composable
internal fun LibraryGridCell(
    isGrid: Boolean,
    tileSizeDp: Int,
    content: @Composable () -> Unit
) {
    if (!isGrid) {
        content()
        return
    }
    val animatedTileSize by animateDpAsState(
        targetValue = tileSizeDp.dp,
        label = "libraryTileSize"
    )
    Box(
        modifier = Modifier.fillMaxWidth(),
        contentAlignment = Alignment.TopCenter
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .widthIn(max = animatedTileSize)
        ) {
            content()
        }
    }
}

@Composable
internal fun BreadcrumbRow(
    breadcrumbs: List<LibraryBreadcrumb>,
    canNavigateUp: Boolean,
    onNavigateUp: () -> Unit,
    onNavigateTo: (String?) -> Unit
) {
    LazyRow(
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 2.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        modifier = Modifier.fillMaxWidth()
    ) {
        if (canNavigateUp) {
            item(key = "navigate_up") {
                Surface(
                    modifier = Modifier.clickable(onClick = onNavigateUp),
                    shape = RoundedCornerShape(999.dp),
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                ) {
                    Row(
                        modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(4.dp)
                    ) {
                        Icon(
                            imageVector = Icons.AutoMirrored.Filled.ArrowBack,
                            contentDescription = LocalStrings.current.back,
                            modifier = Modifier.size(16.dp),
                            tint = MaterialTheme.colorScheme.primary
                        )
                    }
                }
            }
        }
        items(breadcrumbs, key = { it.path ?: "root" }) { crumb ->
            Surface(
                modifier = Modifier.clickable { onNavigateTo(crumb.path) },
                shape = RoundedCornerShape(999.dp),
                color = if (crumb.path == breadcrumbs.lastOrNull()?.path) {
                    MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                } else {
                    MaterialTheme.colorScheme.surfaceContainerLow
                }
            ) {
                Text(
                    text = crumb.label,
                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
                    style = MaterialTheme.typography.labelMedium,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
    }
}

@Composable
@OptIn(ExperimentalFoundationApi::class)
internal fun FolderCard(
    folder: LibraryFolderItem,
    isGrid: Boolean,
    cardStyle: String,
    tileSizeDp: Int,
    coverScale: String,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    onClick: () -> Unit,
    onLongClick: () -> Unit
) {
    val strings = LocalStrings.current
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(8.dp)
        "SHOWCASE" -> RoundedCornerShape(14.dp)
        else -> RoundedCornerShape(10.dp)
    }
    val contentPadding = when (cardStyle) {
        "COMPACT" -> 8.dp
        "SHOWCASE" -> 12.dp
        else -> 10.dp
    }
    val containerColor = lerp(
        MaterialTheme.colorScheme.surfaceContainerLow,
        MaterialTheme.colorScheme.secondaryContainer,
        0.1f
    ).copy(alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.7f))
    val cardBorder = androidx.compose.foundation.BorderStroke(
        width = 0.75.dp,
        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.16f)
    )
    val gridCoverRatio = if (thumbnailMode == "SQUARE") {
        1f
    } else {
        when (cardStyle) {
            "COMPACT" -> 0.64f
            "SHOWCASE" -> 0.69f
            else -> 0.66f
        }
    }
    val listBaseHeight = (tileSizeDp * 0.82f).coerceIn(92f, 176f).dp
    val styleFactor = when (cardStyle) {
        "COMPACT" -> 0.92f
        "SHOWCASE" -> 1.12f
        else -> 1.0f
    }
    val rectHeight = (listBaseHeight.value * styleFactor).coerceIn(52f, 132f).dp
    val squareSize = (rectHeight.value * 0.82f).coerceIn(48f, 112f).dp
    val listThumbSize = if (thumbnailMode == "SQUARE") {
        squareSize to squareSize
    } else {
        (rectHeight * 0.7f) to rectHeight
    }
    if (isGrid) {
        MrComicCardSurface(
            modifier = Modifier
                .fillMaxWidth()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                ),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Column {
                FolderCover(
                    coverPath = folder.coverPath,
                    title = folder.title,
                    fileCount = folder.fileCount,
                    subfolderCount = folder.subfolderCount,
                    coverScale = coverScale,
                    showTitleOverlay = true,
                    modifier = Modifier
                        .fillMaxWidth()
                        .aspectRatio(gridCoverRatio)
                )
            }
        }
    } else {
        MrComicCardSurface(
            modifier = Modifier
                .height(rectHeight)
                .fillMaxWidth()
                .combinedClickable(
                    onClick = onClick,
                    onLongClick = onLongClick
                ),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Column(modifier = Modifier.padding(contentPadding + 2.dp)) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    FolderCover(
                        coverPath = folder.coverPath,
                        title = folder.title,
                        fileCount = folder.fileCount,
                        subfolderCount = folder.subfolderCount,
                        coverScale = coverScale,
                        showTitleOverlay = false,
                        modifier = Modifier
                            .size(listThumbSize.first, listThumbSize.second)
                            .clip(RoundedCornerShape(6.dp))
                    )
                    Spacer(Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        FolderCollectionMeta(
                            folder = folder,
                            strings = strings,
                            compact = false
                        )
                        Spacer(Modifier.height(4.dp))
                        Text(
                            text = folder.title,
                            style = MaterialTheme.typography.titleSmall,
                            maxLines = 2,
                            overflow = TextOverflow.Ellipsis,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
                        )
                        Text(
                            text = folderDescription(folder, strings),
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                }
                Spacer(Modifier.height(2.dp))
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun FolderCollectionMeta(
    folder: LibraryFolderItem,
    strings: AppStrings,
    compact: Boolean
) {
    val primaryLabel = folderCollectionLabel(strings)
    val secondaryLabel = folderVolumesLabel(folder.fileCount, strings)
    val tertiaryLabel = folderSubcollectionsLabel(folder.subfolderCount, strings)
    FlowRow(
        horizontalArrangement = Arrangement.spacedBy(6.dp),
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        FolderMetaChip(
            text = primaryLabel,
            accent = MaterialTheme.colorScheme.secondary,
            strong = true
        )
        FolderMetaChip(
            text = secondaryLabel,
            accent = MaterialTheme.colorScheme.primary,
            strong = false
        )
        if (!compact && tertiaryLabel != null) {
            FolderMetaChip(
                text = tertiaryLabel,
                accent = MaterialTheme.colorScheme.tertiary,
                strong = false
            )
        }
    }
}

@Composable
internal fun FolderMetaChip(
    text: String,
    accent: Color,
    strong: Boolean
) {
    Surface(
        shape = RoundedCornerShape(999.dp),
        color = accent.copy(alpha = if (strong) 0.16f else 0.1f),
        border = androidx.compose.foundation.BorderStroke(
            width = if (strong) 0.8.dp else 0.6.dp,
            color = accent.copy(alpha = if (strong) 0.28f else 0.18f)
        )
    ) {
        Text(
            text = text,
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 3.dp),
            style = MaterialTheme.typography.labelSmall,
            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.84f),
            maxLines = 1,
            overflow = TextOverflow.Ellipsis
        )
    }
}

@Composable
internal fun FolderCover(
    coverPath: String?,
    title: String,
    fileCount: Int,
    subfolderCount: Int,
    coverScale: String,
    showTitleOverlay: Boolean,
    modifier: Modifier = Modifier
) {
    val hasCover = coverPath != null
    Box(modifier = modifier) {
        FolderBackgroundStack(hasCover = hasCover, modifier = Modifier.fillMaxSize())
        CoverArt(
            coverPath = coverPath,
            title = title,
            contentScale = if (coverScale == "FIT") ContentScale.Fit else ContentScale.Crop,
            modifier = Modifier.fillMaxSize()
                .let { if (hasCover) it.clip(RoundedCornerShape(12.dp)) else it }
        )
        // Cover the FolderOpen icon treatment with the new fallback when there
        // is no cover, so folder cards without artwork still get a distinct
        // gradient/monogram instead of a single flat icon.
        if (!hasCover) {
            LibraryFallbackCover(
                title = title,
                kind = LibraryFallbackCoverKind.FOLDER,
                shape = RoundedCornerShape(12.dp),
                modifier = Modifier.fillMaxSize(),
            )
        }
        FolderCoverTreatment(
            title = title,
            hasCover = hasCover,
            fileCount = fileCount,
            subfolderCount = subfolderCount,
            modifier = Modifier.fillMaxSize()
        )
        if (showTitleOverlay) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .align(Alignment.BottomCenter)
                    .background(
                        Brush.verticalGradient(
                            listOf(Color.Transparent, Color.Black.copy(alpha = 0.56f))
                        )
                    )
                    .padding(horizontal = 10.dp, vertical = 10.dp)
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis,
                    color = Color.White,
                    modifier = Modifier.align(Alignment.BottomStart)
                )
            }
        }
    }
}

@Composable
internal fun ShelfLine(
    shelfStyle: String,
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    val shelfAreaHeight = remember(shelfDepth) {
        val baseH = 8f + (shelfDepth.coerceIn(0f, 1f) * 8f)
        (baseH + 2f).dp + 8.dp
    }
    Box(
        modifier = modifier.fillMaxWidth().height(shelfAreaHeight),
        contentAlignment = Alignment.Center
    ) {
        LibraryShelfBar(
            shelfStyle = shelfStyle,
            colorScheme = MaterialTheme.colorScheme,
            depth = shelfDepth,
            modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp)
        )
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
internal fun AudiobookGridItem(
    audiobook: Audiobook,
    isGrid: Boolean,
    cardStyle: String,
    tileSizeDp: Int,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showCoverTitles: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val coverRatio = libraryGridCoverRatio(
        thumbnailMode = thumbnailMode,
        cardStyle = cardStyle
    )
    val listBaseHeight = (tileSizeDp * 0.82f).coerceIn(92f, 176f).dp
    val styleFactor = when (cardStyle) {
        "COMPACT" -> 0.92f
        "SHOWCASE" -> 1.12f
        else -> 1.0f
    }
    val rectHeight = (listBaseHeight.value * styleFactor).coerceIn(52f, 132f).dp
    val squareSize = (rectHeight.value * 0.82f).coerceIn(48f, 112f).dp
    val thumbSize = if (thumbnailMode == "SQUARE") {
        squareSize to squareSize
    } else {
        (rectHeight * 0.7f) to rectHeight
    }
    val containerColor = if (isGrid) {
        lerp(
            MaterialTheme.colorScheme.surfaceContainerLow,
            MaterialTheme.colorScheme.secondaryContainer,
            0.2f
        ).copy(alpha = MaterialTheme.colorScheme.surface.alpha.coerceAtLeast(0.74f))
    } else {
        MaterialTheme.colorScheme.surface.copy(alpha = 0.94f)
    }
    val cardBorder = androidx.compose.foundation.BorderStroke(
        width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.1f + cardStroke.coerceIn(0f, 1f) * 0.18f)
    )
    val metaText = buildString {
        append("${audiobook.chapters.size} гл.")
        append(if (audiobook.sourceIsFolder) " • папка" else " • файл")
    }

    if (!isGrid) {
        MrComicCardSurface(
            modifier = modifier
                .height(rectHeight)
                .fillMaxWidth()
                .combinedClickable(onClick = onClick, onLongClick = onLongClick),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Row(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(horizontal = 12.dp, vertical = 10.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Box(
                    modifier = Modifier
                        .size(thumbSize.first, thumbSize.second)
                        .clip(RoundedCornerShape((radiusBase * 0.52f).coerceAtLeast(4.dp))),
                    contentAlignment = Alignment.Center
                ) {
                    val listFallbackKind = if (audiobook.sourceIsFolder) {
                        LibraryFallbackCoverKind.AUDIO_FOLDER
                    } else {
                        LibraryFallbackCoverKind.AUDIO_FILE
                    }
                    LibraryFallbackCover(
                        title = audiobook.title,
                        kind = listFallbackKind,
                        modifier = Modifier.fillMaxSize(),
                    )
                    if (audiobook.coverUri != null) {
                        AsyncImage(
                            model = audiobook.coverUri,
                            contentDescription = audiobook.title,
                            contentScale = ContentScale.Crop,
                            modifier = Modifier.fillMaxSize()
                        )
                    }
                }
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Text(
                        text = audiobook.title,
                        style = MaterialTheme.typography.titleSmall.copy(
                            fontSize = (14.sp * titleScale.coerceIn(0.85f, 1.3f))
                        ),
                        maxLines = titleLines.coerceIn(1, 3),
                        overflow = TextOverflow.Ellipsis,
                        color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.94f)
                    )
                    Text(
                        text = metaText,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                Surface(
                    shape = CircleShape,
                    color = MaterialTheme.colorScheme.primary.copy(alpha = 0.16f)
                ) {
                    Icon(
                        Icons.Default.PlayArrow,
                        contentDescription = null,
                        modifier = Modifier.padding(8.dp).size(20.dp),
                        tint = MaterialTheme.colorScheme.primary
                    )
                }
            }
        }
    } else {
        MrComicCardSurface(
            modifier = modifier
                .fillMaxWidth()
                .combinedClickable(onClick = onClick, onLongClick = onLongClick),
            shape = cardShape,
            containerColor = containerColor,
            border = cardBorder,
            shadowElevation = libraryCardElevation(cardShadow)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .aspectRatio(coverRatio),
                contentAlignment = Alignment.Center
            ) {
                val gridFallbackKind = if (audiobook.sourceIsFolder) {
                    LibraryFallbackCoverKind.AUDIO_FOLDER
                } else {
                    LibraryFallbackCoverKind.AUDIO_FILE
                }
                LibraryFallbackCover(
                    title = audiobook.title,
                    kind = gridFallbackKind,
                    modifier = Modifier.fillMaxSize(),
                )
                if (audiobook.coverUri != null) {
                    AsyncImage(
                        model = audiobook.coverUri,
                        contentDescription = audiobook.title,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.fillMaxSize()
                    )
                }
                if (showCoverTitles) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.BottomStart)
                            .padding(start = 6.dp, end = 10.dp, bottom = 10.dp)
                            .widthIn(max = 160.dp),
                        shape = RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(8.dp)),
                        color = MaterialTheme.colorScheme.surfaceContainerHighest.copy(
                            alpha = (0.9f + titlePanelOpacity.coerceIn(0.18f, 0.78f) * 0.06f)
                                .coerceIn(0.92f, 0.98f)
                        ),
                        border = androidx.compose.foundation.BorderStroke(
                            width = 0.6.dp,
                            color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.28f)
                        )
                    ) {
                        Text(
                            text = audiobook.title,
                            style = MaterialTheme.typography.labelMedium.copy(
                                fontSize = (12.sp * titleScale.coerceIn(0.85f, 1.3f))
                            ),
                            maxLines = titleLines.coerceIn(1, 3),
                            overflow = TextOverflow.Ellipsis,
                            color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.96f),
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp)
                        )
                    }
                }
                Box(
                    modifier = Modifier
                        .align(Alignment.BottomEnd)
                        .padding(8.dp)
                        .size(32.dp)
                        .background(
                            color = MaterialTheme.colorScheme.primary.copy(alpha = 0.92f),
                            shape = CircleShape
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        Icons.Default.PlayArrow,
                        contentDescription = null,
                        modifier = Modifier.size(18.dp),
                        tint = MaterialTheme.colorScheme.onPrimary
                    )
                }
            }
        }
    }
}
