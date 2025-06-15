package com.example.mrcomic.reader.navigation

import android.content.Context
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.gestures.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.lazy.grid.*
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
import androidx.compose.ui.input.pointer.*
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.*
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import androidx.compose.ui.zIndex
import coil.compose.AsyncImage
import coil.request.ImageRequest
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.io.File
import kotlin.math.*

/**
 * Продвинутая система навигации и миниатюр для ридера комиксов
 */
object NavigationSystem {
    
    /**
     * Конфигурация системы навигации
     */
    data class NavigationConfig(
        val thumbnailSize: Dp = 120.dp,
        val thumbnailQuality: Float = 0.7f,
        val preloadThumbnails: Int = 20,
        val showPageNumbers: Boolean = true,
        val showProgress: Boolean = true,
        val enableQuickJump: Boolean = true,
        val enableBookmarks: Boolean = true,
        val enableHistory: Boolean = true,
        val animationDuration: Int = 300,
        val gridColumns: Int = 3
    )
    
    /**
     * Состояние навигации
     */
    data class NavigationState(
        val currentPage: Int = 0,
        val totalPages: Int = 0,
        val thumbnails: Map<Int, Bitmap> = emptyMap(),
        val bookmarks: Set<Int> = emptySet(),
        val history: List<Int> = emptyList(),
        val isLoading: Boolean = false,
        val loadingProgress: Float = 0f,
        val quickJumpTargets: List<QuickJumpTarget> = emptyList()
    )
    
    /**
     * Цель быстрого перехода
     */
    data class QuickJumpTarget(
        val page: Int,
        val title: String,
        val type: QuickJumpType,
        val thumbnail: Bitmap? = null
    )
    
    enum class QuickJumpType {
        CHAPTER_START,
        BOOKMARK,
        LAST_READ,
        IMPORTANT_SCENE,
        CHARACTER_APPEARANCE
    }
    
    private val _navigationState = MutableStateFlow(NavigationState())
    val navigationState: StateFlow<NavigationState> = _navigationState.asStateFlow()
    
    private val thumbnailCache = mutableMapOf<String, Bitmap>()
    private val thumbnailScope = CoroutineScope(Dispatchers.IO + SupervisorJob())
    
    /**
     * Инициализация системы навигации
     */
    suspend fun initialize(
        pages: List<File>,
        context: Context,
        config: NavigationConfig = NavigationConfig()
    ) = withContext(Dispatchers.IO) {
        
        _navigationState.value = _navigationState.value.copy(
            totalPages = pages.size,
            isLoading = true,
            loadingProgress = 0f
        )
        
        // Генерируем миниатюры
        generateThumbnails(pages, context, config)
        
        // Анализируем контент для быстрых переходов
        val quickJumpTargets = analyzeContentForQuickJumps(pages, context)
        
        _navigationState.value = _navigationState.value.copy(
            isLoading = false,
            loadingProgress = 1f,
            quickJumpTargets = quickJumpTargets
        )
    }
    
    /**
     * Генерация миниатюр
     */
    private suspend fun generateThumbnails(
        pages: List<File>,
        context: Context,
        config: NavigationConfig
    ) = withContext(Dispatchers.IO) {
        
        val thumbnailSize = with(context.resources.displayMetrics) {
            (config.thumbnailSize.value * density).toInt()
        }
        
        pages.forEachIndexed { index, pageFile ->
            try {
                val cacheKey = "${pageFile.absolutePath}_${thumbnailSize}"
                
                val thumbnail = thumbnailCache[cacheKey] ?: run {
                    // Создаем миниатюру
                    val options = BitmapFactory.Options().apply {
                        inJustDecodeBounds = true
                    }
                    BitmapFactory.decodeFile(pageFile.absolutePath, options)
                    
                    val scale = minOf(
                        thumbnailSize.toFloat() / options.outWidth,
                        thumbnailSize.toFloat() / options.outHeight
                    )
                    
                    val finalOptions = BitmapFactory.Options().apply {
                        inSampleSize = (1f / scale).toInt().coerceAtLeast(1)
                        inPreferredConfig = Bitmap.Config.RGB_565 // Экономим память
                    }
                    
                    val bitmap = BitmapFactory.decodeFile(pageFile.absolutePath, finalOptions)
                    bitmap?.let { 
                        val scaledBitmap = Bitmap.createScaledBitmap(
                            it,
                            (it.width * scale).toInt(),
                            (it.height * scale).toInt(),
                            true
                        )
                        thumbnailCache[cacheKey] = scaledBitmap
                        scaledBitmap
                    }
                }
                
                thumbnail?.let { thumb ->
                    val currentThumbnails = _navigationState.value.thumbnails.toMutableMap()
                    currentThumbnails[index] = thumb
                    
                    _navigationState.value = _navigationState.value.copy(
                        thumbnails = currentThumbnails,
                        loadingProgress = (index + 1).toFloat() / pages.size
                    )
                }
                
            } catch (e: Exception) {
                // Игнорируем ошибки отдельных миниатюр
            }
        }
    }
    
    /**
     * Анализ контента для создания быстрых переходов
     */
    private suspend fun analyzeContentForQuickJumps(
        pages: List<File>,
        context: Context
    ): List<QuickJumpTarget> = withContext(Dispatchers.IO) {
        
        val targets = mutableListOf<QuickJumpTarget>()
        
        // Анализируем каждую 10-ю страницу для поиска важных сцен
        pages.forEachIndexed { index, pageFile ->
            if (index % 10 == 0) {
                try {
                    // Простой анализ на основе размера файла и яркости
                    val fileSize = pageFile.length()
                    
                    // Большие файлы часто содержат важные сцены
                    if (fileSize > 500_000) { // 500KB
                        targets.add(
                            QuickJumpTarget(
                                page = index,
                                title = "Важная сцена",
                                type = QuickJumpType.IMPORTANT_SCENE,
                                thumbnail = _navigationState.value.thumbnails[index]
                            )
                        )
                    }
                    
                    // Каждые 20 страниц добавляем как потенциальное начало главы
                    if (index % 20 == 0 && index > 0) {
                        targets.add(
                            QuickJumpTarget(
                                page = index,
                                title = "Глава ${index / 20 + 1}",
                                type = QuickJumpType.CHAPTER_START,
                                thumbnail = _navigationState.value.thumbnails[index]
                            )
                        )
                    }
                    
                } catch (e: Exception) {
                    // Игнорируем ошибки анализа
                }
            }
        }
        
        targets
    }
    
    /**
     * Обновление текущей страницы
     */
    fun updateCurrentPage(page: Int) {
        val currentState = _navigationState.value
        if (page != currentState.currentPage) {
            // Добавляем в историю
            val newHistory = currentState.history.toMutableList()
            if (newHistory.isEmpty() || newHistory.last() != currentState.currentPage) {
                newHistory.add(currentState.currentPage)
                // Ограничиваем размер истории
                if (newHistory.size > 50) {
                    newHistory.removeAt(0)
                }
            }
            
            _navigationState.value = currentState.copy(
                currentPage = page,
                history = newHistory
            )
        }
    }
    
    /**
     * Добавление/удаление закладки
     */
    fun toggleBookmark(page: Int) {
        val currentBookmarks = _navigationState.value.bookmarks.toMutableSet()
        if (currentBookmarks.contains(page)) {
            currentBookmarks.remove(page)
        } else {
            currentBookmarks.add(page)
        }
        
        _navigationState.value = _navigationState.value.copy(bookmarks = currentBookmarks)
    }
    
    /**
     * Получение миниатюры страницы
     */
    fun getThumbnail(page: Int): Bitmap? {
        return _navigationState.value.thumbnails[page]
    }
    
    /**
     * Очистка кэша
     */
    fun clearCache() {
        thumbnailCache.clear()
        _navigationState.value = NavigationState()
        thumbnailScope.coroutineContext.cancelChildren()
    }
}

/**
 * Компонент навигационной панели
 */
@Composable
fun NavigationPanel(
    pages: List<File>,
    currentPage: Int,
    onPageSelected: (Int) -> Unit,
    onBookmarkToggle: (Int) -> Unit = {},
    modifier: Modifier = Modifier,
    config: NavigationSystem.NavigationConfig = NavigationSystem.NavigationConfig()
) {
    val context = LocalContext.current
    val navigationState by NavigationSystem.navigationState.collectAsState()
    
    // Инициализация при первом запуске
    LaunchedEffect(pages) {
        NavigationSystem.initialize(pages, context, config)
    }
    
    // Обновление текущей страницы
    LaunchedEffect(currentPage) {
        NavigationSystem.updateCurrentPage(currentPage)
    }
    
    Card(
        modifier = modifier,
        elevation = CardDefaults.cardElevation(defaultElevation = 8.dp),
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surface.copy(alpha = 0.95f)
        )
    ) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(16.dp)
        ) {
            // Заголовок с прогрессом
            NavigationHeader(
                currentPage = currentPage,
                totalPages = pages.size,
                progress = if (pages.isNotEmpty()) currentPage.toFloat() / pages.size else 0f
            )
            
            Spacer(modifier = Modifier.height(16.dp))
            
            // Основная навигация
            if (navigationState.isLoading) {
                NavigationLoadingIndicator(
                    progress = navigationState.loadingProgress
                )
            } else {
                ThumbnailGrid(
                    pages = pages,
                    currentPage = currentPage,
                    thumbnails = navigationState.thumbnails,
                    bookmarks = navigationState.bookmarks,
                    onPageSelected = onPageSelected,
                    onBookmarkToggle = onBookmarkToggle,
                    config = config
                )
            }
        }
    }
}

/**
 * Заголовок навигационной панели
 */
@Composable
private fun NavigationHeader(
    currentPage: Int,
    totalPages: Int,
    progress: Float,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "Навигация",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold
            )
            
            Text(
                text = "${currentPage + 1} / $totalPages",
                style = MaterialTheme.typography.titleMedium,
                color = MaterialTheme.colorScheme.primary
            )
        }
        
        Spacer(modifier = Modifier.height(8.dp))
        
        // Прогресс-бар
        LinearProgressIndicator(
            progress = progress,
            modifier = Modifier
                .fillMaxWidth()
                .height(4.dp)
                .clip(RoundedCornerShape(2.dp)),
            color = MaterialTheme.colorScheme.primary,
            trackColor = MaterialTheme.colorScheme.surfaceVariant
        )
        
        Spacer(modifier = Modifier.height(4.dp))
        
        Text(
            text = "${(progress * 100).toInt()}% прочитано",
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

/**
 * Индикатор загрузки навигации
 */
@Composable
private fun NavigationLoadingIndicator(
    progress: Float,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier.fillMaxWidth(),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        CircularProgressIndicator(
            progress = progress,
            modifier = Modifier.size(64.dp),
            strokeWidth = 6.dp,
            color = MaterialTheme.colorScheme.primary
        )
        
        Text(
            text = "Создание миниатюр...",
            style = MaterialTheme.typography.bodyLarge,
            color = MaterialTheme.colorScheme.onSurface
        )
        
        Text(
            text = "${(progress * 100).toInt()}%",
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

/**
 * Сетка миниатюр
 */
@Composable
private fun ThumbnailGrid(
    pages: List<File>,
    currentPage: Int,
    thumbnails: Map<Int, Bitmap>,
    bookmarks: Set<Int>,
    onPageSelected: (Int) -> Unit,
    onBookmarkToggle: (Int) -> Unit,
    config: NavigationSystem.NavigationConfig,
    modifier: Modifier = Modifier
) {
    val listState = rememberLazyGridState(
        initialFirstVisibleItemIndex = maxOf(0, currentPage - 5)
    )
    
    // Автоматическая прокрутка к текущей странице
    LaunchedEffect(currentPage) {
        if (currentPage >= 0 && currentPage < pages.size) {
            listState.animateScrollToItem(currentPage)
        }
    }
    
    LazyVerticalGrid(
        columns = GridCells.Fixed(config.gridColumns),
        state = listState,
        modifier = modifier.height(400.dp),
        contentPadding = PaddingValues(4.dp),
        horizontalArrangement = Arrangement.spacedBy(8.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        itemsIndexed(pages) { index, pageFile ->
            ThumbnailItem(
                pageIndex = index,
                pageFile = pageFile,
                thumbnail = thumbnails[index],
                isCurrentPage = index == currentPage,
                isBookmarked = bookmarks.contains(index),
                onPageSelected = { onPageSelected(index) },
                onBookmarkToggle = { onBookmarkToggle(index) },
                config = config
            )
        }
    }
}

/**
 * Элемент миниатюры
 */
@Composable
private fun ThumbnailItem(
    pageIndex: Int,
    pageFile: File,
    thumbnail: Bitmap?,
    isCurrentPage: Boolean,
    isBookmarked: Boolean,
    onPageSelected: () -> Unit,
    onBookmarkToggle: () -> Unit,
    config: NavigationSystem.NavigationConfig,
    modifier: Modifier = Modifier
) {
    val animatedScale by animateFloatAsState(
        targetValue = if (isCurrentPage) 1.1f else 1f,
        animationSpec = tween(config.animationDuration),
        label = "thumbnail_scale"
    )
    
    val animatedElevation by animateDpAsState(
        targetValue = if (isCurrentPage) 8.dp else 2.dp,
        animationSpec = tween(config.animationDuration),
        label = "thumbnail_elevation"
    )
    
    Card(
        modifier = modifier
            .size(config.thumbnailSize)
            .scale(animatedScale)
            .clickable { onPageSelected() },
        elevation = CardDefaults.cardElevation(defaultElevation = animatedElevation),
        colors = CardDefaults.cardColors(
            containerColor = if (isCurrentPage) {
                MaterialTheme.colorScheme.primaryContainer
            } else {
                MaterialTheme.colorScheme.surface
            }
        ),
        border = if (isCurrentPage) {
            BorderStroke(2.dp, MaterialTheme.colorScheme.primary)
        } else null
    ) {
        Box(
            modifier = Modifier.fillMaxSize()
        ) {
            // Миниатюра или заглушка
            if (thumbnail != null) {
                Image(
                    bitmap = thumbnail.asImageBitmap(),
                    contentDescription = "Страница ${pageIndex + 1}",
                    modifier = Modifier.fillMaxSize(),
                    contentScale = ContentScale.Crop
                )
            } else {
                // Заглушка для загрузки
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(MaterialTheme.colorScheme.surfaceVariant),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(24.dp),
                        strokeWidth = 2.dp,
                        color = MaterialTheme.colorScheme.primary
                    )
                }
            }
            
            // Номер страницы
            if (config.showPageNumbers) {
                Surface(
                    modifier = Modifier
                        .align(Alignment.BottomEnd)
                        .padding(4.dp),
                    color = Color.Black.copy(alpha = 0.7f),
                    shape = RoundedCornerShape(4.dp)
                ) {
                    Text(
                        text = "${pageIndex + 1}",
                        style = MaterialTheme.typography.labelSmall,
                        color = Color.White,
                        modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp)
                    )
                }
            }
            
            // Иконка закладки
            if (isBookmarked) {
                Icon(
                    imageVector = Icons.Default.Bookmark,
                    contentDescription = "Закладка",
                    tint = Color.Yellow,
                    modifier = Modifier
                        .align(Alignment.TopEnd)
                        .padding(4.dp)
                        .size(20.dp)
                )
            }
            
            // Кнопка закладки (показывается при долгом нажатии)
            var showBookmarkButton by remember { mutableStateOf(false) }
            
            if (showBookmarkButton) {
                IconButton(
                    onClick = {
                        onBookmarkToggle()
                        showBookmarkButton = false
                    },
                    modifier = Modifier
                        .align(Alignment.TopStart)
                        .background(
                            Color.Black.copy(alpha = 0.7f),
                            RoundedCornerShape(4.dp)
                        )
                ) {
                    Icon(
                        imageVector = if (isBookmarked) Icons.Default.BookmarkRemove else Icons.Default.BookmarkAdd,
                        contentDescription = if (isBookmarked) "Удалить закладку" else "Добавить закладку",
                        tint = Color.White,
                        modifier = Modifier.size(16.dp)
                    )
                }
            }
            
            // Обработка долгого нажатия
            Modifier.pointerInput(Unit) {
                detectTapGestures(
                    onLongPress = {
                        showBookmarkButton = true
                    }
                )
            }
        }
    }
}

/**
 * Компонент быстрой навигации
 */
@Composable
fun QuickNavigationBar(
    currentPage: Int,
    totalPages: Int,
    onPageChange: (Int) -> Unit,
    onShowThumbnails: () -> Unit,
    onShowBookmarks: () -> Unit,
    onShowHistory: () -> Unit,
    modifier: Modifier = Modifier
) {
    Surface(
        modifier = modifier,
        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.9f),
        shadowElevation = 8.dp
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 8.dp),
            horizontalArrangement = Arrangement.SpaceEvenly,
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Предыдущая страница
            IconButton(
                onClick = { 
                    if (currentPage > 0) onPageChange(currentPage - 1) 
                },
                enabled = currentPage > 0
            ) {
                Icon(
                    imageVector = Icons.Default.SkipPrevious,
                    contentDescription = "Предыдущая страница",
                    tint = if (currentPage > 0) {
                        MaterialTheme.colorScheme.primary
                    } else {
                        MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f)
                    }
                )
            }
            
            // Миниатюры
            IconButton(onClick = onShowThumbnails) {
                Icon(
                    imageVector = Icons.Default.GridView,
                    contentDescription = "Миниатюры",
                    tint = MaterialTheme.colorScheme.primary
                )
            }
            
            // Индикатор страницы
            Surface(
                color = MaterialTheme.colorScheme.primaryContainer,
                shape = RoundedCornerShape(16.dp)
            ) {
                Text(
                    text = "${currentPage + 1}/$totalPages",
                    style = MaterialTheme.typography.labelLarge,
                    color = MaterialTheme.colorScheme.onPrimaryContainer,
                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp)
                )
            }
            
            // Закладки
            IconButton(onClick = onShowBookmarks) {
                Icon(
                    imageVector = Icons.Default.Bookmark,
                    contentDescription = "Закладки",
                    tint = MaterialTheme.colorScheme.primary
                )
            }
            
            // Следующая страница
            IconButton(
                onClick = { 
                    if (currentPage < totalPages - 1) onPageChange(currentPage + 1) 
                },
                enabled = currentPage < totalPages - 1
            ) {
                Icon(
                    imageVector = Icons.Default.SkipNext,
                    contentDescription = "Следующая страница",
                    tint = if (currentPage < totalPages - 1) {
                        MaterialTheme.colorScheme.primary
                    } else {
                        MaterialTheme.colorScheme.onSurface.copy(alpha = 0.38f)
                    }
                )
            }
        }
    }
}

/**
 * Диалог навигации по миниатюрам
 */
@Composable
fun ThumbnailNavigationDialog(
    pages: List<File>,
    currentPage: Int,
    onPageSelected: (Int) -> Unit,
    onDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false)
    ) {
        Surface(
            modifier = modifier
                .fillMaxSize()
                .padding(16.dp),
            shape = RoundedCornerShape(16.dp),
            color = MaterialTheme.colorScheme.surface
        ) {
            Column(
                modifier = Modifier.fillMaxSize()
            ) {
                // Заголовок
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = "Выбор страницы",
                        style = MaterialTheme.typography.headlineSmall,
                        fontWeight = FontWeight.Bold
                    )
                    
                    IconButton(onClick = onDismiss) {
                        Icon(
                            imageVector = Icons.Default.Close,
                            contentDescription = "Закрыть"
                        )
                    }
                }
                
                // Навигационная панель
                NavigationPanel(
                    pages = pages,
                    currentPage = currentPage,
                    onPageSelected = { page ->
                        onPageSelected(page)
                        onDismiss()
                    },
                    modifier = Modifier.fillMaxSize()
                )
            }
        }
    }
}

/**
 * Компонент прогресса чтения
 */
@Composable
fun ReadingProgressIndicator(
    currentPage: Int,
    totalPages: Int,
    readingTime: Long = 0L,
    modifier: Modifier = Modifier
) {
    val progress = if (totalPages > 0) currentPage.toFloat() / totalPages else 0f
    
    Card(
        modifier = modifier,
        colors = CardDefaults.cardColors(
            containerColor = MaterialTheme.colorScheme.surfaceVariant
        )
    ) {
        Column(
            modifier = Modifier.padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = "Прогресс чтения",
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.Medium
            )
            
            LinearProgressIndicator(
                progress = progress,
                modifier = Modifier
                    .fillMaxWidth()
                    .height(8.dp)
                    .clip(RoundedCornerShape(4.dp)),
                color = MaterialTheme.colorScheme.primary,
                trackColor = MaterialTheme.colorScheme.outline.copy(alpha = 0.3f)
            )
            
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(
                    text = "${currentPage + 1} / $totalPages",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                
                Text(
                    text = "${(progress * 100).toInt()}%",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.primary,
                    fontWeight = FontWeight.Medium
                )
            }
            
            if (readingTime > 0) {
                val minutes = readingTime / 60000
                val hours = minutes / 60
                val timeText = when {
                    hours > 0 -> "${hours}ч ${minutes % 60}м"
                    minutes > 0 -> "${minutes}м"
                    else -> "<1м"
                }
                
                Text(
                    text = "Время чтения: $timeText",
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

