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
import androidx.compose.material.icons.filled.NavigateBefore
import androidx.compose.material.icons.filled.NavigateNext
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.BookmarkBorder
import androidx.compose.material.icons.filled.ZoomIn
import androidx.compose.material.icons.filled.ZoomOut
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material.icons.filled.Share
import androidx.compose.material.icons.filled.MoreVert
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Settings
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Search
import androidx.compose.material.icons.filled.FilterList
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Delete
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Book
import androidx.compose.material.icons.filled.Language

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
    val pageCount = comic?.pageCount ?: 1

    val cbzProvider = remember(filePath) {
        if (filePath.endsWith(".cbz", true)) CbzPageProvider(filePath) else null
    }
    val bookmarks by viewModel.bookmarks.collectAsState()
    val currentPage by viewModel.currentPage.collectAsState()
    val isBookmarked = bookmarks.any { it.page == currentPage }
    var showBookmarksDialog by remember { mutableStateOf(false) }

    LaunchedEffect(comicId) {
        viewModel.init(comicId, 0, currentPage)
    }

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
                        Icon(Icons.Default.ArrowBack, contentDescription = "Назад", tint = Color.White)
                    }
                },
                actions = {
                    IconButton(onClick = { viewModel.toggleBookmark(currentPage) }) {
                        Icon(
                            imageVector = if (isBookmarked) Icons.Default.Bookmark else Icons.Default.BookmarkBorder,
                            contentDescription = "Закладка",
                            tint = Color.White
                        )
                    }
                    IconButton(onClick = { /* TODO: Настройки */ }) {
                        Icon(Icons.Default.Settings, contentDescription = "Настройки", tint = Color.White)
                    }
                },
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = Color.Black.copy(alpha = 0.8f)
                )
            )
        }
        
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
                        update = { imageView ->
                            val bitmap = cbzProvider.getPage(currentPage)
                            imageView.setImageBitmap(bitmap)
                        },
                        modifier = Modifier.weight(1f).fillMaxWidth()
                    )
                } else {
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
                if (cbzProvider != null && pageCount > 0) {
                    Spacer(modifier = Modifier.height(8.dp))
                    LazyRow(
                        modifier = Modifier.fillMaxWidth().height(96.dp),
                        horizontalArrangement = Arrangement.spacedBy(8.dp),
                        contentPadding = PaddingValues(horizontal = 8.dp)
                    ) {
                        items(pageCount) { idx ->
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
        
        AnimatedVisibility(
            visible = showControls,
            enter = slideInVertically { it },
            exit = slideOutVertically { it }
        ) {
            BottomAppBar(
                containerColor = Color.Black.copy(alpha = 0.8f)
            ) {
                Column(
                    modifier = Modifier
                        .weight(1f)
                        .padding(horizontal = 16.dp)
                ) {
                    LinearProgressIndicator(
                        progress = { (currentPage + 1).toFloat() / pageCount.toFloat() },
                        modifier = Modifier.fillMaxWidth()
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Text(
                        text = "Стр. ${currentPage + 1} / $pageCount",
                        color = Color.White,
                        style = MaterialTheme.typography.bodySmall,
                        textAlign = TextAlign.Center,
                        modifier = Modifier.fillMaxWidth()
                    )
                }
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Button(
                        onClick = { viewModel.setPage(currentPage - 1) },
                        enabled = currentPage > 0
                    ) {
                        Text("← Предыдущая")
                    }
                    
                    Column(
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            text = "${currentPage + 1} / $pageCount",
                            color = Color.White,
                            style = MaterialTheme.typography.bodyMedium
                        )
                        Text(
                            text = "${((currentPage + 1) * 100 / pageCount)}%",
                            color = Color.Gray,
                            style = MaterialTheme.typography.bodySmall
                        )
                    }
                    
                    Button(
                        onClick = { viewModel.setPage(currentPage + 1) },
                        enabled = currentPage < pageCount - 1
                    ) {
                        Text("Следующая →")
                    }
                }
                
                Spacer(modifier = Modifier.height(8.dp))
                
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
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
                    
                    IconButton(onClick = { zoomLevel = (zoomLevel + 0.1f).coerceAtMost(2.0f) }) {
                        Icon(Icons.Default.ZoomIn, contentDescription = "Увеличить", tint = Color.White)
                    }
                    IconButton(onClick = { zoomLevel = (zoomLevel - 0.1f).coerceAtLeast(0.5f) }) {
                        Icon(Icons.Default.ZoomOut, contentDescription = "Уменьшить", tint = Color.White)
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
                Column {
                    if (bookmarks.isEmpty()) {
                        Text("Нет закладок")
                    } else {
                        bookmarks.forEach { bookmark ->
                            Text("Страница ${bookmark.page + 1}")
                        }
                    }
                }
            },
            confirmButton = {
                Button(onClick = { showBookmarksDialog = false }) { Text("ОК") }
            }
        )
    }
}


