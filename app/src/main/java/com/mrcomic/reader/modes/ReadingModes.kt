package com.example.mrcomic.reader.modes

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Canvas
import android.graphics.Paint
import android.graphics.Rect
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.lazy.grid.*
import androidx.compose.foundation.pager.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.*
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.DrawScope
import androidx.compose.ui.graphics.drawscope.drawIntoCanvas
import androidx.compose.ui.input.pointer.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.*
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.lifecycle.viewmodel.compose.viewModel
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.io.File
import kotlin.math.*

/**
 * Специализированные режимы чтения для разных типов комиксов
 */
object ReadingModes {
    
    /**
     * Конфигурация режима чтения
     */
    data class ReadingModeConfig(
        val name: String,
        val description: String,
        val supportedOrientations: List<Orientation> = listOf(Orientation.Portrait, Orientation.Landscape),
        val defaultZoomMode: ZoomMode = ZoomMode.FIT_SCREEN,
        val allowZoom: Boolean = true,
        val allowPan: Boolean = true,
        val pageTransition: PageTransition = PageTransition.SLIDE_HORIZONTAL,
        val gestureConfig: GestureConfig = GestureConfig(),
        val performanceConfig: PerformanceConfig = PerformanceConfig()
    )
    
    enum class Orientation { Portrait, Landscape }
    enum class ZoomMode { FIT_WIDTH, FIT_HEIGHT, FIT_SCREEN, ORIGINAL_SIZE, SMART_FIT }
    enum class PageTransition { NONE, SLIDE_HORIZONTAL, SLIDE_VERTICAL, FADE, ZOOM, FLIP_3D, CURL }
    
    data class GestureConfig(
        val tapZones: TapZoneConfig = TapZoneConfig(),
        val swipeThreshold: Float = 100f,
        val velocityThreshold: Float = 1000f,
        val enableEdgeSwipe: Boolean = true,
        val enableVolumeKeys: Boolean = true
    )
    
    data class TapZoneConfig(
        val leftZoneWidth: Float = 0.3f,
        val rightZoneWidth: Float = 0.3f,
        val centerZoneAction: TapAction = TapAction.TOGGLE_UI,
        val leftZoneAction: TapAction = TapAction.PREVIOUS_PAGE,
        val rightZoneAction: TapAction = TapAction.NEXT_PAGE
    )
    
    enum class TapAction { NONE, PREVIOUS_PAGE, NEXT_PAGE, TOGGLE_UI, ZOOM_TOGGLE, BOOKMARK_TOGGLE }
    
    data class PerformanceConfig(
        val preloadDistance: Int = 3,
        val maxCacheSize: Int = 20,
        val enableLazyLoading: Boolean = true,
        val imageCompressionQuality: Float = 0.9f
    )
    
    /**
     * Базовый интерфейс для режимов чтения
     */
    interface ReadingModeRenderer {
        val config: ReadingModeConfig
        
        @Composable
        fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier = Modifier
        )
        
        fun handleGesture(gesture: ReaderGesture): Boolean
        fun getNextPage(currentPage: Int, totalPages: Int): Int?
        fun getPreviousPage(currentPage: Int): Int?
    }
    
    sealed class ReaderGesture {
        data class Tap(val position: Offset, val screenSize: Size) : ReaderGesture()
        data class DoubleTap(val position: Offset) : ReaderGesture()
        data class LongPress(val position: Offset) : ReaderGesture()
        data class Swipe(val direction: SwipeDirection, val velocity: Float) : ReaderGesture()
        data class Pinch(val scale: Float, val center: Offset) : ReaderGesture()
        data class Pan(val offset: Offset) : ReaderGesture()
    }
    
    enum class SwipeDirection { LEFT, RIGHT, UP, DOWN }
    
    /**
     * Режим одной страницы (классический)
     */
    class SinglePageMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Одна страница",
            description = "Классический режим просмотра по одной странице",
            pageTransition = PageTransition.SLIDE_HORIZONTAL
        )
        
        @OptIn(ExperimentalFoundationApi::class)
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val pagerState = rememberPagerState(
                initialPage = currentPage,
                pageCount = { pages.size }
            )
            
            LaunchedEffect(pagerState.currentPage) {
                onPageChange(pagerState.currentPage)
            }
            
            HorizontalPager(
                state = pagerState,
                modifier = modifier,
                pageSpacing = 0.dp
            ) { pageIndex ->
                SinglePageView(
                    pageFile = pages[pageIndex],
                    pageNumber = pageIndex + 1,
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean {
            return when (gesture) {
                is ReaderGesture.Tap -> {
                    val tapZone = getTapZone(gesture.position, gesture.screenSize)
                    when (tapZone) {
                        TapAction.PREVIOUS_PAGE -> {
                            // Логика перехода к предыдущей странице
                            true
                        }
                        TapAction.NEXT_PAGE -> {
                            // Логика перехода к следующей странице
                            true
                        }
                        else -> false
                    }
                }
                else -> false
            }
        }
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            return if (currentPage < totalPages - 1) currentPage + 1 else null
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            return if (currentPage > 0) currentPage - 1 else null
        }
        
        private fun getTapZone(position: Offset, screenSize: Size): TapAction {
            val x = position.x / screenSize.width
            return when {
                x < config.gestureConfig.tapZones.leftZoneWidth -> config.gestureConfig.tapZones.leftZoneAction
                x > 1f - config.gestureConfig.tapZones.rightZoneWidth -> config.gestureConfig.tapZones.rightZoneAction
                else -> config.gestureConfig.tapZones.centerZoneAction
            }
        }
    }
    
    /**
     * Режим двух страниц (разворот)
     */
    class DoublePageMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Разворот",
            description = "Просмотр двух страниц одновременно",
            supportedOrientations = listOf(Orientation.Landscape),
            pageTransition = PageTransition.SLIDE_HORIZONTAL
        )
        
        @OptIn(ExperimentalFoundationApi::class)
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val pagerState = rememberPagerState(
                initialPage = currentPage / 2,
                pageCount = { (pages.size + 1) / 2 }
            )
            
            LaunchedEffect(pagerState.currentPage) {
                onPageChange(pagerState.currentPage * 2)
            }
            
            HorizontalPager(
                state = pagerState,
                modifier = modifier
            ) { pagerIndex ->
                val leftPageIndex = pagerIndex * 2
                val rightPageIndex = leftPageIndex + 1
                
                Row(
                    modifier = Modifier.fillMaxSize(),
                    horizontalArrangement = Arrangement.Center
                ) {
                    // Левая страница
                    if (leftPageIndex < pages.size) {
                        SinglePageView(
                            pageFile = pages[leftPageIndex],
                            pageNumber = leftPageIndex + 1,
                            modifier = Modifier
                                .weight(1f)
                                .fillMaxHeight()
                        )
                    } else {
                        Spacer(modifier = Modifier.weight(1f))
                    }
                    
                    // Разделитель
                    Divider(
                        modifier = Modifier
                            .fillMaxHeight()
                            .width(2.dp),
                        color = Color.Gray.copy(alpha = 0.3f)
                    )
                    
                    // Правая страница
                    if (rightPageIndex < pages.size) {
                        SinglePageView(
                            pageFile = pages[rightPageIndex],
                            pageNumber = rightPageIndex + 1,
                            modifier = Modifier
                                .weight(1f)
                                .fillMaxHeight()
                        )
                    } else {
                        Spacer(modifier = Modifier.weight(1f))
                    }
                }
            }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean = false
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            val nextSpread = currentPage + 2
            return if (nextSpread < totalPages) nextSpread else null
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            val prevSpread = currentPage - 2
            return if (prevSpread >= 0) prevSpread else null
        }
    }
    
    /**
     * Режим вертикальной прокрутки
     */
    class VerticalScrollMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Вертикальная прокрутка",
            description = "Непрерывная вертикальная прокрутка всех страниц",
            pageTransition = PageTransition.NONE,
            defaultZoomMode = ZoomMode.FIT_WIDTH
        )
        
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val listState = rememberLazyListState(initialFirstVisibleItemIndex = currentPage)
            
            LaunchedEffect(listState.firstVisibleItemIndex) {
                onPageChange(listState.firstVisibleItemIndex)
            }
            
            LazyColumn(
                state = listState,
                modifier = modifier,
                verticalArrangement = Arrangement.spacedBy(8.dp),
                contentPadding = PaddingValues(vertical = 16.dp)
            ) {
                itemsIndexed(pages) { index, pageFile ->
                    SinglePageView(
                        pageFile = pageFile,
                        pageNumber = index + 1,
                        modifier = Modifier
                            .fillMaxWidth()
                            .wrapContentHeight()
                    )
                }
            }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean = false
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            return if (currentPage < totalPages - 1) currentPage + 1 else null
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            return if (currentPage > 0) currentPage - 1 else null
        }
    }
    
    /**
     * Режим веб-тунов (корейские комиксы)
     */
    class WebtoonMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Веб-тун",
            description = "Специальный режим для корейских веб-тунов",
            pageTransition = PageTransition.NONE,
            defaultZoomMode = ZoomMode.FIT_WIDTH,
            allowZoom = false
        )
        
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val listState = rememberLazyListState(initialFirstVisibleItemIndex = currentPage)
            
            LaunchedEffect(listState.firstVisibleItemIndex) {
                onPageChange(listState.firstVisibleItemIndex)
            }
            
            LazyColumn(
                state = listState,
                modifier = modifier,
                verticalArrangement = Arrangement.spacedBy(0.dp) // Без промежутков для веб-тунов
            ) {
                itemsIndexed(pages) { index, pageFile ->
                    WebtoonPageView(
                        pageFile = pageFile,
                        pageNumber = index + 1,
                        modifier = Modifier
                            .fillMaxWidth()
                            .wrapContentHeight()
                    )
                }
            }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean = false
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            return if (currentPage < totalPages - 1) currentPage + 1 else null
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            return if (currentPage > 0) currentPage - 1 else null
        }
    }
    
    /**
     * Режим манги (справа налево)
     */
    class MangaRightToLeftMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Манга (справа налево)",
            description = "Традиционный режим чтения манги справа налево",
            pageTransition = PageTransition.SLIDE_HORIZONTAL,
            gestureConfig = GestureConfig(
                tapZones = TapZoneConfig(
                    leftZoneAction = TapAction.NEXT_PAGE,
                    rightZoneAction = TapAction.PREVIOUS_PAGE
                )
            )
        )
        
        @OptIn(ExperimentalFoundationApi::class)
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val pagerState = rememberPagerState(
                initialPage = pages.size - 1 - currentPage, // Инвертируем порядок
                pageCount = { pages.size }
            )
            
            LaunchedEffect(pagerState.currentPage) {
                onPageChange(pages.size - 1 - pagerState.currentPage)
            }
            
            HorizontalPager(
                state = pagerState,
                modifier = modifier,
                reverseLayout = true // Инвертируем направление
            ) { pageIndex ->
                val actualPageIndex = pages.size - 1 - pageIndex
                SinglePageView(
                    pageFile = pages[actualPageIndex],
                    pageNumber = actualPageIndex + 1,
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean = false
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            return if (currentPage > 0) currentPage - 1 else null
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            return if (currentPage < totalPages - 1) currentPage + 1 else null
        }
    }
    
    /**
     * Умный режим (автоматическое определение)
     */
    class SmartMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Умный режим",
            description = "Автоматическое определение оптимального режима чтения",
            defaultZoomMode = ZoomMode.SMART_FIT
        )
        
        private var detectedMode: ReadingModeRenderer? = null
        
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val context = LocalContext.current
            
            // Определяем оптимальный режим при первом запуске
            LaunchedEffect(pages) {
                detectedMode = detectOptimalMode(pages, context)
            }
            
            detectedMode?.RenderContent(pages, currentPage, onPageChange, modifier)
                ?: Box(
                    modifier = modifier,
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator()
                    Text(
                        text = "Анализ комикса...",
                        modifier = Modifier.padding(top = 64.dp)
                    )
                }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean {
            return detectedMode?.handleGesture(gesture) ?: false
        }
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            return detectedMode?.getNextPage(currentPage, totalPages)
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            return detectedMode?.getPreviousPage(currentPage)
        }
        
        private suspend fun detectOptimalMode(
            pages: List<File>,
            context: Context
        ): ReadingModeRenderer = withContext(Dispatchers.IO) {
            
            // Анализируем первые несколько страниц
            val samplePages = pages.take(5)
            var totalWidth = 0
            var totalHeight = 0
            var aspectRatios = mutableListOf<Float>()
            
            samplePages.forEach { pageFile ->
                try {
                    val options = BitmapFactory.Options().apply {
                        inJustDecodeBounds = true
                    }
                    BitmapFactory.decodeFile(pageFile.absolutePath, options)
                    
                    totalWidth += options.outWidth
                    totalHeight += options.outHeight
                    aspectRatios.add(options.outWidth.toFloat() / options.outHeight.toFloat())
                } catch (e: Exception) {
                    // Игнорируем ошибки
                }
            }
            
            if (aspectRatios.isEmpty()) {
                return@withContext SinglePageMode()
            }
            
            val avgAspectRatio = aspectRatios.average().toFloat()
            val avgWidth = totalWidth / samplePages.size
            val avgHeight = totalHeight / samplePages.size
            
            // Логика определения режима
            when {
                // Веб-тун: очень высокие и узкие изображения
                avgAspectRatio < 0.3f && avgHeight > avgWidth * 3 -> WebtoonMode()
                
                // Манга: квадратные или слегка вытянутые по высоте
                avgAspectRatio in 0.6f..0.8f -> {
                    // Дополнительная проверка на японский текст или стиль
                    if (detectMangaStyle(samplePages)) {
                        MangaRightToLeftMode()
                    } else {
                        SinglePageMode()
                    }
                }
                
                // Широкие изображения - подходят для разворота
                avgAspectRatio > 1.5f -> DoublePageMode()
                
                // Вертикальные комиксы
                avgAspectRatio < 0.8f && avgHeight > 1000 -> VerticalScrollMode()
                
                // По умолчанию - одна страница
                else -> SinglePageMode()
            }
        }
        
        private fun detectMangaStyle(pages: List<File>): Boolean {
            // Простая эвристика для определения манги
            // В реальном приложении здесь может быть ML-модель
            return false // Заглушка
        }
    }
    
    /**
     * Режим непрерывного чтения
     */
    class ContinuousMode : ReadingModeRenderer {
        override val config = ReadingModeConfig(
            name = "Непрерывное чтение",
            description = "Плавная прокрутка без разделения на страницы",
            pageTransition = PageTransition.NONE,
            defaultZoomMode = ZoomMode.FIT_WIDTH
        )
        
        @Composable
        override fun RenderContent(
            pages: List<File>,
            currentPage: Int,
            onPageChange: (Int) -> Unit,
            modifier: Modifier
        ) {
            val listState = rememberLazyListState(initialFirstVisibleItemIndex = currentPage)
            
            // Отслеживаем видимые элементы для определения текущей страницы
            LaunchedEffect(listState.firstVisibleItemIndex, listState.firstVisibleItemScrollOffset) {
                val visibleItems = listState.layoutInfo.visibleItemsInfo
                if (visibleItems.isNotEmpty()) {
                    val mostVisibleItem = visibleItems.maxByOrNull { item ->
                        val itemTop = item.offset
                        val itemBottom = item.offset + item.size
                        val viewportTop = 0
                        val viewportBottom = listState.layoutInfo.viewportEndOffset
                        
                        // Вычисляем пересечение
                        val intersectionTop = maxOf(itemTop, viewportTop)
                        val intersectionBottom = minOf(itemBottom, viewportBottom)
                        maxOf(0, intersectionBottom - intersectionTop)
                    }
                    
                    mostVisibleItem?.let { item ->
                        onPageChange(item.index)
                    }
                }
            }
            
            LazyColumn(
                state = listState,
                modifier = modifier,
                verticalArrangement = Arrangement.spacedBy(4.dp),
                contentPadding = PaddingValues(vertical = 8.dp)
            ) {
                itemsIndexed(pages) { index, pageFile ->
                    ContinuousPageView(
                        pageFile = pageFile,
                        pageNumber = index + 1,
                        modifier = Modifier
                            .fillMaxWidth()
                            .wrapContentHeight()
                    )
                }
            }
        }
        
        override fun handleGesture(gesture: ReaderGesture): Boolean = false
        
        override fun getNextPage(currentPage: Int, totalPages: Int): Int? {
            return if (currentPage < totalPages - 1) currentPage + 1 else null
        }
        
        override fun getPreviousPage(currentPage: Int): Int? {
            return if (currentPage > 0) currentPage - 1 else null
        }
    }
}

/**
 * Компонент для отображения одной страницы
 */
@Composable
private fun SinglePageView(
    pageFile: File,
    pageNumber: Int,
    modifier: Modifier = Modifier
) {
    var isLoading by remember { mutableStateOf(true) }
    var hasError by remember { mutableStateOf(false) }
    
    Box(
        modifier = modifier,
        contentAlignment = Alignment.Center
    ) {
        AsyncImage(
            model = ImageRequest.Builder(LocalContext.current)
                .data(pageFile)
                .crossfade(true)
                .build(),
            contentDescription = "Страница $pageNumber",
            modifier = Modifier.fillMaxSize(),
            contentScale = ContentScale.Fit,
            onLoading = { isLoading = true },
            onSuccess = { 
                isLoading = false
                hasError = false
            },
            onError = { 
                isLoading = false
                hasError = true
            }
        )
        
        if (isLoading) {
            CircularProgressIndicator(
                modifier = Modifier.size(48.dp),
                color = MaterialTheme.colorScheme.primary
            )
        }
        
        if (hasError) {
            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Icon(
                    imageVector = Icons.Default.Error,
                    contentDescription = null,
                    tint = MaterialTheme.colorScheme.error,
                    modifier = Modifier.size(48.dp)
                )
                Text(
                    text = "Ошибка загрузки\nстраницы $pageNumber",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
            }
        }
    }
}

/**
 * Компонент для отображения страницы в режиме веб-тунов
 */
@Composable
private fun WebtoonPageView(
    pageFile: File,
    pageNumber: Int,
    modifier: Modifier = Modifier
) {
    var isLoading by remember { mutableStateOf(true) }
    var hasError by remember { mutableStateOf(false) }
    
    Box(
        modifier = modifier,
        contentAlignment = Alignment.TopCenter
    ) {
        AsyncImage(
            model = ImageRequest.Builder(LocalContext.current)
                .data(pageFile)
                .crossfade(false) // Отключаем анимацию для веб-тунов
                .build(),
            contentDescription = "Страница $pageNumber",
            modifier = Modifier.fillMaxWidth(),
            contentScale = ContentScale.FitWidth, // Всегда подгоняем по ширине
            onLoading = { isLoading = true },
            onSuccess = { 
                isLoading = false
                hasError = false
            },
            onError = { 
                isLoading = false
                hasError = true
            }
        )
        
        if (isLoading) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(200.dp),
                contentAlignment = Alignment.Center
            ) {
                CircularProgressIndicator(
                    modifier = Modifier.size(32.dp),
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
        
        if (hasError) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(200.dp)
                    .background(Color.Gray.copy(alpha = 0.1f)),
                contentAlignment = Alignment.Center
            ) {
                Column(
                    horizontalAlignment = Alignment.CenterHorizontally,
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Error,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.error,
                        modifier = Modifier.size(32.dp)
                    )
                    Text(
                        text = "Ошибка загрузки страницы $pageNumber",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurface
                    )
                }
            }
        }
    }
}

/**
 * Компонент для отображения страницы в непрерывном режиме
 */
@Composable
private fun ContinuousPageView(
    pageFile: File,
    pageNumber: Int,
    modifier: Modifier = Modifier
) {
    var isLoading by remember { mutableStateOf(true) }
    var hasError by remember { mutableStateOf(false) }
    
    Card(
        modifier = modifier,
        elevation = CardDefaults.cardElevation(defaultElevation = 2.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface
        )
    ) {
        Column {
            // Номер страницы
            Text(
                text = "Страница $pageNumber",
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant,
                modifier = Modifier.padding(8.dp)
            )
            
            // Изображение страницы
            Box(
                contentAlignment = Alignment.Center
            ) {
                AsyncImage(
                    model = ImageRequest.Builder(LocalContext.current)
                        .data(pageFile)
                        .crossfade(true)
                        .build(),
                    contentDescription = "Страница $pageNumber",
                    modifier = Modifier.fillMaxWidth(),
                    contentScale = ContentScale.FitWidth,
                    onLoading = { isLoading = true },
                    onSuccess = { 
                        isLoading = false
                        hasError = false
                    },
                    onError = { 
                        isLoading = false
                        hasError = true
                    }
                )
                
                if (isLoading) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(300.dp),
                        contentAlignment = Alignment.Center
                    ) {
                        CircularProgressIndicator(
                            modifier = Modifier.size(40.dp),
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }
                
                if (hasError) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(300.dp)
                            .background(Color.Gray.copy(alpha = 0.1f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Column(
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.spacedBy(12.dp)
                        ) {
                            Icon(
                                imageVector = Icons.Default.Error,
                                contentDescription = null,
                                tint = MaterialTheme.colorScheme.error,
                                modifier = Modifier.size(48.dp)
                            )
                            Text(
                                text = "Не удалось загрузить страницу",
                                style = MaterialTheme.typography.bodyMedium,
                                color = MaterialTheme.colorScheme.onSurface
                            )
                        }
                    }
                }
            }
        }
    }
}

/**
 * Менеджер режимов чтения
 */
object ReadingModeManager {
    private val availableModes = mapOf(
        "single_page" to ReadingModes.SinglePageMode(),
        "double_page" to ReadingModes.DoublePageMode(),
        "vertical_scroll" to ReadingModes.VerticalScrollMode(),
        "webtoon" to ReadingModes.WebtoonMode(),
        "manga_rtl" to ReadingModes.MangaRightToLeftMode(),
        "smart" to ReadingModes.SmartMode(),
        "continuous" to ReadingModes.ContinuousMode()
    )
    
    fun getMode(modeId: String): ReadingModes.ReadingModeRenderer? {
        return availableModes[modeId]
    }
    
    fun getAllModes(): Map<String, ReadingModes.ReadingModeRenderer> {
        return availableModes
    }
    
    fun getRecommendedMode(
        comicType: String,
        orientation: ReadingModes.Orientation
    ): ReadingModes.ReadingModeRenderer {
        return when (comicType.lowercase()) {
            "manga" -> availableModes["manga_rtl"]!!
            "webtoon", "manhwa" -> availableModes["webtoon"]!!
            "comic", "western" -> when (orientation) {
                ReadingModes.Orientation.Landscape -> availableModes["double_page"]!!
                ReadingModes.Orientation.Portrait -> availableModes["single_page"]!!
            }
            else -> availableModes["smart"]!!
        }
    }
}

