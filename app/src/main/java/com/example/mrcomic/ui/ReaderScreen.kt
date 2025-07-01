package com.example.mrcomic.ui

import android.graphics.Bitmap
import android.widget.ImageView
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.res.stringResource
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.viewinterop.AndroidView
import com.example.mrcomic.R
import com.example.mrcomic.data.CbzPageProvider
import com.example.mrcomic.data.CbzUtils
import kotlinx.coroutines.delay
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.border
import dagger.hilt.android.lifecycle.HiltViewModel
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.compose.runtime.DisposableEffect
import com.example.mrcomic.data.PdfPageProvider
import com.example.mrcomic.data.CbrPageProvider
import android.util.LruCache
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import com.example.mrcomic.data.createPageProvider
import java.io.File

object PageCache {
    private val cache = LruCache<Int, Bitmap>(50)
    fun get(index: Int): Bitmap? = cache.get(index)
    fun put(index: Int, bmp: Bitmap) { if (get(index) == null) cache.put(index, bmp) }
    fun has(index: Int) = cache.get(index) != null
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderScreen(
    comicId: Long,
    onNavigateBack: () -> Unit,
    viewModel: ReaderViewModel = hiltViewModel()
) {
    var showControls by remember { mutableStateOf(true) }
    var readingMode by remember { mutableStateOf("page") } // page, continuous, webtoon
    var zoomLevel by remember { mutableStateOf(1.0f) }

    val comic by viewModel.comic.collectAsState()
    val filePath = comic?.filePath ?: ""
    val comicTitle = comic?.title ?: "Загрузка..."
    val context = LocalContext.current

    // Универсальный провайдер
    val provider = remember(filePath) {
        if (filePath.isNotBlank()) createPageProvider(context, File(filePath)) else null
    }
    val totalPages = provider?.pageCount ?: comic?.pageCount ?: 100
    val bookmarks by viewModel.bookmarks.collectAsState()
    val currentPage by viewModel.currentPage.collectAsState()
    val isBookmarked = bookmarks.any { it.page == currentPage }
    var showBookmarksDialog by remember { mutableStateOf(false) }

    var imageBitmap by remember { mutableStateOf<Bitmap?>(null) }

    // Асинхронная загрузка текущей страницы
    LaunchedEffect(currentPage, provider) {
        withContext(Dispatchers.IO) {
            if (provider != null && !PageCache.has(currentPage)) {
                provider.getPage(currentPage)?.let { PageCache.put(currentPage, it) }
            }
            imageBitmap = PageCache.get(currentPage)
        }
    }
    // Предзагрузка соседних страниц
    LaunchedEffect(currentPage, provider) {
        withContext(Dispatchers.IO) {
            if (provider != null) {
                listOf(currentPage - 1, currentPage + 1)
                    .filter { it in 0 until totalPages && !PageCache.has(it) }
                    .forEach { preloadPage ->
                        provider.getPage(preloadPage)?.let { PageCache.put(preloadPage, it) }
                    }
            }
        }
    }

    // Инициализация ViewModel при открытии
    LaunchedEffect(comicId, totalPages) {
        // TODO: получить сохранённую страницу из базы, сейчас всегда 0
        viewModel.init(comicId, 0, totalPages)
    }

    // Автоскрытие элементов управления
    LaunchedEffect(showControls) {
        if (showControls) {
            delay(3000)
            showControls = false
        }
    }
    
        Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
            .pointerInput(Unit) {
                detectTapGestures(
                    onTap = { showControls = !showControls }
                )
            }
    ) {
        // Верхняя панель с информацией
        AnimatedVisibility(
            visible = showControls,
            enter = slideInVertically { -it },
            exit = slideOutVertically { -it }
        ) {
            TopAppBar(
                title = {
                    Text(
                        text = comicTitle,
                        color = Color.White,
                        style = MaterialTheme.typography.titleMedium
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Text(
                            text = "←",
                            color = Color.White,
                            style = MaterialTheme.typography.titleLarge
                        )
                    }
                },
                actions = {
                    IconButton(onClick = { /* TODO: Настройки */ }) {
                        Text(
                            text = "⚙️",
                            color = Color.White,
                            style = MaterialTheme.typography.titleMedium
                        )
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color.Black.copy(alpha = 0.8f)
                )
            )
        }
        
        // Область для изображения комикса
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f)
                .padding(8.dp)
                .background(Color.DarkGray),
            contentAlignment = Alignment.Center
        ) {
            if (imageBitmap != null) {
                AndroidView(
                    factory = { ctx ->
                        ImageView(ctx).apply {
                            scaleType = ImageView.ScaleType.FIT_CENTER
                            setImageBitmap(imageBitmap)
                        }
                    },
                    modifier = Modifier.fillMaxSize()
                )
            } else {
                CircularProgressIndicator()
            }
        }
        
        // Нижняя панель с элементами управления
            AnimatedVisibility(
            visible = showControls,
            enter = slideInVertically { it },
            exit = slideOutVertically { it }
        ) {
            BottomAppBar(
                containerColor = Color.Black.copy(alpha = 0.8f)
            ) {
                // Прогресс бар
                if (totalPages > 0) {
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .padding(horizontal = 16.dp)
                    ) {
                        LinearProgressIndicator(
                            progress = { (currentPage + 1).toFloat() / totalPages.toFloat() },
                            modifier = Modifier.fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = "Стр. ${currentPage + 1} / $totalPages",
                            color = Color.White,
                            style = MaterialTheme.typography.bodySmall,
                            textAlign = TextAlign.Center,
                            modifier = Modifier.fillMaxWidth()
                        )
                    }
                }
                
                // Кнопки навигации
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    // Кнопка "Предыдущая страница"
                    Button(
                        onClick = { viewModel.setPage(currentPage - 1) },
                        enabled = currentPage > 0
                    ) {
                        Text("← Предыдущая")
                    }
                    
                    // Информация о странице
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            text = "${currentPage + 1} / $totalPages",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        Text(
                            text = "${((currentPage + 1) * 100 / totalPages)}%",
                            color = Color.Gray,
                            style = MaterialTheme.typography.bodySmall
                        )
                    }
                    
                    // Кнопка "Следующая страница"
                    Button(
                        onClick = { viewModel.setPage(currentPage + 1) },
                        enabled = currentPage < totalPages - 1
                    ) {
                        Text("Следующая →")
                    }
                }
                
                Spacer(modifier = Modifier.height(8.dp))
                
                // Дополнительные элементы управления
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    // Режим чтения
                    var readingModeExpanded by remember { mutableStateOf(false) }
                    ExposedDropdownMenuBox(
                        expanded = readingModeExpanded,
                        onExpandedChange = { readingModeExpanded = it }
                    ) {
                        OutlinedButton(
                            onClick = { readingModeExpanded = true }
                        ) {
                            Text(
                                when (readingMode) {
                                    "page" -> "📱"
                                    "continuous" -> "📄"
                                    "webtoon" -> "📜"
                                    else -> "📱"
                                }
                            )
                        }
                        
                        ExposedDropdownMenu(
                            expanded = readingModeExpanded,
                            onDismissRequest = { readingModeExpanded = false }
                        ) {
                            DropdownMenuItem(
                                text = { Text("📱 По страницам") },
                                onClick = {
                                    readingMode = "page"
                                    readingModeExpanded = false
                                }
                            )
                            DropdownMenuItem(
                                text = { Text("📄 Непрерывно") },
                                onClick = {
                                    readingMode = "continuous"
                                    readingModeExpanded = false
                                }
                            )
                            DropdownMenuItem(
                                text = { Text("📜 Вебтун") },
                                onClick = {
                                    readingMode = "webtoon"
                                    readingModeExpanded = false
                                }
                            )
                        }
                    }
                    
                    // Масштабирование
                    IconButton(
                        onClick = { zoomLevel = if (zoomLevel < 2.0f) zoomLevel + 0.1f else 1.0f }
                    ) {
                        Text("🔍", style = MaterialTheme.typography.titleMedium)
                    }
                    
                    // Поворот
                    IconButton(
                        onClick = { /* Поворот */ }
                    ) {
                        Text("🔄", style = MaterialTheme.typography.titleMedium)
                    }
                    
                    // Закладка
                    IconButton(
                        onClick = {
                            if (isBookmarked) {
                                val bm = bookmarks.find { it.page == currentPage }
                                if (bm != null) viewModel.removeBookmark(bm)
                            } else {
                                viewModel.addBookmark()
                            }
                        }
                    ) {
                        Text(
                            if (isBookmarked) "🔖" else "📖",
                            style = MaterialTheme.typography.titleMedium
                        )
                    }
                    
                    // Быстрая навигация по закладкам
                    IconButton(
                        onClick = { showBookmarksDialog = true }
                    ) {
                        Text("⭐", style = MaterialTheme.typography.titleMedium)
                    }
                }
                
                // Дополнительные кнопки
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    OutlinedButton(
                        onClick = { viewModel.setPage(0) }
                    ) {
                        Text("⏮️ В начало")
                    }
                    
                    OutlinedButton(
                        onClick = { viewModel.setPage(totalPages / 2) }
                    ) {
                        Text("⏸️ Середина")
                    }
                    
                    OutlinedButton(
                        onClick = { viewModel.setPage(totalPages - 1) }
                    ) {
                        Text("⏭️ В конец")
                    }
                }
            }
        }
    }

    if (showBookmarksDialog) {
        AlertDialog(
            onDismissRequest = { showBookmarksDialog = false },
            title = { Text("Закладки") },
            text = {
                if (bookmarks.isEmpty()) {
                    Text("Нет закладок")
                } else {
                    Column {
                        bookmarks.forEach { bm ->
                            Row(
                                modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp),
                                horizontalArrangement = Arrangement.SpaceBetween,
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Text("Страница ${bm.page + 1}", modifier = Modifier.weight(1f))
                                IconButton(onClick = {
                                    viewModel.setPage(bm.page)
                                    showBookmarksDialog = false
                                }) {
                                    Text("Перейти")
                                }
                                IconButton(onClick = { viewModel.removeBookmark(bm) }) {
                                    Text("❌")
                                }
                            }
                        }
                    }
                }
            },
            confirmButton = {
                TextButton(onClick = { showBookmarksDialog = false }) {
                    Text("Закрыть")
                }
            }
        )
    }

    DisposableEffect(Unit) {
        viewModel.onStartReading()
        onDispose {
            viewModel.onStopReading()
        }
    }
}


