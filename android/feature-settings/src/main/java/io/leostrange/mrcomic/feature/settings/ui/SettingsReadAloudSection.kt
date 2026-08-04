// Phase H (2026-08-03): ReadAloud-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.ReaderTtsProviderType
import io.leostrange.mrcomic.core.model.ReaderTtsSleepTimerMode
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style
import java.util.Locale

/**
 * ReadAloud (Phase H, 2026-08-03): ReadAloudSection — TTS provider,
 * voice picker, playback speed/pitch/volume, sleep timer and live
 * preview. Moved from SettingsScreen.kt; behavior is unchanged.
 */

/* ──── ReadAloudSection (fun) ──── */
@Composable
internal fun ReadAloudSection(
    uiState: SettingsUiState,
    viewModel: SettingsViewModel,
    strings: AppStrings,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val previewController = remember(context) { SettingsTextToSpeechPreviewController(context) }
    val previewState by previewController.state.collectAsState()
    val sectionText = remember(strings.languageCode) { readAloudSectionText(strings.languageCode) }
    var showVoicePicker by rememberSaveable { mutableStateOf(false) }
    val provider = remember(uiState.readerTtsProvider) { ReaderTtsProviderType.fromStored(uiState.readerTtsProvider) }
    LaunchedEffect(
        provider,
        uiState.readerTtsVoiceName,
        uiState.readerTtsSpeed,
        uiState.readerTtsPitch,
        uiState.readerTtsVolume
    ) {
        previewController.updateConfig(
            provider = provider,
            voiceName = uiState.readerTtsVoiceName,
            speed = uiState.readerTtsSpeed,
            pitch = uiState.readerTtsPitch,
            volume = uiState.readerTtsVolume
        )
    }
    DisposableEffect(previewController) {
        onDispose { previewController.release() }
    }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCard(title = readAloudProviderTitle(strings.languageCode)) {
                Text(
                    text = readAloudProviderHint(strings.languageCode),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                ChipRow {
                    MrComicFilterChip(
                        selected = provider == ReaderTtsProviderType.SYSTEM,
                        onClick = { viewModel.setReaderTtsProvider(ReaderTtsProviderType.SYSTEM.storedValue) },
                        label = { Text(readAloudProviderLabel(ReaderTtsProviderType.SYSTEM.storedValue, strings.languageCode)) }
                    )
                    listOf(ReaderTtsProviderType.OPENAI, ReaderTtsProviderType.AZURE, ReaderTtsProviderType.ALIYUN).forEach { item ->
                        MrComicFilterChip(
                            selected = false,
                            enabled = false,
                            onClick = {},
                            label = { Text("${readAloudProviderLabel(item.storedValue, strings.languageCode)} · ${readAloudNotConnectedLabel(strings.languageCode)}") }
                        )
                    }
                }
                Spacer(Modifier.height(8.dp))
                LabelText(readAloudExternalVoicesHint(strings.languageCode))
            }
        }
        item {
            SettingsCard(title = sectionText.title) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalAlignment = Alignment.Top
                ) {
                    Icon(
                        imageVector = Icons.Default.RecordVoiceOver,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.onSurfaceVariant,
                        modifier = Modifier.size(18.dp)
                    )
                    Text(
                        text = when (strings.languageCode) {
                            "en" -> "Uses installed system voices and stays in sync with the reader service panel."
                            "ja" -> "インストール済みのシステム音声を使い、リーダー内のサービス欄と同期します。"
                            "zh" -> "使用已安装的系统语音，并与阅读器服务面板保持同步。"
                            "ko" -> "설치된 시스템 음성을 사용하며 리더 서비스 패널과 동기화됩니다."
                            else -> "Использует установленные системные голоса и синхронизируется с сервисной панелью ридера."
                        },
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                Spacer(Modifier.height(2.dp))
                SettingsPickerTile(
                    title = readAloudVoiceTitle(strings.languageCode),
                    value = previewState.availableVoices.firstOrNull { it.name == uiState.readerTtsVoiceName }?.label
                        ?: readAloudVoiceSummaryLabel(uiState.readerTtsVoiceName, strings.languageCode),
                    onClick = { showVoicePicker = true },
                    compact = true
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = readAloudPlaybackTitle(strings.languageCode),
                    valueLabel = "${String.format(Locale.US, "%.2f", uiState.readerTtsSpeed)}x",
                    value = uiState.readerTtsSpeed,
                    onValueChange = viewModel::setReaderTtsSpeed,
                    valueRange = 0.5f..2.0f,
                    subtitle = when (strings.languageCode) {
                        "en" -> "Default speech speed for text books."
                        "ja" -> "テキスト本で使う既定の読み上げ速度です。"
                        "zh" -> "文本书籍默认朗读语速。"
                        "ko" -> "텍스트 책에 쓰는 기본 읽기 속도입니다."
                        else -> "Скорость озвучивания по умолчанию для текстовых книг."
                    }
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = readAloudPitchTitle(strings.languageCode),
                    valueLabel = String.format(Locale.US, "%.2f", uiState.readerTtsPitch),
                    value = uiState.readerTtsPitch,
                    onValueChange = viewModel::setReaderTtsPitch,
                    valueRange = 0.5f..2.0f,
                    subtitle = when (strings.languageCode) {
                        "en" -> "Keeps the system voice calmer or brighter."
                        "ja" -> "システム音声を落ち着かせるか、明るくするかを調整します。"
                        "zh" -> "让系统语音更沉稳或更明亮。"
                        "ko" -> "시스템 음성을 더 차분하게 또는 더 밝게 조정합니다."
                        else -> "Делает системный голос спокойнее или светлее."
                    }
                )
                Spacer(Modifier.height(10.dp))
                SettingsSliderTile(
                    title = readAloudVolumeTitle(strings.languageCode),
                    valueLabel = "${(uiState.readerTtsVolume * 100).toInt()}%",
                    value = uiState.readerTtsVolume,
                    onValueChange = viewModel::setReaderTtsVolume,
                    valueRange = 0f..1f,
                    subtitle = when (strings.languageCode) {
                        "en" -> "Applies to the reader TTS stream without touching system media volume."
                        "ja" -> "システム全体の音量ではなく、リーダーの TTS 出力にだけ適用します。"
                        "zh" -> "只作用于阅读器 TTS，不改动系统媒体音量。"
                        "ko" -> "시스템 미디어 볼륨이 아니라 리더 TTS 출력에만 적용됩니다."
                        else -> "Применяется только к TTS в ридере и не меняет общую медиагромкость системы."
                    }
                )
                Spacer(Modifier.height(10.dp))
                LabelText(readAloudSleepTimerTitle(strings.languageCode))
                ChipRow {
                    ReaderTtsSleepTimerMode.entries.forEach { mode ->
                        MrComicFilterChip(
                            selected = uiState.readerTtsSleepTimerMode == mode.storedValue,
                            onClick = { viewModel.setReaderTtsSleepTimerMode(mode.storedValue) },
                            label = { Text(readAloudSleepTimerLabel(mode.storedValue, strings.languageCode)) }
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(
                title = when (strings.languageCode) {
                    "en" -> "Playback and sounds"
                    "ja" -> "再生とサウンド"
                    "zh" -> "播放与声音"
                    "ko" -> "재생과 사운드"
                    else -> "Воспроизведение и звуки"
                }
            ) {
                SwitchRow(
                    title = when (strings.languageCode) {
                        "en" -> "Page flip sound"
                        "ja" -> "ページめくり音"
                        "zh" -> "翻页音效"
                        "ko" -> "페이지 넘김 소리"
                        else -> "Звук перелистывания"
                    },
                    subtitle = when (strings.languageCode) {
                        "en" -> "Keeps a light paper cue for reader paging."
                        "ja" -> "ページ送りに軽い紙の合図を追加します。"
                        "zh" -> "为翻页保留轻微的纸张提示音。"
                        "ko" -> "페이지 넘김에 가벼운 종이 소리를 남깁니다."
                        else -> "Оставляет лёгкую бумажную подсказку при листании."
                    },
                    checked = uiState.readerPageSound,
                    onCheckedChange = viewModel::setReaderPageSound
                )
                if (uiState.readerPageSound) {
                    Spacer(Modifier.height(10.dp))
                    LabelText(
                        when (strings.languageCode) {
                            "en" -> "Page sound style"
                            "ja" -> "ページ音スタイル"
                            "zh" -> "翻页音风格"
                            "ko" -> "페이지 소리 스타일"
                            else -> "Стиль звука перелистывания"
                        }
                    )
                    ChipRow {
                        listOf("PAPER", "CRISP", "SOFT").forEach { style ->
                            MrComicFilterChip(
                                selected = uiState.readerPageSoundStyle == style,
                                onClick = { viewModel.setReaderPageSoundStyle(style) },
                                label = { Text(style) }
                            )
                        }
                    }
                }
                Spacer(Modifier.height(10.dp))
                SwitchRow(
                    title = strings.uiSoundsTitle,
                    subtitle = strings.uiSoundsSubtitle,
                    checked = uiState.uiSoundEnabled,
                    onCheckedChange = viewModel::setUiSoundEnabled
                )
                if (uiState.uiSoundEnabled) {
                    Spacer(Modifier.height(10.dp))
                    SettingsSliderTile(
                        title = when (strings.languageCode) {
                            "en" -> "UI sounds volume"
                            "ja" -> "UI サウンド音量"
                            "zh" -> "界面音量"
                            "ko" -> "UI 사운드 볼륨"
                            else -> "Громкость UI-звуков"
                        },
                        valueLabel = "${(uiState.uiSoundsVolume * 100).toInt()}%",
                        value = uiState.uiSoundsVolume,
                        onValueChange = viewModel::setUiSoundsVolume,
                        valueRange = 0f..1f
                    )
                }
            }
        }
        item {
            SettingsCard(title = readAloudPreviewTitle(strings.languageCode)) {
                Text(
                    text = readAloudPreviewHint(strings.languageCode),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(8.dp))
                LabelText("${readAloudProviderTitle(strings.languageCode)}: ${readAloudProviderLabel(uiState.readerTtsProvider, strings.languageCode)}")
                LabelText("${readAloudVoiceTitle(strings.languageCode)}: ${previewState.availableVoices.firstOrNull { it.name == uiState.readerTtsVoiceName }?.label ?: readAloudVoiceSummaryLabel(uiState.readerTtsVoiceName, strings.languageCode)}")
                LabelText(readAloudPreviewReadyLabel(previewState.ready, strings.languageCode))
                Spacer(Modifier.height(8.dp))
                Text(
                    text = readAloudPreviewSample(strings.languageCode),
                    style = MaterialTheme.typography.bodyMedium,
                    color = MaterialTheme.colorScheme.onSurface
                )
                Spacer(Modifier.height(10.dp))
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(10.dp)
                ) {
                    MrComicButton(
                        modifier = Modifier.weight(1f),
                        enabled = provider == ReaderTtsProviderType.SYSTEM && previewState.ready,
                        onClick = { previewController.togglePreview(readAloudPreviewSample(strings.languageCode)) },
                        variant = MrComicButtonVariant.Tonal
                    ) {
                        Text(
                            text = if (previewState.isSpeaking) {
                                readAloudPreviewStopLabel(strings.languageCode)
                            } else {
                                readAloudPreviewPlayLabel(strings.languageCode)
                            },
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                    MrComicButton(
                        modifier = Modifier.weight(1f),
                        enabled = previewState.isSpeaking,
                        onClick = previewController::stop,
                        variant = MrComicButtonVariant.Outlined
                    ) {
                        Text(
                            text = readAloudPreviewStopLabel(strings.languageCode),
                            maxLines = 1,
                            overflow = TextOverflow.Ellipsis
                        )
                    }
                }
            }
        }
        item {
            SettingsCard(title = sectionText.statusTitle) {
                Text(
                    text = sectionText.statusBody,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            SettingsCard(title = sectionText.roadmapTitle) {
                AboutBulletList(items = sectionText.roadmapItems)
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
    if (showVoicePicker) {
        SettingsPickerDialog(
            title = readAloudVoiceTitle(strings.languageCode),
            options = listOf(
                ReaderPickerOption("", readAloudVoiceSummaryLabel(null, strings.languageCode))
            ) + previewState.availableVoices.map { ReaderPickerOption(it.name, it.label) },
            selectedValue = uiState.readerTtsVoiceName.orEmpty(),
            onDismiss = { showVoicePicker = false },
            onSelect = {
                viewModel.setReaderTtsVoiceName(it.ifBlank { null })
                showVoicePicker = false
            }
        )
    }
}

