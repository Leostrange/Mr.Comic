// Phase I (2026-08-03): Sync/Storage/Advanced-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.ui.platform.LocalContext
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import kotlin.math.roundToInt
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style

/**
 * Sync / Storage / Advanced (Phase I, 2026-08-03): SyncSection, StorageSection,
 * SyncPopupSettingsCard, AdvancedSection and their label helpers. Moved from
 * SettingsScreen.kt; behavior is unchanged.
 */

/* ──── syncBackupTitle (fun) ──── */
internal fun syncBackupTitle(language: String): String = when (language) {
    "en" -> "Backup and transfer"
    "ja" -> "バックアップと移行"
    "zh" -> "备份与迁移"
    "ko" -> "백업 및 전송"
    else -> "Бэкап и перенос"
}

/* ──── syncBackupSummary (fun) ──── */
internal fun syncBackupSummary(language: String): String = when (language) {
    "en" -> "Reading progress export, import, and automatic backups."
    "ja" -> "読書進捗のエクスポート、インポート、自動バックアップ。"
    "zh" -> "阅读进度导出、导入和自动备份。"
    "ko" -> "읽기 진행 내보내기, 가져오기, 자동 백업."
    else -> "Экспорт и импорт прогресса чтения, плюс автоматические резервные копии."
}

/* ──── syncStorageTitle (fun) ──── */
internal fun syncStorageTitle(language: String): String = when (language) {
    "en" -> "Storage and access"
    "ja" -> "ストレージとアクセス"
    "zh" -> "存储与访问"
    "ko" -> "저장소와 접근"
    else -> "Хранилище и доступ"
}

/* ──── syncStorageSummary (fun) ──── */
internal fun syncStorageSummary(language: String): String = when (language) {
    "en" -> "Reconnect library folders after reinstall and clear local cache."
    "ja" -> "再インストール後のライブラリ再接続とローカルキャッシュの整理。"
    "zh" -> "重装后重新连接书库并清理本地缓存。"
    "ko" -> "재설치 후 라이브러리 재연결과 로컬 캐시 정리."
    else -> "Перепривязка папок библиотеки после переустановки и очистка локального кэша."
}

/* ──── syncPopupSettingsTitle (fun) ──── */
internal fun syncPopupSettingsTitle(language: String): String = when (language) {
    "en" -> "Popup messages"
    "ja" -> "ポップアップ表示"
    "zh" -> "弹窗消息"
    "ko" -> "팝업 메시지"
    else -> "Всплывающие сообщения"
}

/* ──── syncPopupSettingsSummary (fun) ──── */
internal fun syncPopupSettingsSummary(language: String): String = when (language) {
    "en" -> "Import error presentation and reader image popup behavior."
    "ja" -> "インポートエラー表示とリーダー画像ポップアップの挙動。"
    "zh" -> "导入错误展示方式和阅读器图片弹窗行为。"
    "ko" -> "가져오기 오류 표시 방식과 리더 이미지 팝업 동작."
    else -> "Показ ошибок импорта и поведение графических всплывашек в ридере."
}

/* ──── SyncSection (fun) ──── */
@Composable
internal fun SyncSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: SyncSettingsPage,
    onImportRejected: () -> Unit,
    onPageChange: (SyncSettingsPage) -> Unit,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            SyncSettingsPage.OVERVIEW -> {
                item {
                    SettingsCompactSummaryCard(
                        title = settingsSectionSummaryText(strings.languageCode).title,
                        hint = settingsSectionSummaryText(strings.languageCode).hint,
                        items = listOf(
                            strings.autoBackup to compactToggleLabel(strings.languageCode, uiState.autoBackupEnabled),
                            syncTransferLabel(strings.languageCode) to "JSON"
                        )
                    )
                }
                item {
                    SettingsCard(title = settingsSectionMeta(SettingsSection.SYNC, strings.languageCode, strings).title) {
                        SettingsNavItem(
                            icon = Icons.Default.Sync,
                            title = syncBackupTitle(strings.languageCode),
                            description = null,
                            summary = syncBackupSummary(strings.languageCode),
                            onClick = { onPageChange(SyncSettingsPage.BACKUP) }
                        )
                    }
                }
            }
            SyncSettingsPage.BACKUP -> {
                item {
                    SyncProgressCard(
                        uiState = uiState,
                        strings = strings,
                        viewModel = viewModel,
                        onImportRejected = onImportRejected
                    )
                }
                item {
                    SyncFormatCard(strings = strings)
                }
            }
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

/* ──── StorageSection (fun) ──── */
@Composable
internal fun StorageSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    modifier: Modifier = Modifier
) {
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = settingsSectionSummaryText(strings.languageCode).title,
                hint = settingsSectionSummaryText(strings.languageCode).hint,
                items = listOf(
                    storageFoldersLabel(strings.languageCode) to settingsSectionMeta(SettingsSection.STORAGE, strings.languageCode, strings).title,
                    cacheShortLabel(strings.languageCode) to if (uiState.isClearingCache) strings.clearingBtn else strings.clearCacheBtn
                )
            )
        }
        item {
            LibraryAccessCard(uiState = uiState, strings = strings, viewModel = viewModel)
        }
        item {
            LibraryCacheCard(uiState = uiState, strings = strings, viewModel = viewModel)
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}

/* ──── SyncPopupSettingsCard (fun) ──── */
@Composable
internal fun SyncPopupSettingsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val language = strings.languageCode
    val popupScalePercent = (uiState.imageMessagePopupSizeScale * 100).roundToInt()
    val durationLabel = when {
        uiState.imageMessagePopupDurationSeconds <= 0 -> when (language) {
            "en" -> "Manual"
            "ja" -> "手動"
            "zh" -> "手动"
            "ko" -> "수동"
            else -> "Вручную"
        }
        language == "en" -> "${uiState.imageMessagePopupDurationSeconds} s"
        language == "ja" -> "${uiState.imageMessagePopupDurationSeconds}秒"
        language == "zh" -> "${uiState.imageMessagePopupDurationSeconds} 秒"
        language == "ko" -> "${uiState.imageMessagePopupDurationSeconds}초"
        else -> "${uiState.imageMessagePopupDurationSeconds} сек"
    }
    val presentationOptions = listOf(
        SettingsImportErrorPresentation.TEXT to when (language) {
            "en" -> "Text"
            "ja" -> "テキスト"
            "zh" -> "文本"
            "ko" -> "텍스트"
            else -> "Текст"
        },
        SettingsImportErrorPresentation.IMAGE to when (language) {
            "en" -> "Image"
            "ja" -> "画像"
            "zh" -> "图片"
            "ko" -> "이미지"
            else -> "Картинка"
        }
    )
    val positionOptions = listOf(
        SettingsImageMessagePopupPosition.CENTER to when (language) {
            "en" -> "Center"
            "ja" -> "中央"
            "zh" -> "居中"
            "ko" -> "가운데"
            else -> "По центру"
        },
        SettingsImageMessagePopupPosition.TOP to when (language) {
            "en" -> "Top"
            "ja" -> "上"
            "zh" -> "顶部"
            "ko" -> "상단"
            else -> "Сверху"
        },
        SettingsImageMessagePopupPosition.BOTTOM to when (language) {
            "en" -> "Bottom"
            "ja" -> "下"
            "zh" -> "底部"
            "ko" -> "하단"
            else -> "Снизу"
        },
        SettingsImageMessagePopupPosition.TOP_START to when (language) {
            "en" -> "Top left"
            "ja" -> "左上"
            "zh" -> "左上"
            "ko" -> "왼쪽 위"
            else -> "Слева сверху"
        },
        SettingsImageMessagePopupPosition.TOP_END to when (language) {
            "en" -> "Top right"
            "ja" -> "右上"
            "zh" -> "右上"
            "ko" -> "오른쪽 위"
            else -> "Справа сверху"
        },
        SettingsImageMessagePopupPosition.BOTTOM_START to when (language) {
            "en" -> "Bottom left"
            "ja" -> "左下"
            "zh" -> "左下"
            "ko" -> "왼쪽 아래"
            else -> "Слева снизу"
        },
        SettingsImageMessagePopupPosition.BOTTOM_END to when (language) {
            "en" -> "Bottom right"
            "ja" -> "右下"
            "zh" -> "右下"
            "ko" -> "오른쪽 아래"
            else -> "Справа снизу"
        }
    )

    SettingsCard(title = syncPopupSettingsTitle(language)) {
        Text(
            text = syncPopupSettingsSummary(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(10.dp))
        LabelText(
            when (language) {
                "en" -> "Import error presentation"
                "ja" -> "インポートエラーの表示"
                "zh" -> "导入错误展示"
                "ko" -> "가져오기 오류 표시"
                else -> "Показ ошибок импорта"
            }
        )
        ChipRow {
            presentationOptions.forEach { (value, label) ->
                MrComicFilterChip(
                    selected = uiState.settingsImportErrorPresentation == value,
                    onClick = { viewModel.setSettingsImportErrorPresentation(value) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(6.dp))
        LabelText(
            when (language) {
                "en" -> "Reader popup position"
                "ja" -> "リーダーポップアップの位置"
                "zh" -> "阅读器弹窗位置"
                "ko" -> "리더 팝업 위치"
                else -> "Положение всплывашки в ридере"
            }
        )
        ChipRow {
            positionOptions.forEach { (value, label) ->
                MrComicFilterChip(
                    selected = uiState.imageMessagePopupPosition == value,
                    onClick = { viewModel.setImageMessagePopupPosition(value) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(6.dp))
        SwitchRow(
            title = when (language) {
                "en" -> "Allow free move"
                "ja" -> "自由移動を許可"
                "zh" -> "允许自由拖动"
                "ko" -> "자유 이동 허용"
                else -> "Разрешить свободное перемещение"
            },
            subtitle = when (language) {
                "en" -> "Lets image popups be dragged after they appear."
                "ja" -> "画像ポップアップを表示後にドラッグできます。"
                "zh" -> "允许图片弹窗在出现后被拖动。"
                "ko" -> "이미지 팝업이 표시된 뒤 드래그할 수 있습니다."
                else -> "Позволяет перетаскивать графическую всплывашку после появления."
            },
            checked = uiState.imageMessagePopupFreeMove,
            onCheckedChange = viewModel::setImageMessagePopupFreeMove
        )
        Spacer(Modifier.height(6.dp))
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Popup size"
                "ja" -> "ポップアップサイズ"
                "zh" -> "弹窗大小"
                "ko" -> "팝업 크기"
                else -> "Размер всплывашки"
            },
            valueLabel = "$popupScalePercent%",
            value = uiState.imageMessagePopupSizeScale,
            onValueChange = viewModel::setImageMessagePopupSizeScale,
            valueRange = SETTINGS_IMAGE_MESSAGE_POPUP_MIN_SCALE..SETTINGS_IMAGE_MESSAGE_POPUP_MAX_SCALE,
            subtitle = when (language) {
                "en" -> "Controls the scale of image popups in the reader."
                "ja" -> "リーダー内の画像ポップアップの大きさを調整します。"
                "zh" -> "调整阅读器中图片弹窗的缩放。"
                "ko" -> "리더 안의 이미지 팝업 크기를 조절합니다."
                else -> "Управляет масштабом графических всплывашек в ридере."
            }
        )
        Spacer(Modifier.height(6.dp))
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Auto close"
                "ja" -> "自動で閉じる"
                "zh" -> "自动关闭"
                "ko" -> "자동 닫기"
                else -> "Автозакрытие"
            },
            valueLabel = durationLabel,
            value = uiState.imageMessagePopupDurationSeconds.toFloat(),
            onValueChange = { viewModel.setImageMessagePopupDurationSeconds(it.roundToInt()) },
            valueRange = 0f..SETTINGS_IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS.toFloat(),
            steps = SETTINGS_IMAGE_MESSAGE_POPUP_MAX_DURATION_SECONDS - 1,
            subtitle = when (language) {
                "en" -> "Set 0 to close popups manually."
                "ja" -> "0 にすると手動で閉じます。"
                "zh" -> "设为 0 表示手动关闭。"
                "ko" -> "0으로 두면 수동으로 닫습니다."
                else -> "0 означает закрытие только вручную."
            }
        )
    }
}

/* ──── AdvancedSection (fun) ──── */
@Composable
internal fun AdvancedSection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    onAppIconSettingsClick: () -> Unit,
    modifier: Modifier = Modifier
) {
    val appearanceText = remember(strings.languageCode) { appearanceSectionText(strings.languageCode) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        item {
            SettingsCompactSummaryCard(
                title = settingsSectionSummaryText(strings.languageCode).title,
                hint = settingsSectionSummaryText(strings.languageCode).hint,
                items = listOf(
                    appearanceText.mascotRecapTitle to compactToggleLabel(strings.languageCode, uiState.mascotRecapEnabled),
                    appearanceText.questPromptsTitle to compactToggleLabel(strings.languageCode, uiState.questPromptsEnabled),
                    syncPopupSettingsTitle(strings.languageCode) to settingsImportErrorPresentationLabel(strings.languageCode, uiState.settingsImportErrorPresentation)
                )
            )
        }
        item {
            SettingsCard(title = appearanceText.serviceElementsTitle) {
                SwitchRow(
                    title = appearanceText.mascotRecapTitle,
                    subtitle = appearanceText.mascotRecapSubtitle,
                    checked = uiState.mascotRecapEnabled,
                    onCheckedChange = viewModel::setMascotRecapEnabled
                )
                Spacer(Modifier.height(10.dp))
                SwitchRow(
                    title = appearanceText.questPromptsTitle,
                    subtitle = appearanceText.questPromptsSubtitle,
                    checked = uiState.questPromptsEnabled,
                    onCheckedChange = viewModel::setQuestPromptsEnabled
                )
                Spacer(Modifier.height(12.dp))
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        Icons.Default.Apps,
                        contentDescription = null,
                        tint = MaterialTheme.colorScheme.primary
                    )
                    Spacer(Modifier.width(12.dp))
                    Column(modifier = Modifier.weight(1f)) {
                        Text(strings.appIconTitle, style = MaterialTheme.typography.titleSmall)
                        Text(
                            strings.appIconDesc,
                            style = MaterialTheme.typography.bodySmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Icon(Icons.Default.ChevronRight, contentDescription = null)
                }
                Spacer(Modifier.height(4.dp))
                FilledTonalButton(
                    onClick = onAppIconSettingsClick,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(strings.appIconButton)
                }
            }
        }
        item {
            SyncPopupSettingsCard(
                uiState = uiState,
                strings = strings,
                viewModel = viewModel
            )
        }
        item { Spacer(Modifier.height(16.dp)) }
    }
}



// Phase T (2026-08-04): private fun parseSyncSettingsPage moved here from SettingsScreen.kt

internal fun parseSyncSettingsPage(raw: String): SyncSettingsPage = when (raw) {
    "IMPORT_EXPORT", "BACKUP" -> SyncSettingsPage.BACKUP
    "ACCESS", "CACHE", "STORAGE", "POPUPS" -> SyncSettingsPage.OVERVIEW
    else -> runCatching { SyncSettingsPage.valueOf(raw) }.getOrDefault(SyncSettingsPage.OVERVIEW)
}

// Phase T (2026-08-04): internal fun SyncFormatCard moved here from SettingsScreen.kt

@Composable
internal fun SyncFormatCard(strings: AppStrings) {
    SettingsCard(
        title = when (strings.languageCode) {
            "en" -> "Format"
            "ja" -> "形式"
            "zh" -> "格式"
            "ko" -> "형식"
            else -> "Формат"
        }
    ) {
        Text(
            text = when (strings.languageCode) {
                "en" -> "Progress snapshots are stored as JSON and can be restored on another device with the same library access."
                "ja" -> "進捗スナップショットは JSON として保存され、同じライブラリアクセスを持つ別端末へ復元できます。"
                "zh" -> "进度快照以 JSON 保存，可在拥有相同书库访问权限的另一台设备上恢复。"
                "ko" -> "진행 스냅샷은 JSON으로 저장되며 같은 라이브러리 접근 권한이 있는 다른 기기에서 복원할 수 있습니다."
                else -> "Снимки прогресса сохраняются в JSON и могут быть восстановлены на другом устройстве с тем же доступом к библиотеке."
            },
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
    }
}

// Phase T (2026-08-04): internal fun SyncProgressCard moved here from SettingsScreen.kt

@Composable
internal fun SyncProgressCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    onImportRejected: () -> Unit
) {
    val context = LocalContext.current
    val busy = uiState.isExporting || uiState.isImporting
    val exportLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.CreateDocument("application/json")
    ) { uri -> uri?.let { viewModel.exportProgress(it) } }
    val importLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocument()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        if (runCatching { uri.isAcceptedSettingsJsonImport(context) }.getOrDefault(false)) {
            viewModel.importProgress(uri)
        } else {
            onImportRejected()
        }
    }

    SettingsCard(title = strings.progressCard) {
        Text(
            text = strings.progressHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(12.dp))
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            MrComicButton(
                onClick = {
                    exportLauncher.launch("mr_comic_progress_${System.currentTimeMillis()}.json")
                },
                enabled = !busy,
                modifier = Modifier.weight(1f),
                variant = MrComicButtonVariant.Tonal
            ) {
                if (uiState.isExporting) {
                    CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.exportingBtn)
                } else {
                    Icon(Icons.Default.FileUpload, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(6.dp))
                    Text(strings.exportBtn)
                }
            }
            MrComicButton(
                onClick = { importLauncher.launch(arrayOf("application/json", "*/*")) },
                enabled = !busy,
                modifier = Modifier.weight(1f),
                variant = MrComicButtonVariant.Tonal
            ) {
                if (uiState.isImporting) {
                    CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(6.dp))
                    Text(strings.importingBtn)
                } else {
                    Icon(Icons.Default.FileDownload, contentDescription = null, modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(6.dp))
                    Text(strings.importBtn)
                }
            }
        }
        Spacer(Modifier.height(8.dp))
        SwitchRow(
            title = strings.autoBackup,
            subtitle = strings.autoBackupSubtitle,
            checked = uiState.autoBackupEnabled,
            onCheckedChange = viewModel::setAutoBackupEnabled
        )
    }
}
