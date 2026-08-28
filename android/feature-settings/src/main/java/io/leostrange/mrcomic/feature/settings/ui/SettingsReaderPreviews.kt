// Phase M (2026-08-03): превью-карточки вынесены из SettingsReaderSection.kt.

@file:OptIn(
    androidx.compose.foundation.layout.ExperimentalLayoutApi::class,
    androidx.compose.foundation.ExperimentalFoundationApi::class
)

package io.leostrange.mrcomic.feature.settings.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.em
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.model.ReaderTapZoneMode
import io.leostrange.mrcomic.core.model.resolveReaderTapZoneLayout
import io.leostrange.mrcomic.core.ui.designsystem.MrComicCardSurface
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPill
import io.leostrange.mrcomic.core.ui.designsystem.MrComicProgressLine
import io.leostrange.mrcomic.core.ui.locale.AppStrings
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.ui.theme.argbLongToThemeColor

/**
 * Reader preview cards (Phase M, 2026-08-03): pure visual composables
 * with no ViewModel dependency — text appearance, page layout, header/footer,
 * and paging previews. Moved from SettingsReaderSection.kt; behavior is unchanged.
 */

/* ──── ReaderTextAppearancePreviewCard ──── */
@Composable
internal fun ReaderTextAppearancePreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    val align = when (uiState.textAlignment) {
        "left" -> Alignment.Start
        "right" -> Alignment.End
        "center" -> Alignment.CenterHorizontally
        else -> Alignment.Start
    }
    val textAlign = when (uiState.textAlignment) {
        "right" -> TextAlign.End
        "center" -> TextAlign.Center
        else -> if (uiState.textAlignment == "justify") TextAlign.Justify else TextAlign.Start
    }
    val schemeColors = when (uiState.textColorScheme.uppercase()) {
        "SEPIA" -> Color(0xFFF4ECD8) to Color(0xFF4B3822)
        "NIGHT" -> Color(0xFF101216) to Color(0xFFE8E1D4)
        else -> Color(0xFFF6F1E7) to Color(0xFF2B2118)
    }
    val previewBackground = uiState.textCustomBackgroundColor
        ?.let(::argbLongToThemeColor)
        ?: schemeColors.first
    val previewText = uiState.textCustomTextColor
        ?.let(::argbLongToThemeColor)
        ?: schemeColors.second
    val previewAccent = uiState.textCustomAccentColor
        ?.let(::argbLongToThemeColor)
        ?: MaterialTheme.colorScheme.primary
    val previewFontFamily = when (uiState.textFontFamily.lowercase()) {
        "roboto", "open sans", "sans-serif" -> FontFamily.SansSerif
        "monospace", "source code pro" -> FontFamily.Monospace
        else -> FontFamily.Serif
    }
    SettingsCard(title = strings.preview) {
        Column(
            modifier = Modifier.fillMaxWidth(),
            verticalArrangement = Arrangement.spacedBy(10.dp)
        ) {
            MrComicCardSurface(
                modifier = Modifier.heightIn(max = 196.dp),
                shape = MaterialTheme.shapes.large,
                containerColor = previewBackground
            ) {
                Column(
                    modifier = Modifier.padding(horizontal = 14.dp, vertical = 10.dp),
                    verticalArrangement = Arrangement.spacedBy(5.dp)
                ) {
                    Text(
                        text = strings.readerTextPreviewTitle,
                        style = MaterialTheme.typography.titleMedium.copy(
                            fontWeight = if (uiState.textBold) FontWeight.Bold else FontWeight.SemiBold,
                            fontSize = (uiState.textFontSize + 2).sp,
                            fontFamily = previewFontFamily,
                            color = previewAccent
                        ),
                        color = previewAccent
                    )
                    Column(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalAlignment = align,
                        verticalArrangement = Arrangement.spacedBy(
                            uiState.textParagraphSpacing.coerceIn(0f, 32f).dp
                        )
                    ) {
                        repeat(2) {
                            Text(
                                text = strings.readerTextPreviewDescription,
                                style = MaterialTheme.typography.bodyMedium.copy(
                                    fontSize = uiState.textFontSize.sp,
                                    lineHeight = (uiState.textFontSize * uiState.textLineHeight).sp,
                                    fontWeight = if (uiState.textBold) FontWeight.SemiBold else FontWeight.Normal,
                                    fontFamily = previewFontFamily,
                                    letterSpacing = uiState.textLetterSpacing.em,
                                    color = previewText
                                ),
                                color = previewText,
                                textAlign = textAlign,
                                modifier = Modifier.fillMaxWidth(),
                                maxLines = 2,
                                overflow = TextOverflow.Ellipsis
                            )
                        }
                    }
                }
            }
            Text(
                text = "${uiState.textFontFamily} · ${readerTextSchemeLabel(strings.languageCode, uiState.textColorScheme)} · ${readerTextLineHeightLabel((uiState.textLineHeight * 100).toInt(), strings.languageCode)}",
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

/* ──── ReaderPageLayoutPreviewCard ──── */
@Composable
internal fun ReaderPageLayoutPreviewCard(
    uiState: SettingsUiState,
    strings: AppStrings
) {
    SettingsCard(
        title = when (strings.languageCode) {
            "en" -> "Layout preview"
            "ja" -> "レイアウトのプレビュー"
            "zh" -> "布局预览"
            "ko" -> "레이아웃 미리보기"
            else -> "Предпросмотр макета"
        }
    ) {
        val previewShape = MaterialTheme.shapes.large
        MrComicCardSurface(
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(max = 274.dp),
            shape = previewShape,
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f)
        ) {
            Column(
                modifier = Modifier.padding(horizontal = 14.dp, vertical = 10.dp),
                verticalArrangement = Arrangement.spacedBy(7.dp)
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        when (uiState.readingMode) {
                            ReadingMode.DUAL_PAGE -> when (strings.languageCode) {
                                "en" -> "Two-page spread"
                                "ja" -> "見開き"
                                "zh" -> "双页展开"
                                "ko" -> "양면 펼침"
                                else -> "Разворот"
                            }
                            else -> readerModeSettingsLabel(strings.languageCode, uiState.readingMode)
                        },
                        style = MaterialTheme.typography.titleSmall,
                        fontWeight = FontWeight.SemiBold
                    )
                    MrComicPill(
                        containerColor = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f),
                        contentColor = MaterialTheme.colorScheme.primary,
                        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 5.dp)
                    ) {
                        Text(
                            text = if (uiState.readerLandscapeSpreadEnabled) {
                                when (strings.languageCode) {
                                    "en" -> "Landscape spread on"
                                    "ja" -> "横見開きオン"
                                    "zh" -> "横屏展开开启"
                                    "ko" -> "가로 펼침 켜짐"
                                    else -> "Разворот в ландшафте включён"
                                }
                            } else {
                                when (strings.languageCode) {
                                    "en" -> "Single page only"
                                    "ja" -> "単ページ固定"
                                    "zh" -> "仅单页"
                                    "ko" -> "단일 페이지"
                                    else -> "Только одна страница"
                                }
                            },
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                }
                MrComicProgressLine(
                    progress = { (uiState.readerPreloadPages - 2).toFloat() / 6f },
                    modifier = Modifier.fillMaxWidth(),
                    trackColor = MaterialTheme.colorScheme.surface,
                    color = MaterialTheme.colorScheme.primary
                )
                Text(
                    text = when (strings.languageCode) {
                        "en" -> "Preload: ${uiState.readerPreloadPages} pages nearby. Text readers stay calm, image readers can open as LTR, RTL, or webtoon."
                        "ja" -> "プリロード: 近傍 ${uiState.readerPreloadPages} ページ。テキストは落ち着いたまま、画像リーダーは LTR / RTL / webtoon を切り替えられます。"
                        "zh" -> "预加载：附近 ${uiState.readerPreloadPages} 页。文本阅读保持稳定，图片阅读可切换 LTR / RTL / webtoon。"
                        "ko" -> "프리로드: 주변 ${uiState.readerPreloadPages} 페이지. 텍스트 리더는 차분하게 유지되고, 이미지 리더는 LTR / RTL / 웹툰을 전환할 수 있습니다."
                        else -> "Прелоад: рядом ${uiState.readerPreloadPages} страниц. Текстовый ридер остаётся спокойным, а графический можно открыть как LTR, RTL или webtoon."
                    },
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
                Spacer(Modifier.height(4.dp))
                ReaderImageCropPreview(
                    horizontalCrop = uiState.readerImageMarginCropHorizontal,
                    verticalCrop = uiState.readerImageMarginCropVertical,
                    language = strings.languageCode
                )
            }
        }
    }
}

/** Shows the removed top/bottom bands instead of hiding vertical crop in a slider. */
@Composable
private fun ReaderImageCropPreview(
    horizontalCrop: Float,
    verticalCrop: Float,
    language: String
) {
    val horizontal = horizontalCrop.coerceIn(0f, 0.22f)
    val vertical = verticalCrop.coerceIn(0f, 0.22f)
    val title = when (language) {
        "en" -> "PDF / DJVU crop preview"
        "ja" -> "PDF / DJVU トリミングプレビュー"
        "zh" -> "PDF / DJVU 裁剪预览"
        "ko" -> "PDF / DJVU 자르기 미리보기"
        else -> "Предпросмотр подрезки PDF / DJVU"
    }
    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(title, style = MaterialTheme.typography.labelMedium)
            Text(
                text = "${(vertical * 100f).toInt()}% · ${(horizontal * 100f).toInt()}%",
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.primary
            )
        }
        Box(
            modifier = Modifier
                .fillMaxWidth()
                .height(92.dp)
                .clip(MaterialTheme.shapes.medium)
                .background(MaterialTheme.colorScheme.surface.copy(alpha = 0.8f)),
            contentAlignment = Alignment.Center
        ) {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(
                        horizontal = (horizontal * 70f).dp,
                        vertical = (vertical * 70f).dp
                    )
                    .background(MaterialTheme.colorScheme.background)
                    .padding(horizontal = 10.dp, vertical = 7.dp)
            ) {
                Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
                    repeat(4) { index ->
                        Box(
                            modifier = Modifier
                                .fillMaxWidth(if (index == 1) 0.76f else 1f)
                                .height(5.dp)
                                .background(
                                    MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.55f),
                                    MaterialTheme.shapes.small
                                )
                        )
                    }
                }
            }
            if (vertical > 0f) {
                val bandHeight = (vertical * 140f).dp
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(bandHeight)
                        .align(Alignment.TopCenter)
                        .background(MaterialTheme.colorScheme.primary.copy(alpha = 0.18f))
                )
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(bandHeight)
                        .align(Alignment.BottomCenter)
                        .background(MaterialTheme.colorScheme.primary.copy(alpha = 0.18f))
                )
            }
        }
    }
}

/* ──── ReaderHeaderFooterPreviewCard ──── */
@Composable
internal fun ReaderHeaderFooterPreviewCard(
    uiState: SettingsUiState,
    language: String
) {
    SettingsCard(
        title = when (language) {
            "en" -> "Compact header and footer preview"
            "ja" -> "ヘッダーとフッターのプレビュー"
            "zh" -> "页眉页脚预览"
            "ko" -> "헤더·푸터 미리보기"
            else -> "Компактный preview колонтитулов"
        }
    ) {
        MrComicCardSurface(
            modifier = Modifier
                .fillMaxWidth()
                .heightIn(max = 172.dp),
            shape = MaterialTheme.shapes.large,
            containerColor = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f)
        ) {
            Column(
                modifier = Modifier.padding(
                    start = uiState.readerHeaderFooterLeftPadding.dp,
                    end = uiState.readerHeaderFooterRightPadding.dp,
                    top = uiState.readerHeaderFooterVerticalPadding.dp + 4.dp,
                    bottom = uiState.readerHeaderFooterVerticalPadding.dp + 4.dp
                )
            ) {
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerHeaderLeftSlot),
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerHeaderCenterSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.Center,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerHeaderRightSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.End,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
                Spacer(Modifier.height(18.dp))
                HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
                Spacer(Modifier.height(6.dp))
                Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(12.dp)) {
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerFooterLeftSlot),
                        modifier = Modifier.weight(1f),
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerFooterCenterSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.Center,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        readerInfoSlotPreviewValue(language, uiState.readerFooterRightSlot),
                        modifier = Modifier.weight(1f),
                        textAlign = TextAlign.End,
                        style = MaterialTheme.typography.labelSmall.copy(fontSize = uiState.readerHeaderFooterFontSize.sp),
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

/* ──── ReaderPagingPreviewCard ──── */
@Composable
internal fun ReaderPagingPreviewCard(
    uiState: SettingsUiState,
    language: String
) {
    val layout = resolveReaderTapZoneLayout(
        mode = ReaderTapZoneMode.fromStored(uiState.readerTapZoneMode),
        readingMode = uiState.readingMode,
        swapped = uiState.readerTapZoneSwap,
        leftAction = uiState.readerTapZoneLeftAction,
        centerAction = uiState.readerTapZoneCenterAction,
        rightAction = uiState.readerTapZoneRightAction
    )
    SettingsCard(
        title = when (language) {
            "en" -> "Tap zones preview"
            "ja" -> "タップゾーンのプレビュー"
            "zh" -> "点击区域预览"
            "ko" -> "탭 영역 미리보기"
            else -> "Preview зон листания"
        }
    ) {
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .height(120.dp)
                .clip(MaterialTheme.shapes.large)
                .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.42f))
        ) {
            listOf(
                readerTapZoneActionLabel(language, layout.left.name),
                readerTapZoneActionLabel(language, layout.center.name),
                readerTapZoneActionLabel(language, layout.right.name)
            ).forEachIndexed { index, label ->
                Box(
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .background(
                            if (index == 1) MaterialTheme.colorScheme.primary.copy(alpha = 0.10f) else Color.Transparent
                        ),
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        text = label,
                        style = MaterialTheme.typography.labelLarge,
                        color = if (index == 1) MaterialTheme.colorScheme.primary else MaterialTheme.colorScheme.onSurface
                    )
                }
                if (index != 2) {
                    VerticalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
                }
            }
        }
    }
}

