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
import kotlinx.coroutines.isActive
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import kotlinx.coroutines.delay
import com.example.core.reader.preload.PagePreloader

/**
 * Right side panel with list of all pages for navigation
 * Shows thumbnails of all pages with current page highlighted
 * 
 * ИСПРАВЛЕНИЯ:
 * 1. Удалена кнопка Close для чистоты дизайна
 * 2. Автоматическая загрузка миниатюр через PagePreloader независимо от режима чтения
 */
@Composable
fun PageListPanel(
    visible: Boolean,
    currentPage: Int,
    totalPages: Int,
    onPageClick: (Int) -> Unit,
    onDismiss: () -> Unit,
    getThumbnail: (Int) -> Bitmap?,
    pagePreloader: PagePreloader? = null,
    modifier: Modifier = Modifier
) {
    val listState = rememberLazyListState()
    val coroutineScope = rememberCoroutineScope()
    
    // Thumbnail cache for better performance - используем StateFlow для реактивности
    val thumbnailCache = remember { mutableStateMapOf<Int, Bitmap?>() }
    
    LaunchedEffect(visible) {
        if (!visible) {
            thumbnailCache.clear()
        }
    }
    
    val observedThumbnailIndices by remember(pagePreloader) {
        pagePreloader?.thumbnailIndices
    }?.collectAsState(initial = emptySet()) ?: remember {
        mutableStateOf(emptySet())
    }

    // Автоматическое обновление кэша когда появляются новые миниатюры в PagePreloader
    LaunchedEffect(observedThumbnailIndices) {
        if (pagePreloader != null && observedThumbnailIndices.isNotEmpty()) {
            observedThumbnailIndices.forEach { pageIndex ->
                if (!thumbnailCache.containsKey(pageIndex)) {
                    runCatching {
                        pagePreloader.getThumbnailFromCache(pageIndex)
                    }.onSuccess { thumbnail ->
                        if (thumbnail != null) {
                            thumbnailCache[pageIndex] = thumbnail
                        }
                    }.onFailure {
                        android.util.Log.w("PageListPanel", "Failed to observe thumbnail for page $pageIndex", it)
                    }
                }
            }
        }
    }

    // Автоматическая загрузка миниатюр при открытии панели (независимо от режима чтения)
    LaunchedEffect(visible, totalPages, pagePreloader) {
        if (!visible || totalPages <= 0) return@LaunchedEffect
        
        android.util.Log.d("PageListPanel", "📸 Panel opened, eager loading $totalPages thumbnails")
        
        if (pagePreloader != null) {
            coroutineScope.launch {
                val chunkSize = 16
                var start = 0
                while (start < totalPages && isActive) {
                    val end = kotlin.math.min(totalPages - 1, start + chunkSize - 1)
                    pagePreloader.preloadThumbnails(start, end)
                    for (index in start..end) {
                        if (!thumbnailCache.containsKey(index)) {
                            runCatching { pagePreloader.getThumbnailFromCache(index) }
                                .onSuccess { bitmap ->
                                    if (bitmap != null) {
                                        thumbnailCache[index] = bitmap
                                    }
                                }
                        }
                    }
                    start += chunkSize
                    delay(80)
                }
            }
        } else {
            android.util.Log.w("PageListPanel", "PagePreloader is null, thumbnails will rely on full-size cache")
        }
        
        for (pageIndex in 0 until totalPages) {
            if (!thumbnailCache.containsKey(pageIndex)) {
                getThumbnail(pageIndex)?.let { thumbnailCache[pageIndex] = it }
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
                .width(100.dp)
                .fillMaxHeight()
                .clip(RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp))
        ) {
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                // Header убран для чистоты дизайна
                // Закрытие панели происходит по тапу вне панели
                
                // Page list
                LazyColumn(
                    state = listState,
                    contentPadding = PaddingValues(horizontal = 4.dp, vertical = 8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp),
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
    Column(
        modifier = modifier
            .width(92.dp)
            .clickable(onClick = onClick),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        // Thumbnail image
        Box(
            modifier = Modifier
                .size(92.dp, 130.dp)
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
            val bmp: Bitmap? = thumbnail
            if (bmp != null) {
                Image(
                    bitmap = bmp.asImageBitmap(),
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
