package com.example.feature.reader.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.zIndex

/**
 * Оверлей яркости для затемнения экрана
 * Применяется поверх страницы без влияния на иерархию рендеринга
 */
@Composable
fun BrightnessOverlay(
    brightness: Float, // 0f..1f, где 1f = полная яркость, 0f = полная темнота
    modifier: Modifier = Modifier
) {
    // Вычисляем альфу для оверлея: чем меньше яркость, тем больше затемнение
    val overlayAlpha = 1f - brightness
    
    Box(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = overlayAlpha))
            .zIndex(5f) // zIndex 5 согласно схеме слоев
    )
}
