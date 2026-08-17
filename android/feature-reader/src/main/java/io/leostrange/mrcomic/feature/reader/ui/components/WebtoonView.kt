package io.leostrange.mrcomic.feature.reader.ui.components

import android.view.ViewGroup
import android.webkit.WebView
import android.webkit.WebViewClient
import androidx.compose.foundation.gestures.FlingBehavior
import androidx.compose.foundation.gestures.ScrollScope
import androidx.compose.foundation.gestures.ScrollableDefaults
import androidx.compose.foundation.gestures.awaitEachGesture
import androidx.compose.foundation.gestures.calculatePan
import androidx.compose.foundation.gestures.calculateZoom
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clipToBounds
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.ui.eink.LocalEInkMode
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.ui.PageLoadState
import io.leostrange.mrcomic.feature.reader.ui.ReaderUiState
import io.leostrange.mrcomic.feature.reader.ui.ReaderViewModel
import io.leostrange.mrcomic.feature.reader.ui.isAutoScrollTemporarilyPaused
import kotlinx.coroutines.flow.debounce
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.map
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
    marginCropHorizontal: Float = 0f,
    marginCropVertical: Float = 0f,
    modifier: Modifier = Modifier
) {
    val isEInk = LocalEInkMode.current
    // Key listState on comic id so that chapter changes reset the scroll position
    // instead of retaining the stale position from the previous chapter.
    val comicId = uiState.comic?.id
    val listState = remember(comicId) {
        LazyListState(firstVisibleItemIndex = uiState.currentPage)
    }
    LaunchedEffect(comicId) {
        listState.scrollToItem(uiState.currentPage)
    }
    var zoomedPageIndex by remember { mutableStateOf<Int?>(null) }

    // Raster WEBTOON auto-scroll: content-pixel scrolling that pauses on drag/zoom/end-of-list.
    WebtoonAutoPixelScrollEffect(
        enabled = uiState.autoScrollEnabled && !uiState.isAutoScrollTemporarilyPaused,
        speed = uiState.autoScrollSpeed,
        listState = listState,
        userIsDragging = listState.isScrollInProgress,
        zoomed = zoomedPageIndex != null,
        onStop = { viewModel.autoScrollRuntimeController.stop() }
    )

    val imageCrop = remember(marginCropHorizontal, marginCropVertical) {
        ReaderImageCrop(
            horizontalFraction = marginCropHorizontal,
            verticalFraction = marginCropVertical
        )
    }

    val webtoonPreloadBehind = 1
    val webtoonPreloadAhead = 3

    // Tracks aspect ratio (height/width) from the first successfully decoded page.
    // Used so placeholders match the real page proportions, preventing layout jumps.
    var estimatedPageAspect by remember { mutableFloatStateOf(1.45f) }  // default в‰€ manga B5

    LaunchedEffect(uiState.comic?.id, uiState.totalPages) {
        if (uiState.totalPages <= 0) return@LaunchedEffect
        // Preload for both image and text formats in webtoon mode
        val initialWindow = (uiState.currentPage - webtoonPreloadBehind).coerceAtLeast(0)..
            (uiState.currentPage + webtoonPreloadAhead).coerceAtMost(uiState.totalPages - 1)
        val pages = initialWindow.toList()
        pages.forEach { page -> viewModel.pageLoader.loadPage(page) }
        viewModel.pageLoader.preloadWebtoonWindow(pages)
    }

    // User scrolled the list в†’ update the ViewModel's current page.
    // snapshotFlow + distinctUntilChanged prevents re-entrancy: the emission
    // only fires when firstVisibleItemIndex *actually* changes, and navigateTo()
    // updating uiState.currentPage does NOT scroll the list here (that's the
    // second effect below), so there is no feedback loop.
    LaunchedEffect(listState, uiState.comic?.id) {
        snapshotFlow { listState.firstVisibleItemIndex }
            .distinctUntilChanged()
            .collect { index -> viewModel.navigationController.navigateTo(index, ReaderNavigationProgressSource.JUMP) }
    }

    // External page change (e.g. bottom bar slider) в†’ scroll the list.
    LaunchedEffect(uiState.comic?.id, uiState.currentPage) {
        if (listState.firstVisibleItemIndex != uiState.currentPage) {
            listState.scrollToItem(uiState.currentPage)
        }
        if (uiState.totalPages > 0) {
            val start = (uiState.currentPage - webtoonPreloadBehind).coerceAtLeast(0)
            val end = (uiState.currentPage + webtoonPreloadAhead).coerceAtMost(uiState.totalPages - 1)
            val pages = (start..end).toList()
            pages.forEach { page -> viewModel.pageLoader.loadPage(page) }
        }
    }

    LaunchedEffect(listState, uiState.comic?.id, uiState.totalPages) {
        snapshotFlow {
            val visible = listState.layoutInfo.visibleItemsInfo.map { it.index }
            val first = visible.minOrNull() ?: listState.firstVisibleItemIndex
            val last = visible.maxOrNull() ?: first
            first to last
        }
            .distinctUntilChanged()
            .map { (first, last) ->
                val start = (first - webtoonPreloadBehind).coerceAtLeast(0)
                val end = (last + webtoonPreloadAhead).coerceAtMost(uiState.totalPages - 1)
                if (uiState.totalPages <= 0 || start > end) emptyList() else (start..end).toList()
            }
            .distinctUntilChanged()
            // Debounce so fast flings don't cancel and restart the preload job on every frame.
            .debounce(80L)
            .collect { pages ->
                viewModel.pageLoader.preloadWebtoonWindow(pages)
            }
    }

    LazyColumn(
        state = listState,
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(
            bottom = 16.dp
        ),
        userScrollEnabled = zoomedPageIndex == null,
        // On e-ink: disable momentum fling вЂ” smooth scrolling causes heavy ghosting.
        // On normal devices: standard fling behavior with momentum.
        flingBehavior = if (isEInk) NoFlingBehavior else ScrollableDefaults.flingBehavior()
    ) {
        items(uiState.totalPages) { pageIndex ->
            val pageState by viewModel.pageLoader.getPageLoadStateFlow(pageIndex)
                .collectAsState(initial = PageLoadState.Loading)
            LaunchedEffect(uiState.comic?.id, pageIndex) {
                viewModel.pageLoader.loadPage(pageIndex)
            }
            Box(
                modifier = Modifier.fillMaxWidth().padding(bottom = 2.dp),
                contentAlignment = Alignment.Center
            ) {
                when (val state = pageState) {
                    is PageLoadState.BitmapReady -> {
                        val currentBitmap = state.bitmap
                        val bitmapAspect = currentBitmap.height.toFloat() /
                            currentBitmap.width.coerceAtLeast(1).toFloat()
                        if (bitmapAspect in 0.5f..3f && bitmapAspect != estimatedPageAspect) {
                            estimatedPageAspect = bitmapAspect
                        }
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
                            crop = imageCrop,
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                    is PageLoadState.HtmlReady -> {
                        val html = state.html
                        val htmlBaseUrl = uiState.htmlBaseUrl
                        var lastLoadedHtml by remember { mutableStateOf("") }
                        AndroidView(
                            modifier = Modifier
                                .fillMaxWidth()
                                .wrapContentHeight(),
                            factory = { ctx ->
                                WebView(ctx).apply {
                                    settings.javaScriptEnabled = true
                                    settings.loadWithOverviewMode = true
                                    settings.useWideViewPort = true
                                    settings.domStorageEnabled = false
                                    webViewClient = object : WebViewClient() {
                                        override fun onPageFinished(view: WebView?, url: String?) {
                                            view?.post {
                                                view.requestLayout()
                                            }
                                        }
                                    }
                                    isVerticalScrollBarEnabled = false
                                    isHorizontalScrollBarEnabled = false
                                    layoutParams = ViewGroup.LayoutParams(
                                        ViewGroup.LayoutParams.MATCH_PARENT,
                                        ViewGroup.LayoutParams.WRAP_CONTENT
                                    )
                                }
                            },
                            update = { webView ->
                                if (html != lastLoadedHtml) {
                                    lastLoadedHtml = html
                                    val safeHtml = html.ifBlank { "<p></p>" }
                                    webView.loadDataWithBaseURL(htmlBaseUrl, safeHtml, "text/html", "UTF-8", null)
                                    webView.post {
                                        webView.requestLayout()
                                    }
                                }
                            },
                            onRelease = { webView ->
                                (webView.parent as? ViewGroup)?.removeView(webView)
                                webView.stopLoading()
                                webView.loadUrl("about:blank")
                                webView.destroy()
                            }
                        )
                    }
                    is PageLoadState.Failed -> {
                        WebtoonPageErrorCard(
                            pageIndex = pageIndex,
                            reason = state.reason,
                            onTap = onCenterTap,
                            onRetry = { viewModel.retryLoadPage(pageIndex) }
                        )
                    }
                    PageLoadState.Loading -> {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .aspectRatio(1f / estimatedPageAspect)
                                .pointerInput(pageIndex) {
                                    detectTapGestures(onTap = { onCenterTap() })
                                },
                            contentAlignment = Alignment.Center
                        ) {
                            CircularProgressIndicator(color = Color.White)
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun WebtoonPageErrorCard(
    pageIndex: Int,
    reason: String,
    onTap: () -> Unit,
    onRetry: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxWidth()
            .aspectRatio(1f / 1.45f)
            .pointerInput(pageIndex) {
                // The retry button consumes its own press, so this only fires when the
                // user taps the placeholder area around it — keeping chrome toggling alive
                // in the error state without shadowing the retry action.
                detectTapGestures(onTap = { onTap() })
            },
        contentAlignment = Alignment.Center
    ) {
        Column(
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = "Страница ${pageIndex + 1}",
                style = MaterialTheme.typography.labelLarge,
                color = Color.White
            )
            Text(
                text = reason,
                style = MaterialTheme.typography.labelSmall,
                color = Color.White.copy(alpha = 0.8f)
            )
            TextButton(onClick = onRetry) {
                Text("Повторить", color = Color.White)
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
    crop: ReaderImageCrop,
    modifier: Modifier = Modifier
) {
    BoxWithConstraints(
        modifier = modifier.clipToBounds(),
        contentAlignment = Alignment.Center
    ) {
        val density = LocalDensity.current
        val containerWidthPx = with(density) { maxWidth.toPx().coerceAtLeast(1f) }
        val hasBoundedContainerHeight = constraints.hasBoundedHeight
        val containerHeightPx = if (hasBoundedContainerHeight) {
            with(density) { maxHeight.toPx().coerceAtLeast(1f) }
        } else {
            Float.POSITIVE_INFINITY
        }
        val (sourceWidthPx, sourceHeightPx) = remember(bitmap, crop.normalizedHorizontal, crop.normalizedVertical) {
            croppedSourceDimensions(bitmap, crop)
        }
        val imageSize = remember(
            bitmap,
            containerWidthPx,
            containerHeightPx,
            hasBoundedContainerHeight,
            imageScaleMode,
            sourceWidthPx,
            sourceHeightPx
        ) {
            resolveWebtoonImageSizePx(
                containerWidthPx = containerWidthPx,
                containerHeightPx = containerHeightPx,
                hasBoundedHeight = hasBoundedContainerHeight,
                sourceWidthPx = sourceWidthPx,
                sourceHeightPx = sourceHeightPx,
                scaleMode = ReaderImageScaleMode.fromStored(imageScaleMode),
            )
        }
        val baseWidthPx = imageSize.width
        val baseHeightPx = imageSize.height
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
            CroppedBitmapImage(
                bitmap = bitmap,
                contentDescription = contentDescription,
                crop = crop,
                contentScale = ContentScale.FillBounds,
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
