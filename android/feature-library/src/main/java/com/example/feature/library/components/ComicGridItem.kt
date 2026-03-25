package com.example.feature.library.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.ExperimentalFoundationApi
import androidx.compose.foundation.background
import androidx.compose.foundation.combinedClickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.CheckCircle
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.alpha
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.core.model.Comic
import com.example.core.model.isReadCompleted
import com.example.core.model.isReadingInProgress
import com.example.core.ui.library.LibraryShelfBar
import com.example.core.ui.library.libraryCardElevation
import com.example.core.ui.locale.AppStrings
import com.example.core.ui.locale.LocalStrings

/** Semantic color for "completed" status — used in both grid and list cards. */
private val CompletedGreen = Color(0xFF4CAF50)

private fun bookmarkCd(strings: AppStrings): String = when (strings.languageCode) {
    "en" -> "Bookmarked"
    "ja" -> "ブックマーク済み"
    "zh" -> "已收藏"
    "ko" -> "북마크됨"
    else -> "Избранное"
}

private fun completedCd(strings: AppStrings): String = when (strings.languageCode) {
    "en" -> "Completed"
    "ja" -> "読了"
    "zh" -> "已读完"
    "ko" -> "완독"
    else -> "Прочитано"
}

private fun libraryGridCoverRatio(
    thumbnailMode: String,
    cardStyle: String
): Float {
    if (thumbnailMode == "SQUARE") return 1f
    return when (cardStyle) {
        "COMPACT" -> 0.64f
        "SHOWCASE" -> 0.69f
        else -> 0.66f
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
fun ComicGridItem(
    comic: Comic,
    isGrid: Boolean,
    cardStyle: String,
    tileSizeDp: Int,
    coverScaleMode: String,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    graphicCoverStyle: String,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showProgressIndicators: Boolean,
    showCoverTitles: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val strings = LocalStrings.current
    if (isGrid) {
        GridCard(
            comic = comic,
            strings = strings,
            cardStyle = cardStyle,
            coverScaleMode = coverScaleMode,
            thumbnailMode = thumbnailMode,
            shelfStyle = shelfStyle,
            shelfDepth = shelfDepth,
            graphicCoverStyle = graphicCoverStyle,
            cardShadow = cardShadow,
            titleScale = titleScale,
            titleLines = titleLines,
            cardStroke = cardStroke,
            cardCornerRadius = cardCornerRadius,
            titlePanelOpacity = titlePanelOpacity,
            showProgressIndicators = showProgressIndicators,
            showCoverTitles = showCoverTitles,
            onClick = onClick,
            onLongClick = onLongClick,
            modifier = modifier
        )
    } else {
        ListCard(
            comic = comic,
            strings = strings,
            cardStyle = cardStyle,
            tileSizeDp = tileSizeDp,
            coverScaleMode = coverScaleMode,
            thumbnailMode = thumbnailMode,
            shelfStyle = shelfStyle,
            shelfDepth = shelfDepth,
            graphicCoverStyle = graphicCoverStyle,
            cardShadow = cardShadow,
            titleScale = titleScale,
            titleLines = titleLines,
            cardStroke = cardStroke,
            cardCornerRadius = cardCornerRadius,
            showProgressIndicators = showProgressIndicators,
            onClick = onClick,
            onLongClick = onLongClick,
            modifier = modifier
        )
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun GridCard(
    comic: Comic,
    strings: AppStrings,
    cardStyle: String,
    coverScaleMode: String,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    graphicCoverStyle: String,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    titlePanelOpacity: Float,
    showProgressIndicators: Boolean,
    showCoverTitles: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier
) {
    val formatLabel = remember(comic.format) { comic.formatLabel() }
    val isText = comic.isTextBookFormat()
    val isGraphic = comic.isGraphicVolumeFormat()
    val coverScale = if (coverScaleMode == "FIT") ContentScale.Fit else ContentScale.Crop
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
    val surfaceAlpha = MaterialTheme.colorScheme.surface.alpha
    val containerColor = when {
        isGraphic -> MaterialTheme.colorScheme.surfaceContainerLowest
            .copy(alpha = (surfaceAlpha * 0.76f).coerceIn(0.5f, 0.9f))
        isText -> lerp(
            MaterialTheme.colorScheme.surfaceContainerLow,
            MaterialTheme.colorScheme.secondaryContainer,
            0.18f
        ).copy(alpha = (surfaceAlpha * 0.76f).coerceIn(0.5f, 0.9f))
        cardStyle == "SHOWCASE" -> MaterialTheme.colorScheme.surfaceContainerLow
            .copy(alpha = (surfaceAlpha * 0.76f).coerceIn(0.5f, 0.9f))
        else -> MaterialTheme.colorScheme.surfaceContainer
            .copy(alpha = (surfaceAlpha * 0.74f).coerceIn(0.48f, 0.88f))
    }
    val cardBorder = BorderStroke(
        width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
        color = when {
            isGraphic -> MaterialTheme.colorScheme.primary.copy(alpha = 0.06f + cardStroke.coerceIn(0f, 1f) * 0.18f)
            isText -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.08f + cardStroke.coerceIn(0f, 1f) * 0.18f)
            else -> MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.05f + cardStroke.coerceIn(0f, 1f) * 0.16f)
        }
    )
    val titleColor = when {
        isGraphic -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.96f)
        isText -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.9f)
        else -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
    }

    Card(
        modifier = modifier
            .fillMaxWidth()
            .combinedClickable(onClick = onClick, onLongClick = onLongClick),
        shape = cardShape,
        colors = CardDefaults.cardColors(containerColor = containerColor),
        border = cardBorder,
        elevation = CardDefaults.cardElevation(defaultElevation = libraryCardElevation(cardShadow))
    ) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .aspectRatio(coverRatio)
                .clip(cardShape)
        ) {
            CoverArt(
                coverPath = comic.coverPath,
                title = comic.title,
                contentScale = coverScale,
                modifier = Modifier.fillMaxSize(),
                emptyGraphic = isGraphic
            )
            ComicCoverTreatment(
                comic = comic,
                shape = cardShape,
                graphicCoverStyle = graphicCoverStyle,
                modifier = Modifier.fillMaxSize()
            )
            GridCardBadges(
                comic = comic,
                strings = strings,
                isGraphic = isGraphic,
                formatLabel = formatLabel,
                titleColor = titleColor,
                titleScale = titleScale,
                titleLines = titleLines,
                titlePanelOpacity = titlePanelOpacity,
                badgeShape = RoundedCornerShape((radiusBase * 0.72f).coerceAtLeast(8.dp)),
                showProgressIndicators = showProgressIndicators,
                showCoverTitles = showCoverTitles
            )
        }
    }
}

@Composable
private fun BoxScope.GridCardBadges(
    comic: Comic,
    strings: AppStrings,
    isGraphic: Boolean,
    formatLabel: String?,
    titleColor: Color,
    titleScale: Float,
    titleLines: Int,
    titlePanelOpacity: Float,
    badgeShape: RoundedCornerShape,
    showProgressIndicators: Boolean,
    showCoverTitles: Boolean
) {
    val showProgressChip = showProgressIndicators && comic.isReadingInProgress()
    val showCompletedChip = comic.isReadCompleted()
    val titleBottomPadding = if (showProgressChip || showCompletedChip) 30.dp else 8.dp

    // Bookmark badge — top-left
    if (comic.isBookmarked) {
        Surface(
            modifier = Modifier
                .padding(6.dp)
                .align(Alignment.TopStart),
            shape = RoundedCornerShape(12.dp),
            color = Color.Black.copy(alpha = 0.25f),
            border = BorderStroke(0.5.dp, Color.White.copy(alpha = 0.15f))
        ) {
            Icon(
                Icons.Filled.Bookmark,
                contentDescription = bookmarkCd(strings),
                modifier = Modifier
                    .padding(4.dp)
                    .size(14.dp),
                tint = Color.White
            )
        }
    }

    // Format badge — top-right
    if (formatLabel != null) {
        Box(modifier = Modifier.align(Alignment.TopEnd).padding(6.dp)) {
            FormatBadge(formatLabel, isGraphic = isGraphic)
        }
    }
    if (showCoverTitles) {
        Surface(
            modifier = Modifier
                .align(Alignment.BottomStart)
                .padding(start = 6.dp, end = 10.dp, bottom = titleBottomPadding)
                .widthIn(max = 160.dp),
            shape = badgeShape,
            color = Color.Black.copy(alpha = titlePanelOpacity.coerceIn(0.18f, 0.78f)),
            border = BorderStroke(0.5.dp, Color.White.copy(alpha = 0.14f))
        ) {
            Text(
                text = comic.title,
                style = MaterialTheme.typography.labelMedium.copy(fontSize = (12.sp * titleScale.coerceIn(0.85f, 1.3f))),
                maxLines = titleLines.coerceIn(1, 3),
                overflow = TextOverflow.Ellipsis,
                color = titleColor.copy(alpha = 0.98f),
                modifier = Modifier.padding(horizontal = 8.dp, vertical = 6.dp)
            )
        }
    }

    if (showProgressChip) {
        Surface(
            modifier = Modifier
                .align(Alignment.BottomStart)
                .padding(start = 6.dp, bottom = 6.dp),
            shape = RoundedCornerShape(6.dp),
            color = Color.Black.copy(alpha = 0.3f), // Glassmorphic base
            border = BorderStroke(0.5.dp, Color.White.copy(alpha = 0.15f))
        ) {
            Text(
                "${(comic.readingProgress * 100).toInt()}%",
                style = MaterialTheme.typography.labelSmall.copy(fontSize = 9.sp),
                color = Color.White,
                modifier = Modifier.padding(horizontal = 5.dp, vertical = 2.dp)
            )
        }
    }

    if (showCompletedChip) {
        Surface(
            modifier = Modifier
                .align(Alignment.BottomStart)
                .padding(start = 6.dp, bottom = 6.dp),
            shape = RoundedCornerShape(999.dp),
            color = Color.Black.copy(alpha = 0.3f), // Glass backdrop
            border = BorderStroke(0.5.dp, Color.White.copy(alpha = 0.15f))
        ) {
            Row(
                modifier = Modifier.padding(horizontal = 6.dp, vertical = 4.dp),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(4.dp)
            ) {
                Icon(
                    Icons.Filled.CheckCircle,
                    contentDescription = completedCd(strings),
                    modifier = Modifier.size(14.dp),
                    tint = CompletedGreen
                )
                Text(
                    "100%",
                    style = MaterialTheme.typography.labelSmall.copy(fontSize = 9.sp),
                    color = Color.White
                )
            }
        }
    }

    if (showProgressIndicators && comic.readingProgress > 0f) {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(1.5.dp)
                .align(Alignment.BottomCenter)
                .background(Color.Black.copy(alpha = 0.1f))
        ) {
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .fillMaxWidth(comic.readingProgress.coerceIn(0f, 1f))
                    .background(
                        if (isGraphic) {
                            Brush.horizontalGradient(
                                listOf(
                                    MaterialTheme.colorScheme.primary.copy(alpha = 0.66f),
                                    MaterialTheme.colorScheme.tertiary.copy(alpha = 0.58f)
                                )
                            )
                        } else {
                            Brush.horizontalGradient(
                                listOf(
                                    MaterialTheme.colorScheme.secondary.copy(alpha = 0.58f),
                                    MaterialTheme.colorScheme.primary.copy(alpha = 0.42f)
                                )
                            )
                        }
                    )
            )
        }
    }
}

@OptIn(ExperimentalFoundationApi::class)
@Composable
private fun ListCard(
    comic: Comic,
    strings: AppStrings,
    cardStyle: String,
    tileSizeDp: Int,
    coverScaleMode: String,
    thumbnailMode: String,
    shelfStyle: String,
    shelfDepth: Float,
    graphicCoverStyle: String,
    cardShadow: Float,
    titleScale: Float,
    titleLines: Int,
    cardStroke: Float,
    cardCornerRadius: Int,
    showProgressIndicators: Boolean,
    onClick: () -> Unit,
    onLongClick: () -> Unit,
    modifier: Modifier
) {
    val formatLabel = remember(comic.format) { comic.formatLabel() }
    val isText = comic.isTextBookFormat()
    val isGraphic = comic.isGraphicVolumeFormat()
    val coverScale = if (coverScaleMode == "FIT") ContentScale.Fit else ContentScale.Crop
    val listBaseHeight = (tileSizeDp * 0.52f).coerceIn(56f, 120f).dp
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
    val contentPadding = when (cardStyle) {
        "COMPACT" -> 8.dp
        "SHOWCASE" -> 10.dp
        else -> 9.dp
    }
    val listSurfaceAlpha = MaterialTheme.colorScheme.surface.alpha
    val containerColor = when {
        isGraphic -> MaterialTheme.colorScheme.surfaceContainerLowest
            .copy(alpha = (listSurfaceAlpha * 0.68f).coerceIn(0.44f, 0.82f))
        isText -> lerp(
            MaterialTheme.colorScheme.surfaceContainerLow,
            MaterialTheme.colorScheme.secondaryContainer,
            0.18f
        ).copy(alpha = (listSurfaceAlpha * 0.76f).coerceIn(0.5f, 0.9f))
        cardStyle == "SHOWCASE" -> MaterialTheme.colorScheme.surfaceContainerLow
            .copy(alpha = (listSurfaceAlpha * 0.76f).coerceIn(0.5f, 0.9f))
        else -> MaterialTheme.colorScheme.surfaceContainer
            .copy(alpha = (listSurfaceAlpha * 0.74f).coerceIn(0.48f, 0.88f))
    }
    val cardBorder = BorderStroke(
        width = (0.65f + cardStroke.coerceIn(0f, 1f) * 0.9f).dp,
        color = when {
            isGraphic -> MaterialTheme.colorScheme.primary.copy(alpha = 0.06f + cardStroke.coerceIn(0f, 1f) * 0.18f)
            isText -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.08f + cardStroke.coerceIn(0f, 1f) * 0.18f)
            else -> MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.05f + cardStroke.coerceIn(0f, 1f) * 0.16f)
        }
    )
    val titleColor = when {
        isGraphic -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.96f)
        isText -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.9f)
        else -> MaterialTheme.colorScheme.onSurface.copy(alpha = 0.92f)
    }

    val radiusBase = cardCornerRadius.coerceIn(6, 24).dp
    val cardShape = when (cardStyle) {
        "COMPACT" -> RoundedCornerShape(radiusBase * 0.82f)
        "SHOWCASE" -> RoundedCornerShape(radiusBase * 1.18f)
        else -> RoundedCornerShape(radiusBase)
    }
    val thumbShape = RoundedCornerShape((radiusBase * 0.52f).coerceAtLeast(4.dp))

    Card(
        modifier = modifier
            .fillMaxWidth()
            .combinedClickable(onClick = onClick, onLongClick = onLongClick),
        shape = cardShape,
        colors = CardDefaults.cardColors(containerColor = containerColor),
        border = cardBorder,
        elevation = CardDefaults.cardElevation(defaultElevation = libraryCardElevation(cardShadow))
    ) {
        Column(modifier = Modifier.padding(contentPadding)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(
                    modifier = Modifier
                        .size(thumbSize.first, thumbSize.second)
                        .clip(thumbShape)
                ) {
                    val coverPath = comic.coverPath
                    CoverArt(
                        coverPath = coverPath,
                        title = comic.title,
                        contentScale = coverScale,
                        modifier = Modifier.fillMaxSize(),
                        emptyGraphic = isGraphic
                    )
                    ComicCoverTreatment(
                        comic = comic,
                        shape = thumbShape,
                        graphicCoverStyle = graphicCoverStyle,
                        modifier = Modifier.fillMaxSize()
                    )
                    if (comic.isBookmarked) {
                        Icon(
                            Icons.Filled.Bookmark,
                            contentDescription = null,
                            modifier = Modifier
                                .padding(2.dp)
                                .size(14.dp)
                                .align(Alignment.TopStart),
                            tint = MaterialTheme.colorScheme.primary
                        )
                    }
                }
                Spacer(Modifier.width(12.dp))
                Column(modifier = Modifier.weight(1f)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text(
                            comic.title,
                            style = MaterialTheme.typography.titleSmall.copy(fontSize = (14.sp * titleScale.coerceIn(0.85f, 1.3f))),
                            maxLines = titleLines.coerceIn(1, 3),
                            overflow = TextOverflow.Ellipsis,
                            color = titleColor,
                            modifier = Modifier.weight(1f)
                        )
                    if (comic.isReadCompleted()) {
                            Spacer(Modifier.width(4.dp))
                            Icon(
                                Icons.Filled.CheckCircle,
                                contentDescription = completedCd(strings),
                                modifier = Modifier.size(16.dp),
                                tint = CompletedGreen
                            )
                        }
                    }
                    comic.series?.let { series ->
                        Text(
                            series,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    if (formatLabel != null) {
                        Spacer(Modifier.height(2.dp))
                        FormatBadge(formatLabel, isGraphic = isGraphic)
                    }
                    Spacer(Modifier.height(4.dp))
                    if (showProgressIndicators && comic.isReadingInProgress()) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            LinearProgressIndicator(
                                progress = { comic.readingProgress.coerceIn(0f, 1f) },
                                modifier = Modifier.weight(1f).height(1.5.dp).clip(RoundedCornerShape(2.dp)),
                                color = if (isGraphic) MaterialTheme.colorScheme.primary.copy(alpha = 0.66f) else MaterialTheme.colorScheme.secondary.copy(alpha = 0.58f),
                                trackColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.64f)
                            )
                            Text(
                                if (comic.isReadCompleted()) "100%" else "${(comic.readingProgress * 100).toInt()}%",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    } else if (comic.isReadCompleted()) {
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                Icons.Filled.CheckCircle,
                                contentDescription = completedCd(strings),
                                modifier = Modifier.size(16.dp),
                                tint = CompletedGreen
                            )
                            Text(
                                "100%",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }
                }
            }
            ShelfFooter(
                shelfStyle = shelfStyle,
                shelfDepth = shelfDepth,
                modifier = Modifier.padding(top = 10.dp)
            )
        }
    }
}

@Composable
private fun ShelfFooter(
    shelfStyle: String,
    shelfDepth: Float,
    modifier: Modifier = Modifier
) {
    val shelfAreaHeight = remember(shelfDepth) {
        val baseH = 8f + (shelfDepth.coerceIn(0f, 1f) * 8f)
        (baseH + 2f).dp + 8.dp // 8dp is the vertical padding (4dp * 2)
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
