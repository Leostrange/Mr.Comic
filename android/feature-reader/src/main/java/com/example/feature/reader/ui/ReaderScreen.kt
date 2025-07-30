package com.example.feature.reader.ui

import android.graphics.Bitmap
import android.net.Uri
import android.widget.Toast
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
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ViewDay
import androidx.compose.material.icons.filled.ViewStream
// Temporarily disabled telephoto zoomable due to dependency issues
// import me.saket.telephoto.zoomable.rememberZoomableState
// import me.saket.telephoto.zoomable.zoomable
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.ui.input.pointer.pointerInput

/**
 * The main entry point for the reader screen.
 * It is a stateful composable that holds the ViewModel.
 * The URI is automatically received from navigation via SavedStateHandle.
 *
 * @param viewModel The ViewModel responsible for the reader logic.
 */
@Composable
fun ReaderScreen(
    viewModel: ReaderViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsState()
    val bgColor by viewModel.background.collectAsState()
    val context = LocalContext.current

    // Show error toast when error state changes
    LaunchedEffect(uiState.error) {
        uiState.error?.let { error ->
            Toast.makeText(context, "Ошибка: $error", Toast.LENGTH_LONG).show()
        }
    }

    ReaderScreenContent(
        uiState = uiState,
        onNextPage = viewModel::goToNextPage,
        onPreviousPage = viewModel::goToPreviousPage,
        onSetReadingMode = viewModel::setReadingMode,
        backgroundColor = Color(bgColor)
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
    onSetReadingMode: (ReadingMode) -> Unit,
    backgroundColor: Color
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
                .padding(paddingValues)
                .background(backgroundColor),
            contentAlignment = Alignment.Center
        ) {
            when {
                uiState.isLoading -> {
                    // Show loading indicator
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center)
                    )
                }
                uiState.error != null -> {
                    // Show error message
                    Text(
                        text = uiState.error,
                        color = MaterialTheme.colorScheme.error,
                        textAlign = TextAlign.Center,
                        modifier = Modifier.padding(16.dp)
                    )
                }
                uiState.pageCount > 0 -> {
                    // Show content
                    when (uiState.readingMode) {
                        ReadingMode.PAGE -> PagedReader(uiState, onNextPage, onPreviousPage)
                        ReadingMode.WEBTOON -> WebtoonReader(uiState)
                    }
                }
                else -> {
                    // Show empty state
                    Text(
                        text = "Выберите файл для чтения",
                        color = MaterialTheme.colorScheme.onSurface,
                        textAlign = TextAlign.Center,
                        modifier = Modifier.padding(16.dp)
                    )
                }
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
            targetState.currentPageBitmap?.let { bitmap ->
                Image(
                    painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
                    contentDescription = "Page ${targetState.currentPageIndex + 1}",
                    modifier = Modifier
                        .fillMaxSize()
                        .pointerInput(Unit) {
                            detectTapGestures { offset ->
                                try {
                                    // CRITICAL FIX: Prevent divide by zero and arithmetic exceptions
                                    val maxWidthPx = constraints.maxWidth.toFloat()
                                    if (maxWidthPx > 0f) {
                                        val leftZone = maxWidthPx * 0.3f
                                        val rightZone = maxWidthPx * 0.7f
                                        when {
                                            offset.x < leftZone -> onPreviousPage()
                                            offset.x > rightZone -> onNextPage()
                                            // Middle zone does nothing
                                        }
                                    }
                                } catch (e: ArithmeticException) {
                                    android.util.Log.e("ReaderScreen", "ArithmeticException in tap handling", e)
                                    // Fallback: still allow page navigation on center tap
                                }
                            }
                        },
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
        Image(
            painter = remember(bitmap) { BitmapPainter(bitmap.asImageBitmap()) },
            contentDescription = "Page ${pageIndex + 1}",
            modifier = Modifier.fillMaxWidth(),
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


