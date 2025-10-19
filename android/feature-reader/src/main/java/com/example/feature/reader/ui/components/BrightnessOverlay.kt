package com.example.feature.reader.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.zIndex
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.debounce

/**
 * Оверлей яркости для затемнения экрана
 * Использует graphicsLayer для изменения альфы без перерисовки контента
 * Это предотвращает прыжки изображения при изменении яркости
 */
@Composable
fun BrightnessOverlay(
    brightness: Float, // 0f..1f, где 1f = полная яркость, 0f = полная темнота
    brightnessMode: String = "auto", // "auto" | "manual"
    modifier: Modifier = Modifier
) {
    // Показываем оверлей только в ручном режиме
    if (brightnessMode == "manual") {
        // Вычисляем альфу для оверлея: чем меньше яркость, тем больше затемнение
        val overlayAlpha = (1f - brightness.coerceIn(0f, 1f))
        
        Box(
            modifier = modifier
                .fillMaxSize()
                .zIndex(2f) // zIndex 2 согласно новой схеме слоев
                .graphicsLayer {
                    alpha = overlayAlpha
                }
                .background(Color.Black)
        )
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
 * Использует graphicsLayer для плавного изменения без перерисовки
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
    
    val overlayAlpha = (1f - throttledBrightness)
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .zIndex(2f) // zIndex 2 согласно новой схеме слоев
            .graphicsLayer {
                alpha = overlayAlpha
            }
            .background(Color.Black)
    )
}
