// Phase P (2026-08-03):
// Презеты + превью (8 шт.) → SettingsLibraryPreviews.kt.
// Остались: LibrarySection (маршрутизатор), 5 label/i18n-хелперов.
// Маркеры Phase O сохранены: LibraryLayoutCard, LibraryCardsStyleCard → SettingsLibraryCards.kt.

// Phase O (2026-08-03):
// Интерактивные карточки (2 шт.) → SettingsLibraryCards.kt.
// Остались: LibrarySection (маршрутизатор), 8 не-viewModel-композаблов,
// label/i18n-хелперы.

// Phase D (2026-08-03): Library-блок вынесен из SettingsScreen.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import android.content.Intent
import androidx.activity.compose.rememberLauncherForActivityResult
import androidx.activity.result.contract.ActivityResultContracts
import androidx.compose.ui.platform.LocalContext
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.AppStrings

/**
 * Library (Phase D, 2026-08-03): LibrarySection + library layout/cards cards,
 * background/shelf preset cards, style labels and preview components.
 * Moved from SettingsScreen.kt; behavior is unchanged.
 */

/* ──── LibrarySection (fun) ──── */
@Composable
internal fun LibrarySection(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel,
    currentPage: LibrarySettingsPage,
    onImportRejected: () -> Unit,
    onPageChange: (LibrarySettingsPage) -> Unit,
    modifier: Modifier = Modifier
) {
    val libraryText = remember(uiState.appLanguage) { librarySectionText(uiState.appLanguage) }
    LazyColumn(
        modifier = modifier.fillMaxSize(),
        contentPadding = PaddingValues(horizontal = 16.dp, vertical = 12.dp),
        verticalArrangement = Arrangement.spacedBy(10.dp)
    ) {
        when (currentPage) {
            LibrarySettingsPage.OVERVIEW -> {
                item {
                    SettingsCard(title = libraryCollectionOrderTitle(uiState.appLanguage)) {
                        LabelText(libraryText.sortDefault)
                        ChipRow {
                            listOf(
                                "DATE_ADDED_DESC" to librarySortOrderLabel("DATE_ADDED_DESC", uiState.appLanguage),
                                "DATE_READ_DESC" to librarySortOrderLabel("DATE_READ_DESC", uiState.appLanguage),
                                "TITLE_ASC" to librarySortOrderLabel("TITLE_ASC", uiState.appLanguage),
                                "PROGRESS_DESC" to librarySortOrderLabel("PROGRESS_DESC", uiState.appLanguage)
                            ).forEach { (sortOrder, label) ->
                                MrComicFilterChip(
                                    selected = uiState.librarySortOrder == sortOrder,
                                    onClick = { viewModel.setLibrarySortOrder(sortOrder) },
                                    label = { Text(label) }
                                )
                            }
                        }
                        Spacer(Modifier.height(10.dp))
                        LabelText(libraryText.groupBy)
                        ChipRow {
                            libraryText.groupByLabels.forEach { (groupBy, label) ->
                                MrComicFilterChip(
                                    selected = uiState.libraryGroupBy == groupBy,
                                    onClick = { viewModel.setLibraryGroupBy(groupBy) },
                                    label = { Text(label) }
                                )
                            }
                        }
                    }
                }
            }
            LibrarySettingsPage.ACCESS -> item {
                LibraryAccessCard(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel
                )
            }
            LibrarySettingsPage.CACHE -> item {
                LibraryCacheCard(
                    uiState = uiState,
                    strings = strings,
                    viewModel = viewModel
                )
            }
            LibrarySettingsPage.IMPORT_EXPORT -> {
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

/* ──── LibraryLayoutCard (fun) ──── */
// LibraryLayoutCard → SettingsLibraryCards.kt (Phase O 2026-08-03)

/* ──── LibraryCardsStyleCard (fun) ──── */
// LibraryCardsStyleCard → SettingsLibraryCards.kt (Phase O 2026-08-03)

/* ──── LibraryBackgroundPresetCard (fun) ──── */
// LibraryBackgroundPresetCard → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── SelectedLibraryBackgroundPreview (fun) ──── */
// SelectedLibraryBackgroundPreview → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── LibraryShelfPresetCard (fun) ──── */
// LibraryShelfPresetCard → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── libraryBackgroundStyleLabel (fun) ──── */
internal fun libraryBackgroundStyleLabel(style: String, language: String): String = when (style) {
    "LIQUID_GLASS" -> when (language) {
        "en" -> "Liquid glass"
        "ja" -> "リキッドガラス"
        "zh" -> "液态玻璃"
        "ko" -> "리퀴드 글래스"
        else -> "Жидкое стекло"
    }
    "MIDNIGHT_MICA" -> when (language) {
        "en" -> "Midnight mica"
        "ja" -> "ミッドナイトマイカ"
        "zh" -> "午夜云母"
        "ko" -> "미드나이트 미카"
        else -> "Полуночная слюда"
    }
    "SUNSET_HAZE" -> when (language) {
        "en" -> "Sunset haze"
        "ja" -> "サンセットヘイズ"
        "zh" -> "日落薄雾"
        "ko" -> "선셋 헤이즈"
        else -> "Закатная дымка"
    }
    "DARK_STUDY" -> when (language) {
        "en" -> "Dark study"
        "ja" -> "ダーク書斎"
        "zh" -> "暗色书房"
        "ko" -> "다크 서재"
        else -> "Тёмный кабинет"
    }
    "LIGHT_GREENHOUSE" -> when (language) {
        "en" -> "Light greenhouse"
        "ja" -> "明るい温室"
        "zh" -> "明亮温室"
        "ko" -> "라이트 온실"
        else -> "Светлая оранжерея"
    }
    "SCIENCE_LAB" -> when (language) {
        "en" -> "Science lab"
        "ja" -> "サイエンスラボ"
        "zh" -> "科学实验室"
        "ko" -> "사이언스 랩"
        else -> "Научная лаборатория"
    }
    "CITY_LIBRARY" -> when (language) {
        "en" -> "City library"
        "ja" -> "シティライブラリ"
        "zh" -> "城市书库"
        "ko" -> "시티 라이브러리"
        else -> "Городская библиотека"
    }
    "AURORA_MIST" -> when (language) {
        "en" -> "Aurora mist"
        "ja" -> "オーロラミスト"
        "zh" -> "极光薄雾"
        "ko" -> "오로라 미스트"
        else -> "Аврора-дымка"
    }
    "CINEMA_NOIR" -> when (language) {
        "en" -> "Cinema noir"
        "ja" -> "シネマノワール"
        "zh" -> "黑色影院"
        "ko" -> "시네마 누아르"
        else -> "Синема-нуар"
    }
    "PAPER_GRAIN" -> when (language) {
        "en" -> "Paper grain"
        "ja" -> "紙目"
        "zh" -> "纸纹"
        "ko" -> "페이퍼 그레인"
        else -> "Зерно бумаги"
    }
    "MANGA_INK" -> when (language) {
        "en" -> "Manga ink"
        "ja" -> "マンガインク"
        "zh" -> "漫画墨迹"
        "ko" -> "망가 잉크"
        else -> "Манга-инк"
    }
    "EINK_WASH" -> when (language) {
        "en" -> "E-Ink wash"
        "ja" -> "E-Inkウォッシュ"
        "zh" -> "电子墨水水洗"
        "ko" -> "이잉크 워시"
        else -> "E-Ink wash"
    }
    "IMAGE" -> when (language) {
        "en" -> "Image"
        "ja" -> "画像"
        "zh" -> "图片"
        "ko" -> "이미지"
        else -> "Изображение"
    }
    else -> style
}

/* ──── libraryShelfStyleLabel (fun) ──── */
internal fun libraryShelfStyleLabel(style: String, language: String): String = when (style) {
    "FROST" -> when (language) {
        "en" -> "Frost"
        "ja" -> "フロスト"
        "zh" -> "霜玻璃"
        "ko" -> "프로스트"
        else -> "Фрост"
    }
    "ALUMINUM" -> when (language) {
        "en" -> "Aluminum"
        "ja" -> "アルミニウム"
        "zh" -> "铝金属"
        "ko" -> "알루미늄"
        else -> "Алюминий"
    }
    "FLOAT" -> when (language) {
        "en" -> "Float"
        "ja" -> "フロート"
        "zh" -> "悬浮"
        "ko" -> "플로트"
        else -> "Парящая"
    }
    "GLASS" -> when (language) {
        "en" -> "Glass"
        "ja" -> "ガラス"
        "zh" -> "玻璃"
        "ko" -> "유리"
        else -> "Стекло"
    }
    "OAK" -> when (language) {
        "en" -> "Oak"
        "ja" -> "オーク"
        "zh" -> "橡木"
        "ko" -> "오크"
        else -> "Дуб"
    }
    "WALNUT" -> when (language) {
        "en" -> "Walnut"
        "ja" -> "ウォルナット"
        "zh" -> "胡桃木"
        "ko" -> "월넛"
        else -> "Орех"
    }
    "STEEL" -> when (language) {
        "en" -> "Steel"
        "ja" -> "スチール"
        "zh" -> "钢制"
        "ko" -> "스틸"
        else -> "Сталь"
    }
    "LACQUER" -> when (language) {
        "en" -> "Lacquer"
        "ja" -> "ラッカー"
        "zh" -> "亮漆"
        "ko" -> "래커"
        else -> "Лак"
    }
    "NEON" -> when (language) {
        "en" -> "Neon"
        "ja" -> "ネオン"
        "zh" -> "霓虹"
        "ko" -> "네온"
        else -> "Неон"
    }
    "MINIMAL" -> when (language) {
        "en" -> "Minimal"
        "ja" -> "ミニマル"
        "zh" -> "极简"
        "ko" -> "미니멀"
        else -> "Минимал"
    }
    "NONE" -> when (language) {
        "en" -> "None"
        "ja" -> "なし"
        "zh" -> "无"
        "ko" -> "없음"
        else -> "Нет"
    }
    else -> style
}

/* ──── graphicCoverStyleOptionLabel (fun) ──── */
internal fun graphicCoverStyleOptionLabel(style: String, language: String): String = when (style) {
    "POSTER" -> when (language) {
        "en" -> "Poster"
        "ja" -> "ポスター"
        "zh" -> "海报"
        "ko" -> "포스터"
        else -> "Постер"
    }
    "INK" -> when (language) {
        "en" -> "Ink"
        "ja" -> "インク"
        "zh" -> "墨色"
        "ko" -> "잉크"
        else -> "Тушь"
    }
    "MINIMAL" -> when (language) {
        "en" -> "Minimal"
        "ja" -> "ミニマル"
        "zh" -> "极简"
        "ko" -> "미니멀"
        else -> "Минимал"
    }
    else -> style
}

/* ──── librarySortOrderLabel (fun) ──── */
internal fun librarySortOrderLabel(sortOrder: String, language: String): String = when (sortOrder) {
    "DATE_ADDED_DESC" -> when (language) {
        "en" -> "New"
        "ja" -> "追加順"
        "zh" -> "最新导入"
        "ko" -> "추가순"
        else -> "Новые"
    }
    "DATE_READ_DESC" -> when (language) {
        "en" -> "Recent"
        "ja" -> "最近読んだ"
        "zh" -> "最近阅读"
        "ko" -> "최근 읽음"
        else -> "Недавние"
    }
    "TITLE_ASC" -> when (language) {
        "en" -> "Title"
        "ja" -> "タイトル"
        "zh" -> "标题"
        "ko" -> "제목"
        else -> "Название"
    }
    "PROGRESS_DESC" -> when (language) {
        "en" -> "Progress"
        "ja" -> "進捗"
        "zh" -> "进度"
        "ko" -> "진행률"
        else -> "Прогресс"
    }
    else -> sortOrder
}

/* ──── libraryGroupByLabel (fun) ──── */
internal fun libraryGroupByLabel(groupBy: String, language: String): String = when (groupBy) {
    "NONE" -> when (language) {
        "en" -> "No grouping"
        "ja" -> "グループなし"
        "zh" -> "不分组"
        "ko" -> "그룹 없음"
        else -> "Без группировки"
    }
    "AUTHOR" -> when (language) {
        "en" -> "Author"
        "ja" -> "作者"
        "zh" -> "作者"
        "ko" -> "작가"
        else -> "Автор"
    }
    "SERIES" -> when (language) {
        "en" -> "Series"
        "ja" -> "シリーズ"
        "zh" -> "系列"
        "ko" -> "시리즈"
        else -> "Серия"
    }
    "FOLDER" -> when (language) {
        "en" -> "Folder"
        "ja" -> "フォルダ"
        "zh" -> "文件夹"
        "ko" -> "폴더"
        else -> "Папка"
    }
    "TAG" -> when (language) {
        "en" -> "Tag"
        "ja" -> "タグ"
        "zh" -> "标签"
        "ko" -> "태그"
        else -> "Тег"
    }
    "SOURCE" -> when (language) {
        "en" -> "Source"
        "ja" -> "ソース"
        "zh" -> "来源"
        "ko" -> "소스"
        else -> "Источник"
    }
    else -> groupBy
}

/* ──── LibraryThemePresetCard (fun) ──── */
// LibraryThemePresetCard → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── LibraryQuickPresetTile (fun) ──── */
// FlowRowScope.LibraryQuickPresetTile → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── LibraryStylePreview (fun) ──── */
// LibraryStylePreview → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── LibraryPreviewVolume (fun) ──── */
// LibraryPreviewVolume → SettingsLibraryPreviews.kt (Phase P 2026-08-03)

/* ──── LibraryPreviewFolder (fun) ──── */
// LibraryPreviewFolder → SettingsLibraryPreviews.kt (Phase P 2026-08-03)



// Phase T (2026-08-04): private fun parseLibrarySettingsPage moved here from SettingsScreen.kt

internal fun parseLibrarySettingsPage(raw: String): LibrarySettingsPage = when (raw) {
    "DISPLAY", "COVERS", "CANVAS", "SORTING" -> LibrarySettingsPage.OVERVIEW
    else -> runCatching { LibrarySettingsPage.valueOf(raw) }.getOrDefault(LibrarySettingsPage.OVERVIEW)
}

// Phase T (2026-08-04): internal fun LibraryCacheCard moved here from SettingsScreen.kt

@Composable
internal fun LibraryCacheCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.cacheCard) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(strings.imageCacheTitle, style = MaterialTheme.typography.titleSmall)
                Text(
                    strings.imageCacheHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            Spacer(Modifier.width(12.dp))
            FilledTonalButton(
                onClick = viewModel::clearImageCache,
                enabled = !uiState.isClearingCache
            ) {
                if (uiState.isClearingCache) {
                    CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                    Spacer(Modifier.width(8.dp))
                    Text(strings.clearingBtn)
                } else {
                    Text(strings.clearCacheBtn)
                }
            }
        }
    }
}

// Phase T (2026-08-04): internal fun LibraryAccessCard moved here from SettingsScreen.kt

@Composable
internal fun LibraryAccessCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val context = LocalContext.current
    val busy = uiState.isRepairingLibraryAccess
    val reconnectLauncher = rememberLauncherForActivityResult(
        contract = ActivityResultContracts.OpenDocumentTree()
    ) { uri ->
        uri ?: return@rememberLauncherForActivityResult
        runCatching {
            context.contentResolver.takePersistableUriPermission(
                uri,
                Intent.FLAG_GRANT_READ_URI_PERMISSION
            )
        }
        viewModel.repairLibraryAccess(uri)
    }

    LaunchedEffect(uiState.pendingLibraryRepairLaunchToken) {
        val token = uiState.pendingLibraryRepairLaunchToken
        if (token == 0L) return@LaunchedEffect
        viewModel.consumePendingLibraryRepairLaunch()
        reconnectLauncher.launch(null)
    }

    SettingsCard(title = libraryAccessTitle(strings.languageCode)) {
        Text(
            text = when (strings.languageCode) {
                "en" -> "If Android dropped folder permissions, reconnect the library root without losing reading progress."
                "ja" -> "Android がフォルダ権限を失った場合でも、読書進捗を失わずにライブラリルートを再接続できます。"
                "zh" -> "如果 Android 丢失了文件夹权限，可在不丢失阅读进度的情况下重新连接书库根目录。"
                "ko" -> "Android가 폴더 권한을 잃어도 읽기 진행을 잃지 않고 라이브러리 루트를 다시 연결할 수 있습니다."
                else -> "Если Android потерял права на папки, перепривяжите корень библиотеки без потери прогресса чтения."
            },
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(12.dp))
        FilledTonalButton(
            onClick = { reconnectLauncher.launch(null) },
            enabled = !busy,
            modifier = Modifier.fillMaxWidth()
        ) {
            if (uiState.isRepairingLibraryAccess) {
                CircularProgressIndicator(modifier = Modifier.size(18.dp), strokeWidth = 2.dp)
                Spacer(Modifier.width(6.dp))
                Text(
                    when (strings.languageCode) {
                        "en" -> "Reconnecting..."
                        "ja" -> "再接続中..."
                        "zh" -> "重新连接中..."
                        "ko" -> "다시 연결 중..."
                        else -> "Перепривязка..."
                    }
                )
            } else {
                Icon(Icons.Default.FolderOpen, contentDescription = null, modifier = Modifier.size(18.dp))
                Spacer(Modifier.width(6.dp))
                Text(
                    when (strings.languageCode) {
                        "en" -> "Reconnect library"
                        "ja" -> "ライブラリを再接続"
                        "zh" -> "重新连接书库"
                        "ko" -> "라이브러리 다시 연결"
                        else -> "Перепривязать библиотеку"
                    }
                )
            }
        }
    }
}
