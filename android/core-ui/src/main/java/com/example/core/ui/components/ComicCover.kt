package com.example.core.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.outlined.BookmarkBorder
import androidx.compose.material.icons.outlined.BrokenImage
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.unit.Dp
import androidx.compose.ui.unit.dp
import coil.compose.SubcomposeAsyncImage
import coil.request.ImageRequest

/**
 * Comic cover image component with loading states and fallbacks
 * 
 * Features:
 * - Async image loading with Coil
 * - Loading indicator
 * - Error fallback
 * - Placeholder for empty covers
 * - Consistent aspect ratio
 * - Rounded corners
 */
@Composable
fun ComicCover(
    coverPath: String?,
    contentDescription: String?,
    modifier: Modifier = Modifier,
    size: Dp = 120.dp,
    aspectRatio: Float = 0.67f // Standard comic book aspect ratio (2:3)
) {
    val context = LocalContext.current
    
    Box(
        modifier = modifier
            .size(width = size, height = size / aspectRatio)
            .clip(RoundedCornerShape(8.dp))
            .background(MaterialTheme.colorScheme.surfaceVariant),
        contentAlignment = Alignment.Center
    ) {
        if (coverPath.isNullOrBlank()) {
            // Empty state placeholder
            Icon(
                imageVector = Icons.Outlined.BookmarkBorder,
                contentDescription = contentDescription,
                modifier = Modifier.size(size * 0.4f),
                tint = MaterialTheme.colorScheme.outline
            )
        } else {
            // Load image with Coil
            SubcomposeAsyncImage(
                model = ImageRequest.Builder(context)
                    .data(coverPath)
                    .crossfade(true)
                    .build(),
                contentDescription = contentDescription,
                modifier = Modifier.fillMaxSize(),
                contentScale = ContentScale.Crop,
                loading = {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(24.dp),
                            strokeWidth = 2.dp
                        )
                    }
                },
                error = {
                    Box(
                        modifier = Modifier.fillMaxSize(),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(
                            imageVector = Icons.Outlined.BrokenImage,
                            contentDescription = "Failed to load image",
                            modifier = Modifier.size(size * 0.4f),
                            tint = MaterialTheme.colorScheme.error
                        )
                    }
                }
            )
        }
    }
}

/**
 * Large comic cover for detailed views
 */
@Composable
fun LargeComicCover(
    coverPath: String?,
    contentDescription: String?,
    modifier: Modifier = Modifier
) {
    ComicCover(
        coverPath = coverPath,
        contentDescription = contentDescription,
        modifier = modifier,
        size = 200.dp
    )
}

/**
 * Small comic cover for list items
 */
@Composable
fun SmallComicCover(
    coverPath: String?,
    contentDescription: String?,
    modifier: Modifier = Modifier
) {
    ComicCover(
        coverPath = coverPath,
        contentDescription = contentDescription,
        modifier = modifier,
        size = 60.dp
    )
}

/**
 * Thumbnail comic cover for compact views
 */
@Composable
fun ThumbnailComicCover(
    coverPath: String?,
    contentDescription: String?,
    modifier: Modifier = Modifier
) {
    ComicCover(
        coverPath = coverPath,
        contentDescription = contentDescription,
        modifier = modifier,
        size = 40.dp
    )
}