package com.example.mrcomic.ui.performance

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import com.example.core.analytics.PerformanceProfiler
import com.example.core.analytics.PerformanceMetric
import com.example.core.analytics.PerformanceStats
import com.example.core.reader.CacheStats
import kotlinx.coroutines.delay
import java.text.SimpleDateFormat
import java.util.*

/**
 * Дашборд для мониторинга производительности приложения
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PerformanceDashboard(
    performanceProfiler: PerformanceProfiler,
    modifier: Modifier = Modifier
) {
    var performanceStats by remember { mutableStateOf(PerformanceStats()) }
    var recentMetrics by remember { mutableStateOf<List<PerformanceMetric>>(emptyList()) }
    var memoryUsage by remember { mutableStateOf(0f) }
    
    val scope = rememberCoroutineScope()
    
    // Обновляем данные каждые 2 секунды
    LaunchedEffect(Unit) {
        while (true) {
            performanceStats = performanceProfiler.getPerformanceStats()
            recentMetrics = performanceProfiler.performanceMetrics.value.takeLast(10)
            
            // Обновляем информацию о памяти
            performanceProfiler.measureMemoryUsage(scope)
            
            delay(2000)
        }
    }
    
    LazyColumn(
        modifier = modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        item {
            Text(
                text = "Мониторинг производительности",
                style = MaterialTheme.typography.headlineMedium,
                fontWeight = FontWeight.Bold
            )
        }
        
        item {
            PerformanceOverviewCard(performanceStats)
        }
        
        item {
            MemoryUsageCard(memoryUsage)
        }
        
        item {
            RecentOperationsCard(recentMetrics)
        }
        
        item {
            OperationBreakdownCard(performanceStats.operationCounts)
        }
        
        item {
            PerformanceRecommendationsCard(performanceStats)
        }
    }
}

@Composable
private fun PerformanceOverviewCard(stats: PerformanceStats) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Общая статистика",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                PerformanceMetricItem(
                    icon = Icons.Default.Timer,
                    label = "Всего операций",
                    value = stats.totalOperations.toString(),
                    color = MaterialTheme.colorScheme.primary
                )
                
                PerformanceMetricItem(
                    icon = Icons.Default.Speed,
                    label = "Среднее время",
                    value = "${stats.averageDuration.toInt()}ms",
                    color = MaterialTheme.colorScheme.secondary
                )
                
                PerformanceMetricItem(
                    icon = Icons.Default.Warning,
                    label = "Медленных",
                    value = stats.slowOperations.toString(),
                    color = if (stats.slowOperations > 0) MaterialTheme.colorScheme.error 
                           else MaterialTheme.colorScheme.tertiary
                )
            }
            
            Spacer(modifier = Modifier.height(12.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                PerformanceMetricItem(
                    icon = Icons.Default.TrendingUp,
                    label = "Макс. время",
                    value = "${stats.maxDuration}ms",
                    color = MaterialTheme.colorScheme.error
                )
                
                PerformanceMetricItem(
                    icon = Icons.Default.TrendingDown,
                    label = "Мин. время",
                    value = "${stats.minDuration}ms",
                    color = MaterialTheme.colorScheme.tertiary
                )
            }
        }
    }
}

@Composable
private fun MemoryUsageCard(memoryUsage: Float) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Использование памяти",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            val runtime = Runtime.getRuntime()
            val totalMemory = runtime.totalMemory() / 1024 / 1024
            val freeMemory = runtime.freeMemory() / 1024 / 1024
            val usedMemory = totalMemory - freeMemory
            val maxMemory = runtime.maxMemory() / 1024 / 1024
            val usagePercent = (usedMemory.toFloat() / maxMemory) * 100
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = "${usedMemory}MB / ${maxMemory}MB",
                        style = MaterialTheme.typography.bodyLarge
                    )
                    Text(
                        text = "${usagePercent.toInt()}% использовано",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                
                CircularProgressIndicator(
                    progress = { usagePercent / 100f },
                    modifier = Modifier.size(60.dp),
                    color = when {
                        usagePercent > 80 -> MaterialTheme.colorScheme.error
                        usagePercent > 60 -> MaterialTheme.colorScheme.tertiary
                        else -> MaterialTheme.colorScheme.primary
                    }
                )
            }
            
            Spacer(modifier = Modifier.height(8.dp))
            
            LinearProgressIndicator(
                progress = { usagePercent / 100f },
                modifier = Modifier.fillMaxWidth(),
                color = when {
                    usagePercent > 80 -> MaterialTheme.colorScheme.error
                    usagePercent > 60 -> MaterialTheme.colorScheme.tertiary
                    else -> MaterialTheme.colorScheme.primary
                }
            )
        }
    }
}

@Composable
private fun RecentOperationsCard(metrics: List<PerformanceMetric>) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Последние операции",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            if (metrics.isEmpty()) {
                Text(
                    text = "Нет данных о производительности",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                metrics.forEach { metric ->
                    OperationItem(metric)
                    Spacer(modifier = Modifier.height(8.dp))
                }
            }
        }
    }
}

@Composable
private fun OperationItem(metric: PerformanceMetric) {
    val timeFormat = SimpleDateFormat("HH:mm:ss", Locale.getDefault())
    
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(8.dp))
            .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.3f))
            .padding(12.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        Column(modifier = Modifier.weight(1f)) {
            Text(
                text = metric.operationName,
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = FontWeight.Medium
            )
            Text(
                text = timeFormat.format(Date(metric.timestamp)),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        
        Text(
            text = "${metric.duration}ms",
            style = MaterialTheme.typography.bodyMedium,
            fontWeight = FontWeight.SemiBold,
            color = when {
                metric.duration > 1000 -> MaterialTheme.colorScheme.error
                metric.duration > 500 -> MaterialTheme.colorScheme.tertiary
                else -> MaterialTheme.colorScheme.primary
            }
        )
    }
}

@Composable
private fun OperationBreakdownCard(operationCounts: Map<String, Int>) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Частота операций",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            if (operationCounts.isEmpty()) {
                Text(
                    text = "Нет данных об операциях",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            } else {
                val maxCount = operationCounts.values.maxOrNull() ?: 1
                
                operationCounts.entries.sortedByDescending { it.value }.forEach { (operation, count) ->
                    OperationCountItem(
                        operationName = operation,
                        count = count,
                        maxCount = maxCount
                    )
                    Spacer(modifier = Modifier.height(8.dp))
                }
            }
        }
    }
}

@Composable
private fun OperationCountItem(
    operationName: String,
    count: Int,
    maxCount: Int
) {
    Column {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = operationName,
                style = MaterialTheme.typography.bodyMedium,
                modifier = Modifier.weight(1f)
            )
            Text(
                text = count.toString(),
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = FontWeight.SemiBold
            )
        }
        
        Spacer(modifier = Modifier.height(4.dp))
        
        LinearProgressIndicator(
            progress = { count.toFloat() / maxCount },
            modifier = Modifier.fillMaxWidth(),
            color = MaterialTheme.colorScheme.primary
        )
    }
}

@Composable
private fun PerformanceRecommendationsCard(stats: PerformanceStats) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        elevation = CardDefaults.cardElevation(defaultElevation = 4.dp)
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = "Рекомендации",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.SemiBold
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            val recommendations = generateRecommendations(stats)
            
            if (recommendations.isEmpty()) {
                Row(
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Icon(
                        Icons.Default.CheckCircle,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.size(20.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = "Производительность оптимальна",
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            } else {
                recommendations.forEach { recommendation ->
                    RecommendationItem(recommendation)
                    Spacer(modifier = Modifier.height(8.dp))
                }
            }
        }
    }
}

@Composable
private fun RecommendationItem(recommendation: PerformanceRecommendation) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(8.dp))
            .background(
                when (recommendation.severity) {
                    RecommendationSeverity.HIGH -> MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.3f)
                    RecommendationSeverity.MEDIUM -> MaterialTheme.colorScheme.tertiaryContainer.copy(alpha = 0.3f)
                    RecommendationSeverity.LOW -> MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.3f)
                }
            )
            .padding(12.dp),
        verticalAlignment = Alignment.Top
    ) {
        Icon(
            recommendation.icon,
            contentDescription = null,
            tint = when (recommendation.severity) {
                RecommendationSeverity.HIGH -> MaterialTheme.colorScheme.error
                RecommendationSeverity.MEDIUM -> MaterialTheme.colorScheme.tertiary
                RecommendationSeverity.LOW -> MaterialTheme.colorScheme.primary
            },
            modifier = Modifier.size(20.dp)
        )
        
        Spacer(modifier = Modifier.width(12.dp))
        
        Column {
            Text(
                text = recommendation.title,
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = FontWeight.Medium
            )
            Text(
                text = recommendation.description,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun PerformanceMetricItem(
    icon: ImageVector,
    label: String,
    value: String,
    color: Color
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Icon(
            icon,
            contentDescription = null,
            tint = color,
            modifier = Modifier.size(24.dp)
        )
        Spacer(modifier = Modifier.height(4.dp))
        Text(
            text = value,
            style = MaterialTheme.typography.titleMedium,
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

private fun generateRecommendations(stats: PerformanceStats): List<PerformanceRecommendation> {
    val recommendations = mutableListOf<PerformanceRecommendation>()
    
    if (stats.averageDuration > 500) {
        recommendations.add(
            PerformanceRecommendation(
                severity = RecommendationSeverity.HIGH,
                icon = Icons.Default.Warning,
                title = "Медленные операции",
                description = "Среднее время операций превышает 500ms. Рассмотрите оптимизацию алгоритмов."
            )
        )
    }
    
    if (stats.slowOperations > stats.totalOperations * 0.1) {
        recommendations.add(
            PerformanceRecommendation(
                severity = RecommendationSeverity.MEDIUM,
                icon = Icons.Default.Speed,
                title = "Много медленных операций",
                description = "Более 10% операций выполняются дольше 1 секунды."
            )
        )
    }
    
    val runtime = Runtime.getRuntime()
    val memoryUsage = ((runtime.totalMemory() - runtime.freeMemory()).toFloat() / runtime.maxMemory()) * 100
    
    if (memoryUsage > 80) {
        recommendations.add(
            PerformanceRecommendation(
                severity = RecommendationSeverity.HIGH,
                icon = Icons.Default.Memory,
                title = "Высокое использование памяти",
                description = "Использование памяти превышает 80%. Очистите кэши или оптимизируйте загрузку данных."
            )
        )
    }
    
    return recommendations
}

data class PerformanceRecommendation(
    val severity: RecommendationSeverity,
    val icon: ImageVector,
    val title: String,
    val description: String
)

enum class RecommendationSeverity {
    HIGH, MEDIUM, LOW
}