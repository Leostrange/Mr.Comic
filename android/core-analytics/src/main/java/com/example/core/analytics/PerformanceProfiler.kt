package com.example.core.analytics

import android.os.SystemClock
import android.util.Log
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Система профилирования производительности приложения
 */
@Singleton
class PerformanceProfiler @Inject constructor(
    private val analyticsHelper: AnalyticsHelper
) {
    
    private val _performanceMetrics = MutableStateFlow<List<PerformanceMetric>>(emptyList())
    val performanceMetrics: StateFlow<List<PerformanceMetric>> = _performanceMetrics.asStateFlow()
    
    private val activeOperations = mutableMapOf<String, Long>()
    
    companion object {
        private const val TAG = "PerformanceProfiler"
        private const val MAX_METRICS_HISTORY = 100
    }
    
    /**
     * Начинает измерение производительности операции
     */
    fun startMeasurement(operationName: String): String {
        val measurementId = "${operationName}_${System.currentTimeMillis()}"
        val startTime = SystemClock.elapsedRealtime()
        activeOperations[measurementId] = startTime
        
        Log.d(TAG, "Started measuring: $operationName")
        return measurementId
    }
    
    /**
     * Завершает измерение и записывает метрику
     */
    fun finishMeasurement(
        measurementId: String,
        operationName: String? = null,
        scope: CoroutineScope,
        additionalData: Map<String, Any> = emptyMap()
    ) {
        val startTime = activeOperations.remove(measurementId) ?: return
        val endTime = SystemClock.elapsedRealtime()
        val duration = endTime - startTime
        
        val finalOperationName = operationName ?: measurementId.substringBefore("_")
        
        val metric = PerformanceMetric(
            operationName = finalOperationName,
            duration = duration,
            timestamp = System.currentTimeMillis(),
            additionalData = additionalData
        )
        
        addMetric(metric)
        
        // Отправляем в аналитику
        scope.launch {
            analyticsHelper.trackPerformance(
                metricName = finalOperationName,
                value = duration.toDouble(),
                unit = "milliseconds",
                scope = scope
            )
        }
        
        Log.d(TAG, "Finished measuring: $finalOperationName in ${duration}ms")
    }
    
    /**
     * Inline функция для измерения времени выполнения блока кода
     */
    inline fun <T> measureOperation(
        operationName: String,
        scope: CoroutineScope,
        additionalData: Map<String, Any> = emptyMap(),
        operation: () -> T
    ): T {
        val measurementId = startMeasurement(operationName)
        return try {
            operation()
        } finally {
            finishMeasurement(measurementId, operationName, scope, additionalData)
        }
    }
    
    /**
     * Suspend функция для измерения корутин
     */
    suspend inline fun <T> measureSuspendOperation(
        operationName: String,
        scope: CoroutineScope,
        additionalData: Map<String, Any> = emptyMap(),
        crossinline operation: suspend () -> T
    ): T {
        val measurementId = startMeasurement(operationName)
        return try {
            operation()
        } finally {
            finishMeasurement(measurementId, operationName, scope, additionalData)
        }
    }
    
    /**
     * Профилирование использования памяти
     */
    fun measureMemoryUsage(scope: CoroutineScope) {
        val runtime = Runtime.getRuntime()
        val totalMemory = runtime.totalMemory()
        val freeMemory = runtime.freeMemory()
        val usedMemory = totalMemory - freeMemory
        val maxMemory = runtime.maxMemory()
        
        val memoryMetric = PerformanceMetric(
            operationName = "memory_usage",
            duration = 0,
            timestamp = System.currentTimeMillis(),
            additionalData = mapOf(
                "total_memory_mb" to (totalMemory / 1024 / 1024),
                "used_memory_mb" to (usedMemory / 1024 / 1024),
                "free_memory_mb" to (freeMemory / 1024 / 1024),
                "max_memory_mb" to (maxMemory / 1024 / 1024),
                "memory_usage_percent" to ((usedMemory.toDouble() / maxMemory) * 100)
            )
        )
        
        addMetric(memoryMetric)
        
        scope.launch {
            analyticsHelper.trackPerformance(
                metricName = "memory_usage_percent",
                value = (usedMemory.toDouble() / maxMemory) * 100,
                unit = "percent",
                scope = scope
            )
        }
        
        Log.d(TAG, "Memory usage: ${usedMemory / 1024 / 1024}MB / ${maxMemory / 1024 / 1024}MB")
    }
    
    /**
     * Получение статистики производительности
     */
    fun getPerformanceStats(): PerformanceStats {
        val metrics = _performanceMetrics.value
        
        if (metrics.isEmpty()) {
            return PerformanceStats()
        }
        
        val durations = metrics.map { it.duration }
        val averageDuration = durations.average()
        val maxDuration = durations.maxOrNull() ?: 0L
        val minDuration = durations.minOrNull() ?: 0L
        
        val operationCounts = metrics.groupBy { it.operationName }
            .mapValues { it.value.size }
        
        val slowOperations = metrics.filter { it.duration > 1000 } // > 1 second
        
        return PerformanceStats(
            totalOperations = metrics.size,
            averageDuration = averageDuration,
            maxDuration = maxDuration,
            minDuration = minDuration,
            operationCounts = operationCounts,
            slowOperations = slowOperations.size
        )
    }
    
    /**
     * Очистка старых метрик
     */
    fun clearOldMetrics() {
        val currentMetrics = _performanceMetrics.value
        if (currentMetrics.size > MAX_METRICS_HISTORY) {
            val newMetrics = currentMetrics.takeLast(MAX_METRICS_HISTORY / 2)
            _performanceMetrics.value = newMetrics
        }
    }
    
    /**
     * Добавление метрики в список
     */
    private fun addMetric(metric: PerformanceMetric) {
        val currentMetrics = _performanceMetrics.value.toMutableList()
        currentMetrics.add(metric)
        
        // Ограничиваем количество метрик в памяти
        if (currentMetrics.size > MAX_METRICS_HISTORY) {
            currentMetrics.removeFirst()
        }
        
        _performanceMetrics.value = currentMetrics
    }
}

/**
 * Метрика производительности
 */
data class PerformanceMetric(
    val operationName: String,
    val duration: Long, // в миллисекундах
    val timestamp: Long,
    val additionalData: Map<String, Any> = emptyMap()
)

/**
 * Статистика производительности
 */
data class PerformanceStats(
    val totalOperations: Int = 0,
    val averageDuration: Double = 0.0,
    val maxDuration: Long = 0L,
    val minDuration: Long = 0L,
    val operationCounts: Map<String, Int> = emptyMap(),
    val slowOperations: Int = 0
)