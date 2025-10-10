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
import androidx.compose.ui.graphics.luminance
import androidx.compose.ui.unit.dp

/**
 * Вычисляет оптимальный цвет текста на основе яркости фона
 */
@Composable
fun calculateContrastColor(backgroundColor: Color): Color {
    val luminance = backgroundColor.luminance()
    return if (luminance > 0.5f) {
        Color.Black // Темный текст на светлом фоне
    } else {
        Color.White // Светлый текст на темном фоне
    }
}

/**
 * Page indicator component shown in bottom-right corner
 * Shows current page number and pin/unpin button with auto-contrast
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
    // Вычисляем оптимальный цвет для авто-контраста
    val backgroundColor = Color.Black.copy(alpha = 0.6f) // Полупрозрачный черный фон
    val textColor = calculateContrastColor(backgroundColor)
    
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
            color = backgroundColor,
            shape = RoundedCornerShape(8.dp),
            shadowElevation = 4.dp, // Легкая тень для лучшей читаемости
            modifier = Modifier.padding(12.dp)
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
                    color = textColor // Авто-контрастный цвет текста
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
                            Color.Yellow // Яркий желтый для закрепленного состояния
                        } else {
                            textColor.copy(alpha = 0.7f) // Полупрозрачный цвет текста для незакрепленного
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
