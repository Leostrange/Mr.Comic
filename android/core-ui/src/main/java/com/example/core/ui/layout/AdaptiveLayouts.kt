package com.example.core.ui.layout

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.material3.windowsizeclass.WindowSizeClass
import androidx.compose.material3.windowsizeclass.WindowWidthSizeClass
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp

/**
 * Adaptive layout that switches between grid and list based on screen size
 * Inspired by library_screen_horizontal_new.png vs library_screen_new.png
 */
@Composable
fun <T> AdaptiveGrid(
    items: List<T>,
    windowSizeClass: WindowSizeClass,
    itemContent: @Composable (T) -> Unit,
    modifier: Modifier = Modifier,
    contentPadding: PaddingValues = PaddingValues(16.dp),
    verticalArrangement: Arrangement.Vertical = Arrangement.spacedBy(12.dp),
    horizontalArrangement: Arrangement.Horizontal = Arrangement.spacedBy(12.dp)
) {
    when (windowSizeClass.widthSizeClass) {
        WindowWidthSizeClass.Compact -> {
            // Portrait mode - 2 columns grid
            LazyVerticalGrid(
                columns = GridCells.Fixed(2),
                modifier = modifier,
                contentPadding = contentPadding,
                verticalArrangement = verticalArrangement,
                horizontalArrangement = horizontalArrangement
            ) {
                items(items.size) { index ->
                    itemContent(items[index])
                }
            }
        }
        
        WindowWidthSizeClass.Medium -> {
            // Medium screens - 3 columns
            LazyVerticalGrid(
                columns = GridCells.Fixed(3),
                modifier = modifier,
                contentPadding = contentPadding,
                verticalArrangement = verticalArrangement,
                horizontalArrangement = horizontalArrangement
            ) {
                items(items.size) { index ->
                    itemContent(items[index])
                }
            }
        }
        
        WindowWidthSizeClass.Expanded -> {
            // Landscape/Large screens - 4+ columns
            LazyVerticalGrid(
                columns = GridCells.Adaptive(minSize = 200.dp),
                modifier = modifier,
                contentPadding = contentPadding,
                verticalArrangement = verticalArrangement,
                horizontalArrangement = horizontalArrangement
            ) {
                items(items.size) { index ->
                    itemContent(items[index])
                }
            }
        }
    }
}

/**
 * Two-pane layout for tablet/desktop
 * Based on reader_screen_horizontal_new.png layout
 */
@Composable
fun AdaptiveTwoPane(
    windowSizeClass: WindowSizeClass,
    leftPane: @Composable BoxScope.() -> Unit,
    rightPane: @Composable BoxScope.() -> Unit,
    modifier: Modifier = Modifier,
    leftPaneWeight: Float = 0.6f
) {
    when (windowSizeClass.widthSizeClass) {
        WindowWidthSizeClass.Compact -> {
            // Stack vertically on compact screens
            Column(modifier = modifier.fillMaxSize()) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(leftPaneWeight),
                    content = leftPane
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f - leftPaneWeight),
                    content = rightPane
                )
            }
        }
        
        else -> {
            // Side by side on larger screens
            Row(modifier = modifier.fillMaxSize()) {
                Box(
                    modifier = Modifier
                        .fillMaxHeight()
                        .weight(leftPaneWeight),
                    content = leftPane
                )
                Box(
                    modifier = Modifier
                        .fillMaxHeight()
                        .weight(1f - leftPaneWeight),
                    content = rightPane
                )
            }
        }
    }
}

/**
 * Adaptive navigation layout
 * Based on settings_screen_horizontal_new.png vs settings_screen patterns
 */
@Composable
fun AdaptiveNavLayout(
    windowSizeClass: WindowSizeClass,
    navigationContent: @Composable ColumnScope.() -> Unit,
    mainContent: @Composable BoxScope.() -> Unit,
    modifier: Modifier = Modifier
) {
    when (windowSizeClass.widthSizeClass) {
        WindowWidthSizeClass.Compact -> {
            // Bottom navigation for compact screens
            Column(modifier = modifier.fillMaxSize()) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .weight(1f),
                    content = mainContent
                )
                Surface(
                    modifier = Modifier.fillMaxWidth(),
                    tonalElevation = 3.dp
                ) {
                    Column(
                        modifier = Modifier.padding(8.dp),
                        content = navigationContent
                    )
                }
            }
        }
        
        else -> {
            // Side navigation for larger screens
            Row(modifier = modifier.fillMaxSize()) {
                Surface(
                    modifier = Modifier.width(280.dp),
                    tonalElevation = 1.dp
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxHeight()
                            .padding(16.dp),
                        content = navigationContent
                    )
                }
                Box(
                    modifier = Modifier
                        .fillMaxHeight()
                        .weight(1f),
                    content = mainContent
                )
            }
        }
    }
}

/**
 * Responsive card layout
 * Based on themes_screen mockups showing different card arrangements
 */
@Composable
fun <T> ResponsiveCardLayout(
    items: List<T>,
    windowSizeClass: WindowSizeClass,
    itemContent: @Composable (T) -> Unit,
    modifier: Modifier = Modifier
) {
    when (windowSizeClass.widthSizeClass) {
        WindowWidthSizeClass.Compact -> {
            // Single column list for mobile
            LazyColumn(
                modifier = modifier,
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                items(items) { item ->
                    itemContent(item)
                }
            }
        }
        
        WindowWidthSizeClass.Medium -> {
            // Two columns for medium screens
            LazyVerticalGrid(
                columns = GridCells.Fixed(2),
                modifier = modifier,
                contentPadding = PaddingValues(16.dp),
                verticalArrangement = Arrangement.spacedBy(12.dp),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                items(items.size) { index ->
                    itemContent(items[index])
                }
            }
        }
        
        WindowWidthSizeClass.Expanded -> {
            // Horizontal scrolling cards for large screens
            LazyRow(
                modifier = modifier,
                contentPadding = PaddingValues(horizontal = 24.dp, vertical = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                items(items) { item ->
                    Box(modifier = Modifier.width(320.dp)) {
                        itemContent(item)
                    }
                }
            }
        }
    }
}

/**
 * Adaptive content with sidebars
 * Inspired by optimization_screen layouts
 */
@Composable
fun AdaptiveContentWithSidebar(
    windowSizeClass: WindowSizeClass,
    sidebarContent: @Composable ColumnScope.() -> Unit,
    mainContent: @Composable BoxScope.() -> Unit,
    modifier: Modifier = Modifier,
    showSidebar: Boolean = true
) {
    if (!showSidebar || windowSizeClass.widthSizeClass == WindowWidthSizeClass.Compact) {
        // Full width on compact or when sidebar is hidden
        Box(
            modifier = modifier.fillMaxSize(),
            content = mainContent
        )
    } else {
        // Sidebar + content layout
        Row(modifier = modifier.fillMaxSize()) {
            Surface(
                modifier = Modifier.width(300.dp),
                tonalElevation = 2.dp
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxHeight()
                        .padding(20.dp),
                    content = sidebarContent
                )
            }
            Box(
                modifier = Modifier
                    .fillMaxHeight()
                    .weight(1f),
                content = mainContent
            )
        }
    }
}