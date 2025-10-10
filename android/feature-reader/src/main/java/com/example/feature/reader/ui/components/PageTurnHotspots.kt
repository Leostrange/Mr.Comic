package com.example.feature.reader.ui.components

import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex

/**
 * Горячие зоны для перелистывания страниц
 * Размещены по центру с левого и правого края экрана для удобства
 */
@Composable
fun PageTurnHotspots(
    panelsOpen: Boolean,
    onPrev: () -> Unit,
    onNext: () -> Unit,
    modifier: Modifier = Modifier
) {
    if (!panelsOpen) {
        Box(modifier = modifier) {
            // Левая зона (смещена на 56dp вниз от левого верхнего угла)
            Box(
                modifier = Modifier
                    .size(72.dp)
                    .offset(x = 0.dp, y = 56.dp)
                    .align(Alignment.TopStart)
                    .zIndex(20f)
                    .pointerInput(Unit) {
                        detectTapGestures { onPrev() }
                    }
            )
            
            // Правая зона (по центру правого края)
            Box(
                modifier = Modifier
                    .size(72.dp)
                    .align(Alignment.CenterEnd)
                    .zIndex(20f)
                    .pointerInput(Unit) {
                        detectTapGestures { onNext() }
                    }
            )
        }
    }
}
