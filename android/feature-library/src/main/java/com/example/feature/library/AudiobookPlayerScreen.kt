package com.example.feature.library

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.aspectRatio
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material.icons.filled.MenuBook
import androidx.compose.material.icons.filled.Pause
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.SkipNext
import androidx.compose.material.icons.filled.SkipPrevious
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilledIconButton
import androidx.compose.material3.FilledTonalButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.ListItem
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Scaffold
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.material3.TopAppBar
import androidx.compose.material3.TopAppBarDefaults
import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.hilt.navigation.compose.hiltViewModel
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import coil.compose.AsyncImage

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun AudiobookPlayerScreen(
    audiobookId: String,
    onNavigateBack: () -> Unit,
    viewModel: AudiobookPlayerViewModel = hiltViewModel()
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()
    var showChapters by rememberSaveable { mutableStateOf(false) }
    var showSettings by rememberSaveable { mutableStateOf(true) }

    DisposableEffect(Unit) {
        viewModel.connect()
        onDispose { viewModel.saveProgress() }
    }

    LaunchedEffect(audiobookId) {
        viewModel.loadAndPlay(audiobookId)
    }

    val audiobook = uiState.audiobook

    Scaffold(
        containerColor = MaterialTheme.colorScheme.background,
        topBar = {
            TopAppBar(
                colors = TopAppBarDefaults.topAppBarColors(
                    containerColor = MaterialTheme.colorScheme.background
                ),
                title = {
                    Text(
                        text = audiobook?.title ?: "",
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                },
                navigationIcon = {
                    IconButton(onClick = onNavigateBack) {
                        Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = "Назад")
                    }
                }
            )
        }
    ) { padding ->
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(padding)
                .navigationBarsPadding(),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            Box(
                modifier = Modifier
                    .padding(horizontal = 48.dp, vertical = 16.dp)
                    .fillMaxWidth()
                    .aspectRatio(1f)
                    .clip(RoundedCornerShape(18.dp))
                    .background(MaterialTheme.colorScheme.surface),
                contentAlignment = Alignment.Center
            ) {
                if (audiobook?.coverUri != null) {
                    AsyncImage(
                        model = audiobook.coverUri,
                        contentDescription = audiobook.title,
                        contentScale = ContentScale.Crop,
                        modifier = Modifier.fillMaxSize()
                    )
                } else {
                    Icon(
                        imageVector = Icons.Default.Headphones,
                        contentDescription = null,
                        modifier = Modifier.size(84.dp),
                        tint = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }

            Text(
                text = audiobook?.title ?: "",
                style = MaterialTheme.typography.titleLarge,
                fontWeight = FontWeight.Bold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis,
                modifier = Modifier.padding(horizontal = 24.dp)
            )
            Spacer(Modifier.height(4.dp))
            if (audiobook != null && audiobook.chapters.isNotEmpty()) {
                val chapter = audiobook.chapters.getOrNull(uiState.currentChapterIndex)
                Text(
                    text = chapter?.title ?: "Глава ${uiState.currentChapterIndex + 1}",
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 1,
                    overflow = TextOverflow.Ellipsis,
                    modifier = Modifier.padding(horizontal = 24.dp)
                )
            }

            Spacer(Modifier.height(14.dp))
            if (uiState.durationMs > 0) {
                val progress = (uiState.positionMs.toFloat() / uiState.durationMs.toFloat()).coerceIn(0f, 1f)
                Slider(
                    value = progress,
                    onValueChange = { frac ->
                        viewModel.seekTo((frac * uiState.durationMs).toLong())
                    },
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 24.dp)
                )
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 28.dp),
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        text = uiState.positionMs.toTimeString(),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                    Text(
                        text = uiState.durationMs.toTimeString(),
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }

            Spacer(Modifier.height(8.dp))
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(
                    onClick = {
                        showSettings = !showSettings
                        if (showSettings) showChapters = false
                    }
                ) {
                    Icon(Icons.Default.Tune, contentDescription = "Аудионастройки", modifier = Modifier.size(28.dp))
                }
                Spacer(Modifier.width(4.dp))
                IconButton(onClick = viewModel::skipPreviousChapter) {
                    Icon(Icons.Default.SkipPrevious, contentDescription = "Предыдущая глава", modifier = Modifier.size(36.dp))
                }
                Spacer(Modifier.width(16.dp))
                FilledIconButton(
                    onClick = { if (uiState.isPlaying) viewModel.pause() else viewModel.play() },
                    modifier = Modifier.size(64.dp),
                    shape = CircleShape
                ) {
                    Icon(
                        imageVector = if (uiState.isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow,
                        contentDescription = if (uiState.isPlaying) "Пауза" else "Воспроизведение",
                        modifier = Modifier.size(36.dp)
                    )
                }
                Spacer(Modifier.width(16.dp))
                IconButton(onClick = viewModel::skipNextChapter) {
                    Icon(Icons.Default.SkipNext, contentDescription = "Следующая глава", modifier = Modifier.size(36.dp))
                }
                Spacer(Modifier.width(4.dp))
                IconButton(
                    onClick = {
                        showChapters = !showChapters
                        if (showChapters) showSettings = false
                    },
                    enabled = audiobook?.chapters?.isNotEmpty() == true
                ) {
                    Icon(Icons.Default.MenuBook, contentDescription = "Оглавление", modifier = Modifier.size(28.dp))
                }
            }

            AnimatedVisibility(
                visible = showChapters && audiobook != null && audiobook.chapters.isNotEmpty(),
                enter = slideInVertically(
                    animationSpec = tween(260),
                    initialOffsetY = { it / 3 }
                ) + fadeIn(animationSpec = tween(220)),
                exit = slideOutVertically(
                    animationSpec = tween(220),
                    targetOffsetY = { it / 3 }
                ) + fadeOut(animationSpec = tween(180))
            ) {
                Surface(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 12.dp)
                        .heightIn(min = 240.dp, max = 420.dp),
                    shape = RoundedCornerShape(24.dp),
                    color = MaterialTheme.colorScheme.surface
                ) {
                    Column(modifier = Modifier.fillMaxWidth()) {
                        Text(
                            text = "Главы",
                            style = MaterialTheme.typography.titleSmall,
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(horizontal = 16.dp, vertical = 12.dp)
                        )
                        HorizontalDivider()
                        LazyColumn(
                            modifier = Modifier.fillMaxSize(),
                            contentPadding = PaddingValues(bottom = 12.dp)
                        ) {
                            itemsIndexed(audiobook?.chapters.orEmpty()) { index, chapter ->
                                ListItem(
                                    headlineContent = {
                                        Text(
                                            text = chapter.title,
                                            fontWeight = if (index == uiState.currentChapterIndex) FontWeight.Bold else FontWeight.Normal,
                                            color = if (index == uiState.currentChapterIndex) {
                                                MaterialTheme.colorScheme.primary
                                            } else {
                                                MaterialTheme.colorScheme.onSurface
                                            }
                                        )
                                    },
                                    trailingContent = if (chapter.durationMs > 0) ({
                                        Text(
                                            text = chapter.durationMs.toTimeString(),
                                            style = MaterialTheme.typography.labelSmall,
                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                        )
                                    }) else null,
                                    modifier = Modifier.clickable {
                                        viewModel.seekToChapter(index)
                                        showChapters = false
                                        showSettings = true
                                    }
                                )
                            }
                        }
                    }
                }
            }

            AnimatedVisibility(
                visible = !showChapters && showSettings,
                enter = slideInVertically(
                    animationSpec = tween(260),
                    initialOffsetY = { it / 3 }
                ) + fadeIn(animationSpec = tween(220)),
                exit = slideOutVertically(
                    animationSpec = tween(220),
                    targetOffsetY = { it / 3 }
                ) + fadeOut(animationSpec = tween(180))
            ) {
                Surface(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(horizontal = 16.dp, vertical = 12.dp),
                    shape = RoundedCornerShape(24.dp),
                    color = MaterialTheme.colorScheme.surface
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 16.dp, vertical = 14.dp),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        Row(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            FilledTonalButton(onClick = { viewModel.seekBy(-15_000L) }) {
                                Text("-15с")
                            }
                            FilledTonalButton(onClick = { viewModel.seekBy(30_000L) }) {
                                Text("+30с")
                            }
                            Surface(
                                shape = RoundedCornerShape(999.dp),
                                color = MaterialTheme.colorScheme.surfaceContainerHigh
                            ) {
                                Text(
                                    text = if (audiobook?.sourceIsFolder == true) "Папка" else "Файл",
                                    modifier = Modifier.padding(horizontal = 12.dp, vertical = 8.dp),
                                    style = MaterialTheme.typography.labelMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(4.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            listOf(0.75f, 1f, 1.25f, 1.5f, 2f).forEach { speed ->
                                val selected = uiState.speed == speed
                                TextButton(
                                    onClick = { viewModel.setSpeed(speed) },
                                    modifier = Modifier
                                        .clip(RoundedCornerShape(8.dp))
                                        .background(
                                            if (selected) MaterialTheme.colorScheme.primaryContainer
                                            else MaterialTheme.colorScheme.surfaceVariant
                                        )
                                ) {
                                    Text(
                                        text = "${speed}x",
                                        style = MaterialTheme.typography.labelMedium,
                                        color = if (selected) MaterialTheme.colorScheme.onPrimaryContainer
                                        else MaterialTheme.colorScheme.onSurface
                                    )
                                }
                            }
                        }

                        Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                            Text(
                                text = "Таймер сна",
                                style = MaterialTheme.typography.titleSmall
                            )
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(8.dp),
                                verticalAlignment = Alignment.CenterVertically,
                                modifier = Modifier.fillMaxWidth()
                            ) {
                                listOf(
                                    "Выкл" to null,
                                    "15м" to 15 * 60 * 1000L,
                                    "30м" to 30 * 60 * 1000L,
                                    "60м" to 60 * 60 * 1000L
                                ).forEach { (label, durationMs) ->
                                    FilterChip(
                                        selected = (durationMs == null && uiState.sleepTimerRemainingMs == null) ||
                                            (durationMs != null && uiState.sleepTimerRemainingMs != null &&
                                                uiState.sleepTimerRemainingMs!! <= durationMs),
                                        onClick = { viewModel.setSleepTimer(durationMs) },
                                        label = { Text(label) }
                                    )
                                }
                            }
                            uiState.sleepTimerRemainingMs?.let { remaining ->
                                Text(
                                    text = "До паузы: ${remaining.toTimeString()}",
                                    style = MaterialTheme.typography.labelMedium,
                                    color = MaterialTheme.colorScheme.onSurfaceVariant
                                )
                            }
                        }

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            FilledTonalButton(onClick = viewModel::saveBookmark, enabled = audiobook != null) {
                                Text("Закладка")
                            }
                            if (uiState.bookmarkChapterIndex != null) {
                                TextButton(onClick = viewModel::seekToBookmark) {
                                    Text("К закладке")
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

private fun Long.toTimeString(): String {
    val totalSec = this / 1000
    val h = totalSec / 3600
    val m = (totalSec % 3600) / 60
    val s = totalSec % 60
    return if (h > 0) "%d:%02d:%02d".format(h, m, s) else "%d:%02d".format(m, s)
}
