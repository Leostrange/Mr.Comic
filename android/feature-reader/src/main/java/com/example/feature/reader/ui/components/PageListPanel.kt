package com.example.feature.reader.ui.components

import android.graphics.Bitmap
import androidx.compose.animation.*
import androidx.compose.animation.core.tween
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import kotlinx.coroutines.launch

/**
 * Right side panel with list of all pages for navigation
 * Shows thumbnails of all pages with current page highlighted
 */
@Composable
fun PageListPanel(
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
    
    // Thumbnail cache for better performance - используем StateFlow для реактивности
    val thumbnailCache = remember { mutableStateMapOf<Int, Bitmap?>() }
    
    // Показываем кэшированные миниатюры сразу, догружаем отсутствующие
    LaunchedEffect(visible, currentPage, totalPages) {
        if (visible && totalPages > 0) {
            // Сначала показываем уже загруженные миниатюры из основного кэша
            for (pageIndex in 0 until totalPages) {
                val existingThumbnail = getThumbnail(pageIndex)
                if (existingThumbnail != null && !thumbnailCache.containsKey(pageIndex)) {
                    thumbnailCache[pageIndex] = existingThumbnail
                }
            }
            
            // Затем догружаем отсутствующие миниатюры
            val preloadRange = 20 // Load 20 pages at a time
            val startPage = maxOf(0, currentPage - preloadRange / 2)
            val endPage = minOf(totalPages - 1, currentPage + preloadRange / 2)
            
            for (pageIndex in startPage..endPage) {
                if (!thumbnailCache.containsKey(pageIndex)) {
                    coroutineScope.launch {
                        try {
                            val thumbnail = getThumbnail(pageIndex)
                            thumbnailCache[pageIndex] = thumbnail
                        } catch (e: Exception) {
                            android.util.Log.w("PageListPanel", "Failed to load thumbnail for page $pageIndex", e)
                        }
                    }
                }
            }
        }
    }
    
    // Scroll to current page when panel becomes visible
    LaunchedEffect(visible, currentPage) {
        if (visible) {
            listState.animateScrollToItem(currentPage.coerceIn(0, totalPages - 1))
        }
    }
    
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(animationSpec = tween(200)) + 
                slideInHorizontally(
                    initialOffsetX = { it },
                    animationSpec = tween(200)
                ),
        exit = fadeOut(animationSpec = tween(200)) + 
               slideOutHorizontally(
                   targetOffsetX = { it },
                   animationSpec = tween(200)
               ),
        modifier = modifier
    ) {
        Surface(
            color = Color.Black.copy(alpha = 0.25f), // Very transparent black overlay
            modifier = Modifier
                .width(200.dp)
                .fillMaxHeight()
                .clip(RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp))
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
                        text = "Pages ($totalPages)",
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
                
                // Page list
                LazyColumn(
                    state = listState,
                    contentPadding = PaddingValues(horizontal = 8.dp, vertical = 8.dp),
                    verticalArrangement = Arrangement.spacedBy(4.dp),
                    modifier = Modifier.fillMaxSize()
                ) {
                    items(
                        count = totalPages,
                        key = { "thumb_$it" } // Стабильные ключи для предотвращения пересоздания
                    ) { pageIndex ->
                        PageListItem(
                            pageIndex = pageIndex,
                            isCurrentPage = pageIndex == currentPage,
                            thumbnail = thumbnailCache[pageIndex], // Используем только кэшированные миниатюры
                            onClick = { onPageClick(pageIndex) }
                        )
                    }
                }
            }
        }
    }
}

/**
 * Individual page item in the list
 */
@Composable
private fun PageListItem(
    pageIndex: Int,
    isCurrentPage: Boolean,
    thumbnail: Bitmap?,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    Row(
        modifier = modifier
            .fillMaxWidth()
            .clickable(onClick = onClick)
            .padding(vertical = 2.dp, horizontal = 4.dp)
            .then(
                if (isCurrentPage) {
                    Modifier.background(
                        MaterialTheme.colorScheme.primary.copy(alpha = 0.1f),
                        RoundedCornerShape(8.dp)
                    )
                } else {
                    Modifier
                }
            ),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // Thumbnail
        Box(
            modifier = Modifier
                .size(40.dp, 60.dp)
                .clip(RoundedCornerShape(4.dp))
                .background(MaterialTheme.colorScheme.surfaceVariant)
                .then(
                    if (isCurrentPage) {
                        Modifier.border(
                            width = 2.dp,
                            color = MaterialTheme.colorScheme.primary,
                            shape = RoundedCornerShape(4.dp)
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
                // Показываем спиннер только если миниатюра действительно загружается
                CircularProgressIndicator(
                    modifier = Modifier.size(16.dp),
                    strokeWidth = 1.dp,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
        
        Spacer(modifier = Modifier.width(8.dp))
        
        // Page number and info
        Column(
            modifier = Modifier.weight(1f)
        ) {
            Text(
                text = "Page ${pageIndex + 1}",
                style = MaterialTheme.typography.bodyMedium,
                color = if (isCurrentPage) {
                    MaterialTheme.colorScheme.primary
                } else {
                    MaterialTheme.colorScheme.onSurface
                }
            )
            
            if (isCurrentPage) {
                Text(
                    text = "Current",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
    }
}
