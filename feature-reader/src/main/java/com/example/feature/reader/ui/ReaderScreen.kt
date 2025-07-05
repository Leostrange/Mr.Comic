package com.example.feature.reader.ui

import android.graphics.Bitmap
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.SizeTransform
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import androidx.compose.animation.with
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material3.BottomAppBar
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ViewDay
import androidx.compose.material.icons.filled.ViewStream
import me.saket.telephoto.zoomable.rememberZoomableState
import me.saket.telephoto.zoomable.zoomable

/**
 * The main entry point for the reader screen.
 * It is a stateful composable that holds the ViewModel.
 *
 * @param viewModel The ViewModel responsible for the reader logic.
 * @param filePath The path to the book file, which should be passed via navigation.
 */
@Composable
fun ReaderScreen(
    viewModel: ReaderViewModel = hiltViewModel(),
    filePath: String
) {
    val uiState by viewModel.uiState.collectAsState()

    LaunchedEffect(filePath) {
        viewModel.loadComic(filePath)
    }

    ReaderScreenContent(
        uiState = uiState,
        onNextPage = viewModel::goToNextPage,
        onPreviousPage = viewModel::goToPreviousPage,
        onSetReadingMode = viewModel::setReadingMode
    )
}

/**
 * A stateless composable that displays the reader UI.
 *
 * @param uiState The current state of the UI.
 * @param onNextPage Callback for navigating to the next page.
 * @param onPreviousPage Callback for navigating to the previous page.
 */
@OptIn(ExperimentalAnimationApi::class)
@Composable
private fun ReaderScreenContent(
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    onSetReadingMode: (ReadingMode) -> Unit
) {
    Scaffold(
        bottomBar = {
            if (!uiState.isLoading && uiState.error == null && uiState.pageCount > 0) {
                BottomAppBar {
                    Text(
                        text = "Page ${uiState.currentPageIndex + 1} of ${uiState.pageCount}",
                        modifier = Modifier.padding(horizontal = 16.dp)
                    )
                    IconButton(onClick = {
                        val newMode = if (uiState.readingMode == ReadingMode.PAGE) ReadingMode.WEBTOON else ReadingMode.PAGE
                        onSetReadingMode(newMode)
                    }) {
                        Icon(
                            imageVector = if (uiState.readingMode == ReadingMode.PAGE) Icons.Default.ViewStream else Icons.Default.ViewDay,
                            contentDescription = "Switch Reading Mode"
                        )
                    }
                }
            }
        }
    ) { paddingValues ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(paddingValues),
            contentAlignment = Alignment.Center
        ) {
            when (uiState.readingMode) {
                ReadingMode.PAGE -> PagedReader(uiState, onNextPage, onPreviousPage)
                ReadingMode.WEBTOON -> WebtoonReader(uiState)
            }

            if (uiState.isLoading && uiState.readingMode == ReadingMode.PAGE) {
                CircularProgressIndicator()
            } else if (uiState.error != null) {
                Text(text = uiState.error, color = MaterialTheme.colorScheme.error, textAlign = TextAlign.Center, modifier = Modifier.padding(16.dp))
            }
        }
    }
}

@OptIn(ExperimentalAnimationApi::class)
@Composable
private fun PagedReader(
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit
) {
    AnimatedContent(
        targetState = uiState,
        transitionSpec = {
            val forward = targetState.currentPageIndex > initialState.currentPageIndex
            val slideIn = slideInHorizontally { fullWidth -> if (forward) fullWidth else -fullWidth }
            val slideOut = slideOutHorizontally { fullWidth -> if (forward) -fullWidth else fullWidth }
            (slideIn with slideOut).using(SizeTransform(clip = false))
        },
        label = "PageSlider"
    ) { targetState ->
        BoxWithConstraints(
            modifier = Modifier.fillMaxSize(),
            contentAlignment = Alignment.Center
        ) {
            val zoomableState = rememberZoomableState()
            val isZoomed = zoomableState.zoom.scale > 1f

            LaunchedEffect(targetState.currentPageBitmap) {
                zoomableState.resetZoom(withAnimation = false)
            }

            targetState.currentPageBitmap?.let { bitmap ->
                Image(
                    painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
                    contentDescription = "Page ${targetState.currentPageIndex + 1}",
                    modifier = Modifier
                        .fillMaxSize()
                        .zoomable(
                            state = zoomableState,
                            onTap = {
                                if (!isZoomed) {
                                    val screenWidth = constraints.maxWidth.toPx()
                                    when {
                                        it.x < screenWidth * 0.3f -> onPreviousPage()
                                        it.x > screenWidth * 0.7f -> onNextPage()
                                    }
                                }
                            }
                        ),
                    contentScale = ContentScale.Fit
                )
            }
        }
    }
}

@Composable
private fun WebtoonReader(
    uiState: ReaderUiState
) {
    LazyColumn(
        modifier = Modifier.fillMaxSize(),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        items(uiState.pageCount, key = { it }) { pageIndex ->
            WebtoonPageItem(pageIndex = pageIndex, uiState = uiState)
        }
    }
}

@Composable
private fun WebtoonPageItem(
    pageIndex: Int,
    uiState: ReaderUiState
) {
    val bitmap = uiState.bitmaps[pageIndex]

    if (bitmap != null) {
        val zoomableState = rememberZoomableState()
        Image(
            painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
            contentDescription = "Page ${pageIndex + 1}",
            modifier = Modifier
                .fillMaxWidth()
                .zoomable(zoomableState),
            contentScale = ContentScale.FillWidth
        )
    } else {
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .padding(vertical = 8.dp)
                .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.3f))
        ) {
            // Placeholder with a common aspect ratio
            CircularProgressIndicator(modifier = Modifier.align(Alignment.Center))
        }
    }
}


