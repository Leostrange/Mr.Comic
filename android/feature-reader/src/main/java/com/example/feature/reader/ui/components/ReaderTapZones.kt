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
 * Хит-зоны для ридера с СТРОГИМИ координатами:
 * - TopLeft (левый верхний угол) → TopPanel
 * - TopRight (правый верхний угол) → RightPanel  
 * - BottomLeft (левый нижний угол) → LeftPanel
 * - Left edge (центр левого края) → Previous page
 * - Right edge (центр правого края) → Next page
 * - Center → только pinch-zoom (НЕ вызывает панели)
 */
@Composable
fun ReaderTapZones(
    modifier: Modifier = Modifier,
    panelsOpen: Boolean,
    onOpenTopBar: () -> Unit,
    onOpenSideBar: () -> Unit,
    onOpenLeftPanel: () -> Unit = {}, // Новый callback для левой панели
    onPrev: () -> Unit,
    onNext: () -> Unit,
    // Settings
    tapZonesSize: Float = 1.0f,
    tapZonesSensitivity: Float = 1.0f,
    navigationTapZonesEnabled: Boolean = true,
) {
    val density = LocalDensity.current
    // СТРОГИЕ размеры зон согласно требованиям
    val cornerSizeDp = 150.dp // Угловые зоны 150dp (фиксированный размер)
    val edgeWidthDp = 80.dp // Ширина зон листания (по центру краёв)
    
    BoxWithConstraints(modifier.fillMaxSize()) {
        val w = constraints.maxWidth.toFloat()
        val h = constraints.maxHeight.toFloat()
        val cornerPx = with(density) { cornerSizeDp.toPx() }
        val edgeWidthPx = with(density) { edgeWidthDp.toPx() }
        
        // Зоны листания: только в центре по вертикали (не в углах)
        val edgeHeightRatio = 0.5f // 50% высоты экрана (центральная зона)
        val edgeHeightPx = h * edgeHeightRatio
        val edgeTopOffset = (h - edgeHeightPx) / 2f

        // СТРОГАЯ ЗОНА 1: TopLeft (левый верхний угол) → TopPanel
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

        // СТРОГАЯ ЗОНА 2: TopRight (правый верхний угол) → RightPanel
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
        
        // СТРОГАЯ ЗОНА 3: BottomLeft (левый нижний угол) → LeftPanel
        Box(
            Modifier
                .size(cornerSizeDp)
                .align(Alignment.BottomStart)
                .zIndex(1f)
                .conditional(!panelsOpen) {
                    pointerInput(Unit) {
                        detectTapGestures(onTap = { onOpenLeftPanel() })
                    }
                }
        )

        // СТРОГАЯ ЗОНА 4: Left edge (центр левого края) → Previous page
        // Исключаем нижний левый угол, чтобы не конфликтовать с LeftPanel
        if (navigationTapZonesEnabled) {
            Box(
                Modifier
                    .offset { IntOffset(0, edgeTopOffset.roundToInt()) }
                    .size(edgeWidthDp, (edgeHeightPx / density.density).dp)
                    .zIndex(1f)
                    .conditional(!panelsOpen) {
                        pointerInput(Unit) {
                            detectTapGestures(onTap = { onPrev() })
                        }
                    }
            )
        }

        // СТРОГАЯ ЗОНА 5: Right edge (центр правого края) → Next page
        if (navigationTapZonesEnabled) {
            Box(
                Modifier
                    .offset { IntOffset((w - edgeWidthPx).roundToInt(), edgeTopOffset.roundToInt()) }
                    .size(edgeWidthDp, (edgeHeightPx / density.density).dp)
                    .zIndex(1f)
                    .conditional(!panelsOpen) {
                        pointerInput(Unit) {
                            detectTapGestures(onTap = { onNext() })
                        }
                    }
            )
        }
    }
}

/**
 * Вспомогательное расширение для условного модификатора
 */
private inline fun Modifier.conditional(
    condition: Boolean,
    crossinline block: Modifier.() -> Modifier
): Modifier = if (condition) then(block(Modifier)) else this