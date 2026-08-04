// Phase O (2026-08-03): интерактивные карточки вынесены из SettingsLibrarySection.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ViewList
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import kotlin.math.roundToInt
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.AppStrings

/**
 * Library interactive cards (Phase O, 2026-08-03): composables that accept
 * viewModel: SettingsViewModel — layout mode and card style settings.
 * Moved from SettingsLibrarySection.kt; behavior is unchanged.
 */

/* ──── LibraryLayoutCard ──── */
@Composable
internal fun LibraryLayoutCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    libraryText: LibrarySectionText,
    viewModel: SettingsViewModel,
    title: String = libraryText.displayCard
) {
    SettingsCard(title = title) {
        val currentViewMode = uiState.libraryViewMode
        LabelText(strings.libraryDefaultView)
        ChipRow {
            MrComicFilterChip(
                selected = currentViewMode == "GRID",
                onClick = { viewModel.setLibraryViewMode("GRID") },
                label = { Text(strings.libraryViewGrid) },
                leadingIcon = {
                    Icon(
                        Icons.Default.GridView,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                }
            )
            MrComicFilterChip(
                selected = currentViewMode == "LIST",
                onClick = { viewModel.setLibraryViewMode("LIST") },
                label = { Text(strings.libraryViewList) },
                leadingIcon = {
                    Icon(
                        Icons.AutoMirrored.Filled.ViewList,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                }
            )
            MrComicFilterChip(
                selected = currentViewMode == "STRIPS",
                onClick = { viewModel.setLibraryViewMode("STRIPS") },
                label = { Text(settingsLibraryViewLabel(uiState.appLanguage, "STRIPS")) },
                leadingIcon = {
                    Icon(
                        Icons.Default.Menu,
                        contentDescription = null,
                        modifier = Modifier.size(16.dp)
                    )
                }
            )
        }
        if (currentViewMode == "GRID") {
            Spacer(Modifier.height(4.dp))
            LabelText("${strings.libraryGridColumns}: ${uiState.libraryGridColumns}")
            ChipRow {
                listOf(2, 3, 4).forEach { n ->
                    MrComicFilterChip(
                        selected = uiState.libraryGridColumns == n,
                        onClick = { viewModel.setLibraryGridColumns(n) },
                        label = { Text("$n") }
                    )
                }
            }
        }
        Spacer(Modifier.height(6.dp))
        SwitchRow(
            title = when (uiState.appLanguage) {
                "en" -> "Show Files / Reading / Completed"
                "ja" -> "Files / Reading / Completed を表示"
                "zh" -> "显示 文件 / 在读 / 已读"
                "ko" -> "파일 / 읽는 중 / 읽음 표시"
                else -> "Показывать островки Файлы / Читаю / Прочитано"
            },
            subtitle = when (uiState.appLanguage) {
                "en" -> "Shows the library status row under the main section chips."
                "ja" -> "メインのセクションチップの下に状態行を表示します。"
                "zh" -> "在主分区标签下显示书库状态行。"
                "ko" -> "메인 섹션 칩 아래에 라이브러리 상태 줄을 표시합니다."
                else -> "Показывает строку состояния библиотеки под основными островками."
            },
            checked = uiState.libraryShowStatusChips,
            onCheckedChange = viewModel::setLibraryShowStatusChips
        )
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.recentStripPosition)
        ChipRow {
            listOf(
                "TOP" to when (uiState.appLanguage) {
                    "en" -> "Top"
                    "ja" -> "上"
                    "zh" -> "顶部"
                    "ko" -> "상단"
                    else -> "Сверху"
                },
                "BOTTOM" to when (uiState.appLanguage) {
                    "en" -> "Bottom"
                    "ja" -> "下"
                    "zh" -> "底部"
                    "ko" -> "하단"
                    else -> "Снизу"
                }
            ).forEach { (position, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryRecentStripPosition == position,
                    onClick = { viewModel.setLibraryRecentStripPosition(position) },
                    label = { Text(label) }
                )
            }
        }
    }
}

/* ──── LibraryCardsStyleCard ──── */
@Composable
internal fun LibraryCardsStyleCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    libraryText: LibrarySectionText,
    viewModel: SettingsViewModel,
    title: String = libraryText.cardsCard
) {
    val coverTitleText = coverTitleSettingsText(uiState.appLanguage)
    SettingsCard(title = title) {
        SettingsSliderTile(
            title = strings.libraryTileSize,
            valueLabel = "${uiState.libraryTileSize} dp",
            value = uiState.libraryTileSize.toFloat(),
            onValueChange = { viewModel.setLibraryTileSize(it.toInt()) },
            valueRange = 80f..200f
        )
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.cardDensity)
        ChipRow {
            listOf(
                "COMPACT" to libraryCardStyleLabel("COMPACT", uiState.appLanguage),
                "BALANCED" to libraryCardStyleLabel("BALANCED", uiState.appLanguage),
                "SHOWCASE" to libraryCardStyleLabel("SHOWCASE", uiState.appLanguage)
            ).forEach { (style, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryCardStyle == style,
                    onClick = { viewModel.setLibraryCardStyle(style) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.coverScale)
        ChipRow {
            listOf(
                "CROP" to libraryCoverScaleLabel("CROP", uiState.appLanguage),
                "FIT" to libraryCoverScaleLabel("FIT", uiState.appLanguage)
            ).forEach { (scale, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryCoverScale == scale,
                    onClick = { viewModel.setLibraryCoverScale(scale) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.thumbnailShape)
        ChipRow {
            listOf(
                "RECTANGLE" to libraryText.rectangle,
                "SQUARE" to libraryText.square
            ).forEach { (mode, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryThumbnailMode == mode,
                    onClick = { viewModel.setLibraryThumbnailMode(mode) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(libraryGraphicCoverStyleTitle(uiState.appLanguage))
        ChipRow {
            listOf(
                "POSTER" to graphicCoverStyleOptionLabel("POSTER", uiState.appLanguage),
                "INK" to graphicCoverStyleOptionLabel("INK", uiState.appLanguage),
                "MINIMAL" to graphicCoverStyleOptionLabel("MINIMAL", uiState.appLanguage)
            ).forEach { (style, label) ->
                MrComicFilterChip(
                    selected = uiState.libraryGraphicCoverStyle == style,
                    onClick = { viewModel.setLibraryGraphicCoverStyle(style) },
                    label = { Text(label) }
                )
            }
        }

        SwitchRow(
            title = libraryText.progressTitle,
            subtitle = libraryText.progressSubtitle,
            checked = uiState.libraryShowProgress,
            onCheckedChange = viewModel::setLibraryShowProgress
        )
        SwitchRow(
            title = coverTitleText.title,
            subtitle = coverTitleText.subtitle,
            checked = uiState.libraryShowCoverTitles,
            onCheckedChange = viewModel::setLibraryShowCoverTitles
        )
        SettingsSliderTile(
            title = libraryText.cardShadow,
            valueLabel = "${(uiState.libraryCardShadow * 100).toInt()}%",
            value = uiState.libraryCardShadow,
            onValueChange = viewModel::setLibraryCardShadow,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.titleScale,
            valueLabel = "${(uiState.libraryTitleScale * 100).toInt()}%",
            value = uiState.libraryTitleScale,
            onValueChange = viewModel::setLibraryTitleScale,
            valueRange = 0.85f..1.3f,
            steps = 8
        )
        Spacer(Modifier.height(4.dp))
        LabelText(libraryText.titleLines)
        ChipRow {
            listOf(1, 2, 3).forEach { lines ->
                MrComicFilterChip(
                    selected = uiState.libraryTitleLines == lines,
                    onClick = { viewModel.setLibraryTitleLines(lines) },
                    label = { Text("$lines") }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.cardStroke,
            valueLabel = "${(uiState.libraryCardStroke * 100).toInt()}%",
            value = uiState.libraryCardStroke,
            onValueChange = viewModel::setLibraryCardStroke,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.cardCornerRadius,
            valueLabel = "${uiState.libraryCardCornerRadius} dp",
            value = uiState.libraryCardCornerRadius.toFloat(),
            onValueChange = { viewModel.setLibraryCardCornerRadius(it.roundToInt()) },
            valueRange = 6f..24f,
            steps = 8
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = libraryText.titlePanelOpacity,
            valueLabel = "${(uiState.libraryTitlePanelOpacity * 100).toInt()}%",
            value = uiState.libraryTitlePanelOpacity,
            onValueChange = viewModel::setLibraryTitlePanelOpacity,
            valueRange = 0.18f..0.78f,
            steps = 9
        )
    }
}

