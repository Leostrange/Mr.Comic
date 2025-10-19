package com.example.feature.reader.ui.components

import android.graphics.Bitmap
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.unit.dp
import com.example.feature.reader.ui.ReaderUiState

/**
 * Оптимизированный компонент для отображения страниц в режиме Webtoon
 * Включает кэширование, ленивую загрузку и оптимизации производительности
 */
@Composable
fun OptimizedWebtoonPageItem(
    pageIndex: Int,
    uiState: ReaderUiState,
    modifier: Modifier = Modifier
) {
    val bitmap = uiState.bitmaps[pageIndex]
    val isCurrentPage = pageIndex == uiState.currentPageIndex
    val hasError = uiState.error != null && isCurrentPage

    // Оптимизация: используем remember для стабильных значений
    val contentScale = remember { ContentScale.FillWidth }
    val backgroundColor = if (isCurrentPage) MaterialTheme.colorScheme.primary.copy(alpha = 0.1f) 
        else Color.Transparent

    // Оптимизация: мемоизируем painter для предотвращения пересоздания
    val painter = remember(bitmap) {
        bitmap?.let { BitmapPainter(it.asImageBitmap()) }
    }

    Box(
        modifier = modifier
            .fillMaxWidth()
    ) {
        when {
            bitmap != null && painter != null -> {
                // Отображаем загруженное изображение с оптимизациями
                AnimatedVisibility(
                    visible = true,
                    enter = fadeIn(tween(100)) // Быстрая анимация для устранения мерцания
                ) {
                    Image(
                        painter = painter,
                        contentDescription = "Page ${pageIndex + 1}",
                        contentScale = contentScale,
                        // filterQuality = androidx.compose.ui.graphics.FilterQuality.High, // Высокое качество для четкости
                        modifier = Modifier
                            .fillMaxWidth()
                            .background(backgroundColor)
                            .graphicsLayer {
                                // Оптимизация: используем аппаратное ускорение
                                renderEffect = null
                                // Отключаем клиппинг для лучшей производительности
                                clip = false
                            }
                    )
                }
            }
            hasError -> {
                // Ошибка загрузки с оптимизированным UI
                ErrorPageItem(
                    pageIndex = pageIndex,
                    error = uiState.error,
                    modifier = Modifier.fillMaxWidth()
                )
            }
            else -> {
                // Индикатор загрузки с оптимизациями
                LoadingPageItem(
                    pageIndex = pageIndex,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
    }
}

/**
 * Компонент для отображения ошибки загрузки страницы
 */
@Composable
private fun ErrorPageItem(
    pageIndex: Int,
    error: String?,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .padding(16.dp)
            .background(
                MaterialTheme.colorScheme.errorContainer.copy(alpha = 0.3f),
                shape = RoundedCornerShape(8.dp)
            ),
        contentAlignment = Alignment.Center
    ) {
        androidx.compose.foundation.layout.Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Text(
                text = "Ошибка загрузки",
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.onErrorContainer
            )
            Text(
                text = "Страница ${pageIndex + 1}",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onErrorContainer.copy(alpha = 0.7f)
            )
            error?.let { errorText ->
                Text(
                    text = errorText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onErrorContainer.copy(alpha = 0.5f),
                    modifier = Modifier.padding(top = 4.dp)
                )
            }
        }
    }
}

/**
 * Компонент для отображения индикатора загрузки
 */
@Composable
private fun LoadingPageItem(
    pageIndex: Int,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .padding(16.dp)
            .background(
                MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.3f),
                shape = RoundedCornerShape(8.dp)
            ),
        contentAlignment = Alignment.Center
    ) {
        androidx.compose.foundation.layout.Column(
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            CircularProgressIndicator(
                modifier = Modifier.padding(bottom = 8.dp),
                color = MaterialTheme.colorScheme.primary
            )
            Text(
                text = "Загрузка страницы ${pageIndex + 1}",
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

/**
 * Оптимизированный LazyColumn для Webtoon режима
 */
@Composable
fun OptimizedWebtoonLazyColumn(
    uiState: ReaderUiState,
    onNextPage: () -> Unit,
    onPreviousPage: () -> Unit,
    onShowTopPanel: () -> Unit = {},
    onShowRightPanel: () -> Unit = {},
    onShowThumbnailPanel: () -> Unit = {},
    readerSettings: com.example.feature.reader.ui.ReaderSettings = com.example.feature.reader.ui.ReaderSettings(),
    modifier: Modifier = Modifier
) {
    val listState = androidx.compose.foundation.lazy.rememberLazyListState()

    Box(
        modifier = modifier
            .fillMaxSize()
    ) {
        androidx.compose.foundation.lazy.LazyColumn(
            state = listState,
            modifier = Modifier.fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            contentPadding = androidx.compose.foundation.layout.PaddingValues(0.dp)
        ) {
            items(
                count = uiState.pageCount,
                key = { "webtoon_page_$it" }, // Стабильные ключи
                contentType = { "webtoon_page" }
            ) { pageIndex ->
                OptimizedWebtoonPageItem(
                    pageIndex = pageIndex,
                    uiState = uiState,
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
        
        // Добавляем зоны для открытия панелей в режиме Webtoon
        ReaderTapZones(
            panelsOpen = false,
            onOpenTopBar = onShowTopPanel,
            onOpenSideBar = onShowRightPanel,
            onPrev = onPreviousPage,
            onNext = onNextPage,
            tapZonesSize = readerSettings.readerTapZonesSize,
            tapZonesSensitivity = readerSettings.readerTapZonesSensitivity,
            navigationTapZonesEnabled = readerSettings.navigationTapZonesEnabled,
            modifier = Modifier.fillMaxSize()
        )
    }
}
