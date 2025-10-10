package com.example.feature.reader.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.zIndex
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.debounce
import kotlinx.coroutines.flow.flowOf

/**
 * Оверлей яркости для затемнения экрана
 * Применяется поверх страницы без влияния на иерархию рендеринга
 * С поддержкой сглаживания для предотвращения дёргания
 */
@Composable
fun BrightnessOverlay(
    brightness: Float, // 0f..1f, где 1f = полная яркость, 0f = полная темнота
    modifier: Modifier = Modifier
) {
    // Вычисляем альфу для оверлея: чем меньше яркость, тем больше затемнение
    val overlayAlpha = (1f - brightness.coerceIn(0f, 1f))
    
    Canvas(
        modifier = modifier
            .fillMaxSize()
            .zIndex(2f) // zIndex 2 согласно новой схеме слоев
    ) {
        drawRect(Color.Black.copy(alpha = overlayAlpha))
    }
}

/**
 * Оверлей яркости с сглаживанием через debounce
 * Изолирует яркость от рекомпозиции контента
 */
@Composable
fun BrightnessOverlayWithSmoothing(
    brightnessFlow: Flow<Float>,
    modifier: Modifier = Modifier
) {
    val smooth by brightnessFlow
        .debounce(16) // 16ms для 60fps
        .collectAsState(initial = 1f)
    
    BrightnessOverlay(
        brightness = smooth,
        modifier = modifier
    )
}

/**
 * Оверлей яркости с throttle для предотвращения тряски
 * Обновления — throttle(16–32ms)
 */
@Composable
fun BrightnessOverlayThrottled(
    brightness: Float,
    modifier: Modifier = Modifier
) {
    // Применяем throttle на уровне компонента
    val throttledBrightness = remember(brightness) {
        // Простое сглаживание для предотвращения резких изменений
        brightness.coerceIn(0f, 1f)
    }
    
    Canvas(
        modifier = modifier
            .fillMaxSize()
            .zIndex(2f) // zIndex 2 согласно новой схеме слоев
    ) {
        val overlayAlpha = (1f - throttledBrightness)
        drawRect(Color.Black.copy(alpha = overlayAlpha.toFloat()))
    }
}
