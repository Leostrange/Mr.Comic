package com.example.mrcomic.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.gestures.detectHorizontalDragGestures
import androidx.compose.foundation.gestures.detectTransformGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Bookmark
import androidx.compose.material.icons.filled.Menu
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.mrcomic.theme.ui.viewmodel.ComicLibraryViewModel
import com.example.mrcomic.data.ColorFilterType
import com.example.mrcomic.data.PageTransition
import com.example.mrcomic.data.ReaderSettings
import com.example.mrcomic.viewmodel.SettingsViewModel
import kotlinx.coroutines.launch
import androidx.compose.ui.graphics.ColorMatrix
import androidx.compose.ui.graphics.ColorFilter
import com.example.mrcomic.data.GestureSettings
import com.example.mrcomic.data.GestureType
import com.example.mrcomic.data.GestureAction
import androidx.compose.animation.AnimatedContent
import androidx.compose.animation.ExperimentalAnimationApi
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.with
import androidx.compose.animation.slideInHorizontally
import androidx.compose.animation.slideOutHorizontally
import android.content.Context
import android.media.SoundPool
import android.os.Build
import android.os.VibrationEffect
import android.os.Vibrator
import androidx.compose.ui.platform.LocalContext
import com.example.mrcomic.theme.ui.viewmodel.StatsViewModel
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.compose.ui.semantics.contentDescription
import androidx.compose.ui.semantics.semantics
import androidx.compose.ui.res.stringResource
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.drawPath
import androidx.compose.material3.Button
import androidx.compose.material3.Text
import androidx.compose.foundation.layout.Row
import androidx.compose.runtime.getValue

enum class ReadingMode { PAGE, DOUBLE_PAGE, VERTICAL, MANGA }

fun buildReaderCss(settings: ReaderSettings): String {
    val margin = "${settings.pageMargin}px"
    val columns = settings.columns
    val userCss = settings.customCss
    return """
        body {
            margin: $margin;
            padding: 0;
            -webkit-column-gap: $margin;
            -webkit-column-count: $columns;
            column-gap: $margin;
            column-count: $columns;
        }
        $userCss
    """.trimIndent()
}

@OptIn(ExperimentalMaterial3Api::class, ExperimentalAnimationApi::class)
@Composable
fun ComicReaderScreen(
    comicId: String,
    viewModel: ComicLibraryViewModel,
    initialPage: Int = 0,
    settingsViewModel: SettingsViewModel
) {
    val comics by viewModel.comics.observeAsState(emptyList())
    val comic = comics.find { it.id == comicId } ?: return
    val readerSettings by settingsViewModel.readerSettings.collectAsState()
    val gestureSettings by settingsViewModel.gestureSettings.collectAsState()
    val scaffoldState = rememberScaffoldState()
    val scope = rememberCoroutineScope()
    var currentMode by remember { mutableStateOf(ReadingMode.PAGE) }
    var isEInkMode by remember { mutableStateOf(false) }
    var scale by remember { mutableStateOf(1f) }
    var offset by remember { mutableStateOf(Offset.Zero) }
    var currentPage by remember { mutableStateOf(initialPage) }
    val pages = remember { (0 until (comic.pageCount ?: 1)).toList() } // TODO: заменить на реальные пути страниц
    var showBookmarks by remember { mutableStateOf(false) }
    val bookmarks = remember { mutableStateListOf<Int>() } // TODO: интеграция с ViewModel
    // Цветовой фильтр
    val colorMatrix = remember(readerSettings.colorFilter) {
        when (readerSettings.colorFilter) {
            ColorFilterType.SEPIA -> ColorMatrix().apply {
                setToSaturation(0f)
                val sepia = floatArrayOf(
                    1f, 0f, 0f, 0f, 30f,
                    0f, 1f, 0f, 0f, 20f,
                    0f, 0f, 1f, 0f, -10f,
                    0f, 0f, 0f, 1f, 0f
                )
                set(sepia)
            }
            ColorFilterType.GRAYSCALE -> ColorMatrix().apply { setToSaturation(0f) }
            else -> null
        }
    }
    // Яркость
    val brightness = readerSettings.brightness
    val context = LocalContext.current
    // --- SoundPool и Vibrator ---
    val soundPool = remember { SoundPool.Builder().setMaxStreams(1).build() }
    val soundIdFlip = remember { soundPool.load(context, com.example.mrcomic.R.raw.flip_sound, 1) }
    val soundIdSoft = remember { soundPool.load(context, com.example.mrcomic.R.raw.soft_sound, 1) }
    val vibrator = remember { context.getSystemService(Context.VIBRATOR_SERVICE) as Vibrator }
    // --- Вспомогательные функции ---
    fun playReaderSound() {
        if (!readerSettings.soundEnabled) return
        when (readerSettings.soundType) {
            com.example.mrcomic.data.ReaderSoundType.FLIP -> soundPool.play(soundIdFlip, 1f, 1f, 0, 0, 1f)
            com.example.mrcomic.data.ReaderSoundType.SOFT -> soundPool.play(soundIdSoft, 1f, 1f, 0, 0, 1f)
            else -> {}
        }
    }
    fun vibrateReader() {
        if (!readerSettings.vibrationEnabled) return
        val pattern = when (readerSettings.vibrationPattern) {
            com.example.mrcomic.data.ReaderVibrationPattern.SHORT -> 30L
            com.example.mrcomic.data.ReaderVibrationPattern.LONG -> 100L
            else -> 0L
        }
        if (pattern > 0) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                vibrator.vibrate(VibrationEffect.createOneShot(pattern, VibrationEffect.DEFAULT_AMPLITUDE))
            } else {
                @Suppress("DEPRECATION")
                vibrator.vibrate(pattern)
            }
        }
    }
    // pointerInput для кастомных жестов
    val gestureModifier = Modifier.pointerInput(gestureSettings) {
        detectTapGestures(
            onDoubleTap = {
                when (gestureSettings.gestureMap[GestureType.DOUBLE_TAP]) {
                    GestureAction.ZOOM -> scale = if (scale == 1f) 2f else 1f
                    GestureAction.ADD_BOOKMARK -> {
                        bookmarks.add(currentPage)
                        playReaderSound()
                        vibrateReader()
                    }
                    else -> {}
                }
            },
            onLongPress = {
                when (gestureSettings.gestureMap[GestureType.LONG_PRESS]) {
                    GestureAction.ADD_BOOKMARK -> {
                        bookmarks.add(currentPage)
                        playReaderSound()
                        vibrateReader()
                    }
                    else -> {}
                }
            }
        )
    }.pointerInput(gestureSettings) {
        detectHorizontalDragGestures { _, dragAmount ->
            if (dragAmount < -50) {
                when (gestureSettings.gestureMap[GestureType.SWIPE_LEFT]) {
                    GestureAction.NEXT_PAGE -> {
                        if (currentPage < pages.lastIndex) currentPage++
                        playReaderSound()
                        vibrateReader()
                    }
                    GestureAction.ZOOM -> scale = (scale * 1.2f).coerceAtMost(3f)
                    else -> {}
                }
            }
            if (dragAmount > 50) {
                when (gestureSettings.gestureMap[GestureType.SWIPE_RIGHT]) {
                    GestureAction.PREV_PAGE -> {
                        if (currentPage > 0) currentPage--
                        playReaderSound()
                        vibrateReader()
                    }
                    GestureAction.ZOOM -> scale = (scale / 1.2f).coerceAtLeast(1f)
                    else -> {}
                }
            }
        }
    }

    val lifecycleOwner = LocalLifecycleOwner.current
    val statsViewModel: StatsViewModel = viewModel()
    val readingStartTime = remember { System.currentTimeMillis() }
    DisposableEffect(comicId) {
        onDispose {
            val timeSpent = (System.currentTimeMillis() - readingStartTime) / 1000
            statsViewModel.logReadingTime(comicId, timeSpent)
        }
    }

    var isDrawingMode by remember { mutableStateOf(false) }
    val path = remember { Path() }

    Scaffold(
        topBar = {
            TopAppBar(
                title = { Text(comic.title, modifier = Modifier.semantics { contentDescription = comic.title }) },
                navigationIcon = {
                    IconButton(
                        onClick = { scope.launch { scaffoldState.drawerState.open() } },
                        modifier = Modifier.semantics { contentDescription = stringResource(R.string.menu) }
                    ) {
                        Icon(Icons.Default.Menu, contentDescription = stringResource(R.string.menu))
                    }
                },
                actions = {
                    IconButton(
                        onClick = { showBookmarks = true },
                        modifier = Modifier.semantics { contentDescription = stringResource(R.string.bookmarks) }
                    ) {
                        Icon(Icons.Default.Bookmark, contentDescription = stringResource(R.string.bookmarks))
                    }
                }
            )
        },
        scaffoldState = scaffoldState,
        drawerContent = {
            Column(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(16.dp)
            ) {
                Text(stringResource(R.string.reading_modes), style = MaterialTheme.typography.headlineMedium)
                Button(onClick = { currentMode = ReadingMode.PAGE; scope.launch { scaffoldState.drawerState.close() } }, modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.mode_page) }) { Text(stringResource(R.string.mode_page)) }
                Button(onClick = { currentMode = ReadingMode.DOUBLE_PAGE; scope.launch { scaffoldState.drawerState.close() } }, modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.mode_double_page) }) { Text(stringResource(R.string.mode_double_page)) }
                Button(onClick = { currentMode = ReadingMode.VERTICAL; scope.launch { scaffoldState.drawerState.close() } }, modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.mode_vertical) }) { Text(stringResource(R.string.mode_vertical)) }
                Button(onClick = { currentMode = ReadingMode.MANGA; scope.launch { scaffoldState.drawerState.close() } }, modifier = Modifier.fillMaxWidth().semantics { contentDescription = stringResource(R.string.mode_manga) }) { Text(stringResource(R.string.mode_manga)) }
                Spacer(modifier = Modifier.height(16.dp))
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Text(stringResource(R.string.eink_mode))
                    Switch(
                        checked = isEInkMode,
                        onCheckedChange = { isEInkMode = it },
                        modifier = Modifier.semantics { contentDescription = stringResource(R.string.eink_mode) }
                    )
                }
            }
        }
    ) { padding ->
        Box(
            modifier = Modifier
                .fillMaxSize()
                .background(if (isEInkMode) Color.White else Color.Black)
                .padding(padding)
                .padding(horizontal = readerSettings.pageMargin.dp)
                .then(gestureModifier)
                .pointerInput(Unit) {
                    detectDragGestures(
                        onDragStart = { if (isDrawingMode) path.moveTo(it.x, it.y) },
                        onDrag = { change, _ -> if (isDrawingMode) path.lineTo(change.position.x, change.position.y) }
                    )
                }
        ) {
            when (currentMode) {
                ReadingMode.PAGE -> {
                    AnimatedContent(
                        targetState = currentPage,
                        transitionSpec = {
                            when (readerSettings.pageTransition) {
                                PageTransition.SLIDE -> slideInHorizontally(animationSpec = tween(300)) { it } with slideOutHorizontally(animationSpec = tween(300)) { -it }
                                PageTransition.FADE -> fadeIn(animationSpec = tween(300)) with fadeOut(animationSpec = tween(300))
                                PageTransition.NONE -> (fadeIn(animationSpec = tween(0)) with fadeOut(animationSpec = tween(0)))
                            }
                        }
                    ) { page ->
                        PageView(
                            page = pages.getOrNull(page) ?: 0,
                            scale = scale,
                            offset = offset,
                            isEInk = isEInkMode,
                            brightness = brightness,
                            colorFilter = colorMatrix,
                            onSwipe = { delta ->
                                if (delta < 0 && currentPage < pages.lastIndex) currentPage++
                                if (delta > 0 && currentPage > 0) currentPage--
                            },
                            onZoom = { s, o -> scale = s; offset = o }
                        )
                    }
                }
                ReadingMode.DOUBLE_PAGE -> {
                    // Две страницы рядом
                    Row(modifier = Modifier.fillMaxSize()) {
                        PageView(page = pages.getOrNull(currentPage) ?: 0, scale = scale, offset = offset, isEInk = isEInkMode, brightness = brightness, colorFilter = colorMatrix)
                        if (currentPage + 1 <= pages.lastIndex)
                            PageView(page = pages.getOrNull(currentPage + 1) ?: 0, scale = scale, offset = offset, isEInk = isEInkMode, brightness = brightness, colorFilter = colorMatrix)
                    }
                }
                ReadingMode.VERTICAL -> {
                    // Вертикальный режим (лента)
                    LazyColumn(modifier = Modifier.fillMaxSize()) {
                        items(pages.size) { idx ->
                            PageView(page = pages[idx], scale = 1f, offset = Offset.Zero, isEInk = isEInkMode, brightness = brightness, colorFilter = colorMatrix)
                        }
                    }
                }
                ReadingMode.MANGA -> {
                    // Манга-режим (справа-налево)
                    PageView(
                        page = pages.getOrNull(currentPage) ?: 0,
                        scale = scale,
                        offset = offset,
                        isEInk = isEInkMode,
                        brightness = brightness,
                        colorFilter = colorMatrix,
                        onSwipe = { delta ->
                            if (delta > 0 && currentPage < pages.lastIndex) currentPage++
                            if (delta < 0 && currentPage > 0) currentPage--
                        },
                        onZoom = { s, o -> scale = s; offset = o }
                    )
                }
            }
            if (showBookmarks) {
                BookmarksDialog(
                    bookmarks = bookmarks,
                    onAdd = { bookmarks.add(currentPage) },
                    onGoTo = { page -> currentPage = page; showBookmarks = false },
                    onClose = { showBookmarks = false }
                )
            }
            // Для текстовых форматов (epub/mobi) — применяем шрифт, размер и CSS
            if (comic.filePath.endsWith(".epub") || comic.filePath.endsWith(".mobi")) {
                val css = buildReaderCss(readerSettings)
                // Пример для WebView:
                // val htmlWithCss = "<style>$css</style>" + epubHtmlContent
                // webView.loadDataWithBaseURL(null, htmlWithCss, "text/html", "UTF-8", null)
                // Если используется Compose WebView или HtmlView, вставьте аналогично
            }
            // --- Рендеринг .txt ---
            if (comic.filePath.endsWith(".txt") || comic.format.equals("txt", ignoreCase = true)) {
                val textContent = remember {
                    try {
                        java.io.File(comic.filePath).readText()
                    } catch (e: Exception) {
                        "[Ошибка чтения файла]"
                    }
                }
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .background(Color.White)
                        .padding(16.dp)
                ) {
                    Text(
                        text = textContent,
                        fontSize = readerSettings.fontSize.sp,
                        fontFamily = when (readerSettings.fontStyle) {
                            "Serif" -> FontFamily.Serif
                            "Sans" -> FontFamily.SansSerif
                            else -> FontFamily.Default
                        },
                        color = Color.Black
                    )
                }
                return
            }
            if (isDrawingMode) {
                Canvas(modifier = Modifier.fillMaxSize()) {
                    drawPath(path, Color.Black, style = androidx.compose.ui.graphics.drawscope.Stroke(width = 5f))
                }
            }
            Button(
                onClick = {
                    if (isDrawingMode) {
                        viewModel.saveAnnotation(
                            Annotation(
                                comicId = comicId,
                                pageIndex = currentPage,
                                drawingPath = path.toString(),
                                timestamp = System.currentTimeMillis()
                            )
                        )
                        path.reset()
                    }
                    isDrawingMode = !isDrawingMode
                },
                modifier = Modifier.align(Alignment.BottomEnd)
            ) {
                Text(if (isDrawingMode) stringResource(R.string.save_drawing) else stringResource(R.string.start_drawing))
            }
            Button(
                onClick = { viewModel.processOcr(comicId, currentPage) },
                modifier = Modifier.align(Alignment.TopEnd)
            ) {
                Text(stringResource(R.string.extract_text))
            }
            if (!isDrawingMode) {
                val annotation = viewModel.getAnnotation(comicId, currentPage)
                annotation?.drawingPath?.let { drawingPath ->
                    // Пример: десериализация drawingPath в Path и отрисовка
                    // drawPath(deserializePath(drawingPath), Color.Red, style = Stroke(width = 3f))
                }
            }
        }
    }
}

@Composable
fun PageView(
    page: Int,
    scale: Float,
    offset: Offset,
    isEInk: Boolean,
    brightness: Float = 1f,
    colorFilter: ColorMatrix? = null,
    onSwipe: ((Float) -> Unit)? = null,
    onZoom: ((Float, Offset) -> Unit)? = null
) {
    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(if (isEInk) Color.White else Color.Black)
            .graphicsLayer(alpha = brightness)
            .pointerInput(Unit) {
                if (onSwipe != null) {
                    detectHorizontalDragGestures { _, dragAmount ->
                        onSwipe(dragAmount)
                    }
                }
                if (onZoom != null) {
                    detectTransformGestures { _, pan, zoom, _ ->
                        onZoom(scale * zoom, offset + pan)
                    }
                }
            }
            .semantics { contentDescription = "${stringResource(R.string.page)} $page" },
        contentAlignment = Alignment.Center
    ) {
        // TODO: Заменить на реальную загрузку изображения страницы с применением colorFilter
        Text("${stringResource(R.string.page)} $page", color = if (isEInk) Color.Black else Color.White)
    }
}

@Composable
fun BookmarksDialog(
    bookmarks: List<Int>,
    onAdd: () -> Unit,
    onGoTo: (Int) -> Unit,
    onClose: () -> Unit
) {
    AlertDialog(
        onDismissRequest = onClose,
        title = { Text(stringResource(R.string.bookmarks), modifier = Modifier.semantics { contentDescription = stringResource(R.string.bookmarks) }) },
        text = {
            Column {
                bookmarks.forEach { page ->
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clickable { onGoTo(page) }
                            .padding(8.dp)
                            .semantics { contentDescription = "${stringResource(R.string.page)} $page" }
                    ) {
                        Text("${stringResource(R.string.page)} $page")
                    }
                }
            }
        },
        confirmButton = {
            Button(onClick = onAdd, modifier = Modifier.semantics { contentDescription = stringResource(R.string.add_current) }) { Text(stringResource(R.string.add_current)) }
        },
        dismissButton = {
            Button(onClick = onClose, modifier = Modifier.semantics { contentDescription = stringResource(R.string.close) }) { Text(stringResource(R.string.close)) }
        }
    )
} 