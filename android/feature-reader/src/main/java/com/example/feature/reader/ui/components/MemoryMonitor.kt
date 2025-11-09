package com.example.feature.reader.ui.components

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import com.example.core.reader.utils.MemoryManager
import kotlinx.coroutines.delay
import kotlin.math.roundToInt

/**
 * Компонент для мониторинга использования памяти
 */
@Composable
fun MemoryMonitor(
    isVisible: Boolean = false,
    modifier: Modifier = Modifier
) {
    if (!isVisible) return
    
    val memoryManager = MemoryManager.getInstance()
    var cacheStats by remember { mutableStateOf(memoryManager.getCacheStats()) }
    
    // Обновляем статистику каждые 2 секунды
    LaunchedEffect(Unit) {
        while (true) {
            cacheStats = memoryManager.getCacheStats()
            delay(2000)
        }
    }
    
    Card(
        modifier = modifier
            .padding(8.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.9f)
        )
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(
                text = "Memory Monitor",
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.Bold
            )
            
            MemoryBar(
                used = cacheStats.totalSizeBytes,
                max = cacheStats.maxSizeBytes.toLong(),
                label = "Cache"
            )
            
            Text(
                text = "Entries: ${cacheStats.entryCount}",
                style = MaterialTheme.typography.bodySmall
            )
            
            Text(
                text = "Hit Rate: ${(cacheStats.hitRate * 100).roundToInt()}%",
                style = MaterialTheme.typography.bodySmall
            )
        }
    }
}

@Composable
private fun MemoryBar(
    used: Long,
    max: Long,
    label: String,
    modifier: Modifier = Modifier
) {
    val percentage = if (max > 0) (used.toFloat() / max.toFloat()).coerceIn(0f, 1f) else 0f
    val color = when {
        percentage > 0.8f -> Color.Red
        percentage > 0.6f -> Color(0xFFFF9800) // Orange
        else -> Color.Green
    }
    
    Column(modifier = modifier) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(
                text = label,
                style = MaterialTheme.typography.bodySmall
            )
            Text(
                text = "${formatBytes(used)} / ${formatBytes(max)}",
                style = MaterialTheme.typography.bodySmall
            )
        }
        
        LinearProgressIndicator(
            progress = { percentage },
            modifier = Modifier
                .fillMaxWidth()
                .height(4.dp),
            color = color,
            trackColor = MaterialTheme.colorScheme.surfaceVariant
        )
    }
}

private fun formatBytes(bytes: Long): String {
    return when {
        bytes >= 1024 * 1024 -> "${bytes / (1024 * 1024)}MB"
        bytes >= 1024 -> "${bytes / 1024}KB"
        else -> "${bytes}B"
    }
}

