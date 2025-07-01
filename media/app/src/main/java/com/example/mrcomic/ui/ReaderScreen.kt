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

    // Получаем информацию о комиксе из базы данных
    val comic by viewModel.comic.collectAsState()
    val filePath = comic?.filePath ?: ""
    val comicTitle = comic?.title ?: "Загрузка..."

    // --- CBZ поддержка ---
    val cbzProvider = remember(filePath) {
        if (filePath.endsWith(".cbz", true)) CbzPageProvider(filePath) else null
    }
    val bookmarks by viewModel.bookmarks.collectAsState()
    val currentPage by viewModel.currentPage.collectAsState()
    val isBookmarked = bookmarks.any { it.page == currentPage }
    var showBookmarksDialog by remember { mutableStateOf(false) }

    // Инициализация ViewModel при открытии
    LaunchedEffect(comicId, currentPage) {
        // TODO: получить сохранённую страницу из базы, сейчас всегда 0
        viewModel.init(comicId, 0, currentPage)
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
            Column(
                modifier = Modifier.fillMaxSize(),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                if (filePath.endsWith(".pdf", true) || filePath.endsWith(".cbr", true)) {
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center,
                        modifier = Modifier.weight(1f)
                    ) {
                        Text(
                            text = "🚧",
                            style = MaterialTheme.typography.displayLarge
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "Пока поддерживается только CBZ",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyLarge,
                            textAlign = TextAlign.Center
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = "Поддержка PDF и CBR появится в будущих версиях.",
                            color = Color.Gray,
                            style = MaterialTheme.typography.bodyMedium,
                            textAlign = TextAlign.Center
                        )
                    }
                } else if (cbzProvider != null) {
                    AndroidView(
                        factory = { ctx ->
                            ImageView(ctx).apply {
                                scaleType = ImageView.ScaleType.FIT_CENTER
                            }
                        },
                        modifier = Modifier.weight(1f).fillMaxWidth()
                    )
                } else {
                    // Заглушка для изображения
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally,
                        verticalArrangement = Arrangement.Center,
                        modifier = Modifier.weight(1f)
                    ) {
                        Text(
                            text = "📖",
                            style = MaterialTheme.typography.displayLarge
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "Страница ${currentPage + 1}",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyLarge,
                            textAlign = TextAlign.Center
                        )
                        Spacer(modifier = Modifier.height(8.dp))
                        Text(
                            text = if (filePath.endsWith(".cbz", true)) "CBZ-файл не найден или повреждён" else "Здесь будет изображение комикса",
                            color = Color.Gray,
                            style = MaterialTheme.typography.bodyMedium,
                            textAlign = TextAlign.Center
                        )
                        
                        // Индикатор масштаба
                        if (zoomLevel != 1.0f) {
                            Spacer(modifier = Modifier.height(8.dp))
                            Text(
                                text = "Масштаб: ${String.format("%.1f", zoomLevel)}x",
                                color = Color.Gray,
                                style = MaterialTheme.typography.bodySmall
                            )
                        }
                    }
                }
                // --- Миниатюры ---
                if (cbzProvider != null && currentPage > 0) {
                    Spacer(modifier = Modifier.height(8.dp))
                    LazyRow(
                        modifier = Modifier.fillMaxWidth().height(96.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        contentPadding = PaddingValues(horizontal = 8.dp)
                    ) {
                        items(currentPage + 1) { idx ->
                            val thumb = remember(filePath, idx) { cbzProvider.getThumbnail(idx, 96) }
                            Card(
                                modifier = Modifier
                                    .size(96.dp)
                                    .then(if (idx == currentPage) Modifier.border(2.dp, MaterialTheme.colorScheme.primary) else Modifier),
                                onClick = { viewModel.setPage(idx) }
                            ) {
                                if (thumb != null) {
                                    AndroidView(
                                        factory = { ctx ->
                                            ImageView(ctx).apply {
                                                scaleType = ImageView.ScaleType.CENTER_CROP
                                                setImageBitmap(thumb)
                                            }
                                        },
                                        modifier = Modifier.fillMaxSize()
                                    )
                                } else {
                                    Box(
                                        modifier = Modifier.fillMaxSize(),
                                        contentAlignment = Alignment.Center
                                    ) {
                                        Text("—", color = Color.Gray)
                                    }
                                }
                            }
                        }
                    }
                }
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
                if (currentPage > 0) {
                    Column(
                        modifier = Modifier
                            .weight(1f)
                            .padding(horizontal = 16.dp)
                    ) {
                        LinearProgressIndicator(
                            progress = { (currentPage + 1).toFloat() / currentPage.toFloat() },
                            modifier = Modifier.fillMaxWidth()
                        )
                        Spacer(modifier = Modifier.height(4.dp))
                        Text(
                            text = "Стр. ${currentPage + 1} / $currentPage",
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
                            text = "${currentPage + 1} / $currentPage",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        Text(
                            text = "${((currentPage + 1) * 100 / currentPage)}%",
                            color = Color.Gray,
                            style = MaterialTheme.typography.bodySmall
                        )
                    }
                    
                    // Кнопка "Следующая страница"
                    Button(
                        onClick = { viewModel.setPage(currentPage + 1) },
                        enabled = currentPage < currentPage
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
                        onClick = { viewModel.setPage(currentPage / 2) }
                    ) {
                        Text("⏸️ Середина")
                    }
                    
                    OutlinedButton(
                        onClick = { viewModel.setPage(currentPage) }
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
package com.example.mrcomic.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import com.example.mrcomic.ui.theme.MrComicTheme

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun ReaderScreen(
    comicId: Long,
    onNavigateBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text("Reader") },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.Default.ArrowBack, contentDescription = "Back")
                    }
                }
            )
        },
        content = { paddingValues ->
            Column(
                modifier = modifier
                    .fillMaxSize()
                    .padding(paddingValues)
                    .padding(16.dp)
            ) {
                Text("Reading Comic ID: $comicId", style = MaterialTheme.typography.headlineMedium)
                Spacer(modifier = Modifier.height(16.dp))
                // Placeholder for comic content based on mockups
                Text("Comic content will be displayed here.")
            }
        }
    )
}

@Preview(showBackground = true, widthDp = 360, heightDp = 640)
@Composable
fun ReaderScreenVerticalPreview() {
    MrComicTheme {
        ReaderScreen(comicId = 1L, onNavigateBack = {})
    }
}

@Preview(showBackground = true, widthDp = 640, heightDp = 360)
@Composable
fun ReaderScreenHorizontalPreview() {
    MrComicTheme {
        ReaderScreen(comicId = 1L, onNavigateBack = {})
    }
}


