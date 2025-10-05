package com.example.feature.reader.ui.components

import androidx.compose.animation.*
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.PushPin
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

/**
 * Page indicator component shown in bottom-right corner
 * Shows current page number and pin/unpin button
 */
@Composable
fun PageIndicator(
    currentPage: Int,
    totalPages: Int,
    isPinned: Boolean,
    visible: Boolean,
    onPinToggle: () -> Unit,
    modifier: Modifier = Modifier
) {
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(animationSpec = tween(200)) + 
                slideInVertically(
                    initialOffsetY = { it / 2 },
                    animationSpec = tween(200)
                ),
        exit = fadeOut(animationSpec = tween(200)) + 
               slideOutVertically(
                   targetOffsetY = { it / 2 },
                   animationSpec = tween(200)
               ),
        modifier = modifier
    ) {
        Surface(
            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.9f),
            shape = RoundedCornerShape(12.dp),
            shadowElevation = 4.dp,
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp)
            ) {
                // Page number
                Text(
                    text = "$currentPage / $totalPages",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                
                // Pin/Unpin button
                IconButton(
                    onClick = onPinToggle,
                    modifier = Modifier.size(32.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.PushPin,
                        contentDescription = if (isPinned) "Unpin page" else "Pin page",
                        tint = if (isPinned) {
                            MaterialTheme.colorScheme.primary
                        } else {
                            MaterialTheme.colorScheme.onSurface.copy(alpha = 0.6f)
                        },
                        modifier = Modifier.size(20.dp)
                    )
                }
            }
        }
    }
}

/**
 * Compact page indicator without pin button
 */
@Composable
fun CompactPageIndicator(
    currentPage: Int,
    totalPages: Int,
    visible: Boolean,
    modifier: Modifier = Modifier
) {
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(animationSpec = tween(200)),
        exit = fadeOut(animationSpec = tween(200)),
        modifier = modifier
    ) {
        Surface(
            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.8f),
            shape = RoundedCornerShape(8.dp),
            shadowElevation = 2.dp,
            modifier = Modifier.padding(12.dp)
        ) {
            Text(
                text = "$currentPage / $totalPages",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurface,
                modifier = Modifier.padding(horizontal = 10.dp, vertical = 6.dp)
            )
        }
    }
}
