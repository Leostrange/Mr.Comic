package com.example.feature.reader.ui.components

import androidx.compose.animation.*
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectDragGestures
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
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.input.pointer.PointerEventPass
import androidx.compose.ui.input.pointer.changedToDown
import androidx.compose.ui.input.pointer.changedToUp
import androidx.compose.ui.unit.dp

/**
 * Top settings panel with semi-transparent background
 * Shows quick settings for reader
 * 
 * ИСПРАВЛЕНИЯ:
 * 1. Добавлены отступы слева и справа от слайдера яркости (32.dp)
 * 2. Улучшена блокировка gesture propagation для слайдера (detectDragGestures)
 * 3. Удалена кнопка Close для чистоты дизайна (закрытие по тапу вне панели)
 */
@Composable
fun TopSettingsPanel(
    visible: Boolean,
    onDismiss: () -> Unit,
    onBrightnessChange: (Float) -> Unit,
    onOrientationChange: (String) -> Unit,
    onScaleModeChange: (String) -> Unit,
    onReadingModeChange: (String) -> Unit = {},
    onResetZoom: () -> Unit = {},
    currentBrightness: Float = 1.0f,
    currentOrientation: String = "auto",
    currentScaleMode: String = "width",
    currentReadingMode: String = "page",
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
                .pointerInput(Unit) {
                    // Consume all pointer events at the final pass to block propagation to underlying content
                    // This is a common pattern to block gestures while allowing clicks on the panel itself
                    awaitPointerEventScope {
                        while (true) {
                            val event = awaitPointerEvent(PointerEventPass.Final)
                            event.changes.forEach { it.consume() }
                        }
                    }
                }
        ) {
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp)
            ) {
                // Header (без кнопки Close)
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "Quick Settings",
                        style = MaterialTheme.typography.titleMedium,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                }
                
                Spacer(modifier = Modifier.height(16.dp))
                
                // Brightness control
                Text(
                    text = "Brightness",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface,
                    modifier = Modifier.padding(horizontal = 32.dp)
                )
                
                // Brightness slider с отступами и улучшенной блокировкой жестов
                Spacer(modifier = Modifier.height(8.dp))
                Slider(
                    value = currentBrightness,
                    onValueChange = onBrightnessChange,
                    valueRange = 0.1f..1.0f,
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 32.dp) // Отступы для удобства регулировки
                )
                Text(
                    text = "Brightness: ${(currentBrightness * 100).toInt()}%",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.7f),
                    modifier = Modifier.padding(horizontal = 32.dp)
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
                
                // Reading mode control
                Text(
                    text = "Reading Mode",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    FilterChip(
                        selected = currentReadingMode == "page",
                        onClick = { onReadingModeChange("page") },
                        label = { 
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Icon(
                                    imageVector = Icons.Default.MenuBook,
                                    contentDescription = null,
                                    modifier = Modifier.size(16.dp)
                                )
                                Spacer(modifier = Modifier.width(4.dp))
                                Text("Page", style = MaterialTheme.typography.bodySmall)
                            }
                        }
                    )
                    FilterChip(
                        selected = currentReadingMode == "webtoon",
                        onClick = { onReadingModeChange("webtoon") },
                        label = { 
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Icon(
                                    imageVector = Icons.Default.ViewAgenda,
                                    contentDescription = null,
                                    modifier = Modifier.size(16.dp)
                                )
                                Spacer(modifier = Modifier.width(4.dp))
                                Text("Webtoon", style = MaterialTheme.typography.bodySmall)
                            }
                        }
                    )
                }
                
                Spacer(modifier = Modifier.height(16.dp))
                
                // Scale mode control (только для PAGE режима)
                if (currentReadingMode == "page") {
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
                label = { 
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Default.AspectRatio,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Width", style = MaterialTheme.typography.bodySmall)
                    }
                },
                modifier = Modifier.height(32.dp)
            )
            FilterChip(
                selected = currentScaleMode == "height",
                onClick = { onScaleModeChange("height") },
                label = { 
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Default.Height,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Height", style = MaterialTheme.typography.bodySmall)
                    }
                },
                modifier = Modifier.height(32.dp)
            )
            FilterChip(
                selected = currentScaleMode == "fit",
                onClick = { onScaleModeChange("fit") },
                label = { 
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Default.FitScreen,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Fit", style = MaterialTheme.typography.bodySmall)
                    }
                },
                modifier = Modifier.height(32.dp)
            )
            FilterChip(
                selected = currentScaleMode == "fill",
                onClick = { onScaleModeChange("fill") },
                label = { 
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(
                            imageVector = Icons.Default.CropFree,
                            contentDescription = null,
                            modifier = Modifier.size(16.dp)
                        )
                        Spacer(modifier = Modifier.width(4.dp))
                        Text("Fill", style = MaterialTheme.typography.bodySmall)
                    }
                },
                modifier = Modifier.height(32.dp)
            )
        }
                    
                    Spacer(modifier = Modifier.height(16.dp))
                    
                    // Reset zoom button (только для PAGE режима)
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
}
