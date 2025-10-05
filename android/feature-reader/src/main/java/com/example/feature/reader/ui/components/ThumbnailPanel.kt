package com.example.feature.reader.ui.components

import android.graphics.Bitmap
import androidx.compose.animation.*
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch

/**
 * Thumbnail panel with horizontal LazyRow
 * Optimized for 500+ pages with lazy loading
 */
@Composable
fun ThumbnailPanel(
    visible: Boolean,
    currentPage: Int,
    totalPages: Int,
    onPageClick: (Int) -> Unit,
    onDismiss: () -> Unit,
    getThumbnail: (Int) -> Bitmap?,
    modifier: Modifier = Modifier
) {
    val listState = rememberLazyListState()
    val coroutineScope = rememberCoroutineScope()
    
    // Scroll to current page when panel becomes visible
    LaunchedEffect(visible, currentPage) {
        if (visible) {
            listState.animateScrollToItem(currentPage.coerceIn(0, totalPages - 1))
        }
    }
    
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(animationSpec = tween(200)) + 
                slideInVertically(
                    initialOffsetY = { it },
                    animationSpec = tween(200)
                ),
        exit = fadeOut(animationSpec = tween(200)) + 
               slideOutVertically(
                   targetOffsetY = { it },
                   animationSpec = tween(200)
               ),
        modifier = modifier
    ) {
        Surface(
            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.95f),
            modifier = Modifier
                .fillMaxWidth()
                .height(180.dp)
                .clip(RoundedCornerShape(topStart = 16.dp, topEnd = 16.dp))
        ) {
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                // Header
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 8.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "Pages",
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                    
                    IconButton(onClick = onDismiss) {
                        Icon(
                            imageVector = Icons.Default.Close,
                            contentDescription = "Close",
                            tint = MaterialTheme.colorScheme.onSurface
                        )
                    }
                }
                
                // Thumbnail list
                LazyRow(
                    state = listState,
                    contentPadding = PaddingValues(horizontal = 16.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    modifier = Modifier.fillMaxSize()
                ) {
                    items(
                        count = totalPages,
                        key = { it }
                    ) { pageIndex ->
                        ThumbnailItem(
                            pageIndex = pageIndex,
                            isCurrentPage = pageIndex == currentPage,
                            thumbnail = getThumbnail(pageIndex),
                            onClick = { onPageClick(pageIndex) }
                        )
                    }
                }
            }
        }
    }
}

/**
 * Individual thumbnail item
 */
@Composable
private fun ThumbnailItem(
    pageIndex: Int,
    isCurrentPage: Boolean,
    thumbnail: Bitmap?,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .width(80.dp)
            .clickable(onClick = onClick),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        // Thumbnail image
        Box(
            modifier = Modifier
                .size(80.dp, 120.dp)
                .clip(RoundedCornerShape(8.dp))
                .background(MaterialTheme.colorScheme.surfaceVariant)
                .then(
                    if (isCurrentPage) {
                        Modifier.border(
                            width = 3.dp,
                            color = MaterialTheme.colorScheme.primary,
                            shape = RoundedCornerShape(8.dp)
                        )
                    } else {
                        Modifier
                    }
                ),
            contentAlignment = Alignment.Center
        ) {
            if (thumbnail != null) {
                Image(
                    bitmap = thumbnail.asImageBitmap(),
                    contentDescription = "Page ${pageIndex + 1}",
                    contentScale = ContentScale.Crop,
                    modifier = Modifier.fillMaxSize()
                )
            } else {
                CircularProgressIndicator(
                    modifier = Modifier.size(24.dp),
                    strokeWidth = 2.dp
                )
            }
        }
        
        Spacer(modifier = Modifier.height(4.dp))
        
        // Page number
        Text(
            text = "${pageIndex + 1}",
            style = MaterialTheme.typography.bodySmall,
            color = if (isCurrentPage) {
                MaterialTheme.colorScheme.primary
            } else {
                MaterialTheme.colorScheme.onSurface
            }
        )
    }
}
