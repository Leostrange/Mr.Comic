package com.example.feature.reader.ui.components

import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.EnterTransition
import androidx.compose.animation.ExitTransition
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.togetherWith
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.calculatePan
import androidx.compose.foundation.gestures.calculateZoom
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.BoxWithConstraintsScope
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.requiredHeight
import androidx.compose.foundation.layout.requiredWidth
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.FilterQuality
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import com.example.core.model.ReadingMode
import com.example.core.model.ReaderImageScaleMode
import com.example.core.ui.eink.LocalEInkMode
import com.example.feature.reader.ui.ReaderUiState
import com.example.feature.reader.ui.ReaderViewModel
import kotlin.math.max

@Composable
fun PageView(
    viewModel: ReaderViewModel,
    uiState: ReaderUiState,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    imageScaleMode: String = ReaderImageScaleMode.FIT_WIDTH.storedValue,
    modifier: Modifier = Modifier
) {
    val isEInk = LocalEInkMode.current
    val isDualPage = uiState.readingMode == ReadingMode.DUAL_PAGE
    val leftPage = uiState.currentPage

    AnimatedContent(
        targetState = Pair(leftPage, isDualPage),
        transitionSpec = {
            // E-ink: always instant cut — fades/slides cause severe ghosting.
            // Normal: respect the per-comic animation setting.
            when {
                isEInk || uiState.readerPageAnimation == "NONE" ->
                    EnterTransition.None togetherWith ExitTransition.None
                uiState.readerPageAnimation == "FADE" ->
                    fadeIn(tween(250)) togetherWith fadeOut(tween(250))
                else -> { // "SLIDE" (default)
                    val forward = targetState.first >= initialState.first
                    if (forward) {
                        (slideInHorizontally(tween(300)) { w -> w } + fadeIn(tween(200))) togetherWith
                            (slideOutHorizontally(tween(300)) { w -> -w } + fadeOut(tween(200)))
                    } else {
                        (slideInHorizontally(tween(300)) { w -> -w } + fadeIn(tween(200))) togetherWith
                            (slideOutHorizontally(tween(300)) { w -> w } + fadeOut(tween(200)))
                    }
                }
            }
        },
        modifier = modifier.fillMaxSize()
    ) { (page, dual) ->
        val rightPage = (page + 1).takeIf { dual && it < uiState.totalPages }

        val leftBitmap by viewModel.getPageFlow(page).collectAsState(initial = viewModel.getPage(page))
        val rightBitmap by viewModel.getPageFlow(rightPage ?: -1)
            .collectAsState(initial = rightPage?.let { viewModel.getPage(it) })

        LaunchedEffect(page) {
            if (viewModel.getPage(page) == null) viewModel.loadPage(page)
        }
        LaunchedEffect(rightPage) {
            if (rightPage != null && viewModel.getPage(rightPage) == null) viewModel.loadPage(rightPage)
        }

        ReaderPageGestureSurface(
            resetToken = page to dual,
            onLeftTap = onLeftTap,
            onRightTap = onRightTap,
            onCenterTap = onCenterTap,
            modifier = Modifier.fillMaxSize()
        ) {
            if (dual) {
                Row(
                    modifier = Modifier.fillMaxSize(),
                    horizontalArrangement = Arrangement.Start
                ) {
                    PagePane(
                        bitmap = leftBitmap,
                        contentDescription = "Page ${page + 1}",
                        alignment = Alignment.CenterEnd,
                        contentScale = imageScaleModeToContentScale(imageScaleMode),
                        modifier = Modifier.weight(1f)
                    )
                    if (rightPage != null) {
                        PagePane(
                            bitmap = rightBitmap,
                            contentDescription = "Page ${rightPage + 1}",
                            alignment = Alignment.CenterStart,
                            contentScale = imageScaleModeToContentScale(imageScaleMode),
                            modifier = Modifier.weight(1f)
                        )
                    } else {
                        Box(modifier = Modifier.weight(1f).fillMaxSize())
                    }
                }
            } else {
                PagePane(
                    bitmap = leftBitmap,
                    contentDescription = "Page ${page + 1}",
                    contentScale = imageScaleModeToContentScale(imageScaleMode),
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}

@Composable
private fun PagePane(
    bitmap: android.graphics.Bitmap?,
    contentDescription: String,
    modifier: Modifier = Modifier,
    alignment: Alignment = Alignment.Center,
    contentScale: ContentScale = ContentScale.Fit
) {
    Box(modifier = modifier.clipToBounds(), contentAlignment = alignment) {
        if (bitmap == null) {
            CircularProgressIndicator(color = Color.White)
            return
        }
        Image(
            bitmap = bitmap.asImageBitmap(),
            contentDescription = contentDescription,
            contentScale = contentScale,
            alignment = alignment,
            filterQuality = FilterQuality.High,
            modifier = Modifier.fillMaxSize()
        )
    }
}

@Composable
private fun ReaderPageGestureSurface(
    resetToken: Any,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    modifier: Modifier = Modifier,
    content: @Composable BoxWithConstraintsScope.() -> Unit
) {
    BoxWithConstraints(
        modifier = modifier
            .fillMaxSize()
            .clipToBounds(),
        contentAlignment = Alignment.Center
    ) {
        val density = LocalDensity.current
        val containerWidthPx = with(density) { maxWidth.toPx() }.coerceAtLeast(1f)
        val containerHeightPx = with(density) { maxHeight.toPx() }.coerceAtLeast(1f)
        var scale by remember(resetToken) { mutableFloatStateOf(1f) }
        var offset by remember(resetToken) { mutableStateOf(Offset.Zero) }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .pointerInput(resetToken, onLeftTap, onRightTap, onCenterTap) {
                    detectTapGestures(
                        onTap = { tapOffset ->
                            if (scale > 1.01f) return@detectTapGestures

                            val width = size.width.toFloat()
                            when {
                                tapOffset.x < width * 0.3f -> onLeftTap()
                                tapOffset.x > width * 0.7f -> onRightTap()
                                else -> onCenterTap()
                            }
                        },
                        onDoubleTap = { tapOffset ->
                            val targetScale = if (scale > 1.01f) 1f else 2.5f
                            scale = targetScale
                            offset = if (targetScale <= 1f) {
                                Offset.Zero
                            } else {
                                boundedOffset(
                                    current = Offset(
                                        x = (containerWidthPx / 2f - tapOffset.x) * (targetScale - 1f),
                                        y = (containerHeightPx / 2f - tapOffset.y) * (targetScale - 1f)
                                    ),
                                    scale = targetScale,
                                    containerWidth = containerWidthPx,
                                    containerHeight = containerHeightPx,
                                    contentWidth = containerWidthPx,
                                    contentHeight = containerHeightPx
                                )
                            }
                        }
                    )
                }
                .pointerInput(resetToken) {
                    awaitEachGesture {
                        var gestureScale = scale
                        var gestureOffset = offset

                        do {
                            val event = awaitPointerEvent()
                            val pressedPointers = event.changes.count { it.pressed }
                            val allowTransform = pressedPointers > 1 || gestureScale > 1.01f

                            if (allowTransform) {
                                val zoomChange = acceleratedZoomFactor(event.calculateZoom())
                                val panChange = if (gestureScale > 1.01f || pressedPointers > 1) {
                                    event.calculatePan()
                                } else {
                                    Offset.Zero
                                }
                                val hasTransform = zoomChange != 1f || panChange != Offset.Zero

                                if (hasTransform) {
                                    val newScale = (gestureScale * zoomChange).coerceIn(1f, 5f)
                                    val newOffset = boundedOffset(
                                        current = if (newScale <= 1.01f) {
                                            Offset.Zero
                                        } else {
                                            gestureOffset + panChange
                                        },
                                        scale = newScale,
                                        containerWidth = containerWidthPx,
                                        containerHeight = containerHeightPx,
                                        contentWidth = containerWidthPx,
                                        contentHeight = containerHeightPx
                                    )

                                    gestureScale = newScale
                                    gestureOffset = newOffset
                                    scale = newScale
                                    offset = newOffset

                                    event.changes.forEach { change ->
                                        change.consume()
                                    }
                                }
                            }
                        } while (event.changes.any { it.pressed })
                    }
                }
        ) {
            Box(
                modifier = Modifier
                    .requiredWidth(this@BoxWithConstraints.maxWidth * scale)
                    .requiredHeight(this@BoxWithConstraints.maxHeight * scale)
                    .graphicsLayer {
                        translationX = offset.x
                        translationY = offset.y
                    },
                contentAlignment = Alignment.Center
            ) {
                this@BoxWithConstraints.content()
            }
        }
    }
}

internal fun acceleratedZoomFactor(zoom: Float): Float = when {
    zoom > 1f -> 1f + ((zoom - 1f) * 1.45f)
    zoom < 1f -> 1f - ((1f - zoom) * 1.25f)
    else -> 1f
}

private fun boundedOffset(
    current: Offset,
    scale: Float,
    containerWidth: Float,
    containerHeight: Float,
    contentWidth: Float,
    contentHeight: Float
): Offset {
    if (scale <= 1f) return Offset.Zero

    val maxX = max(0f, ((contentWidth * scale) - containerWidth) / 2f)
    val maxY = max(0f, ((contentHeight * scale) - containerHeight) / 2f)

    return Offset(
        x = current.x.coerceIn(-maxX, maxX),
        y = current.y.coerceIn(-maxY, maxY)
    )
}

private fun imageScaleModeToContentScale(mode: String): ContentScale = when (ReaderImageScaleMode.fromStored(mode)) {
    ReaderImageScaleMode.FIT_WIDTH  -> ContentScale.FillWidth
    ReaderImageScaleMode.FIT_HEIGHT -> ContentScale.FillHeight
    ReaderImageScaleMode.REAL_SIZE  -> ContentScale.None
}
