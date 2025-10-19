package com.example.feature.reader.ui.components

import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.offset
import androidx.compose.foundation.layout.size
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.IntOffset
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import kotlin.math.roundToInt

/**
 * Хит-зоны для ридера с новой схемой:
 * - Угловые зоны: верхняя панель (левый верхний), боковая панель (правый верхний)
 * - Боковые полосы: листание назад (левая), листание вперёд (правая)
 * - Центральная зона: только pinch-zoom
 */
@Composable
fun ReaderTapZones(
    modifier: Modifier = Modifier,
    panelsOpen: Boolean,
    onOpenTopBar: () -> Unit,
    onOpenSideBar: () -> Unit,
    onPrev: () -> Unit,
    onNext: () -> Unit,
    // Settings
    tapZonesSize: Float = 1.0f,
    tapZonesSensitivity: Float = 1.0f,
    navigationTapZonesEnabled: Boolean = true,
) {
    val density = LocalDensity.current
    // Применяем настройки размера и чувствительности
    val sideWidthDp = (120.dp * tapZonesSize) // Применяем настройку размера
    val cornerSizeDp = (120.dp * tapZonesSize) // Применяем настройку размера
    val sideHeightRatio = 0.7f * tapZonesSize // Применяем настройку размера
    val sideWidthPercent = 0.15f * tapZonesSize // Применяем настройку размера
    
    // Применяем настройку чувствительности к порогам
    val sensitivityMultiplier = tapZonesSensitivity

    BoxWithConstraints(modifier.fillMaxSize()) {
        val w = constraints.maxWidth.toFloat()
        val h = constraints.maxHeight.toFloat()
        val sideWpx = with(density) { sideWidthDp.toPx() }
        val cornerPx = with(density) { cornerSizeDp.toPx() }
        val sideHpx = h * sideHeightRatio
        val sideTop = (h - sideHpx) / 2f
        
        // Вычисляем ширину боковых зон как процент от ширины экрана
        val sideWidthPx = w * sideWidthPercent
        val sideLeftOffset = cornerPx // Отступ от левого края на размер угловой зоны
        val sideRightOffset = w - cornerPx - sideWidthPx // Отступ от правого края

        // Зона: верхняя панель (левый верхний)
        Box(
            Modifier
                .size(cornerSizeDp)
                .offset { IntOffset(0, 0) }
                .zIndex(1f)
                .conditional(!panelsOpen) {
                    pointerInput(Unit) {
                        detectTapGestures(onTap = { onOpenTopBar() })
                    }
                }
        )

        // Зона: боковая панель (правый верхний)
        Box(
            Modifier
                .size(cornerSizeDp)
                .align(Alignment.TopEnd)
                .zIndex(1f)
                .conditional(!panelsOpen) {
                    pointerInput(Unit) {
                        detectTapGestures(onTap = { onOpenSideBar() })
                    }
                }
        )

        // Левая полоса (назад) - центральная зона слева, не доходит до углов
        Box(
            Modifier
                .offset { IntOffset(sideLeftOffset.roundToInt(), sideTop.roundToInt()) }
                .size((sideWidthPx / density.density).dp, (sideHpx / density.density).dp)
                .zIndex(1f)
                .conditional(!panelsOpen) {
                    pointerInput(Unit) {
                        detectTapGestures(onTap = { onPrev() })
                    }
                }
        )

        // Правая полоса (вперёд) - центральная зона справа, не доходит до углов
        Box(
            Modifier
                .offset { IntOffset(sideRightOffset.roundToInt(), sideTop.roundToInt()) }
                .size((sideWidthPx / density.density).dp, (sideHpx / density.density).dp)
                .zIndex(1f)
                .conditional(!panelsOpen) {
                    pointerInput(Unit) {
                        detectTapGestures(onTap = { onNext() })
                    }
                }
        )
    }
}

/**
 * Вспомогательное расширение для условного модификатора
 */
private inline fun Modifier.conditional(
    condition: Boolean,
    crossinline block: Modifier.() -> Modifier
): Modifier = if (condition) then(block(Modifier)) else this