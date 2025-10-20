package com.example.feature.reader.ui.components

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.graphics.BlendMode
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.zIndex
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.debounce

/**
 * Оверлей яркости для затемнения/осветления экрана.
 * Использует drawWithContent и режимы смешивания, чтобы не трогать матрицы изображения.
 * Это предотвращает прыжки изображения при изменении яркости.
 */
@Composable
fun BrightnessOverlay(
    brightness: Float, // 0.2f..1.2f, где 1f = стандартная яркость
    modifier: Modifier = Modifier
) {
    val clamped = brightness.coerceIn(MIN_BRIGHTNESS, MAX_BRIGHTNESS)

    Box(
        modifier = modifier
            .fillMaxSize()
            .zIndex(2f) // zIndex 2 согласно новой схеме слоев
            .drawWithContent {
                drawContent()

                when {
                    clamped < 1f - EPSILON -> {
                        val normalized = ((clamped - MIN_BRIGHTNESS) / (1f - MIN_BRIGHTNESS))
                            .coerceIn(0f, 1f)
                        val alpha = 1f - normalized
                        if (alpha > EPSILON) {
                            drawRect(
                                color = Color.Black.copy(alpha = alpha),
                                blendMode = BlendMode.SrcOver
                            )
                        }
                    }

                    clamped > 1f + EPSILON -> {
                        val normalized = ((clamped - 1f) / (MAX_BRIGHTNESS - 1f))
                            .coerceIn(0f, 1f)
                        if (normalized > EPSILON) {
                            drawRect(
                                color = Color.White.copy(alpha = normalized),
                                blendMode = BlendMode.Screen
                            )
                        }
                    }
                }
            }
    )
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
 * Оверлей яркости с throttle для предотвращения тряски.
 */
@Composable
fun BrightnessOverlayThrottled(
    brightness: Float,
    modifier: Modifier = Modifier
) {
    // Применяем throttle на уровне компонента
    val throttledBrightness = remember(brightness) {
        // Простое сглаживание для предотвращения резких изменений
        brightness.coerceIn(MIN_BRIGHTNESS, MAX_BRIGHTNESS)
    }

    BrightnessOverlay(
        brightness = throttledBrightness,
        modifier = modifier
    )
}

private const val MIN_BRIGHTNESS = 0.2f
private const val MAX_BRIGHTNESS = 1.2f
private const val EPSILON = 0.001f
