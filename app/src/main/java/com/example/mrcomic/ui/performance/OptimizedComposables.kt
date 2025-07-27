package com.example.mrcomic.ui.performance

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.drawWithContent
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalDensity
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import kotlinx.coroutines.delay

/**
 * Оптимизированные Composable компоненты для улучшения производительности
 */

/**
 * Ленивый список с оптимизацией производительности
 */
@Composable
fun <T> OptimizedLazyColumn(
    items: List<T>,
    modifier: Modifier = Modifier,
    state: LazyListState = rememberLazyListState(),
    contentPadding: PaddingValues = PaddingValues(),
    reverseLayout: Boolean = false,
    verticalArrangement: Arrangement.Vertical = if (!reverseLayout) Arrangement.Top else Arrangement.Bottom,
    key: ((index: Int, item: T) -> Any)? = null,
    contentType: (index: Int, item: T) -> Any? = { _, _ -> null },
    itemContent: @Composable LazyItemScope.(index: Int, item: T) -> Unit
) {
    LazyColumn(
        modifier = modifier,
        state = state,
        contentPadding = contentPadding,
        reverseLayout = reverseLayout,
        verticalArrangement = verticalArrangement
    ) {
        itemsIndexed(
            items = items,
            key = key,
            contentType = contentType
        ) { index, item ->
            // Мемоизация содержимого элемента
            key(key?.invoke(index, item) ?: index) {
                itemContent(index, item)
            }
        }
    }
}

/**
 * Кэшированное изображение с ленивой загрузкой
 */
@Composable
fun CachedAsyncImage(
    imageUrl: String?,
    contentDescription: String?,
    modifier: Modifier = Modifier,
    placeholder: @Composable () -> Unit = { 
        Box(modifier = Modifier.fillMaxSize()) {
            CircularProgressIndicator()
        }
    },
    error: @Composable () -> Unit = {
        Box(modifier = Modifier.fillMaxSize()) {
            Text("Ошибка загрузки")
        }
    }
) {
    // Здесь будет интеграция с Coil для кэширования изображений
    if (imageUrl != null) {
        // TODO: Интеграция с Coil AsyncImage
        placeholder()
    } else {
        error()
    }
}

/**
 * Компонент с отложенной инициализацией
 */
@Composable
fun LazyInitialized(
    condition: Boolean = true,
    delay: Long = 0,
    content: @Composable () -> Unit
) {
    var shouldShow by remember { mutableStateOf(!condition) }
    
    LaunchedEffect(condition) {
        if (condition && !shouldShow) {
            if (delay > 0) {
                delay(delay)
            }
            shouldShow = true
        }
    }
    
    if (shouldShow) {
        content()
    }
}

/**
 * Компонент с контролем частоты перекомпозиций
 */
@Composable
fun <T> ThrottledContent(
    value: T,
    throttleMs: Long = 100,
    content: @Composable (T) -> Unit
) {
    var throttledValue by remember { mutableStateOf(value) }
    var lastUpdateTime by remember { mutableLongStateOf(0L) }
    
    LaunchedEffect(value) {
        val currentTime = System.currentTimeMillis()
        if (currentTime - lastUpdateTime >= throttleMs) {
            throttledValue = value
            lastUpdateTime = currentTime
        } else {
            delay(throttleMs - (currentTime - lastUpdateTime))
            throttledValue = value
            lastUpdateTime = System.currentTimeMillis()
        }
    }
    
    content(throttledValue)
}

/**
 * Стабильные ключи для списков
 */
class StableListKey<T>(
    private val items: List<T>,
    private val keySelector: (T) -> Any
) {
    private val keys = items.map(keySelector)
    
    fun getKey(index: Int): Any {
        return if (index < keys.size) keys[index] else index
    }
    
    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (other !is StableListKey<*>) return false
        return keys == other.keys
    }
    
    override fun hashCode(): Int {
        return keys.hashCode()
    }
}

/**
 * Мемоизированная карточка комикса для оптимизации списков
 */
@Composable
fun MemoizedComicCard(
    comic: Comic,
    onClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    // Мемоизация только при изменении ключевых свойств
    val stableComic by remember(comic.id, comic.title, comic.progress) {
        mutableStateOf(comic)
    }
    
    Card(
        onClick = onClick,
        modifier = modifier
    ) {
        Column(
            modifier = Modifier.padding(16.dp)
        ) {
            Text(
                text = stableComic.title,
                style = MaterialTheme.typography.titleMedium
            )
            
            if (stableComic.progress > 0) {
                Spacer(modifier = Modifier.height(8.dp))
                LinearProgressIndicator(
                    progress = { stableComic.progress },
                    modifier = Modifier.fillMaxWidth()
                )
            }
        }
    }
}

/**
 * Виртуализированный список с оконным отображением
 */
@Composable
fun <T> WindowedLazyColumn(
    items: List<T>,
    modifier: Modifier = Modifier,
    windowSize: Int = 50, // Количество элементов в окне
    key: ((item: T) -> Any)? = null,
    itemContent: @Composable LazyItemScope.(item: T) -> Unit
) {
    val listState = rememberLazyListState()
    
    // Вычисляем текущее окно видимых элементов
    val visibleWindow by remember {
        derivedStateOf {
            val firstVisible = listState.firstVisibleItemIndex
            val visibleCount = listState.layoutInfo.visibleItemsInfo.size
            val start = maxOf(0, firstVisible - windowSize / 2)
            val end = minOf(items.size, firstVisible + visibleCount + windowSize / 2)
            start until end
        }
    }
    
    LazyColumn(
        modifier = modifier,
        state = listState
    ) {
        items(items.size) { index ->
            if (index in visibleWindow) {
                key(key?.invoke(items[index]) ?: index) {
                    itemContent(items[index])
                }
            } else {
                // Placeholder для элементов вне окна
                Spacer(modifier = Modifier.height(72.dp)) // Примерная высота элемента
            }
        }
    }
}

/**
 * Оптимизированная загрузка данных с пагинацией
 */
@Composable
fun <T> PaginatedLazyColumn(
    items: List<T>,
    isLoading: Boolean,
    hasMore: Boolean,
    onLoadMore: () -> Unit,
    modifier: Modifier = Modifier,
    threshold: Int = 3, // Загружать за 3 элемента до конца
    itemContent: @Composable LazyItemScope.(item: T) -> Unit
) {
    val listState = rememberLazyListState()
    
    // Отслеживание скролла для загрузки данных
    LaunchedEffect(listState) {
        snapshotFlow { listState.layoutInfo.visibleItemsInfo.lastOrNull()?.index }
            .collect { lastVisibleIndex ->
                if (lastVisibleIndex != null && 
                    lastVisibleIndex >= items.size - threshold && 
                    hasMore && 
                    !isLoading
                ) {
                    onLoadMore()
                }
            }
    }
    
    LazyColumn(
        modifier = modifier,
        state = listState
    ) {
        itemsIndexed(items) { index, item ->
            itemContent(item)
        }
        
        if (isLoading) {
            item {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp)
                ) {
                    CircularProgressIndicator()
                }
            }
        }
    }
}

/**
 * Компонент с условной перекомпозицией
 */
@Composable
fun ConditionalRecomposition(
    shouldRecompose: Boolean,
    content: @Composable () -> Unit
) {
    var lastComposition by remember { mutableStateOf(0L) }
    val currentComposition = remember(shouldRecompose) { 
        if (shouldRecompose) {
            lastComposition = System.currentTimeMillis()
            lastComposition
        } else {
            lastComposition
        }
    }
    
    key(currentComposition) {
        content()
    }
}

/**
 * Оптимизированный поиск с debounce
 */
@Composable
fun DebouncedSearchField(
    query: String,
    onQueryChange: (String) -> Unit,
    onSearch: (String) -> Unit,
    debounceMs: Long = 300,
    modifier: Modifier = Modifier,
    placeholder: String = "Поиск..."
) {
    var localQuery by remember { mutableStateOf(query) }
    
    LaunchedEffect(localQuery) {
        delay(debounceMs)
        if (localQuery != query) {
            onSearch(localQuery)
        }
    }
    
    OutlinedTextField(
        value = localQuery,
        onValueChange = { newValue ->
            localQuery = newValue
            onQueryChange(newValue)
        },
        modifier = modifier,
        placeholder = { Text(placeholder) },
        singleLine = true
    )
}

// Модельные классы для примера
data class Comic(
    val id: String,
    val title: String,
    val progress: Float = 0f
)

/**
 * Performance monitoring Composable
 */
@Composable
fun PerformanceMonitor(
    enabled: Boolean = true,
    onPerformanceData: (Long) -> Unit = {}
) {
    if (!enabled) return
    
    val lifecycleOwner = LocalLifecycleOwner.current
    var frameStartTime by remember { mutableLongStateOf(0L) }
    
    DisposableEffect(lifecycleOwner) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_RESUME -> {
                    frameStartTime = System.currentTimeMillis()
                }
                Lifecycle.Event.ON_PAUSE -> {
                    val frameTime = System.currentTimeMillis() - frameStartTime
                    onPerformanceData(frameTime)
                }
                else -> {}
            }
        }
        
        lifecycleOwner.lifecycle.addObserver(observer)
        
        onDispose {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }
}