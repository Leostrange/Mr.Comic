package io.leostrange.mrcomic.feature.library.components

import android.net.Uri
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.FolderOpen
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import coil.compose.AsyncImage
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicLibraryShelf
import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.isReadCompleted
import io.leostrange.mrcomic.core.model.isTextReadingFormat
import io.leostrange.mrcomic.core.model.libraryShelfCategory
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFormatBadge
import io.leostrange.mrcomic.core.ui.designsystem.mrComicCompletedColor
import io.leostrange.mrcomic.core.ui.library.normalizeLibraryGraphicCoverStyle
import java.io.File

internal fun Comic.isTextBookFormat(): Boolean = when (libraryShelfCategory()) {
    ComicLibraryShelf.BOOKS -> true
    ComicLibraryShelf.GRAPHIC -> false
    ComicLibraryShelf.AUTO -> format.isTextReadingFormat()
}

internal fun Comic.isGraphicVolumeFormat(): Boolean = when (format) {
    ComicFormat.CBZ,
    ComicFormat.CBR,
    ComicFormat.ZIP,
    ComicFormat.RAR,
    ComicFormat.SEVENZ,
    ComicFormat.TAR,
    ComicFormat.FOLDER,
    ComicFormat.PDF -> libraryShelfCategory() != ComicLibraryShelf.BOOKS
    else -> libraryShelfCategory() == ComicLibraryShelf.GRAPHIC
}

internal fun Comic.formatLabel(): String? = when (format) {
    ComicFormat.UNKNOWN, ComicFormat.FOLDER -> null
    ComicFormat.SEVENZ -> "7Z"
    else -> format.name
}

@Composable
internal fun rememberCoverModel(coverPath: String): Any =
    remember(coverPath) {
        if (coverPath.startsWith("content://")) Uri.parse(coverPath)
        else Uri.fromFile(File(coverPath))
    }

@Composable
internal fun FormatBadge(
    label: String,
    isGraphic: Boolean,
    modifier: Modifier = Modifier
) {
    MrComicFormatBadge(
        label = label,
        isGraphic = isGraphic,
        modifier = modifier
    )
}

@Composable
internal fun BoxScope.ComicCoverTreatment(
    comic: Comic,
    shape: RoundedCornerShape,
    graphicCoverStyle: String = "POSTER",
    modifier: Modifier = Modifier
) {
    val normalizedGraphicStyle = normalizeLibraryGraphicCoverStyle(graphicCoverStyle)
    val hasCover = !comic.coverPath.isNullOrBlank()
    val outlineColor = MaterialTheme.colorScheme.outlineVariant.copy(alpha = if (hasCover) 0.22f else 0.44f)
    val bookSpinePrimary = MaterialTheme.colorScheme.secondary.copy(alpha = if (hasCover) 0.22f else 0.62f)
    val bookSpineSecondary = MaterialTheme.colorScheme.secondaryContainer.copy(alpha = if (hasCover) 0.08f else 0.34f)
    val inkAccent = MaterialTheme.colorScheme.primary.copy(alpha = if (hasCover) 0.28f else 0.54f)
    val minimalOutline = MaterialTheme.colorScheme.outlineVariant.copy(alpha = if (hasCover) 0.16f else 0.3f)
    val posterSpinePrimary = MaterialTheme.colorScheme.primary.copy(alpha = if (hasCover) 0.26f else 0.6f)
    val posterSpineSecondary = MaterialTheme.colorScheme.tertiary.copy(alpha = if (hasCover) 0.12f else 0.28f)
    val completedGraphicBorder = mrComicCompletedColor().copy(alpha = if (hasCover) 0.22f else 0.36f)
    when {
        comic.isTextBookFormat() -> {
            if (hasCover) {
                Box(
                    modifier = modifier
                        .border(
                            width = 0.65.dp,
                            color = outlineColor.copy(alpha = 0.82f),
                            shape = shape
                        )
                )
                if (comic.isReadCompleted()) {
                    Surface(
                        modifier = Modifier
                            .align(Alignment.TopEnd)
                            .padding(6.dp),
                        shape = RoundedCornerShape(topStart = 8.dp, bottomStart = 8.dp, bottomEnd = 4.dp),
                        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.82f)
                    ) {
                        CompletedFoldMarker()
                    }
                }
                return
            }
            Box(
                modifier = modifier
                    .border(
                        width = 0.75.dp,
                        color = outlineColor,
                        shape = shape
                    )
            )
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .width(if (hasCover) 6.dp else 9.dp)
                    .background(
                        Brush.horizontalGradient(
                            listOf(
                                bookSpinePrimary,
                                bookSpineSecondary,
                                Color.Transparent
                            )
                        )
                    )
            )
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .width(1.dp)
                    .offset(x = if (hasCover) 5.dp else 8.dp)
                    .background(Color.White.copy(alpha = if (hasCover) 0.08f else 0.18f))
            )
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(if (hasCover) 10.dp else 16.dp)
                    .align(Alignment.TopCenter)
                    .background(
                        Brush.verticalGradient(
                            listOf(Color.White.copy(alpha = if (hasCover) 0.04f else 0.08f), Color.Transparent)
                        )
                    )
            )
            repeat(if (hasCover) 1 else 2) { idx ->
                Box(
                    modifier = Modifier
                        .fillMaxHeight()
                        .width(1.dp)
                        .align(Alignment.CenterEnd)
                        .offset(x = (-2 - idx * 2).dp)
                        .background(
                            Color.White.copy(
                                alpha = if (hasCover) 0.04f - idx * 0.01f else 0.09f - idx * 0.02f
                            )
                        )
                )
            }
            if (comic.isReadCompleted()) {
                Surface(
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(6.dp),
                    shape = RoundedCornerShape(topStart = 8.dp, bottomStart = 8.dp, bottomEnd = 4.dp),
                    color = MaterialTheme.colorScheme.surface.copy(alpha = 0.82f)
                ) {
                    CompletedFoldMarker()
                }
            }
        }

        comic.isGraphicVolumeFormat() -> {
            if (hasCover) {
                when (normalizedGraphicStyle) {
                    "INK" -> {
                        Box(
                            modifier = modifier
                                .border(
                                    width = 1.1.dp,
                                    color = Color.Black.copy(alpha = 0.44f),
                                    shape = shape
                                )
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(12.dp)
                                .align(Alignment.BottomCenter)
                                .background(
                                    Brush.verticalGradient(
                                        listOf(Color.Transparent, Color.Black.copy(alpha = 0.16f))
                                    )
                                )
                        )
                    }

                    "MINIMAL" -> {
                        Box(
                            modifier = modifier
                                .border(
                                    width = 0.55.dp,
                                    color = minimalOutline,
                                    shape = shape
                                )
                        )
                    }

                    else -> {
                        Box(
                            modifier = modifier
                                .border(
                                    width = 0.8.dp,
                                    color = Color.Black.copy(alpha = 0.14f),
                                    shape = shape
                                )
                        )
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(10.dp)
                                .align(Alignment.TopCenter)
                                .background(
                                    Brush.verticalGradient(
                                        listOf(Color.White.copy(alpha = 0.035f), Color.Transparent)
                                    )
                                )
                        )
                    }
                }
                if (comic.isReadCompleted()) {
                    Box(
                        modifier = modifier
                            .border(
                                width = 1.4.dp,
                                color = completedGraphicBorder.copy(alpha = 0.82f),
                                shape = shape
                            )
                    )
                }
                return
            }
            when (normalizedGraphicStyle) {
                "INK" -> {
                    Box(
                        modifier = modifier
                            .border(
                                width = if (hasCover) 1.55.dp else 2.3.dp,
                                color = Color.Black.copy(alpha = if (hasCover) 0.62f else 0.74f),
                                shape = shape
                            )
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxHeight()
                            .width(if (hasCover) 5.dp else 8.dp)
                            .background(
                                Brush.verticalGradient(
                                    listOf(
                                        Color.Black.copy(alpha = if (hasCover) 0.6f else 0.78f),
                                        inkAccent
                                    )
                                )
                            )
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxHeight()
                            .width(1.dp)
                            .offset(x = if (hasCover) 5.dp else 8.dp)
                            .background(Color.White.copy(alpha = if (hasCover) 0.05f else 0.1f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(if (hasCover) 10.dp else 16.dp)
                            .align(Alignment.TopCenter)
                            .background(
                                Brush.verticalGradient(
                                    listOf(Color.Black.copy(alpha = if (hasCover) 0.1f else 0.18f), Color.Transparent)
                                )
                            )
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(if (hasCover) 14.dp else 20.dp)
                            .align(Alignment.BottomCenter)
                            .background(
                                Brush.verticalGradient(
                                    listOf(Color.Transparent, Color.Black.copy(alpha = if (hasCover) 0.22f else 0.32f))
                                )
                            )
                    )
                    Canvas(modifier = Modifier.fillMaxSize()) {
                        val inset = size.width * 0.075f
                        drawRect(
                            color = Color.White.copy(alpha = if (hasCover) 0.024f else 0.05f),
                            topLeft = Offset(inset, inset),
                            size = Size(size.width - inset * 2f, size.height - inset * 2f),
                            style = Stroke(width = size.width * 0.008f)
                        )
                    }
                }

                "MINIMAL" -> {
                    Box(
                        modifier = modifier
                            .border(
                                width = if (hasCover) 0.65.dp else 0.85.dp,
                                color = minimalOutline,
                                shape = shape
                            )
                    )
                    Canvas(modifier = Modifier.fillMaxSize()) {
                        if (!hasCover) {
                            val margin = size.width * 0.075f
                            drawRect(
                                color = Color.White.copy(alpha = 0.07f),
                                topLeft = Offset(margin, margin),
                                size = Size(size.width - margin * 2f, size.height - margin * 2f),
                                style = Stroke(width = size.width * 0.009f)
                            )
                        }
                        drawLine(
                            color = Color.Black.copy(alpha = if (hasCover) 0.06f else 0.12f),
                            start = Offset(0f, size.height - size.height * 0.12f),
                            end = Offset(size.width, size.height - size.height * 0.12f),
                            strokeWidth = size.height * if (hasCover) 0.009f else 0.012f
                        )
                    }
                }

                else -> {
                    Box(
                        modifier = modifier
                            .border(
                                width = if (hasCover) 0.9.dp else 1.35.dp,
                                color = Color.Black.copy(alpha = if (hasCover) 0.16f else 0.3f),
                                shape = shape
                            )
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxHeight()
                            .width(if (hasCover) 3.dp else 5.dp)
                            .background(
                                Brush.verticalGradient(
                                    listOf(
                                        posterSpinePrimary,
                                        posterSpineSecondary
                                    )
                                )
                            )
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(if (hasCover) 8.dp else 12.dp)
                            .align(Alignment.BottomCenter)
                            .background(
                                Brush.verticalGradient(
                                    listOf(Color.Transparent, Color.Black.copy(alpha = if (hasCover) 0.1f else 0.16f))
                                )
                            )
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(if (hasCover) 8.dp else 12.dp)
                            .align(Alignment.TopCenter)
                            .background(
                                Brush.verticalGradient(
                                    listOf(Color.White.copy(alpha = if (hasCover) 0.04f else 0.08f), Color.Transparent)
                                )
                            )
                    )
                    if (!hasCover) {
                        Canvas(modifier = Modifier.fillMaxSize()) {
                            val frameInset = size.width * 0.065f
                            drawRect(
                                color = Color.Black.copy(alpha = 0.14f),
                                topLeft = Offset(frameInset, frameInset),
                                size = Size(size.width - frameInset * 2f, size.height - frameInset * 2f),
                                style = Stroke(width = size.width * 0.01f)
                            )
                        }
                    }
                }
            }
            if (comic.isReadCompleted()) {
                Box(
                    modifier = modifier
                        .border(
                            width = 2.dp,
                            color = completedGraphicBorder,
                            shape = shape
                        )
                )
            }
        }
    }
}

@Composable
private fun CompletedFoldMarker() {
    Surface(
        modifier = Modifier.padding(horizontal = 6.dp, vertical = 4.dp),
        shape = RoundedCornerShape(999.dp),
        color = Color.Black.copy(alpha = 0.35f),
        border = androidx.compose.foundation.BorderStroke(0.5.dp, Color.White.copy(alpha = 0.15f))
    ) {
        Box(
            modifier = Modifier.size(16.dp),
            contentAlignment = Alignment.Center
        ) {
            Icon(
                imageVector = Icons.Default.Check,
                contentDescription = null,
                tint = Color.White,
                modifier = Modifier.size(12.dp)
            )
        }
    }
}

@Composable
internal fun BoxScope.FolderBackgroundStack(
    hasCover: Boolean,
    modifier: Modifier = Modifier
) {
    val frameShape = RoundedCornerShape(14.dp)
    val stackTint = MaterialTheme.colorScheme.surfaceContainerHighest.copy(alpha = 0.7f)
    if (hasCover) {
        // Draw stacked books behind the main cover!
        Box(
            modifier = Modifier
                .fillMaxSize()
                .offset(x = (-4).dp, y = (-8).dp)
                .clip(frameShape)
                .background(stackTint.copy(alpha = 0.25f))
        )
        Box(
            modifier = Modifier
                .fillMaxSize()
                .offset(x = (-2).dp, y = (-4).dp)
                .clip(frameShape)
                .background(stackTint.copy(alpha = 0.45f))
        )
    } else {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .offset(x = (-7).dp, y = 8.dp)
                .clip(frameShape)
                .background(stackTint.copy(alpha = 0.18f))
        )
        Box(
            modifier = Modifier
                .fillMaxSize()
                .offset(x = (-4).dp, y = 4.dp)
                .clip(frameShape)
                .background(stackTint.copy(alpha = 0.28f))
        )
        Box(
            modifier = Modifier
                .fillMaxSize()
                .border(
                    width = 0.9.dp,
                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.28f),
                    shape = frameShape
                )
        )
    }
}

@Composable
internal fun BoxScope.FolderCoverTreatment(
    title: String,
    hasCover: Boolean,
    fileCount: Int,
    subfolderCount: Int,
    modifier: Modifier = Modifier
) {
    val frameShape = RoundedCornerShape(14.dp)
    val stackAccent = MaterialTheme.colorScheme.primary.copy(alpha = if (hasCover) 0.2f else 0.3f)
    val visibleVolumes = fileCount.coerceIn(2, 4)
    val visibleSets = subfolderCount.coerceIn(0, 2)
    Box(modifier = modifier.fillMaxSize())
    if (hasCover) {
        Box(
            modifier = Modifier
                .fillMaxSize()
                .border(
                    width = 0.9.dp,
                    color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.22f),
                    shape = frameShape
                )
        )
    } else {
        repeat(visibleVolumes) { index ->
            Box(
                modifier = Modifier
                    .align(Alignment.BottomStart)
                    .padding(start = (10 + index * 10).dp, bottom = 10.dp)
                    .width((8 + index).dp)
                    .fillMaxHeight(0.28f + index * 0.06f)
                    .clip(RoundedCornerShape(4.dp))
                    .background(
                        Brush.verticalGradient(
                            listOf(
                                stackAccent.copy(alpha = 0.34f - index * 0.06f),
                                MaterialTheme.colorScheme.surfaceContainerHighest.copy(alpha = 0.5f)
                            )
                        )
                    )
            )
        }
        repeat(visibleSets) { index ->
            Box(
                modifier = Modifier
                    .align(Alignment.BottomEnd)
                    .padding(end = (10 + index * 8).dp, bottom = 12.dp)
                    .width(6.dp)
                    .fillMaxHeight(0.2f + index * 0.05f)
                    .clip(RoundedCornerShape(4.dp))
                    .background(
                        Brush.verticalGradient(
                            listOf(
                                MaterialTheme.colorScheme.tertiary.copy(alpha = 0.18f - index * 0.04f),
                                MaterialTheme.colorScheme.surfaceContainerHighest.copy(alpha = 0.4f)
                            )
                        )
                    )
            )
        }
    }
    
    // Top inner shadow
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .height(18.dp)
            .align(Alignment.TopCenter)
            .background(
                Brush.verticalGradient(
                    listOf(Color.White.copy(alpha = if (hasCover) 0.08f else 0.06f), Color.Transparent)
                )
            )
    )
    
    // Bottom shadow
    Box(
        modifier = Modifier
            .fillMaxWidth()
            .height(18.dp)
            .align(Alignment.BottomCenter)
            .background(
                Brush.verticalGradient(
                    listOf(Color.Transparent, Color.Black.copy(alpha = 0.14f))
                )
            )
    )
    
    if (!hasCover) {
        Icon(
            Icons.Default.FolderOpen,
            contentDescription = title,
            modifier = Modifier.align(Alignment.Center).size(36.dp),
            tint = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

@Composable
internal fun CoverArt(
    coverPath: String?,
    title: String,
    contentScale: ContentScale,
    modifier: Modifier = Modifier,
    emptyGraphic: Boolean = false
) {
    Box(modifier = modifier.background(MaterialTheme.colorScheme.surfaceVariant)) {
        if (coverPath != null) {
            AsyncImage(
                model = rememberCoverModel(coverPath),
                contentDescription = title,
                contentScale = contentScale,
                modifier = Modifier.fillMaxSize()
            )
        } else {
            Icon(
                Icons.AutoMirrored.Filled.MenuBook,
                contentDescription = title,
                modifier = Modifier.align(Alignment.Center).size(if (emptyGraphic) 44.dp else 40.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}
