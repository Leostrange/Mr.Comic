// Phase N (2026-08-03): интерактивные карточки вынесены из SettingsReaderSection.kt.
// SettingsReaderCards.kt split into topic files (2026-08-06): layout cards.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.style

/* ──── SETTINGS_READER_MIN_TOOLBAR_OPACITY (const) ──── */
internal const val SETTINGS_READER_MIN_TOOLBAR_OPACITY = 0.72f

/* ──── ReaderLandscapeSpreadCard ──── */
@Composable
internal fun ReaderLandscapeSpreadCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(
        title = when (language) {
            "en" -> "Landscape spread"
            "ja" -> "横向き見開き"
            "zh" -> "横屏展开"
            "ko" -> "가로 펼침"
            else -> "Ландшафтный разворот"
        }
    ) {
        SwitchRow(
            title = when (language) {
                "en" -> "Use two-page spread on wide screens"
                "ja" -> "広い画面では見開きを使う"
                "zh" -> "在宽屏上使用双页展开"
                "ko" -> "넓은 화면에서 양면 펼침 사용"
                else -> "Использовать разворот на широком экране"
            },
            subtitle = when (language) {
                "en" -> "Works for image-based page reading. Text books stay portrait and webtoon ignores this."
                "ja" -> "画像ベースのページ読みで使われます。テキストは縦向きのまま、webtoon では無視されます。"
                "zh" -> "仅用于图片型分页阅读。文本书籍保持竖屏，webtoon 会忽略这个开关。"
                "ko" -> "이미지 기반 페이지 읽기에서만 동작합니다. 텍스트 책은 세로 고정이고 웹툰은 이 스위치를 무시합니다."
                else -> "Работает для графического постраничного чтения. Текстовые книги остаются в портрете, а webtoon игнорирует этот переключатель."
            },
            checked = uiState.readerLandscapeSpreadEnabled,
            onCheckedChange = viewModel::setReaderLandscapeSpreadEnabled
        )
    }
}

/* ──── ReaderHeaderFooterSettingsCard ──── */
@Composable
internal fun ReaderHeaderFooterSettingsCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    var pickerTarget by rememberSaveable { mutableStateOf<String?>(null) }
    val options = readerHeaderFooterPickerOptions(language)
    SettingsCard(
        title = when (language) {
            "en" -> "Header and footer slots"
            "ja" -> "ヘッダーとフッターのスロット"
            "zh" -> "页眉页脚槽位"
            "ko" -> "헤더·푸터 슬롯"
            else -> "Слоты колонтитулов"
        }
    ) {
        Text(
            when (language) {
                "en" -> "Header"
                "ja" -> "ヘッダー"
                "zh" -> "页眉"
                "ko" -> "헤더"
                else -> "Верхний колонтитул"
            },
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Left"
                "ja" -> "左"
                "zh" -> "左"
                "ko" -> "왼쪽"
                else -> "Слева"
            },
            value = readerInfoSlotLabel(language, uiState.readerHeaderLeftSlot),
            onClick = { pickerTarget = "header_left" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Center"
                "ja" -> "中央"
                "zh" -> "中间"
                "ko" -> "가운데"
                else -> "По центру"
            },
            value = readerInfoSlotLabel(language, uiState.readerHeaderCenterSlot),
            onClick = { pickerTarget = "header_center" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Right"
                "ja" -> "右"
                "zh" -> "右"
                "ko" -> "오른쪽"
                else -> "Справа"
            },
            value = readerInfoSlotLabel(language, uiState.readerHeaderRightSlot),
            onClick = { pickerTarget = "header_right" }
        )
        Spacer(Modifier.height(4.dp))
        Text(
            when (language) {
                "en" -> "Footer"
                "ja" -> "フッター"
                "zh" -> "页脚"
                "ko" -> "푸터"
                else -> "Нижний колонтитул"
            },
            style = MaterialTheme.typography.labelMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Left"
                "ja" -> "左"
                "zh" -> "左"
                "ko" -> "왼쪽"
                else -> "Слева"
            },
            value = readerInfoSlotLabel(language, uiState.readerFooterLeftSlot),
            onClick = { pickerTarget = "footer_left" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Center"
                "ja" -> "中央"
                "zh" -> "中间"
                "ko" -> "가운데"
                else -> "По центру"
            },
            value = readerInfoSlotLabel(language, uiState.readerFooterCenterSlot),
            onClick = { pickerTarget = "footer_center" }
        )
        SettingsPickerTile(
            title = when (language) {
                "en" -> "Right"
                "ja" -> "右"
                "zh" -> "右"
                "ko" -> "오른쪽"
                else -> "Справа"
            },
            value = readerInfoSlotLabel(language, uiState.readerFooterRightSlot),
            onClick = { pickerTarget = "footer_right" }
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Font size"
                "ja" -> "文字サイズ"
                "zh" -> "字体大小"
                "ko" -> "글꼴 크기"
                else -> "Размер шрифта"
            },
            valueLabel = "${uiState.readerHeaderFooterFontSize} sp",
            value = uiState.readerHeaderFooterFontSize.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterFontSize(it.toInt()) },
            valueRange = 10f..20f,
            steps = 9
        )
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Vertical padding"
                "ja" -> "上下余白"
                "zh" -> "垂直边距"
                "ko" -> "세로 여백"
                else -> "Вертикальные поля"
            },
            valueLabel = "${uiState.readerHeaderFooterVerticalPadding} dp",
            value = uiState.readerHeaderFooterVerticalPadding.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterVerticalPadding(it.toInt()) },
            valueRange = 4f..20f,
            steps = 7
        )
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Left inset"
                "ja" -> "左余白"
                "zh" -> "左边距"
                "ko" -> "왼쪽 여백"
                else -> "Левое поле"
            },
            valueLabel = "${uiState.readerHeaderFooterLeftPadding} dp",
            value = uiState.readerHeaderFooterLeftPadding.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterLeftPadding(it.toInt()) },
            valueRange = 8f..32f,
            steps = 11
        )
        SettingsSliderTile(
            title = when (language) {
                "en" -> "Right inset"
                "ja" -> "右余白"
                "zh" -> "右边距"
                "ko" -> "오른쪽 여백"
                else -> "Правое поле"
            },
            valueLabel = "${uiState.readerHeaderFooterRightPadding} dp",
            value = uiState.readerHeaderFooterRightPadding.toFloat(),
            onValueChange = { viewModel.setReaderHeaderFooterRightPadding(it.toInt()) },
            valueRange = 8f..32f,
            steps = 11
        )
    }

    pickerTarget?.let { target ->
        SettingsPickerDialog(
            title = readerChromeSlotPickerTitle(language, target),
            options = options,
            selectedValue = when (target) {
                "header_left" -> uiState.readerHeaderLeftSlot
                "header_center" -> uiState.readerHeaderCenterSlot
                "header_right" -> uiState.readerHeaderRightSlot
                "footer_left" -> uiState.readerFooterLeftSlot
                "footer_center" -> uiState.readerFooterCenterSlot
                else -> uiState.readerFooterRightSlot
            },
            onDismiss = { pickerTarget = null },
            onSelect = { selected ->
                when (target) {
                    "header_left" -> viewModel.setReaderHeaderSlot("LEFT", selected)
                    "header_center" -> viewModel.setReaderHeaderSlot("CENTER", selected)
                    "header_right" -> viewModel.setReaderHeaderSlot("RIGHT", selected)
                    "footer_left" -> viewModel.setReaderFooterSlot("LEFT", selected)
                    "footer_center" -> viewModel.setReaderFooterSlot("CENTER", selected)
                    else -> viewModel.setReaderFooterSlot("RIGHT", selected)
                }
                pickerTarget = null
            }
        )
    }
}

/* ──── ReaderPagingSettingsCard ──── */
@Composable
internal fun ReaderPagingSettingsCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    var pickerTarget by rememberSaveable { mutableStateOf<String?>(null) }
    SettingsCard(
        title = when (language) {
            "en" -> "Tap zones and interaction"
            "ja" -> "タップゾーンと操作"
            "zh" -> "点击区域与交互"
            "ko" -> "탭 영역과 상호작용"
            else -> "Зоны нажатия и взаимодействие"
        }
    ) {
        ChipRow {
            listOf(
                ReaderTapZoneMode.SIMPLE to when (language) {
                    "en" -> "Simple"
                    "ja" -> "シンプル"
                    "zh" -> "简单"
                    "ko" -> "단순"
                    else -> "Простой"
                },
                ReaderTapZoneMode.CUSTOM to when (language) {
                    "en" -> "Custom"
                    "ja" -> "カスタム"
                    "zh" -> "自定义"
                    "ko" -> "사용자 지정"
                    else -> "Настраиваемый"
                }
            ).forEach { (mode, label) ->
                MrComicFilterChip(
                    selected = ReaderTapZoneMode.fromStored(uiState.readerTapZoneMode) == mode,
                    onClick = { viewModel.setReaderTapZoneMode(mode.name) },
                    label = { Text(label) }
                )
            }
        }
        SwitchRow(
            title = when (language) {
                "en" -> "Swap page zones"
                "ja" -> "ページ送りゾーンを入れ替える"
                "zh" -> "交换翻页区域"
                "ko" -> "페이지 넘김 영역 바꾸기"
                else -> "Поменять области перелистывания"
            },
            subtitle = when (language) {
                "en" -> "Useful when you want left and right paging behavior inverted in the simple layout."
                "ja" -> "シンプル構成で左右のページ送りを入れ替えたいときに使います。"
                "zh" -> "当你想在简单布局里反转左右翻页逻辑时使用。"
                "ko" -> "단순 레이아웃에서 좌우 페이지 넘김 방향을 바꾸고 싶을 때 사용합니다."
                else -> "Полезно, если в простой схеме хочется инвертировать левую и правую зону перелистывания."
            },
            checked = uiState.readerTapZoneSwap,
            onCheckedChange = viewModel::setReaderTapZoneSwap
        )
        SwitchRow(
            title = when (language) {
                "en" -> "Volume buttons paging"
                "ja" -> "音量ボタンでページ送り"
                "zh" -> "使用音量键翻页"
                "ko" -> "볼륨 버튼으로 넘기기"
                else -> "Листание кнопками громкости"
            },
            subtitle = when (language) {
                "en" -> "Volume up goes to the previous page, volume down goes forward."
                "ja" -> "音量アップで前のページ、音量ダウンで次のページに進みます。"
                "zh" -> "音量加返回上一页，音量减进入下一页。"
                "ko" -> "볼륨 업은 이전 페이지, 볼륨 다운은 다음 페이지로 이동합니다."
                else -> "Кнопка громкости вверх ведёт на предыдущую страницу, вниз — на следующую."
            },
            checked = uiState.readerVolumeKeysPaging,
            onCheckedChange = viewModel::setReaderVolumeKeysPaging
        )
        if (ReaderTapZoneMode.fromStored(uiState.readerTapZoneMode) == ReaderTapZoneMode.CUSTOM) {
            SettingsPickerTile(
                title = when (language) {
                    "en" -> "Left zone"
                    "ja" -> "左ゾーン"
                    "zh" -> "左侧区域"
                    "ko" -> "왼쪽 영역"
                    else -> "Левая зона"
                },
                value = readerTapZoneActionLabel(language, uiState.readerTapZoneLeftAction),
                onClick = { pickerTarget = "left" }
            )
            SettingsPickerTile(
                title = when (language) {
                    "en" -> "Center zone"
                    "ja" -> "中央ゾーン"
                    "zh" -> "中间区域"
                    "ko" -> "가운데 영역"
                    else -> "Центральная зона"
                },
                value = readerTapZoneActionLabel(language, uiState.readerTapZoneCenterAction),
                onClick = { pickerTarget = "center" }
            )
            SettingsPickerTile(
                title = when (language) {
                    "en" -> "Right zone"
                    "ja" -> "右ゾーン"
                    "zh" -> "右侧区域"
                    "ko" -> "오른쪽 영역"
                    else -> "Правая зона"
                },
                value = readerTapZoneActionLabel(language, uiState.readerTapZoneRightAction),
                onClick = { pickerTarget = "right" }
            )
        }
    }

    pickerTarget?.let { target ->
        SettingsPickerDialog(
            title = when (target) {
                "left" -> if (language == "en") "Left zone action" else "Действие левой зоны"
                "center" -> if (language == "en") "Center zone action" else "Действие центральной зоны"
                else -> if (language == "en") "Right zone action" else "Действие правой зоны"
            },
            options = readerTapZonePickerOptions(language),
            selectedValue = when (target) {
                "left" -> uiState.readerTapZoneLeftAction
                "center" -> uiState.readerTapZoneCenterAction
                else -> uiState.readerTapZoneRightAction
            },
            onDismiss = { pickerTarget = null },
            onSelect = { selected ->
                viewModel.setReaderTapZoneAction(target.uppercase(), selected)
                pickerTarget = null
            }
        )
    }
}

/* ──── ReaderPresetsCard ──── */
@Composable
internal fun ReaderPresetsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.readerPresetsCard) {
        val activePreset = ReadingPreset.fromStored(uiState.readerPreset)
        val presets = listOf(
            ReadingPreset.CUSTOM to strings.readerPresetCustom,
        ) + io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().map { preset ->
            preset to readingPresetQuickLabel(strings, preset)
        }
        ChipRow {
            presets.forEach { (preset, label) ->
                MrComicFilterChip(
                    selected = activePreset == preset,
                    onClick = { viewModel.setReaderPreset(preset.name) },
                    label = { Text(label) }
                )
            }
        }
        if (activePreset != ReadingPreset.CUSTOM) {
            val style = activePreset.style()
            Spacer(Modifier.height(4.dp))
            Text(
                when (style.pageAnimation) {
                    "FADE" -> strings.animFade
                    "NONE" -> strings.animNone
                    else -> strings.animSlide
                },
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
    }
}

/* ──── ReaderModeCard ──── */
@Composable
internal fun ReaderModeCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.readingModeCard) {
        ChipRow {
            MrComicFilterChip(
                selected = uiState.readingMode == ReadingMode.PAGE_LTR ||
                        uiState.readingMode == ReadingMode.PAGE_RTL,
                onClick = { viewModel.setReadingMode(ReadingMode.PAGE_LTR) },
                label = { Text(readerModeSettingsLabel(strings.languageCode, ReadingMode.PAGE_LTR)) }
            )
            MrComicFilterChip(
                selected = uiState.readingMode == ReadingMode.WEBTOON,
                onClick = { viewModel.setReadingMode(ReadingMode.WEBTOON) },
                label = { Text(readerModeSettingsLabel(strings.languageCode, ReadingMode.WEBTOON)) }
            )
        }
    }
}

/* ──── ReaderImageLayoutCard ──── */
@Composable
internal fun ReaderImageLayoutCard(
    uiState: SettingsUiState,
    language: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = readerImageLayoutCardTitle(language)) {
        Text(
            readerImageLayoutCardHint(language),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText(readerImageScaleModeTitle(language))
        ChipRow {
            ReaderImageScaleMode.entries.forEach { mode ->
                MrComicFilterChip(
                    selected = uiState.readerImageScaleMode == mode.storedValue,
                    onClick = { viewModel.setReaderImageScaleMode(mode.storedValue) },
                    label = { Text(readerImageScaleModeLabel(mode, language)) }
                )
            }
        }
        Spacer(Modifier.height(6.dp))
        SettingsSliderTile(
            title = readerMarginCropHorizontalTitle(language),
            valueLabel = readerMarginCropPercentLabel(uiState.readerImageMarginCropHorizontal),
            value = uiState.readerImageMarginCropHorizontal,
            onValueChange = viewModel::setReaderImageMarginCropHorizontal,
            valueRange = 0f..0.22f,
            steps = 10
        )
        Spacer(Modifier.height(8.dp))
        SettingsSliderTile(
            title = readerMarginCropVerticalTitle(language),
            valueLabel = readerMarginCropPercentLabel(uiState.readerImageMarginCropVertical),
            value = uiState.readerImageMarginCropVertical,
            onValueChange = viewModel::setReaderImageMarginCropVertical,
            valueRange = 0f..0.22f,
            steps = 10
        )
    }
}

/* ──── ReaderScreenCard ──── */
@Composable
internal fun ReaderScreenCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    val behaviorText = remember(strings.languageCode) { readerBehaviorText(strings.languageCode) }
    val sliderValue = if (uiState.brightness < 0f) 0f else uiState.brightness.coerceIn(0.05f, 1f)
    SettingsCard(title = strings.readerScreenCard) {
        SettingsSliderTile(
            title = strings.brightnessLabel,
            valueLabel = if (uiState.brightness < 0f) strings.themeSystem else "${(sliderValue * 100).toInt()}%",
            value = sliderValue,
            onValueChange = viewModel::setBrightness,
            valueRange = 0f..1f
        )
        Spacer(Modifier.height(4.dp))
        LabelText(
            "${behaviorText.screenTimeoutTitle}: " +
                readerScreenTimeoutLabel(uiState.readerScreenTimeoutMode, strings.languageCode)
        )
        ChipRow {
            ReaderScreenTimeoutMode.entries.forEach { mode ->
                MrComicFilterChip(
                    selected = uiState.readerScreenTimeoutMode == mode.storedValue,
                    onClick = { viewModel.setReaderScreenTimeoutMode(mode.storedValue) },
                    label = { Text(readerScreenTimeoutLabel(mode.storedValue, strings.languageCode)) }
                )
            }
        }
        SwitchRow(
            title = strings.keepScreenOn,
            subtitle = behaviorText.keepScreenOnSubtitle,
            checked = uiState.keepScreenOnInReader,
            onCheckedChange = viewModel::setKeepScreenOnInReader
        )
        SwitchRow(
            title = strings.fullscreenMode,
            subtitle = behaviorText.immersiveSubtitle,
            checked = uiState.readerImmersiveMode,
            onCheckedChange = viewModel::setReaderImmersiveMode
        )
        Spacer(Modifier.height(10.dp))
        Text(
            text = readerToolbarSectionTitle(strings.languageCode),
            style = MaterialTheme.typography.titleSmall,
            fontWeight = FontWeight.SemiBold
        )
        Spacer(Modifier.height(6.dp))
        val combinedReaderToolbarOpacity = ((uiState.readerTopToolbarOpacity + uiState.readerBottomToolbarOpacity) * 0.5f)
            .coerceIn(SETTINGS_READER_MIN_TOOLBAR_OPACITY, 1f)
        SettingsSliderTile(
            title = readerToolbarOpacityTitle(strings.languageCode),
            valueLabel = "${(combinedReaderToolbarOpacity * 100).toInt()}%",
            value = combinedReaderToolbarOpacity,
            onValueChange = viewModel::setReaderToolbarOpacity,
            valueRange = SETTINGS_READER_MIN_TOOLBAR_OPACITY..1f,
            steps = 10
        )
        Spacer(Modifier.height(8.dp))
        SettingsSliderTile(
            title = readerToolbarBlurTitle(strings.languageCode),
            valueLabel = "${(uiState.readerToolbarBlur * 100).toInt()}%",
            value = uiState.readerToolbarBlur,
            onValueChange = viewModel::setReaderToolbarBlur,
            valueRange = 0f..1f,
            steps = 9
        )
        Spacer(Modifier.height(8.dp))
        SwitchRow(
            title = readerToolbarAutoHideTitle(strings.languageCode),
            subtitle = readerToolbarAutoHideSubtitle(strings.languageCode),
            checked = uiState.readerChromeAutoHide,
            onCheckedChange = viewModel::setReaderChromeAutoHide
        )
    }
}

