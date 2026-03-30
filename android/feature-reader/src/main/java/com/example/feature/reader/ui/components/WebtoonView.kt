package com.example.feature.reader.ui.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.gestures.FlingBehavior
import androidx.compose.foundation.gestures.ScrollScope
import androidx.compose.foundation.gestures.ScrollableDefaults
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.calculatePan
import androidx.compose.foundation.gestures.calculateZoom
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.rememberLazyListState
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
import androidx.compose.ui.unit.dp
import com.example.core.model.ReaderImageScaleMode
import com.example.core.ui.eink.LocalEInkMode
import com.example.feature.reader.ui.ReaderUiState
import com.example.feature.reader.ui.ReaderViewModel
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlin.math.max

/** Zero-velocity fling behavior: drag scrolling only, no momentum after release. */
private object NoFlingBehavior : FlingBehavior {
    override suspend fun ScrollScope.performFling(initialVelocity: Float) = 0f
}

@Composable
fun WebtoonView(
    viewModel: ReaderViewModel,
    uiState: ReaderUiState,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    imageScaleMode: String = ReaderImageScaleMode.FIT_WIDTH.storedValue,
    modifier: Modifier = Modifier
) {
    val isEInk = LocalEInkMode.current
    val listState = rememberLazyListState(initialFirstVisibleItemIndex = uiState.currentPage)
    var zoomedPageIndex by remember { mutableStateOf<Int?>(null) }

    // User scrolled the list → update the ViewModel's current page.
    // snapshotFlow + distinctUntilChanged prevents re-entrancy: the emission
    // only fires when firstVisibleItemIndex *actually* changes, and navigateTo()
    // updating uiState.currentPage does NOT scroll the list here (that's the
    // second effect below), so there is no feedback loop.
    LaunchedEffect(listState) {
        snapshotFlow { listState.firstVisibleItemIndex }
            .distinctUntilChanged()
            .collect { index -> viewModel.navigateTo(index) }
    }

    // External page change (e.g. bottom bar slider) → scroll the list.
    LaunchedEffect(uiState.currentPage) {
        if (listState.firstVisibleItemIndex != uiState.currentPage) {
            listState.scrollToItem(uiState.currentPage)
        }
    }

    LazyColumn(
        state = listState,
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(bottom = 16.dp),
        userScrollEnabled = zoomedPageIndex == null,
        // On e-ink: disable momentum fling — smooth scrolling causes heavy ghosting.
        // On normal devices: standard fling behavior with momentum.
        flingBehavior = if (isEInk) NoFlingBehavior else ScrollableDefaults.flingBehavior()
    ) {
        items(uiState.totalPages) { pageIndex ->
            // Collect from StateFlow — no polling, immediate update when bitmap is ready
            val bitmap by viewModel.getPageFlow(pageIndex).collectAsState(initial = viewModel.getPage(pageIndex))
            LaunchedEffect(pageIndex) {
                if (viewModel.getPage(pageIndex) == null) viewModel.loadPage(pageIndex)
            }
            Box(
                modifier = Modifier.fillMaxWidth().padding(bottom = 2.dp),
                contentAlignment = Alignment.Center
            ) {
                val currentBitmap = bitmap
                if (currentBitmap != null) {
                    ZoomableFillWidthImage(
                        bitmap = currentBitmap,
                        contentDescription = "Page ${pageIndex + 1}",
                        resetToken = if (zoomedPageIndex != null && zoomedPageIndex != pageIndex) zoomedPageIndex else null,
                        onLeftTap = onLeftTap,
                        onRightTap = onRightTap,
                        onCenterTap = onCenterTap,
                        onZoomChanged = { isZoomed ->
                            zoomedPageIndex = when {
                                isZoomed -> pageIndex
                                zoomedPageIndex == pageIndex -> null
                                else -> zoomedPageIndex
                            }
                        },
                        imageScaleMode = imageScaleMode,
                        modifier = Modifier.fillMaxWidth()
                    )
                } else {
                    Box(modifier = Modifier.fillMaxWidth().height(400.dp), contentAlignment = Alignment.Center) {
                        CircularProgressIndicator(color = Color.White)
                    }
                }
            }
        }
    }
}

@Composable
private fun ZoomableFillWidthImage(
    bitmap: android.graphics.Bitmap,
    contentDescription: String,
    resetToken: Any?,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    onZoomChanged: (Boolean) -> Unit,
    imageScaleMode: String,
    modifier: Modifier = Modifier
) {
    BoxWithConstraints(
        modifier = modifier.clipToBounds(),
        contentAlignment = Alignment.Center
    ) {
        val density = LocalDensity.current
        val containerWidthPx = with(density) { maxWidth.toPx().coerceAtLeast(1f) }
        val containerHeightPx = with(density) { maxHeight.toPx().coerceAtLeast(1f) }
        val (baseWidthPx, baseHeightPx) = remember(bitmap, containerWidthPx, containerHeightPx, imageScaleMode) {
            when (ReaderImageScaleMode.fromStored(imageScaleMode)) {
                ReaderImageScaleMode.FIT_WIDTH -> {
                    val h = containerWidthPx * (bitmap.height.toFloat().coerceAtLeast(1f) / bitmap.width.toFloat().coerceAtLeast(1f))
                    containerWidthPx to h
                }
                ReaderImageScaleMode.FIT_HEIGHT -> {
                    val w = containerHeightPx * (bitmap.width.toFloat().coerceAtLeast(1f) / bitmap.height.toFloat().coerceAtLeast(1f))
                    w to containerHeightPx
                }
                ReaderImageScaleMode.REAL_SIZE -> {
                    bitmap.width.toFloat() to bitmap.height.toFloat()
                }
            }
        }
        val imageWidth  = with(density) { baseWidthPx.toDp() }
        val imageHeight = with(density) { baseHeightPx.toDp() }
        var scale by remember(bitmap, resetToken) { mutableFloatStateOf(1f) }
        var offset by remember(bitmap, resetToken) { mutableStateOf(Offset.Zero) }

        LaunchedEffect(scale) {
            onZoomChanged(scale > 1.01f)
        }

        Box(
            modifier = Modifier
                .width(imageWidth)
                .height(imageHeight)
                .pointerInput(bitmap, resetToken, onLeftTap, onRightTap, onCenterTap) {
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
                            if (scale > 1.01f) {
                                scale = 1f
                                offset = Offset.Zero
                            } else {
                                scale = 2.5f
                                offset = boundedWebtoonOffset(
                                    current = Offset(
                                        x = (containerWidthPx / 2f - tapOffset.x) * 1.5f,
                                        y = (baseHeightPx / 2f - tapOffset.y) * 1.5f
                                    ),
                                    scale = scale,
                                    containerWidth = containerWidthPx,
                                    containerHeight = baseHeightPx,
                                    contentWidth = baseWidthPx,
                                    contentHeight = baseHeightPx
                                )
                            }
                        }
                    )
                }
                .pointerInput(bitmap, resetToken) {
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
                                    val newOffset = boundedWebtoonOffset(
                                        current = if (newScale <= 1.01f) {
                                            Offset.Zero
                                        } else {
                                            gestureOffset + panChange
                                        },
                                        scale = newScale,
                                        containerWidth = containerWidthPx,
                                        containerHeight = baseHeightPx,
                                        contentWidth = baseWidthPx,
                                        contentHeight = baseHeightPx
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
            Image(
                bitmap = bitmap.asImageBitmap(),
                contentDescription = contentDescription,
                contentScale = ContentScale.FillBounds,
                filterQuality = FilterQuality.High,
                modifier = Modifier
                    .requiredWidth(imageWidth * scale)
                    .requiredHeight(imageHeight * scale)
                    .graphicsLayer {
                        translationX = offset.x
                        translationY = offset.y
                    }
            )
        }
    }
}

private fun boundedWebtoonOffset(
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
