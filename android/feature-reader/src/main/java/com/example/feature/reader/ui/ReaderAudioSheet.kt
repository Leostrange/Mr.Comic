package com.example.feature.reader.ui

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.tween
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.animation.slideInVertically
import androidx.compose.animation.slideOutVertically
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.size
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.MenuBook
import androidx.compose.material.icons.filled.Headphones
import androidx.compose.material.icons.filled.Pause
import androidx.compose.material.icons.filled.PlayArrow
import androidx.compose.material.icons.filled.SkipNext
import androidx.compose.material.icons.filled.SkipPrevious
import androidx.compose.material.icons.filled.Tune
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilledIconButton
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.Icon
import androidx.compose.material3.IconButton
import androidx.compose.material3.LinearProgressIndicator
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
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.window.Dialog
import androidx.compose.ui.window.DialogProperties
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.ui.library.RootChromeTopBarHost
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.library.rootChromeStableTopBarInsets
import com.example.engine.formats.base.TocEntry

@OptIn(ExperimentalMaterial3Api::class, androidx.compose.foundation.layout.ExperimentalLayoutApi::class)
@Composable
internal fun ReaderAudioSheet(
    title: String,
    chapterTitle: String?,
    tocEntries: List<TocEntry>,
    currentPage: Int,
    runtimeState: ReaderTtsRuntimeState,
    speed: Float,
    pitch: Float,
    volume: Float,
    sleepTimerMode: String,
    onDismiss: () -> Unit,
    onTogglePlayback: () -> Unit,
    onPrevious: () -> Unit,
    onNext: () -> Unit,
    onStop: () -> Unit,
    onNavigateToPage: (Int) -> Unit,
    onVoiceNameChange: (String?) -> Unit,
    onSpeedChange: (Float) -> Unit,
    onPitchChange: (Float) -> Unit,
    onVolumeChange: (Float) -> Unit,
    onSleepTimerChange: (String) -> Unit
) {
    var showSettings by rememberSaveable { mutableStateOf(true) }
    var showChapters by rememberSaveable { mutableStateOf(false) }
    var isVoiceMenuExpanded by rememberSaveable { mutableStateOf(false) }
    val readerText = readerUiText(LocalStrings.current.languageCode)
    val selectedVoiceLabel = remember(runtimeState.selectedVoiceName, runtimeState.availableVoices) {
        runtimeState.availableVoices.firstOrNull { it.name == runtimeState.selectedVoiceName }?.label
            ?: readerText.ttsVoiceDefault
    }
    val progress = if (runtimeState.totalChunks > 0) {
        ((runtimeState.currentChunkIndex + 1).toFloat() / runtimeState.totalChunks.toFloat()).coerceIn(0f, 1f)
    } else {
        0f
    }

    Dialog(
        onDismissRequest = onDismiss,
        properties = DialogProperties(usePlatformDefaultWidth = false)
    ) {
        Surface(
            modifier = Modifier.fillMaxSize(),
            color = MaterialTheme.colorScheme.background
        ) {
            Scaffold(
                containerColor = MaterialTheme.colorScheme.background,
                contentWindowInsets = WindowInsets(0, 0, 0, 0),
                topBar = {
                    RootChromeTopBarHost {
                        TopAppBar(
                            colors = TopAppBarDefaults.topAppBarColors(
                                containerColor = MaterialTheme.colorScheme.background
                            ),
                            windowInsets = WindowInsets(0, 0, 0, 0),
                            title = {
                                Text(
                                    text = title,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                            },
                            navigationIcon = {
                                IconButton(onClick = onDismiss) {
                                    Icon(Icons.AutoMirrored.Filled.ArrowBack, contentDescription = readerText.close)
                                }
                            }
                        )
                    }
                }
            ) { padding ->
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(padding)
                        .navigationBarsPadding(),
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Surface(
                        modifier = Modifier
                            .padding(horizontal = 48.dp, vertical = 16.dp)
                            .fillMaxWidth()
                            .height(260.dp),
                        shape = RoundedCornerShape(20.dp),
                        color = MaterialTheme.colorScheme.surface
                    ) {
                        Column(
                            modifier = Modifier.fillMaxSize(),
                            horizontalAlignment = Alignment.CenterHorizontally,
                            verticalArrangement = Arrangement.Center
                        ) {
                            Icon(
                                imageVector = Icons.Default.Headphones,
                                contentDescription = null,
                                modifier = Modifier.size(84.dp),
                                tint = MaterialTheme.colorScheme.onSurfaceVariant
                            )
                        }
                    }

                    Text(
                        text = title,
                        style = MaterialTheme.typography.titleLarge,
                        fontWeight = FontWeight.Bold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.padding(horizontal = 24.dp)
                    )
                    Spacer(Modifier.height(4.dp))
                    Text(
                        text = chapterTitle ?: readerText.chapters,
                        style = MaterialTheme.typography.bodyMedium,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis,
                        modifier = Modifier.padding(horizontal = 24.dp)
                    )

                    Spacer(Modifier.height(14.dp))
                    LinearProgressIndicator(
                        progress = { progress },
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 24.dp)
                            .height(6.dp)
                    )
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .padding(horizontal = 28.dp, vertical = 6.dp),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text(
                            text = "${runtimeState.currentChunkIndex + 1}/${runtimeState.totalChunks.coerceAtLeast(1)}",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                        Text(
                            text = if (runtimeState.isSpeaking) "TTS" else "Пауза",
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
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
                        IconButton(onClick = onPrevious, enabled = runtimeState.totalChunks > 0) {
                            Icon(Icons.Default.SkipPrevious, contentDescription = "Назад", modifier = Modifier.size(36.dp))
                        }
                        Spacer(Modifier.width(16.dp))
                        FilledIconButton(
                            onClick = onTogglePlayback,
                            modifier = Modifier.size(64.dp),
                            shape = CircleShape
                        ) {
                            Icon(
                                imageVector = if (runtimeState.isSpeaking) Icons.Default.Pause else Icons.Default.PlayArrow,
                                contentDescription = if (runtimeState.isSpeaking) "Пауза" else "Воспроизвести",
                                modifier = Modifier.size(36.dp)
                            )
                        }
                        Spacer(Modifier.width(16.dp))
                        IconButton(onClick = onNext, enabled = runtimeState.totalChunks > 0) {
                            Icon(Icons.Default.SkipNext, contentDescription = "Вперёд", modifier = Modifier.size(36.dp))
                        }
                        Spacer(Modifier.width(4.dp))
                        IconButton(
                            onClick = {
                                showChapters = !showChapters
                                if (showChapters) showSettings = false
                            }
                        ) {
                            Icon(Icons.AutoMirrored.Filled.MenuBook, contentDescription = readerText.chapters, modifier = Modifier.size(28.dp))
                        }
                    }

                    if (showChapters || showSettings) {
                        Box(
                            modifier = Modifier
                                .fillMaxWidth()
                                .weight(1f, fill = true),
                            contentAlignment = Alignment.TopCenter
                        ) {
                            androidx.compose.animation.AnimatedVisibility(
                                visible = showChapters && tocEntries.isNotEmpty(),
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
                                        .fillMaxSize()
                                        .padding(horizontal = 16.dp, vertical = 12.dp)
                                        .heightIn(min = 240.dp),
                                    shape = RoundedCornerShape(24.dp),
                                    color = MaterialTheme.colorScheme.surface
                                ) {
                                    Column(modifier = Modifier.fillMaxWidth()) {
                                        Text(
                                            text = readerText.chapters,
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
                                            itemsIndexed(tocEntries) { index, entry ->
                                                val nextPageIndex = tocEntries.getOrNull(index + 1)?.pageIndex ?: Int.MAX_VALUE
                                                val isCurrentChapter = currentPage >= entry.pageIndex && currentPage < nextPageIndex
                                                ListItem(
                                                    headlineContent = {
                                                        Text(
                                                            text = readerAudioNormalizedTocTitle(entry.title),
                                                            fontWeight = if (isCurrentChapter) FontWeight.Bold else FontWeight.Normal,
                                                            color = if (isCurrentChapter) {
                                                                MaterialTheme.colorScheme.primary
                                                            } else {
                                                                MaterialTheme.colorScheme.onSurface
                                                            }
                                                        )
                                                    },
                                                    supportingContent = {
                                                        Text(
                                                            text = readerAudioPageLabel(entry.pageIndex, LocalStrings.current.languageCode),
                                                            style = MaterialTheme.typography.labelSmall,
                                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                                        )
                                                    },
                                                    modifier = Modifier.clickable {
                                                        onNavigateToPage(entry.pageIndex)
                                                        showChapters = false
                                                        showSettings = true
                                                    }
                                                )
                                            }
                                        }
                                    }
                                }
                            }

                            androidx.compose.animation.AnimatedVisibility(
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
                                        .fillMaxSize()
                                        .padding(horizontal = 16.dp, vertical = 12.dp)
                                        .heightIn(min = 240.dp),
                                    shape = RoundedCornerShape(24.dp),
                                    color = MaterialTheme.colorScheme.surface
                                ) {
                                    LazyColumn(
                                        modifier = Modifier.fillMaxSize(),
                                        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 14.dp),
                                        verticalArrangement = Arrangement.spacedBy(12.dp)
                                    ) {
                                        item {
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
                                                    ReaderTtsSleepTimerMode.entries.forEach { mode ->
                                                        FilterChip(
                                                            selected = sleepTimerMode == mode.storedValue,
                                                            onClick = { onSleepTimerChange(mode.storedValue) },
                                                            label = {
                                                                Text(
                                                                    readerAudioSleepTimerLabel(
                                                                        mode.storedValue,
                                                                        LocalStrings.current.languageCode
                                                                    )
                                                                )
                                                            }
                                                        )
                                                    }
                                                }
                                            }
                                        }

                                        item { HorizontalDivider() }
                                        item {
                                            Text(
                                                text = readerText.ttsVoiceTitle,
                                                style = MaterialTheme.typography.titleSmall
                                            )
                                        }
                                        item {
                                            Row(modifier = Modifier.fillMaxWidth()) {
                                                TextButton(
                                                    onClick = { isVoiceMenuExpanded = true },
                                                    enabled = runtimeState.availableVoices.isNotEmpty(),
                                                    modifier = Modifier.fillMaxWidth()
                                                ) {
                                                    Row(
                                                        modifier = Modifier.fillMaxWidth(),
                                                        horizontalArrangement = Arrangement.SpaceBetween,
                                                        verticalAlignment = Alignment.CenterVertically
                                                    ) {
                                                        Text(selectedVoiceLabel)
                                                        Text(
                                                            text = "v",
                                                            style = MaterialTheme.typography.labelSmall,
                                                            color = MaterialTheme.colorScheme.onSurfaceVariant
                                                        )
                                                    }
                                                }
                                                DropdownMenu(
                                                    expanded = isVoiceMenuExpanded,
                                                    onDismissRequest = { isVoiceMenuExpanded = false },
                                                    modifier = Modifier.heightIn(max = 320.dp)
                                                ) {
                                                    DropdownMenuItem(
                                                        text = { Text(readerText.ttsVoiceDefault) },
                                                        onClick = {
                                                            onVoiceNameChange(null)
                                                            isVoiceMenuExpanded = false
                                                        }
                                                    )
                                                    runtimeState.availableVoices.forEach { voice ->
                                                        DropdownMenuItem(
                                                            text = { Text(voice.label) },
                                                            onClick = {
                                                                onVoiceNameChange(voice.name)
                                                                isVoiceMenuExpanded = false
                                                            }
                                                        )
                                                    }
                                                }
                                            }
                                        }

                                        items(
                                            listOf(
                                                Triple(readerText.ttsSpeedTitle, String.format("%.1fx", speed), speed to (0.5f..2.0f)),
                                                Triple(readerText.ttsPitchTitle, String.format("%.1fx", pitch), pitch to (0.5f..2.0f)),
                                                Triple(readerText.ttsVolumeTitle, "${(volume * 100).toInt()}%", volume to (0f..1f))
                                            )
                                        ) { (title, valueText, valueAndRange) ->
                                            when (title) {
                                                readerText.ttsSpeedTitle -> ReaderAudioSliderRow(
                                                    title = title,
                                                    valueText = valueText,
                                                    value = valueAndRange.first,
                                                    valueRange = valueAndRange.second,
                                                    onValueChange = onSpeedChange
                                                )
                                                readerText.ttsPitchTitle -> ReaderAudioSliderRow(
                                                    title = title,
                                                    valueText = valueText,
                                                    value = valueAndRange.first,
                                                    valueRange = valueAndRange.second,
                                                    onValueChange = onPitchChange
                                                )
                                                else -> ReaderAudioSliderRow(
                                                    title = title,
                                                    valueText = valueText,
                                                    value = valueAndRange.first,
                                                    valueRange = valueAndRange.second,
                                                    onValueChange = onVolumeChange
                                                )
                                            }
                                        }

                                        item { HorizontalDivider() }
                                        item {
                                            Row(
                                                modifier = Modifier.fillMaxWidth(),
                                                horizontalArrangement = Arrangement.End
                                            ) {
                                                TextButton(onClick = onStop) {
                                                    Text(readerText.close)
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun ReaderAudioSliderRow(
    title: String,
    valueText: String,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit
) {
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(2.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(text = title, style = MaterialTheme.typography.bodySmall)
            Text(
                text = valueText,
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        Slider(
            value = value,
            onValueChange = onValueChange,
            valueRange = valueRange
        )
    }
}

private fun readerAudioSleepTimerLabel(mode: String, language: String): String =
    when (ReaderTtsSleepTimerMode.fromStored(mode)) {
        ReaderTtsSleepTimerMode.OFF -> when (language) {
            "en" -> "Off"
            "ja" -> "オフ"
            "zh" -> "关闭"
            "ko" -> "끔"
            else -> "Выкл"
        }
        ReaderTtsSleepTimerMode.MINUTES_10 -> when (language) {
            "en" -> "10 min"
            "ja" -> "10分"
            "zh" -> "10 分钟"
            "ko" -> "10분"
            else -> "10 мин"
        }
        ReaderTtsSleepTimerMode.MINUTES_20 -> when (language) {
            "en" -> "20 min"
            "ja" -> "20分"
            "zh" -> "20 分钟"
            "ko" -> "20분"
            else -> "20 мин"
        }
        ReaderTtsSleepTimerMode.MINUTES_30 -> when (language) {
            "en" -> "30 min"
            "ja" -> "30分"
            "zh" -> "30 分钟"
            "ko" -> "30분"
            else -> "30 мин"
        }
        ReaderTtsSleepTimerMode.MINUTES_45 -> when (language) {
            "en" -> "45 min"
            "ja" -> "45分"
            "zh" -> "45 分钟"
            "ko" -> "45분"
            else -> "45 мин"
        }
        ReaderTtsSleepTimerMode.MINUTES_60 -> when (language) {
            "en" -> "60 min"
            "ja" -> "60分"
            "zh" -> "60 分钟"
            "ko" -> "60분"
            else -> "60 мин"
        }
    }

private fun readerAudioNormalizedTocTitle(title: String): String =
    title.replace(Regex("\\s+"), " ").trim()

private fun readerAudioPageLabel(page: Int, language: String): String = when (language) {
    "en" -> "Page ${page + 1}"
    "ja" -> "ページ ${page + 1}"
    "zh" -> "第 ${page + 1} 页"
    "ko" -> "페이지 ${page + 1}"
    else -> "Страница ${page + 1}"
}
