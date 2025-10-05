package com.example.feature.reader.ui.components

import androidx.compose.animation.*
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.unit.dp

/**
 * Side quick panel for left/right quick actions
 */
@Composable
fun SideQuickPanel(
    visible: Boolean,
    isLeft: Boolean = true,
    onDismiss: () -> Unit,
    onBookmark: () -> Unit,
    onShare: () -> Unit,
    onSettings: () -> Unit,
    modifier: Modifier = Modifier
) {
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(animationSpec = tween(200)) + 
                slideInHorizontally(
                    initialOffsetX = { if (isLeft) -it else it },
                    animationSpec = tween(200)
                ),
        exit = fadeOut(animationSpec = tween(200)) + 
               slideOutHorizontally(
                   targetOffsetX = { if (isLeft) -it else it },
                   animationSpec = tween(200)
               ),
        modifier = modifier
    ) {
        Surface(
            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.12f), // scrim 12%
            modifier = Modifier
                .width(80.dp)
                .fillMaxHeight()
                .clip(
                    if (isLeft) {
                        RoundedCornerShape(topEnd = 16.dp, bottomEnd = 16.dp)
                    } else {
                        RoundedCornerShape(topStart = 16.dp, bottomStart = 16.dp)
                    }
                )
        ) {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(8.dp),
                verticalArrangement = Arrangement.spacedBy(16.dp, Alignment.CenterVertically),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                // Bookmark button
                IconButton(onClick = onBookmark) {
                    Icon(
                        imageVector = Icons.Default.Bookmark,
                        contentDescription = "Bookmark",
                        tint = MaterialTheme.colorScheme.onSurface
                    )
                }
                
                // Share button
                IconButton(onClick = onShare) {
                    Icon(
                        imageVector = Icons.Default.Share,
                        contentDescription = "Share",
                        tint = MaterialTheme.colorScheme.onSurface
                    )
                }
                
                // Settings button
                IconButton(onClick = onSettings) {
                    Icon(
                        imageVector = Icons.Default.Settings,
                        contentDescription = "Settings",
                        tint = MaterialTheme.colorScheme.onSurface
                    )
                }
                
                Spacer(modifier = Modifier.weight(1f))
                
                // Close button
                IconButton(onClick = onDismiss) {
                    Icon(
                        imageVector = Icons.Default.Close,
                        contentDescription = "Close",
                        tint = MaterialTheme.colorScheme.onSurface
                    )
                }
            }
        }
    }
}
