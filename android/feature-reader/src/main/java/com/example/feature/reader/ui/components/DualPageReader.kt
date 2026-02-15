package com.example.feature.reader.ui.components

import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.core.FastOutSlowInEasing
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.with
import androidx.compose.animation.SizeTransform
import androidx.compose.foundation.Image
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.fillMaxHeight
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.background
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.material3.MaterialTheme
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.IntSize
import androidx.compose.ui.unit.dp
import androidx.compose.ui.zIndex
import com.example.feature.reader.ui.ReaderUiState

/**
 * Режим чтения двух страниц (разворот) для landscape.
 * Отображает текущую страницу слева и следующую справа.
 */
@OptIn(ExperimentalAnimationApi::class)
@Composable
fun DualPageReader(
    uiState: ReaderUiState,
    screenSize: IntSize,
    onNextSpread: () -> Unit,
    onPreviousSpread: () -> Unit,
    onShowTopPanel: () -> Unit,
    onShowRightPanel: () -> Unit,
    showTopPanel: Boolean,
    showRightPanel: Boolean,
    onCloseAllPanels: () -> Unit,
    readerSettings: com.example.feature.reader.ui.ReaderSettings = com.example.feature.reader.ui.ReaderSettings()
) {
    AnimatedContent(
        targetState = uiState.currentPageIndex,
        transitionSpec = {
            val forward = targetState > initialState
            val slideIn = androidx.compose.animation.slideInHorizontally(
                initialOffsetX = { fullWidth -> if (forward) fullWidth else -fullWidth },
                animationSpec = tween(250, easing = FastOutSlowInEasing)
            ) + fadeIn(animationSpec = tween(150))
            val slideOut = androidx.compose.animation.slideOutHorizontally(
                targetOffsetX = { fullWidth -> if (forward) -fullWidth else fullWidth },
                animationSpec = tween(250, easing = FastOutSlowInEasing)
            ) + fadeOut(animationSpec = tween(150))
            (slideIn with slideOut).using(SizeTransform(clip = false))
        },
        label = "DualPageSlider"
    ) { currentLeftPage ->
        val leftPage = currentLeftPage.coerceIn(0, (uiState.pageCount - 1).coerceAtLeast(0))
        val rightPage = (leftPage + 1).takeIf { it < uiState.pageCount }

        var scale by remember(leftPage) { mutableFloatStateOf(1.0f) }
        var offsetX by remember(leftPage) { mutableFloatStateOf(0f) }
        var offsetY by remember(leftPage) { mutableFloatStateOf(0f) }

        // Сбрасываем зум при смене разворота
        LaunchedEffect(leftPage) {
            scale = 1.0f
            offsetX = 0f
            offsetY = 0f
        }

        BoxWithConstraints(
            modifier = Modifier
                .fillMaxSize()
                .zIndex(1f),
            contentAlignment = Alignment.Center
        ) {
            val screenW = constraints.maxWidth.toFloat()
            val screenH = constraints.maxHeight.toFloat()

            val leftBitmap = uiState.bitmaps[leftPage]
            val rightBitmap = rightPage?.let { uiState.bitmaps[it] }

            if (leftBitmap != null) {
                // Исправленный расчет масштаба для разворота
                val leftW = leftBitmap.width.toFloat()
                val leftH = leftBitmap.height.toFloat()
                val rightW = rightBitmap?.width?.toFloat() ?: 0f

                // Общая ширина разворота (левая + правая страница)
                val totalWidth = leftW + rightW

                // Сначала пробуем вписать по высоте
                val scaleToFitHeight = screenH / leftH
                val widthAfterHeightFit = totalWidth * scaleToFitHeight

                // Если после подгонки по высоте разворот не влезает по ширине - ограничиваем ширину
                val baseScale = if (widthAfterHeightFit > screenW) {
                    screenW / totalWidth  // Ограничено шириной экрана
                } else {
                    scaleToFitHeight      // Ограничено высотой экрана
                }

                val spreadWidth = totalWidth * baseScale
                val spreadHeight = leftH * baseScale

                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .graphicsLayer {
                            scaleX = scale
                            scaleY = scale
                            translationX = offsetX
                            translationY = offsetY
                        }
                        .pointerInput(leftPage, rightPage) {
                            detectTransformGestures { _, pan, zoomChange, _ ->
                                val anyPanelOpen = showTopPanel || showRightPanel
                                if (anyPanelOpen) return@detectTransformGestures

                                val targetScale = (scale * zoomChange).coerceIn(1.0f, 5.0f)
                                val isNowZoomed = targetScale > 1.0f + 0.001f

                                val rawOffset = if (isNowZoomed) {
                                    Offset(offsetX + pan.x, offsetY + pan.y)
                                } else {
                                    Offset.Zero
                                }

                                val clamped = if (isNowZoomed) {
                                    clampOffsetLocal(
                                        rawOffset,
                                        targetScale,
                                        spreadWidth,
                                        spreadHeight,
                                        screenW,
                                        screenH
                                    )
                                } else {
                                    Offset.Zero
                                }

                                scale = targetScale
                                offsetX = clamped.x
                                offsetY = clamped.y
                            }
                        }
                ) {
                    Row(
                        modifier = Modifier
                            .fillMaxWidth() // Row fills width to allow centering
                            .fillMaxHeight()
                            .align(Alignment.Center),
                        horizontalArrangement = Arrangement.Center, // Pack images in center, no gaps
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        // Left Page
                        Image(
                            painter = remember(leftBitmap, leftPage) {
                                BitmapPainter(leftBitmap.asImageBitmap())
                            },
                            contentDescription = "Page ${leftPage + 1}",
                            modifier = Modifier.fillMaxHeight(),
                            contentScale = ContentScale.FillHeight
                        )

                        // Right Page (if exists)
                        if (rightBitmap != null) {
                            Image(
                                painter = remember(rightBitmap, rightPage) {
                                    BitmapPainter(rightBitmap.asImageBitmap())
                                },
                                contentDescription = "Page ${rightPage + 1}",
                                modifier = Modifier.fillMaxHeight(),
                                contentScale = ContentScale.FillHeight
                            )
                        }
                    }
                }
            }
        }
    }
}

/**
 * Локальная версия clampOffset для DualPageReader,
 * чтобы не зависеть от приватной реализации в ReaderScreen.
 */
private fun clampOffsetLocal(
    offset: Offset,
    scale: Float,
    imageWidth: Float,
    imageHeight: Float,
    screenWidth: Float,
    screenHeight: Float
): Offset {
    val scaledWidth = imageWidth * scale
    val scaledHeight = imageHeight * scale

    val maxOffsetX = kotlin.math.max(0f, (scaledWidth - screenWidth) / 2f)
    val maxOffsetY = kotlin.math.max(0f, (scaledHeight - screenHeight) / 2f)

    return Offset(
        x = offset.x.coerceIn(-maxOffsetX, maxOffsetX),
        y = offset.y.coerceIn(-maxOffsetY, maxOffsetY)
    )
}


