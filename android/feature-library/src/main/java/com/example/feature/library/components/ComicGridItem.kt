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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.lerp
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.core.model.Comic
import com.example.core.model.ComicReadingStatus
import com.example.core.model.displayReadingProgress
import com.example.core.model.readingStatus
import com.example.core.ui.designsystem.MrComicCardSurface
import com.example.core.ui.designsystem.MrComicPill
import com.example.core.ui.designsystem.MrComicProgressLine
import com.example.core.ui.designsystem.MrComicStatusBadge
import com.example.core.ui.designsystem.MrComicStatusTone
import com.example.core.ui.designsystem.mrComicCompletedColor
import com.example.core.ui.library.LibraryShelfBar
import com.example.core.ui.library.libraryCardElevation
import com.example.core.ui.locale.AppStrings
import com.example.core.ui.locale.LocalStrings

// Bug 2.а: expose the cover-ratio helper so `AudiobookGridItem` can reuse the same
// proportions instead of duplicating the COMPACT/SHOWCASE constants.  Keeping it
// `internal` limits the surface to this Gradle module.
internal fun libraryGridCoverRatio(
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

internal fun shouldShowLibraryProgressLine(
    showProgressIndicators: Boolean,
    readingStatus: ComicReadingStatus,
    readingProgress: Float
): Boolean = showProgressIndicators &&
    readingStatus != ComicReadingStatus.NEW &&
    readingProgress > 0f

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
    showProgressIndicators: Boolean,
    showCoverTitles: Boolean
) {
    val readingStatus = comic.readingStatus()
    val showProgressChip = showProgressIndicators && readingStatus == ComicReadingStatus.READING
    val showCompletedChip = readingStatus == ComicReadingStatus.COMPLETED
    val showProgressLine = shouldShowLibraryProgressLine(
        showProgressIndicators = showProgressIndicators,
        readingStatus = readingStatus,
        readingProgress = comic.displayReadingProgress()
    )
    val titleBottomPadding = if (showProgressChip || showCompletedChip) 30.dp else 8.dp
    // Format badge — top-left corner (design system spec)
    if (formatLabel != null) {
        FormatBadge(
            label = formatLabel,
            isGraphic = isGraphic,
            modifier = Modifier
                .align(Alignment.TopStart)
                .padding(start = 6.dp, top = 6.dp)
        )
    }
    if (showCoverTitles) {
        MrComicPill(
            modifier = Modifier
                .align(Alignment.BottomStart)
                .padding(start = 6.dp, end = 10.dp, bottom = titleBottomPadding)
                .widthIn(max = 160.dp),
            containerColor = MaterialTheme.colorScheme.surface.copy(
                alpha = (0.82f + titlePanelOpacity.coerceIn(0.18f, 0.78f) * 0.12f).coerceIn(0.84f, 0.94f)
            ),
            border = BorderStroke(
                0.6.dp,
                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.28f)
            ),
            contentColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.96f),
            contentPadding = PaddingValues(horizontal = 8.dp, vertical = 6.dp)
        ) {
            Text(
                text = comic.title,
                style = MaterialTheme.typography.labelMedium.copy(fontSize = (12.sp * titleScale.coerceIn(0.85f, 1.3f))),
                maxLines = titleLines.coerceIn(1, 3),
                overflow = TextOverflow.Ellipsis,
                color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.96f)
            )
        }
    }

    if (showProgressChip) {
        MrComicStatusBadge(
            text = "${(comic.displayReadingProgress() * 100).toInt()}%",
            tone = MrComicStatusTone.Info,
            modifier = Modifier
                .align(Alignment.BottomStart)
                .padding(start = 6.dp, bottom = 6.dp)
        )
    }

    if (showCompletedChip) {
        val completedColor = mrComicCompletedColor()
        MrComicStatusBadge(
            text = "100%",
            tone = MrComicStatusTone.Success,
            leadingIcon = Icons.Filled.CheckCircle,
            contentDescription = strings.libraryStatusCompleted,
            modifier = Modifier
                .align(Alignment.BottomStart)
                .padding(start = 6.dp, bottom = 6.dp),
            containerColor = completedColor.copy(alpha = 0.18f),
            contentColor = completedColor
        )
    }

    if (showProgressLine) {
        val progressColor = when {
            readingStatus == ComicReadingStatus.COMPLETED -> mrComicCompletedColor()
            isGraphic -> MaterialTheme.colorScheme.primary.copy(alpha = 0.66f)
            else -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.58f)
        }
        MrComicProgressLine(
            progress = comic::displayReadingProgress,
            modifier = Modifier
                .fillMaxWidth()
                .height(2.dp)
                .align(Alignment.BottomCenter),
            color = progressColor,
            trackColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.64f)
        )
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

    MrComicCardSurface(
        modifier = modifier
            .fillMaxWidth()
            .combinedClickable(onClick = onClick, onLongClick = onLongClick),
        shape = cardShape,
        containerColor = containerColor,
        border = cardBorder,
        shadowElevation = libraryCardElevation(cardShadow)
    ) {
        Column(modifier = Modifier.padding(contentPadding)) {
            val readingStatus = comic.readingStatus()
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
                            contentDescription = strings.readerBookmarked,
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
                        val completedColor = mrComicCompletedColor()
                        Text(
                            comic.title,
                            style = MaterialTheme.typography.titleSmall.copy(fontSize = (14.sp * titleScale.coerceIn(0.85f, 1.3f))),
                            maxLines = titleLines.coerceIn(1, 3),
                            overflow = TextOverflow.Ellipsis,
                            color = titleColor,
                            modifier = Modifier.weight(1f)
                        )
                        if (readingStatus == ComicReadingStatus.COMPLETED) {
                            Spacer(Modifier.width(4.dp))
                            Icon(
                                Icons.Filled.CheckCircle,
                                contentDescription = strings.libraryStatusCompleted,
                                modifier = Modifier.size(16.dp),
                                tint = completedColor
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
                    if (showProgressIndicators && readingStatus == ComicReadingStatus.READING) {
                        val progressColor = when {
                            readingStatus == ComicReadingStatus.COMPLETED -> mrComicCompletedColor()
                            isGraphic -> MaterialTheme.colorScheme.primary.copy(alpha = 0.66f)
                            else -> MaterialTheme.colorScheme.secondary.copy(alpha = 0.58f)
                        }
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(6.dp)
                        ) {
                            MrComicProgressLine(
                                progress = comic::displayReadingProgress,
                                modifier = Modifier.weight(1f).height(2.dp).clip(RoundedCornerShape(2.dp)),
                                color = progressColor,
                                trackColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.64f)
                            )
                            Text(
                                "${(comic.displayReadingProgress() * 100).toInt()}%",
                                style = MaterialTheme.typography.labelSmall,
                                color = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    } else if (readingStatus == ComicReadingStatus.COMPLETED) {
                        val completedColor = mrComicCompletedColor()
                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Icon(
                                Icons.Filled.CheckCircle,
                                contentDescription = strings.libraryStatusCompleted,
                                modifier = Modifier.size(16.dp),
                                tint = completedColor
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
            Spacer(Modifier.height(2.dp))
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
