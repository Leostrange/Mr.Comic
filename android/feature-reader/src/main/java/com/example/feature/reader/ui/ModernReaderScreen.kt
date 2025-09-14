package com.example.feature.reader.ui

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.statusBars
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.foundation.pager.HorizontalPager
import androidx.compose.foundation.pager.rememberPagerState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material3.BottomAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberCoroutineScope
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import com.example.core.ui.theme.MrComicTheme

/**
 * Modern comic reader screen with Material Design 3
 * 
 * Features:
 * - Fullscreen immersive reading experience
 * - Horizontal pager for page navigation
 * - Auto-hiding UI controls
 * - Reading progress indicator
 * - Bookmark functionality
 * - Settings and navigation
 * - Touch zones for navigation
 * - Smooth animations
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ModernReaderScreen(
    comicTitle: String = "Sample Comic",
    onBackClick: () -> Unit = { },
    onSettingsClick: () -> Unit = { },
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    
    // Sample pages (in real app, this would come from ViewModel)
    val totalPages = 20
    val pagerState = rememberPagerState(pageCount = { totalPages })
    
    // UI state
    var showUI by remember { mutableStateOf(true) }
    var isBookmarked by remember { mutableStateOf(false) }
    
    // Auto-hide UI after 3 seconds
    LaunchedEffect(showUI) {
        if (showUI) {
            delay(3000)
            showUI = false
        }
    }
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        // Main content - Comic pages
        HorizontalPager(
            state = pagerState,
            modifier = Modifier.fillMaxSize()
        ) { page ->
            ComicPage(
                pageNumber = page + 1,
                totalPages = totalPages,
                onTap = { showUI = !showUI }
            )
        }
        
        // Top bar
        AnimatedVisibility(
            visible = showUI,
            enter = slideInVertically(initialOffsetY = { -it }) + fadeIn(),
            exit = slideOutVertically(targetOffsetY = { -it }) + fadeOut(),
            modifier = Modifier
                .fillMaxWidth()
                .zIndex(2f)
        ) {
            Surface(
                color = Color.Black.copy(alpha = 0.7f),
                modifier = Modifier.windowInsetsPadding(WindowInsets.statusBars)
            ) {
                TopAppBar(
                    title = {
                        Text(
                            text = comicTitle,
                            color = Color.White,
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    },
                    navigationIcon = {
                        IconButton(onClick = onBackClick) {
                            Icon(
                                imageVector = Icons.Default.ArrowBack,
                                contentDescription = "Back",
                                tint = Color.White
                            )
                        }
                    },
                    actions = {
                        IconButton(
                            onClick = { isBookmarked = !isBookmarked }
                        ) {
                            Icon(
                                imageVector = if (isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                                contentDescription = if (isBookmarked) "Remove bookmark" else "Add bookmark",
                                tint = if (isBookmarked) MaterialTheme.colorScheme.primary else Color.White
                            )
                        }
                        
                        IconButton(onClick = onSettingsClick) {
                            Icon(
                                imageVector = Icons.Default.Settings,
                                contentDescription = "Settings",
                                tint = Color.White
                            )
                        }
                        
                        IconButton(onClick = { /* TODO: More options */ }) {
                            Icon(
                                imageVector = Icons.Default.MoreVert,
                                contentDescription = "More options",
                                tint = Color.White
                            )
                        }
                    },
                    colors = TopAppBarDefaults.topAppBarColors(
                        containerColor = Color.Transparent
                    )
                )
            }
        }
        
        // Bottom controls
        AnimatedVisibility(
            visible = showUI,
            enter = slideInVertically(initialOffsetY = { it }) + fadeIn(),
            exit = slideOutVertically(targetOffsetY = { it }) + fadeOut(),
            modifier = Modifier
                .align(Alignment.BottomCenter)
                .fillMaxWidth()
                .zIndex(2f)
        ) {
            Surface(
                color = Color.Black.copy(alpha = 0.7f)
            ) {
                Column(
                    modifier = Modifier.padding(16.dp)
                ) {
                    // Page progress
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "Page ${pagerState.currentPage + 1}",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        
                        Text(
                            text = "of $totalPages",
                            color = Color.White.copy(alpha = 0.7f),
                            style = MaterialTheme.typography.bodyMedium
                        )
                    }
                    
                    Spacer(modifier = Modifier.height(8.dp))
                    
                    // Progress bar
                    LinearProgressIndicator(
                        progress = { (pagerState.currentPage + 1).toFloat() / totalPages },
                        modifier = Modifier.fillMaxWidth(),
                        color = MaterialTheme.colorScheme.primary,
                        trackColor = Color.White.copy(alpha = 0.3f)
                    )
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // Page slider
                    Slider(
                        value = (pagerState.currentPage + 1).toFloat(),
                        onValueChange = { newPage ->
                            coroutineScope.launch {
                                pagerState.animateScrollToPage((newPage.toInt() - 1).coerceIn(0, totalPages - 1))
                            }
                        },
                        valueRange = 1f..totalPages.toFloat(),
                        steps = totalPages - 2,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
            }
        }
        
        // Reading progress indicator (always visible)
        LinearProgressIndicator(
            progress = { (pagerState.currentPage + 1).toFloat() / totalPages },
            modifier = Modifier
                .fillMaxWidth()
                .height(2.dp)
                .align(Alignment.TopCenter)
                .zIndex(1f),
            color = MaterialTheme.colorScheme.primary,
            trackColor = Color.Transparent
        )
    }
}

/**
 * Individual comic page component
 */
@Composable
private fun ComicPage(
    pageNumber: Int,
    totalPages: Int,
    onTap: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black),
        contentAlignment = Alignment.Center
    ) {
        // Touch zones for navigation
        Row(
            modifier = Modifier.fillMaxSize()
        ) {
            // Previous page zone (left third)
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxSize()
                    .background(Color.Transparent)
                    // TODO: Add tap gesture for previous page
            )
            
            // UI toggle zone (center third)
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxSize()
                    .background(Color.Transparent)
                    // TODO: Add tap gesture for UI toggle
            )
            
            // Next page zone (right third)
            Box(
                modifier = Modifier
                    .weight(1f)
                    .fillMaxSize()
                    .background(Color.Transparent)
                    // TODO: Add tap gesture for next page
            )
        }
        
        // Placeholder content (in real app, this would be the actual comic page image)
        Surface(
            modifier = Modifier
                .size(300.dp, 400.dp)
                .clip(RoundedCornerShape(8.dp)),
            color = MaterialTheme.colorScheme.surfaceVariant
        ) {
            Box(
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(48.dp),
                        color = MaterialTheme.colorScheme.primary
                    )
                    
                    Text(
                        text = "Page $pageNumber",
                        style = MaterialTheme.typography.headlineMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    
                    Text(
                        text = "Loading comic page...",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
private fun ModernReaderScreenPreview() {
    MrComicTheme {
        ModernReaderScreen(
            comicTitle = "Amazing Comic Adventures #1"
        )
    }
}