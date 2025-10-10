package com.example.feature.library.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.example.core.model.Comic

/**
 * Карточка со статистикой чтения
 */
@Composable
fun ReadingStatsCard(
    comics: List<Comic>,
    modifier: Modifier = Modifier
) {
    val totalComics = comics.size
    val readComics = comics.count { it.readingProgress >= 1.0f }
    val inProgressComics = comics.count { it.readingProgress > 0f && it.readingProgress < 1.0f }
    val unreadComics = comics.count { it.readingProgress == 0f }
    
    val totalPages = comics.sumOf { it.pageCount }
    val readPages = comics.sumOf { (it.readingProgress * it.pageCount).toInt() }
    
    Card(
        modifier = modifier.fillMaxWidth(),
        shape = RoundedCornerShape(12.dp),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Заголовок
            Text(
                text = "Статистика чтения",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Bold
            )
            
            // Общая статистика
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                StatItem(
                    icon = Icons.Default.MenuBook,
                    label = "Всего комиксов",
                    value = totalComics.toString(),
                    color = MaterialTheme.colorScheme.primary
                )
                
                StatItem(
                    icon = Icons.Default.CheckCircle,
                    label = "Прочитано",
                    value = readComics.toString(),
                    color = Color(0xFF4CAF50)
                )
                
                StatItem(
                    icon = Icons.Default.Schedule,
                    label = "В процессе",
                    value = inProgressComics.toString(),
                    color = Color(0xFFFF9800)
                )
            }
            
            // Прогресс чтения
            if (totalPages > 0) {
                Column(
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(
                            text = "Общий прогресс",
                            style = MaterialTheme.typography.bodyMedium,
                            fontWeight = FontWeight.Medium
                        )
                        Text(
                            text = "${(readPages * 100 / totalPages)}%",
                            style = MaterialTheme.typography.bodyMedium,
                            color = MaterialTheme.colorScheme.primary,
                            fontWeight = FontWeight.Bold
                        )
                    }
                    
                    LinearProgressIndicator(
                        progress = { readPages.toFloat() / totalPages.toFloat() },
                        modifier = Modifier.fillMaxWidth(),
                        color = MaterialTheme.colorScheme.primary,
                        trackColor = MaterialTheme.colorScheme.surfaceVariant
                    )
                    
                    Text(
                        text = "$readPages из $totalPages страниц",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
        }
    }
}

@Composable
private fun StatItem(
    icon: ImageVector,
    label: String,
    value: String,
    color: Color,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(4.dp)
    ) {
        Box(
            modifier = Modifier
                .size(40.dp)
                .background(
                    color = color.copy(alpha = 0.1f),
                    shape = RoundedCornerShape(8.dp)
                ),
            contentAlignment = Alignment.Center
        ) {
            Icon(
                imageVector = icon,
                contentDescription = null,
                tint = color,
                modifier = Modifier.size(20.dp)
            )
        }
        
        Text(
            text = value,
            style = MaterialTheme.typography.titleLarge,
            fontWeight = FontWeight.Bold,
            color = color
        )
        
        Text(
            text = label,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}
