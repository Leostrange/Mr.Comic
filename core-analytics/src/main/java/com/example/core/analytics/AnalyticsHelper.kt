package com.example.core.analytics

import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Helper класс для упрощенного использования аналитики в UI
 */
@Singleton
class AnalyticsHelper @Inject constructor(
    private val analyticsTracker: AnalyticsTracker
) {
    
    /**
     * Отследить событие без блокировки UI
     */
    fun track(event: AnalyticsEvent, scope: CoroutineScope) {
        scope.launch {
            analyticsTracker.trackEvent(event)
        }
    }
    
    /**
     * Отследить просмотр экрана
     */
    fun trackScreenView(screenName: String, scope: CoroutineScope) {
        track(AnalyticsEvent.ScreenViewed(screenName), scope)
    }
    
    /**
     * Отследить ошибку
     */
    fun trackError(
        error: Throwable,
        context: String,
        scope: CoroutineScope
    ) {
        val errorEvent = AnalyticsEvent.Error(
            errorType = error::class.simpleName ?: "Unknown",
            errorMessage = "$context: ${error.message}",
            stackTrace = error.stackTraceToString()
        )
        track(errorEvent, scope)
    }
    
    /**
     * Отследить метрику производительности
     */
    fun trackPerformance(
        metricName: String,
        value: Double,
        unit: String,
        scope: CoroutineScope
    ) {
        val performanceEvent = AnalyticsEvent.PerformanceMetric(
            metricName = metricName,
            value = value,
            unit = unit
        )
        track(performanceEvent, scope)
    }
    
    /**
     * Отследить время выполнения операции
     */
    inline fun <T> trackTiming(
        operationName: String,
        scope: CoroutineScope,
        operation: () -> T
    ): T {
        val startTime = System.currentTimeMillis()
        return try {
            operation()
        } finally {
            val duration = System.currentTimeMillis() - startTime
            trackPerformance(
                metricName = "${operationName}_duration",
                value = duration.toDouble(),
                unit = "milliseconds",
                scope = scope
            )
        }
    }
}