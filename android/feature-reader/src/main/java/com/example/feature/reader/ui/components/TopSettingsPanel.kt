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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

/**
 * Top settings panel with semi-transparent background
 * Shows quick settings for reader
 */
@Composable
fun TopSettingsPanel(
    visible: Boolean,
    onDismiss: () -> Unit,
    onBrightnessChange: (Float) -> Unit,
    onOrientationChange: (String) -> Unit,
    onScaleModeChange: (String) -> Unit,
    onResetZoom: () -> Unit = {},
    currentBrightness: Float = 1.0f,
    currentOrientation: String = "auto",
    currentScaleMode: String = "width",
    modifier: Modifier = Modifier
) {
    AnimatedVisibility(
        visible = visible,
        enter = fadeIn(animationSpec = tween(200)) + 
                slideInVertically(
                    initialOffsetY = { -it },
                    animationSpec = tween(200)
                ),
        exit = fadeOut(animationSpec = tween(200)) + 
               slideOutVertically(
                   targetOffsetY = { -it },
                   animationSpec = tween(200)
               ),
        modifier = modifier
    ) {
        Surface(
            color = MaterialTheme.colorScheme.surface.copy(alpha = 0.12f), // scrim 12%
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(bottomStart = 16.dp, bottomEnd = 16.dp))
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp)
            ) {
                // Header
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "Quick Settings",
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
                
                Spacer(modifier = Modifier.height(16.dp))
                
                // Brightness control
                Text(
                    text = "Brightness",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                
                Slider(
                    value = currentBrightness,
                    onValueChange = onBrightnessChange,
                    valueRange = 0.1f..1.0f,
                    modifier = Modifier.fillMaxWidth()
                )
                
                Spacer(modifier = Modifier.height(16.dp))
                
                // Orientation control
                Text(
                    text = "Orientation",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    FilterChip(
                        selected = currentOrientation == "auto",
                        onClick = { onOrientationChange("auto") },
                        label = { Text("Auto") }
                    )
                    FilterChip(
                        selected = currentOrientation == "portrait",
                        onClick = { onOrientationChange("portrait") },
                        label = { Text("Portrait") }
                    )
                    FilterChip(
                        selected = currentOrientation == "landscape",
                        onClick = { onOrientationChange("landscape") },
                        label = { Text("Landscape") }
                    )
                }
                
                Spacer(modifier = Modifier.height(16.dp))
                
                // Scale mode control
                Text(
                    text = "Scale Mode",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(4.dp) // Reduced spacing
        ) {
            FilterChip(
                selected = currentScaleMode == "width",
                onClick = { onScaleModeChange("width") },
                label = { Text("Width", style = MaterialTheme.typography.bodySmall) }, // Smaller text
                modifier = Modifier.height(32.dp) // Compact height
            )
            FilterChip(
                selected = currentScaleMode == "height",
                onClick = { onScaleModeChange("height") },
                label = { Text("Height", style = MaterialTheme.typography.bodySmall) },
                modifier = Modifier.height(32.dp)
            )
            FilterChip(
                selected = currentScaleMode == "fit",
                onClick = { onScaleModeChange("fit") },
                label = { Text("Fit", style = MaterialTheme.typography.bodySmall) },
                modifier = Modifier.height(32.dp)
            )
            FilterChip(
                selected = currentScaleMode == "fill",
                onClick = { onScaleModeChange("fill") },
                label = { Text("Fill", style = MaterialTheme.typography.bodySmall) },
                modifier = Modifier.height(32.dp)
            )
        }
        
        Spacer(modifier = Modifier.height(16.dp))
        
        // Reset zoom button
        Button(
            onClick = onResetZoom,
            modifier = Modifier.fillMaxWidth(),
            colors = ButtonDefaults.buttonColors(
                containerColor = MaterialTheme.colorScheme.secondary
            )
        ) {
            Text("Reset Zoom")
        }
            }
        }
    }
}
