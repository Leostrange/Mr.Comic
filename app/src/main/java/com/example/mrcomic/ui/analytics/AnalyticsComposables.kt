package com.example.mrcomic.ui.analytics

import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import androidx.lifecycle.compose.LocalLifecycleOwner
import com.example.core.analytics.AnalyticsEvent
import com.example.core.analytics.AnalyticsHelper
import kotlinx.coroutines.CoroutineScope

/**
 * Composable функции с интегрированной аналитикой
 */

/**
 * Отслеживает просмотр экрана автоматически
 */
@Composable
fun TrackScreenView(
    screenName: String,
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope = rememberCoroutineScope()
) {
    val lifecycleOwner = LocalLifecycleOwner.current
    
    DisposableEffect(screenName, lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            if (event == Lifecycle.Event.ON_RESUME) {
                analyticsHelper.trackScreenView(screenName, scope)
            }
        }
        
        lifecycleOwner.lifecycle.addObserver(observer)
        
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }
}

/**
 * Кнопка с отслеживанием нажатий
 */
@Composable
fun AnalyticsButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    analyticsHelper: AnalyticsHelper,
    eventName: String,
    eventParameters: Map<String, Any> = emptyMap(),
    scope: CoroutineScope = rememberCoroutineScope(),
    content: @Composable RowScope.() -> Unit
) {
    Button(
        onClick = {
            // Отслеживаем событие
            val event = AnalyticsEvent.PerformanceMetric(
                metricName = eventName,
                value = 1.0,
                unit = "click"
            )
            analyticsHelper.track(event, scope)
            
            // Выполняем основное действие
            onClick()
        },
        modifier = modifier,
        enabled = enabled,
        content = content
    )
}

/**
 * Отслеживание ошибок в UI
 */
@Composable
fun ErrorBoundary(
    analyticsHelper: AnalyticsHelper,
    context: String,
    scope: CoroutineScope = rememberCoroutineScope(),
    content: @Composable () -> Unit
) {
    var hasError by remember { mutableStateOf(false) }
    var errorMessage by remember { mutableStateOf("") }
    
    if (hasError) {
        // Показываем UI ошибки
        ErrorContent(
            message = errorMessage,
            onRetry = { 
                hasError = false
                errorMessage = ""
            }
        )
    } else {
        // Пытаемся отобразить контент
        try {
            content()
        } catch (error: Exception) {
            // Отслеживаем ошибку
            analyticsHelper.trackError(error, context, scope)
            
            // Показываем состояние ошибки
            hasError = true
            errorMessage = error.message ?: "Неизвестная ошибка"
        }
    }
}

@Composable
private fun ErrorContent(
    message: String,
    onRetry: () -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.Center
    ) {
        Text(
            text = "Произошла ошибка",
            style = MaterialTheme.typography.headlineSmall
        )
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = message,
            style = MaterialTheme.typography.bodyMedium
        )
        Spacer(modifier = Modifier.height(16.dp))
        Button(onClick = onRetry) {
            Text("Повторить")
        }
    }
}

/**
 * Отслеживание производительности операций
 */
@Composable
fun <T> PerformanceTracker(
    operationName: String,
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope = rememberCoroutineScope(),
    operation: @Composable () -> T
): T {
    val startTime = remember { System.currentTimeMillis() }
    
    val result = operation()
    
    LaunchedEffect(Unit) {
        val duration = System.currentTimeMillis() - startTime
        analyticsHelper.trackPerformance(
            metricName = "${operationName}_render_time",
            value = duration.toDouble(),
            unit = "milliseconds",
            scope = scope
        )
    }
    
    return result
}

/**
 * Компонент с отслеживанием пользовательских действий
 */
@Composable
fun AnalyticsClickable(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    analyticsHelper: AnalyticsHelper,
    eventName: String,
    eventParameters: Map<String, Any> = emptyMap(),
    scope: CoroutineScope = rememberCoroutineScope(),
    content: @Composable () -> Unit
) {
    Box(
        modifier = modifier.clickable {
            // Создаем кастомное событие с параметрами
            val event = object : AnalyticsEvent("user_interaction", eventParameters + mapOf(
                "action" to eventName,
                "timestamp" to System.currentTimeMillis()
            )) {}
            
            analyticsHelper.track(event, scope)
            onClick()
        }
    ) {
        content()
    }
}

/**
 * Отслеживание времени, проведенного на экране
 */
@Composable
fun TrackScreenTime(
    screenName: String,
    analyticsHelper: AnalyticsHelper,
    scope: CoroutineScope = rememberCoroutineScope()
) {
    val startTime = remember { System.currentTimeMillis() }
    val lifecycleOwner = LocalLifecycleOwner.current
    
    DisposableEffect(screenName, lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_PAUSE -> {
                    val duration = System.currentTimeMillis() - startTime
                    analyticsHelper.trackPerformance(
                        metricName = "${screenName}_screen_time",
                        value = duration.toDouble(),
                        unit = "milliseconds",
                        scope = scope
                    )
                }
                else -> { /* do nothing */ }
            }
        }
        
        lifecycleOwner.lifecycle.addObserver(observer)
        
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }
}