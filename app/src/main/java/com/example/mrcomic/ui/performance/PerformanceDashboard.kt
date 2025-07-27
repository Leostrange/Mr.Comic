package com.example.mrcomic.ui.performance

import androidx.compose.animation.*
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
import androidx.compose.ui.platform.testTag
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.core.analytics.AnalyticsHelper
import com.example.core.analytics.PerformanceMetric
import com.example.core.analytics.PerformanceProfiler
import com.example.core.analytics.PerformanceStats
import com.example.mrcomic.ui.analytics.TrackScreenView
import com.example.mrcomic.ui.analytics.AnalyticsButton
import kotlinx.coroutines.launch

/**
 * Dashboard для мониторинга производительности приложения
 */
@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun PerformanceDashboard(
    onBackClick: () -> Unit,
    performanceProfiler: PerformanceProfiler = hiltViewModel(),
    analyticsHelper: AnalyticsHelper = hiltViewModel()
) {
    val scope = rememberCoroutineScope()
    
    // Отслеживание экрана
    TrackScreenView("PerformanceDashboard", analyticsHelper, scope)
    
    val performanceMetrics by performanceProfiler.performanceMetrics.collectAsStateWithLifecycle()
    val performanceStats = remember(performanceMetrics) {
        performanceProfiler.getPerformanceStats()
    }
    
    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(MaterialTheme.colorScheme.background)
            .testTag("performance_dashboard")
    ) {
        // Top App Bar
        TopAppBar(
            title = {
                Text(
                    text = "Мониторинг производительности",
                    fontWeight = FontWeight.Bold
                )
            },
            navigationIcon = {
                AnalyticsClickable(
                    onClick = onBackClick,
                    analyticsHelper = analyticsHelper,
                    eventName = "performance_dashboard_back_clicked",
                    scope = scope
                ) {
                    IconButton(onClick = { }) {
                        Icon(
                            Icons.Default.ArrowBack,
                            contentDescription = "Назад"
                        )
                    }
                }
            },
            actions = {
                AnalyticsClickable(
                    onClick = {
                        performanceProfiler.clearOldMetrics()
                        analyticsHelper.track(
                            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                metricName = "performance_metrics_cleared",
                                value = 1.0,
                                unit = "action"
                            ),
                            scope
                        )
                    },
                    analyticsHelper = analyticsHelper,
                    eventName = "clear_metrics_clicked",
                    scope = scope
                ) {
                    IconButton(onClick = { }) {
                        Icon(
                            Icons.Default.ClearAll,
                            contentDescription = "Очистить метрики"
                        )
                    }
                }
            }
        )
        
        LazyColumn(
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Performance Summary
            item {
                PerformanceSummaryCard(
                    stats = performanceStats,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
            }
            
            // Memory Usage
            item {
                MemoryUsageCard(
                    performanceProfiler = performanceProfiler,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
            }
            
            // Quick Actions
            item {
                QuickActionsCard(
                    performanceProfiler = performanceProfiler,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
            }
            
            // Recent Metrics
            item {
                Text(
                    text = "Недавние метрики",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    modifier = Modifier.padding(vertical = 8.dp)
                )
            }
            
            items(performanceMetrics.takeLast(20).reversed()) { metric ->
                MetricCard(
                    metric = metric,
                    analyticsHelper = analyticsHelper,
                    scope = scope
                )
            }
            
            if (performanceMetrics.isEmpty()) {
                item {
                    EmptyMetricsCard()
                }
            }
        }
    }
}

@Composable
private fun PerformanceSummaryCard(
    stats: PerformanceStats,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer
        )
    ) {
        Column(
            modifier = Modifier.padding(20.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    Icons.Default.Dashboard,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.onPrimaryContainer,
                    modifier = Modifier.size(32.dp)
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = "Общая статистика",
                    style = MaterialTheme.typography.titleLarge,
                    fontWeight = FontWeight.Bold,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                StatItem(
                    title = "Операций",
                    value = stats.totalOperations.toString(),
                    icon = Icons.Default.Speed,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
                
                StatItem(
                    title = "Ср. время",
                    value = "${stats.averageDuration.toInt()}мс",
                    icon = Icons.Default.Timer,
                    color = MaterialTheme.colorScheme.onPrimaryContainer
                )
                
                StatItem(
                    title = "Медленных",
                    value = stats.slowOperations.toString(),
                    icon = Icons.Default.Warning,
                    color = if (stats.slowOperations > 0) 
                        MaterialTheme.colorScheme.error 
                    else 
                        MaterialTheme.colorScheme.onPrimaryContainer
                )
            }
        }
    }
}

@Composable
private fun StatItem(
    title: String,
    value: String,
    icon: ImageVector,
    color: Color
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Icon(
            imageVector = icon,
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
            text = title,
            style = MaterialTheme.typography.bodySmall,
            color = color.copy(alpha = 0.8f)
        )
    }
}

@Composable
private fun MemoryUsageCard(
    performanceProfiler: PerformanceProfiler,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    var memoryUsage by remember { mutableStateOf(0f) }
    
    LaunchedEffect(Unit) {
        performanceProfiler.measureMemoryUsage(scope)
    }
    
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    Icons.Default.Memory,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(24.dp)
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = "Использование памяти",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Medium
                )
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            
            // Memory progress bar
            LinearProgressIndicator(
                progress = { memoryUsage },
                modifier = Modifier.fillMaxWidth(),
                color = when {
                    memoryUsage > 0.8f -> MaterialTheme.colorScheme.error
                    memoryUsage > 0.6f -> MaterialTheme.colorScheme.tertiary
                    else -> MaterialTheme.colorScheme.primary
                }
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = "${(memoryUsage * 100).toInt()}% использовано",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            Spacer(modifier = Modifier.height(12.dp))
            
            AnalyticsButton(
                onClick = {
                    performanceProfiler.measureMemoryUsage(scope)
                    
                    // Имитация сборки мусора
                    System.gc()
                    
                    analyticsHelper.track(
                        com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                            metricName = "gc_triggered",
                            value = 1.0,
                            unit = "action"
                        ),
                        scope
                    )
                },
                analyticsHelper = analyticsHelper,
                eventName = "force_gc_clicked",
                scope = scope,
                modifier = Modifier.fillMaxWidth()
            ) {
                Icon(Icons.Default.Delete, contentDescription = null)
                Spacer(modifier = Modifier.width(8.dp))
                Text("Очистить память")
            }
        }
    }
}

@Composable
private fun QuickActionsCard(
    performanceProfiler: PerformanceProfiler,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    Card(
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically
            ) {
                Icon(
                    Icons.Default.FlashOn,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.primary,
                    modifier = Modifier.size(24.dp)
                )
                Spacer(modifier = Modifier.width(12.dp))
                Text(
                    text = "Быстрые действия",
                    style = MaterialTheme.typography.titleMedium,
                    fontWeight = FontWeight.Medium
                )
            }
            
            Spacer(modifier = Modifier.height(16.dp))
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                AnalyticsButton(
                    onClick = {
                        val measurementId = performanceProfiler.startMeasurement("test_operation")
                        scope.launch {
                            kotlinx.coroutines.delay(100)
                            performanceProfiler.finishMeasurement(
                                measurementId,
                                "test_operation",
                                scope,
                                mapOf("type" to "manual_test")
                            )
                        }
                    },
                    analyticsHelper = analyticsHelper,
                    eventName = "test_measurement_started",
                    scope = scope,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = null)
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Тест", style = MaterialTheme.typography.bodySmall)
                }
                
                AnalyticsButton(
                    onClick = {
                        performanceProfiler.clearOldMetrics()
                        
                        analyticsHelper.track(
                            com.example.core.analytics.AnalyticsEvent.PerformanceMetric(
                                metricName = "metrics_cleared",
                                value = 1.0,
                                unit = "action"
                            ),
                            scope
                        )
                    },
                    analyticsHelper = analyticsHelper,
                    eventName = "clear_metrics_clicked",
                    scope = scope,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.ClearAll, contentDescription = null)
                    Spacer(modifier = Modifier.width(4.dp))
                    Text("Очистить", style = MaterialTheme.typography.bodySmall)
                }
            }
        }
    }
}

@Composable
private fun MetricCard(
    metric: PerformanceMetric,
    analyticsHelper: AnalyticsHelper,
    scope: kotlinx.coroutines.CoroutineScope
) {
    val backgroundColor = when {
        metric.duration > 1000 -> MaterialTheme.colorScheme.errorContainer
        metric.duration > 500 -> MaterialTheme.colorScheme.tertiaryContainer
        else -> MaterialTheme.colorScheme.surfaceVariant
    }
    
    val textColor = when {
        metric.duration > 1000 -> MaterialTheme.colorScheme.onErrorContainer
        metric.duration > 500 -> MaterialTheme.colorScheme.onTertiaryContainer
        else -> MaterialTheme.colorScheme.onSurfaceVariant
    }
    
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = backgroundColor
        )
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Icon(
                imageVector = when {
                    metric.operationName.contains("error") -> Icons.Default.Error
                    metric.operationName.contains("load") -> Icons.Default.Download
                    metric.operationName.contains("render") -> Icons.Default.Visibility
                    metric.operationName.contains("cache") -> Icons.Default.Storage
                    else -> Icons.Default.Speed
                },
                contentDescription = null,
                tint = textColor,
                modifier = Modifier.size(20.dp)
            )
            
            Spacer(modifier = Modifier.width(12.dp))
            
            Column(modifier = Modifier.weight(1f)) {
                Text(
                    text = metric.operationName,
                    style = MaterialTheme.typography.bodyMedium,
                    fontWeight = FontWeight.Medium,
                    color = textColor
                )
                
                Row(
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Text(
                        text = "${metric.duration}ms",
                        style = MaterialTheme.typography.bodySmall,
                        color = textColor.copy(alpha = 0.8f)
                    )
                    
                    Text(
                        text = "•",
                        style = MaterialTheme.typography.bodySmall,
                        color = textColor.copy(alpha = 0.6f)
                    )
                    
                    Text(
                        text = formatTimestamp(metric.timestamp),
                        style = MaterialTheme.typography.bodySmall,
                        color = textColor.copy(alpha = 0.8f)
                    )
                }
            }
            
            if (metric.additionalData.isNotEmpty()) {
                Icon(
                    Icons.Default.Info,
                    contentDescription = "Дополнительная информация",
                    tint = textColor.copy(alpha = 0.6f),
                    modifier = Modifier.size(16.dp)
                )
            }
        }
    }
}

@Composable
private fun EmptyMetricsCard() {
    Card(
        modifier = Modifier.fillMaxWidth(),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(32.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Icon(
                Icons.Default.Analytics,
                contentDescription = null,
                modifier = Modifier.size(64.dp),
                tint = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.6f)
            )
            
            Spacer(modifier = Modifier.height(16.dp))
            
            Text(
                text = "Нет данных о производительности",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Medium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
            
            Spacer(modifier = Modifier.height(8.dp))
            
            Text(
                text = "Используйте приложение для сбора метрик",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.8f)
            )
        }
    }
}

private fun formatTimestamp(timestamp: Long): String {
    val now = System.currentTimeMillis()
    val diff = now - timestamp
    
    return when {
        diff < 60_000 -> "${diff / 1000}с назад"
        diff < 3600_000 -> "${diff / 60_000}м назад"
        diff < 86400_000 -> "${diff / 3600_000}ч назад"
        else -> "${diff / 86400_000}д назад"
    }
}