// Phase N (2026-08-03): интерактивные карточки вынесены из SettingsReaderSection.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.runtime.saveable.rememberSaveable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReaderScreenTimeoutMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicFilterChip
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicIconButtonVariant
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.core.ui.theme.argbLongToThemeColor
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.ui.ReaderTextFontCatalog
import java.util.Locale

/**
 * Reader interactive cards (Phase N, 2026-08-03): composables that accept
 * viewModel: SettingsViewModel — landscape spread, header/footer, paging,
 * presets, mode, image layout, screen, wellness, progress, effects, preload,
 * and text style. Moved from SettingsReaderSection.kt; behavior is unchanged.
 */

/* ──── SETTINGS_READER_MIN_TOOLBAR_OPACITY (const) ──── */
private const val SETTINGS_READER_MIN_TOOLBAR_OPACITY = 0.72f

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

/* ──── ReaderWellnessCard ──── */
@Composable
internal fun ReaderWellnessCard(
    uiState: SettingsUiState,
    eyeRestText: EyeRestSettingsText,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = eyeRestText.cardTitle) {
        SwitchRow(
            title = eyeRestText.enabledTitle,
            subtitle = eyeRestText.enabledSubtitle,
            checked = uiState.readerEyeRestEnabled,
            onCheckedChange = viewModel::setReaderEyeRestEnabled
        )
        if (uiState.readerEyeRestEnabled) {
            Spacer(Modifier.height(4.dp))
            LabelText("${eyeRestText.intervalLabel}: ${uiState.readerEyeRestMinutes} ${eyeRestText.minutesSuffix}")
            ChipRow {
                listOf(10, 20, 30, 45, 60).forEach { minutes ->
                    MrComicFilterChip(
                        selected = uiState.readerEyeRestMinutes == minutes,
                        onClick = { viewModel.setReaderEyeRestMinutes(minutes) },
                        label = { Text("$minutes ${eyeRestText.minutesSuffix}") }
                    )
                }
            }
            Spacer(Modifier.height(4.dp))
            Text(
                eyeRestText.hint,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

/* ──── ReaderProgressCard ──── */
@Composable
internal fun ReaderProgressCard(
    uiState: SettingsUiState,
    readingGoalText: ReadingGoalSettingsText,
    streakPolicyText: StreakPolicySettingsText,
    streakProgressText: String,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = readingGoalText.cardTitle) {
        SwitchRow(
            title = readingGoalText.enabledTitle,
            subtitle = readingGoalText.enabledSubtitle,
            checked = uiState.dailyReadingGoalEnabled,
            onCheckedChange = viewModel::setDailyReadingGoalEnabled
        )
        if (uiState.dailyReadingGoalEnabled) {
            Spacer(Modifier.height(4.dp))
            LabelText(
                readingGoalText.progressLabel(
                    uiState.dailyReadingGoalProgressPages,
                    uiState.dailyReadingGoalTargetPages
                )
            )
            LabelText(
                readingGoalText.weeklyProgressLabel(
                    uiState.dailyReadingWeekProgressPages,
                    uiState.dailyReadingWeekTargetPages,
                    uiState.dailyReadingWeekCompletedDays
                )
            )
            LabelText(
                readingGoalText.calendarLabel(
                    uiState.dailyReadingRecentActiveDays,
                    uiState.dailyReadingRecentGoalDays
                )
            )
            LabelText("${readingGoalText.targetLabel}: ${uiState.dailyReadingGoalTargetPages} ${readingGoalText.pagesSuffix}")
            ChipRow {
                listOf(10, 20, 30, 50).forEach { targetPages ->
                    MrComicFilterChip(
                        selected = uiState.dailyReadingGoalTargetPages == targetPages,
                        onClick = { viewModel.setDailyReadingGoalTargetPages(targetPages) },
                        label = { Text("$targetPages ${readingGoalText.pagesSuffix}") }
                    )
                }
            }
            if (uiState.dailyReadingGoalProgressPages >= uiState.dailyReadingGoalTargetPages) {
                Spacer(Modifier.height(4.dp))
                Text(
                    readingGoalText.completedHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
        }
        if (uiState.dailyReadingGoalEnabled || uiState.dailyReadingStreakEnabled) {
            Spacer(Modifier.height(10.dp))
            HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
            Spacer(Modifier.height(10.dp))
            Text(
                streakPolicyText.title,
                style = MaterialTheme.typography.titleSmall,
                fontWeight = FontWeight.SemiBold
            )
            SwitchRow(
                title = streakPolicyText.enabledTitle,
                subtitle = streakPolicyText.enabledSubtitle,
                checked = uiState.dailyReadingStreakEnabled,
                onCheckedChange = viewModel::setDailyReadingStreakEnabled
            )
            if (uiState.dailyReadingStreakEnabled) {
                SwitchRow(
                    title = streakPolicyText.graceTitle,
                    subtitle = streakPolicyText.graceSubtitle,
                    checked = uiState.dailyReadingGraceEnabled,
                    onCheckedChange = viewModel::setDailyReadingGraceEnabled
                )
                Text(
                    streakProgressText,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    streakPolicyText.summary,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
    }
}

/* ──── ReaderEffectsCard ──── */
@Composable
internal fun ReaderEffectsCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.animSoundCard) {
        LabelText(strings.pageAnimLabel)
        ChipRow {
            listOf(
                "NONE" to strings.animNone,
                "SLIDE" to strings.animSlide,
                "FADE" to strings.animFade
            ).forEach { (key, label) ->
                MrComicFilterChip(
                    selected = uiState.readerPageAnimation == key,
                    onClick = { viewModel.setReaderPageAnimation(key) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        SwitchRow(
            title = strings.pageFlipSound,
            subtitle = strings.pageFlipSoundSubtitle,
            checked = uiState.readerPageSound,
            onCheckedChange = viewModel::setReaderPageSound
        )
        if (uiState.readerPageSound) {
            Spacer(Modifier.height(4.dp))
            LabelText(strings.soundStyleLabel)
            ChipRow {
                listOf(
                    "PAPER" to strings.soundPaper,
                    "CRISP" to strings.soundCrisp,
                    "SOFT" to strings.soundSoft
                ).forEach { (key, label) ->
                    MrComicFilterChip(
                        selected = uiState.readerPageSoundStyle == key,
                        onClick = { viewModel.setReaderPageSoundStyle(key) },
                        label = { Text(label) }
                    )
                }
            }
        }
    }
}

/* ──── ReaderPreloadCard ──── */
@Composable
internal fun ReaderPreloadCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    viewModel: SettingsViewModel
) {
    SettingsCard(title = strings.preloadCard) {
        SettingsSliderTile(
            title = strings.preloadLabel,
            valueLabel = uiState.readerPreloadPages.toString(),
            value = uiState.readerPreloadPages.toFloat(),
            onValueChange = { viewModel.setReaderPreloadPages(it.toInt()) },
            valueRange = 2f..8f,
            steps = 5,
            subtitle = strings.preloadHint
        )
    }
}

/* ──── ReaderTextStyleCard ──── */
@Composable
internal fun ReaderTextStyleCard(
    uiState: SettingsUiState,
    strings: AppStrings,
    styleText: ReaderStyleSettingsText,
    viewModel: SettingsViewModel,
    fontCatalogVersion: Int = 0,
    onImportCustomFont: () -> Unit = {},
    onImportReaderStyle: () -> Unit = {},
    onExportReaderStyle: () -> Unit = {},
    onDeleteCustomFont: (String) -> Unit = {}
) {
    val context = LocalContext.current
    val fonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.availableFontFamilies(context)
    }
    val customFonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.customFontFamilies(context)
    }
    SettingsCard(title = styleText.cardTitle) {
        Text(
            styleText.cardHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        LabelText(styleText.quickPresetsTitle)
        ChipRow {
            io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().map { preset ->
                preset to readingPresetQuickLabel(strings, preset)
            }.forEach { (preset, label) ->
                MrComicFilterChip(
                    selected = ReadingPreset.fromStored(uiState.readerPreset) == preset,
                    onClick = { viewModel.setReaderPreset(preset.name) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText(styleText.colorSchemeTitle)
        ChipRow {
            listOf(
                "DAY" to styleText.day,
                "SEPIA" to styleText.sepia,
                "NIGHT" to styleText.night
            ).forEach { (scheme, label) ->
                MrComicFilterChip(
                    selected = uiState.textColorScheme == scheme,
                    onClick = { viewModel.setTextColorScheme(scheme) },
                    label = { Text(label) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        MrComicButton(
            onClick = onImportReaderStyle,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.importPresetLabel)
        }
        Spacer(Modifier.height(4.dp))
        MrComicButton(
            onClick = onExportReaderStyle,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.exportPresetLabel)
        }
        Spacer(Modifier.height(4.dp))
        val savedReaderStyleCount = remember(uiState.readerStylePresetEntries) {
            uiState.readerStylePresetEntries.size
        }
        val sortedReaderStyleEntries = remember(
            uiState.readerStylePresetEntries,
            uiState.readerPreset,
            uiState.textFontFamily,
            uiState.textFontSize,
            uiState.textLineHeight,
            uiState.textAlignment,
            uiState.textColorScheme,
            uiState.textBold,
            uiState.textLetterSpacing,
            uiState.textWordSpacing,
            uiState.textParagraphSpacing,
            uiState.textCustomTextColor,
            uiState.textCustomBackgroundColor,
            uiState.textCustomAccentColor
        ) {
            uiState.readerStylePresetEntries.sortedWith(
                compareByDescending<ReaderStylePresetEntry> { entry ->
                    entry.snapshot.matchesSettingsUiState(uiState)
                }.thenByDescending { entry ->
                    entry.snapshot.displayName?.isNotBlank() == true
                }.thenBy { entry ->
                    entry.snapshot.displayName ?: entry.id
                }
            )
        }
        val activeReaderStyleSnapshot = remember(sortedReaderStyleEntries, uiState) {
            sortedReaderStyleEntries
                .map { it.snapshot }
                .firstOrNull { it.matchesSettingsUiState(uiState) }
        }
        LabelText("${styleText.savedStylesTitle} ($savedReaderStyleCount)")
        Text(
            text = styleText.savedStylesHint,
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        if (activeReaderStyleSnapshot != null) {
            Spacer(Modifier.height(8.dp))
            SettingsPreviewBanner(
                title = activeReaderStyleSnapshot.displayName?.takeIf { it.isNotBlank() }
                    ?: readingPresetQuickLabel(strings, ReadingPreset.fromStored(activeReaderStyleSnapshot.readerPreset)),
                subtitle = listOf(
                    readingPresetQuickLabel(strings, ReadingPreset.fromStored(activeReaderStyleSnapshot.readerPreset)),
                    readerTextSchemeLabel(strings.languageCode, activeReaderStyleSnapshot.textColorScheme),
                    activeReaderStyleSnapshot.textFontFamily
                ).joinToString(" · "),
                details = listOf(
                    readerTextFontSizeLabel(activeReaderStyleSnapshot.textFontSize, strings.languageCode),
                    readerTextLineHeightLabel((activeReaderStyleSnapshot.textLineHeight * 100).toInt(), strings.languageCode)
                ).joinToString(" · ")
            )
        }
        Spacer(Modifier.height(8.dp))
        MrComicButton(
            onClick = { viewModel.saveCurrentReaderStylePreset() },
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(if (strings.languageCode == "ru") "Сохранить текущий стиль как новый" else "Save current style as new")
        }
        Spacer(Modifier.height(8.dp))
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            sortedReaderStyleEntries.forEachIndexed { index, entry ->
                val active = entry.snapshot.matchesSettingsUiState(uiState)
                ReaderStylePresetCard(
                    slot = ReaderStylePresetSlot(
                        index = index + 1,
                        serialized = entry.snapshot.serialize()
                    ),
                    strings = strings,
                    text = styleText,
                    isActive = active,
                    onSave = { viewModel.overwriteReaderStylePreset(entry.id) },
                    onApply = { viewModel.applyReaderStylePreset(entry.id) },
                    onClear = { viewModel.deleteReaderStylePreset(entry.id) },
                    onRename = { viewModel.renameReaderStylePreset(entry.id, it) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${styleText.fontTitle} (${fonts.size})")
        MrComicButton(
            onClick = onImportCustomFont,
            modifier = Modifier.fillMaxWidth(),
            variant = MrComicButtonVariant.Outlined
        ) {
            Text(styleText.importFontLabel)
        }
        Spacer(Modifier.height(8.dp))
        SettingsPreviewBanner(
            title = uiState.textFontFamily,
            subtitle = readerImportedFontsActive(strings.languageCode),
            details = listOf(
                readerTextFontSizeLabel(uiState.textFontSize, uiState.appLanguage),
                readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), uiState.appLanguage),
                "${customFonts.size} ${readerImportedFontsTitle(strings.languageCode).lowercase(Locale.getDefault())}"
            ).joinToString(" · ")
        )
        Spacer(Modifier.height(8.dp))
        val orderedFonts = remember(fonts, uiState.textFontFamily) {
            fonts.sortedWith(
                compareByDescending<String> { it == uiState.textFontFamily }
                    .thenBy { it.lowercase(Locale.getDefault()) }
            )
        }
        FlowRow(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            orderedFonts.forEach { family ->
                MrComicFilterChip(
                    selected = uiState.textFontFamily == family,
                    onClick = { viewModel.setTextFontFamily(family) },
                    label = { Text(family, style = MaterialTheme.typography.bodySmall) }
                )
            }
        }
        Spacer(Modifier.height(4.dp))
        LabelText("${readerImportedFontsTitle(strings.languageCode)} (${customFonts.size})")
        Text(
            text = readerImportedFontsHint(strings.languageCode),
            style = MaterialTheme.typography.bodySmall,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        Spacer(Modifier.height(8.dp))
        if (customFonts.isNotEmpty()) {
            val orderedCustomFonts = remember(customFonts, uiState.textFontFamily) {
                customFonts.sortedWith(
                    compareByDescending<String> { it == uiState.textFontFamily }
                        .thenBy { it.lowercase(Locale.getDefault()) }
                )
            }
            FlowRow(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                orderedCustomFonts.forEach { family ->
                    val selected = uiState.textFontFamily == family
                    MrComicCardSurface(
                        modifier = Modifier
                            .widthIn(min = 152.dp)
                            .clickable(onClick = { viewModel.setTextFontFamily(family) }),
                        fillMaxWidth = false,
                        cornerRadius = 14.dp,
                        containerColor = if (selected) {
                            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.9f)
                        } else {
                            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)
                        },
                        border = BorderStroke(
                            width = if (selected) 1.1.dp else 0.8.dp,
                            color = if (selected) {
                                MaterialTheme.colorScheme.primary.copy(alpha = 0.42f)
                            } else {
                                MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f)
                            }
                        )
                    ) {
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .padding(start = 12.dp, top = 10.dp, end = 6.dp, bottom = 10.dp),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.spacedBy(8.dp)
                        ) {
                            Column(
                                modifier = Modifier.weight(1f),
                                verticalArrangement = Arrangement.spacedBy(2.dp)
                            ) {
                                Text(
                                    text = family,
                                    style = MaterialTheme.typography.bodySmall,
                                    fontWeight = if (selected) FontWeight.SemiBold else FontWeight.Normal,
                                    maxLines = 1,
                                    overflow = TextOverflow.Ellipsis
                                )
                                if (selected) {
                                    Text(
                                        text = readerImportedFontsActive(strings.languageCode),
                                        style = MaterialTheme.typography.labelSmall,
                                        color = MaterialTheme.colorScheme.primary
                                    )
                                }
                            }
                            MrComicIconButton(
                                onClick = { onDeleteCustomFont(family) },
                                variant = MrComicIconButtonVariant.Tonal
                            ) {
                                Icon(
                                    imageVector = Icons.Default.Delete,
                                    contentDescription = readerDeleteCustomFontAction(strings.languageCode)
                                )
                            }
                        }
                    }
                }
            }
        } else {
            Text(
                text = readerImportedFontsEmpty(strings.languageCode),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.fontSizeTitle,
            valueLabel = readerTextFontSizeLabel(uiState.textFontSize, uiState.appLanguage),
            value = uiState.textFontSize.toFloat(),
            onValueChange = { viewModel.setTextFontSize(it.toInt()) },
            valueRange = 12f..32f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.lineHeightTitle,
            valueLabel = readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), uiState.appLanguage),
            value = uiState.textLineHeight,
            onValueChange = viewModel::setTextLineHeight,
            valueRange = 1.0f..3.0f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.letterSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textLetterSpacing)}em",
            value = uiState.textLetterSpacing,
            onValueChange = viewModel::setTextLetterSpacing,
            valueRange = 0f..0.2f,
            steps = 19
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.wordSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textWordSpacing)}em",
            value = uiState.textWordSpacing,
            onValueChange = viewModel::setTextWordSpacing,
            valueRange = 0f..0.6f,
            steps = 23
        )
        Spacer(Modifier.height(4.dp))
        SettingsSliderTile(
            title = styleText.paragraphSpacingTitle,
            valueLabel = "${"%.2f".format(Locale.US, uiState.textParagraphSpacing)}em",
            value = uiState.textParagraphSpacing,
            onValueChange = viewModel::setTextParagraphSpacing,
            valueRange = 0.1f..1.2f,
            steps = 21
        )
        Spacer(Modifier.height(4.dp))
        LabelText(styleText.alignmentTitle)
        ChipRow {
            listOf(
                "justify" to styleText.justify,
                "left" to styleText.left,
                "right" to styleText.right,
                "center" to styleText.center
            ).forEach { (alignment, label) ->
                MrComicFilterChip(
                    selected = uiState.textAlignment == alignment,
                    onClick = { viewModel.setTextAlignment(alignment) },
                    label = { Text(label) }
                )
            }
        }
        SwitchRow(
            title = styleText.boldTitle,
            subtitle = uiState.textFontFamily,
            checked = uiState.textBold,
            onCheckedChange = viewModel::setTextBold
        )
        OutlinedButton(
            onClick = viewModel::resetReaderTextStyle,
            modifier = Modifier.fillMaxWidth()
        ) {
            Text(styleText.resetLabel)
        }
    }
}



// Phase T (2026-08-04): internal fun ReaderStylePresetCard moved here from SettingsScreen.kt

@Composable
internal fun ReaderStylePresetCard(
    slot: ReaderStylePresetSlot,
    strings: AppStrings,
    text: ReaderStyleSettingsText,
    isActive: Boolean,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit,
    onRename: (String) -> Unit,
    modifier: Modifier = Modifier
) {
    val snapshot = remember(slot.serialized) { parseReaderStylePreset(slot.serialized) }
    var renameDialogOpen by rememberSaveable(slot.index) { mutableStateOf(false) }
    var renameDraft by rememberSaveable(slot.index) { mutableStateOf("") }
    LaunchedEffect(slot.serialized) {
        renameDraft = snapshot?.displayName.orEmpty()
    }
    val (backgroundColor, lineColor) = remember(
        snapshot?.textColorScheme,
        snapshot?.textCustomBackgroundColor,
        snapshot?.textCustomTextColor
    ) {
        val base = when (snapshot?.textColorScheme) {
            "SEPIA" -> Color(0xFFF4ECD8) to Color(0xFF7B5C34)
            "NIGHT" -> Color(0xFF000000) to Color(0xFFF2F5F7)
            else -> Color(0xFFF6F1E7) to Color(0xFF2B2118)
        }
        (snapshot?.textCustomBackgroundColor?.let(::argbLongToThemeColor) ?: base.first) to
            (snapshot?.textCustomTextColor?.let(::argbLongToThemeColor) ?: base.second)
    }
    val slotLabel = "${text.savedStyleSlotPrefix} ${slot.index}"
    val titleLabel = snapshot?.displayName?.takeIf { it.isNotBlank() } ?: slotLabel
    val presetLabel = snapshot?.let { readingPresetQuickLabel(strings, ReadingPreset.fromStored(it.readerPreset)) } ?: text.savedStyleEmpty
    val schemeLabel = snapshot?.let { readerTextSchemeLabel(strings.languageCode, it.textColorScheme) }.orEmpty()
    val detailLabel = snapshot?.let {
        "${it.textFontFamily} · ${readerTextFontSizeLabel(it.textFontSize, strings.languageCode)} · ${readerTextLineHeightLabel((it.textLineHeight * 100).toInt(), strings.languageCode)}"
    } ?: text.savedStyleEmpty
    val shape = RoundedCornerShape(18.dp)

    if (renameDialogOpen) {
        AlertDialog(
            onDismissRequest = { renameDialogOpen = false },
            title = { Text(text.savedStyleRenameTitle) },
            text = {
                Column(verticalArrangement = Arrangement.spacedBy(10.dp)) {
                    OutlinedTextField(
                        value = renameDraft,
                        onValueChange = { renameDraft = it.take(40) },
                        modifier = Modifier.fillMaxWidth(),
                        singleLine = true,
                        label = { Text(text.savedStyleNameLabel) },
                        placeholder = { Text(slotLabel) }
                    )
                    Text(
                        text = text.savedStyleRenameHint,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            },
            confirmButton = {
                TextButton(
                    onClick = {
                        onRename(renameDraft)
                        renameDialogOpen = false
                    }
                ) {
                    Text(text.savedStyleRenameConfirm)
                }
            },
            dismissButton = {
                TextButton(onClick = { renameDialogOpen = false }) {
                    Text(text.savedStyleRenameCancel)
                }
            }
        )
    }

    MrComicCardSurface(
        modifier = modifier
            .fillMaxWidth()
            .clip(shape),
        shape = shape,
        containerColor = if (isActive) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.84f)
        } else {
            MaterialTheme.colorScheme.surface.copy(alpha = 0.92f)
        },
        border = BorderStroke(
            width = if (isActive) 1.2.dp else 0.dp,
            color = MaterialTheme.colorScheme.primary.copy(alpha = if (isActive) 0.48f else 0f)
        ),
        shadowElevation = if (isActive) 5.dp else 4.dp
    ) {
        Column(
            modifier = Modifier.padding(12.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(92.dp)
                    .clip(RoundedCornerShape(14.dp))
                    .background(backgroundColor)
                    .border(
                        width = 1.dp,
                        color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.18f),
                        shape = RoundedCornerShape(14.dp)
                    )
                    .padding(horizontal = 12.dp, vertical = 10.dp)
            ) {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.spacedBy(8.dp, Alignment.CenterVertically)
                ) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth(0.72f)
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.88f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.28f))
                    )
                    Box(
                        modifier = Modifier
                            .fillMaxWidth((0.55f + (((snapshot?.textParagraphSpacing ?: 0.2f) * 0.2f))).coerceIn(0.55f, 0.9f))
                            .height(8.dp)
                            .clip(RoundedCornerShape(999.dp))
                            .background(lineColor.copy(alpha = 0.18f))
                    )
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.Top
            ) {
                Column(
                    modifier = Modifier.weight(1f),
                    verticalArrangement = Arrangement.spacedBy(2.dp)
                ) {
                    Text(
                        text = titleLabel,
                        style = MaterialTheme.typography.labelLarge,
                        color = MaterialTheme.colorScheme.onSurface,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    if (isActive) {
                        Text(
                            text = readerSavedStyleActive(strings.languageCode),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                    if (titleLabel != slotLabel) {
                        Text(
                            text = slotLabel,
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.onSurfaceVariant
                        )
                    }
                    Text(
                        text = if (schemeLabel.isBlank()) presetLabel else "$presetLabel · $schemeLabel",
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        minLines = 1,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = detailLabel,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.9f),
                        minLines = 1,
                        maxLines = 2,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                if (snapshot != null) {
                    IconButton(
                        onClick = { renameDialogOpen = true },
                        modifier = Modifier.size(34.dp)
                    ) {
                        Icon(Icons.Default.Edit, contentDescription = text.savedStyleRename)
                    }
                }
            }
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                FilledTonalIconButton(
                    onClick = onSave,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.Save, contentDescription = text.savedStyleSave)
                }
                FilledIconButton(
                    onClick = onApply,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = text.savedStyleApply)
                }
                OutlinedIconButton(
                    onClick = onClear,
                    enabled = snapshot != null,
                    modifier = Modifier.weight(1f)
                ) {
                    Icon(Icons.Default.DeleteOutline, contentDescription = text.savedStyleClear)
                }
            }
        }
    }
}

// Phase T (2026-08-04): internal fun ReaderStylePresetSnapshot.matchesSettingsUiState moved here from SettingsScreen.kt

internal fun ReaderStylePresetSnapshot.matchesSettingsUiState(uiState: SettingsUiState): Boolean {
    return readerPreset == uiState.readerPreset &&
        textFontSize == uiState.textFontSize &&
        textColorScheme == uiState.textColorScheme &&
        textFontFamily == uiState.textFontFamily &&
        textLineHeight == uiState.textLineHeight &&
        textLetterSpacing == uiState.textLetterSpacing &&
        textWordSpacing == uiState.textWordSpacing &&
        textParagraphSpacing == uiState.textParagraphSpacing &&
        textAlignment == uiState.textAlignment &&
        textBold == uiState.textBold &&
        brightness == uiState.brightness &&
        immersiveMode == uiState.readerImmersiveMode &&
        pageAnimation == uiState.readerPageAnimation
}
