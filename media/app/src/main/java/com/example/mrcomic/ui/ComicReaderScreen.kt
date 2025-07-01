package com.example.mrcomic.ui

import androidx.compose.foundation.Image
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.runtime.mutableFloatStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.input.pointer.pointerInput

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ComicReaderScreen(
    onNavigateBack: () -> Unit,
    viewModel: ComicReaderViewModel = hiltViewModel()
) {
    val comic by viewModel.comicState.collectAsState()
    val currentPageBitmap by viewModel.currentPageBitmap.collectAsState()
    val currentPageIndex by viewModel.currentPageIndex.collectAsState()

    // Состояния для масштабирования и смещения
    val scale = remember { mutableFloatStateOf(1f) }
    val offsetX = remember { mutableFloatStateOf(0f) }
    val offsetY = remember { mutableFloatStateOf(0f) }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(comic?.title ?: "Загрузка...") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Назад")
                    }
                },
                actions = {
                    IconButton(onClick = { /* TODO: Меню */ }) {
                        Icon(Icons.Default.MoreVert, contentDescription = "Меню")
                    }
                }
            )
        },
        bottomBar = {
            BottomAppBar {
                Text(
                    text = "Страница ${currentPageIndex + 1} / ${comic?.pageCount ?: 0}",
                    modifier = Modifier.padding(horizontal = 16.dp).weight(1f),
                    style = MaterialTheme.typography.bodyMedium
                )
                // TODO: Реализовать закладки
                IconButton(onClick = { /* viewModel.toggleBookmark() */ }) {
                    Icon(
                        imageVector = Icons.Default.BookmarkBorder,
                        contentDescription = "Закладка"
                    )
                }
            }
        }
    ) { innerPadding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(innerPadding)
                .pointerInput(Unit) {
                    detectTransformGestures { _, pan, zoom, _ ->
                        scale.floatValue *= zoom
                        // Ограничения на масштаб, чтобы не улетел в бесконечность
                        scale.floatValue = scale.floatValue.coerceIn(1f, 5f)

                        val newOffsetX = offsetX.floatValue + pan.x * scale.floatValue
                        val newOffsetY = offsetY.floatValue + pan.y * scale.floatValue
                        
                        // TODO: Добавить логику, чтобы изображение не выходило за границы экрана при панорамировании
                        offsetX.floatValue = newOffsetX
                        offsetY.floatValue = newOffsetY
                    }
                }
                .pointerInput(Unit) {
                    var dragAmountTotal = 0f
                    detectHorizontalDragGestures(
                        onHorizontalDrag = { _, dragAmount ->
                           // Если мы не в режиме масштабирования, то считаем свайп
                           if (scale.floatValue == 1f) {
                               dragAmountTotal += dragAmount
                           }
                        },
                        onDragEnd = {
                            if (scale.floatValue == 1f) {
                                val swipeThreshold = 100
                                when {
                                    dragAmountTotal > swipeThreshold -> viewModel.prevPage()
                                    dragAmountTotal < -swipeThreshold -> viewModel.nextPage()
                                }
                            }
                        },
                        onDragCancel = {
                            dragAmountTotal = 0f
                        }
                    )
                },
            contentAlignment = Alignment.Center
        ) {
            val bitmap = currentPageBitmap
            if (bitmap != null) {
                Image(
                    bitmap = bitmap.asImageBitmap(),
                    contentDescription = "Страница комикса",
                    modifier = Modifier
                        .fillMaxSize()
                        .graphicsLayer(
                            scaleX = scale.floatValue,
                            scaleY = scale.floatValue,
                            translationX = offsetX.floatValue,
                            translationY = offsetY.floatValue
                        ),
                    contentScale = ContentScale.Fit
                )
            } else {
                CircularProgressIndicator()
            }
        }
    }
} 