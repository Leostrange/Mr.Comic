package com.example.feature.reader.ui

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.RowScope
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.DropdownMenu
import androidx.compose.material3.DropdownMenuItem
import androidx.compose.material3.FilterChip
import androidx.compose.material3.FilterChipDefaults
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Slider
import androidx.compose.material3.Surface
import androidx.compose.material3.Switch
import androidx.compose.material3.SwitchDefaults
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.draw.scale
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.core.model.ComicFormat
import com.example.core.model.ReaderTapZoneAction
import com.example.core.model.ReaderInfoSlot
import com.example.core.model.ReaderTapZoneMode
import com.example.core.model.ReaderImageScaleMode
import com.example.core.model.ReaderScreenTimeoutMode
import com.example.core.model.ReaderTtsSleepTimerMode
import com.example.core.model.resolveReaderTapZoneLayout
import com.example.core.ui.locale.LocalStrings
import com.example.core.ui.theme.ReadingPreset

private enum class ReaderControlTab {
    READING,
    STYLE,
    SERVICES
}

private enum class ReaderChromeEditorTab {
    VISIBILITY,
    ORDER
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun ReaderControlCenterSheet(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    ttsRuntimeState: ReaderTtsRuntimeState,
    fontCatalogVersion: Int = 0,
    openAtServicesTab: Boolean = false,
    onDismiss: () -> Unit,
    onApplyReadingPreset: (ReadingPreset) -> Unit,
    onFontSizeChange: (Int) -> Unit,
    onColorSchemeChange: (String) -> Unit,
    onFontFamilyChange: (String) -> Unit,
    onLineHeightChange: (Float) -> Unit,
    onLetterSpacingChange: (Float) -> Unit,
    onWordSpacingChange: (Float) -> Unit,
    onParagraphSpacingChange: (Float) -> Unit,
    onTextAlignChange: (String) -> Unit,
    onBoldChange: (Boolean) -> Unit,
    onResetStyle: () -> Unit,
    onReadingModeChange: (com.example.core.model.ReadingMode) -> Unit,
    onKeepScreenOnChange: (Boolean) -> Unit,
    onScreenTimeoutChange: (String) -> Unit,
    onImmersiveModeChange: (Boolean) -> Unit,
    onLandscapeSpreadChange: (Boolean) -> Unit,
    onPreloadPagesChange: (Int) -> Unit,
    onPageAnimationChange: (String) -> Unit,
    onTapZoneModeChange: (String) -> Unit,
    onTapZoneSwapChange: (Boolean) -> Unit,
    onTapZoneActionChange: (String, String) -> Unit,
    onVolumePagingChange: (Boolean) -> Unit,
    onHeaderSlotChange: (String, String) -> Unit,
    onFooterSlotChange: (String, String) -> Unit,
    onHeaderFooterFontSizeChange: (Int) -> Unit,
    onHeaderFooterVerticalPaddingChange: (Int) -> Unit,
    onHeaderFooterLeftPaddingChange: (Int) -> Unit,
    onHeaderFooterRightPaddingChange: (Int) -> Unit,
    onChromeAutoHideChange: (Boolean) -> Unit,
    onToolbarOpacityChange: (Float) -> Unit,
    onToolbarBlurChange: (Float) -> Unit,
    onImageScaleModeChange: (String) -> Unit,
    onImageMarginCropHorizontalChange: (Float) -> Unit,
    onImageMarginCropVerticalChange: (Float) -> Unit,
    onChromeIconVisibleChange: (String, Boolean) -> Unit,
    onMoveChromeIcon: (String, Int) -> Unit,
    onImportCustomFont: () -> Unit,
    onDeleteCustomFont: (String) -> Unit,
    onImportReaderStyle: () -> Unit,
    onExportReaderStyle: () -> Unit,
    onSaveCurrentReaderStylePreset: () -> Unit,
    onOverwriteReaderStylePreset: (String) -> Unit,
    onApplyReaderStylePreset: (String) -> Unit,
    onDeleteReaderStylePreset: (String) -> Unit,
    onOpenToc: () -> Unit,
    onToggleBookmark: () -> Unit,
    onRequestOcr: () -> Unit,
    onTtsTogglePlayback: () -> Unit,
    onTtsStop: () -> Unit,
    onTtsPrevious: () -> Unit,
    onTtsNext: () -> Unit,
    onTtsVoiceNameChange: (String?) -> Unit,
    onTtsSpeedChange: (Float) -> Unit,
    onTtsPitchChange: (Float) -> Unit,
    onTtsVolumeChange: (Float) -> Unit,
    onTtsSleepTimerChange: (String) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val activeReaderPreset = ReadingPreset.fromStored(uiState.readerPreset)
    val combinedToolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
    val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(combinedToolbarOpacity, activeReaderPreset)
    val effectiveToolbarBlur = readerEffectiveToolbarBlur(uiState.toolbarBlur, activeReaderPreset)
    val sheetShape = RoundedCornerShape(topStart = 28.dp, topEnd = 28.dp)
    val sheetChromeEmphasis = when (activeReaderPreset) {
        ReadingPreset.EINK -> 1f
        ReadingPreset.PAPER -> 0.98f
        ReadingPreset.SEPIA_BOOK -> 0.985f
        ReadingPreset.NEWSPAPER -> 0.99f
        ReadingPreset.NIGHT_INK -> 0.96f
        ReadingPreset.OLED_BLACK -> 0.94f
        else -> 0.97f
    }
    val sheetVisualBlur = if (activeReaderPreset == ReadingPreset.EINK) 0f else 0.14f
    val sheetSurface = readerPanelSurfaceColor(
        base = MaterialTheme.colorScheme.surface,
        emphasis = sheetChromeEmphasis,
        minAlpha = if (activeReaderPreset == ReadingPreset.EINK) 1f else 0.94f
    )
    var selectedTab by remember(isTextReader, openAtServicesTab) {
        mutableStateOf(
            when {
                openAtServicesTab -> ReaderControlTab.SERVICES
                isTextReader -> ReaderControlTab.STYLE
                else -> ReaderControlTab.READING
            }
        )
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        shape = sheetShape,
        containerColor = sheetSurface,
        contentColor = MaterialTheme.colorScheme.onSurface,
        tonalElevation = readerPanelTonalElevation(sheetVisualBlur, base = 0f, extra = 1f),
        scrimColor = readerPanelScrimColor(MaterialTheme.colorScheme.onSurface, sheetVisualBlur),
        dragHandle = {
            BottomSheetDefaults.DragHandle(
                color = MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.62f)
            )
        }
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxWidth()) {
            val maxSheetHeight = maxHeight * 0.62f
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = maxSheetHeight)
            ) {
                TabRow(
                    modifier = Modifier.heightIn(min = 38.dp),
                    selectedTabIndex = selectedTab.ordinal,
                    containerColor = Color.Transparent
                ) {
                    listOf(
                        ReaderControlTab.READING to readerText.controlTabReading,
                        ReaderControlTab.STYLE to readerText.controlTabStyle,
                        ReaderControlTab.SERVICES to readerText.controlTabServices
                    ).forEach { (tab, label) ->
                        Tab(
                            modifier = Modifier.heightIn(min = 38.dp),
                            selected = selectedTab == tab,
                            onClick = { selectedTab = tab },
                            text = {
                                Text(
                                    text = label,
                                    style = MaterialTheme.typography.labelSmall
                                )
                            }
                        )
                    }
                }
                when (selectedTab) {
                    ReaderControlTab.READING -> ReaderReadingTab(
                        uiState = uiState,
                        isTextReader = isTextReader,
                        onReadingModeChange = onReadingModeChange,
                        onKeepScreenOnChange = onKeepScreenOnChange,
                        onScreenTimeoutChange = onScreenTimeoutChange,
                        onImmersiveModeChange = onImmersiveModeChange,
                        onLandscapeSpreadChange = onLandscapeSpreadChange,
                        onPreloadPagesChange = onPreloadPagesChange,
                        onPageAnimationChange = onPageAnimationChange,
                        onTapZoneModeChange = onTapZoneModeChange,
                        onTapZoneSwapChange = onTapZoneSwapChange,
                        onTapZoneActionChange = onTapZoneActionChange,
                        onVolumePagingChange = onVolumePagingChange,
                        onHeaderSlotChange = onHeaderSlotChange,
                        onFooterSlotChange = onFooterSlotChange,
                        onHeaderFooterFontSizeChange = onHeaderFooterFontSizeChange,
                            onHeaderFooterVerticalPaddingChange = onHeaderFooterVerticalPaddingChange,
                            onHeaderFooterLeftPaddingChange = onHeaderFooterLeftPaddingChange,
                            onHeaderFooterRightPaddingChange = onHeaderFooterRightPaddingChange,
                            onChromeAutoHideChange = onChromeAutoHideChange
                        )

                    ReaderControlTab.STYLE -> ReaderStyleTab(
                        uiState = uiState,
                        isTextReader = isTextReader,
                        onApplyReadingPreset = onApplyReadingPreset,
                        onFontSizeChange = onFontSizeChange,
                        onColorSchemeChange = onColorSchemeChange,
                        onFontFamilyChange = onFontFamilyChange,
                        onLineHeightChange = onLineHeightChange,
                        onLetterSpacingChange = onLetterSpacingChange,
                        onWordSpacingChange = onWordSpacingChange,
                        onParagraphSpacingChange = onParagraphSpacingChange,
                        onTextAlignChange = onTextAlignChange,
                        onBoldChange = onBoldChange,
                        onResetStyle = onResetStyle,
                        onToolbarOpacityChange = onToolbarOpacityChange,
                        onToolbarBlurChange = onToolbarBlurChange,
                        onImageScaleModeChange = onImageScaleModeChange,
                        onImageMarginCropHorizontalChange = onImageMarginCropHorizontalChange,
                        onImageMarginCropVerticalChange = onImageMarginCropVerticalChange,
                        onChromeIconVisibleChange = onChromeIconVisibleChange,
                        onMoveChromeIcon = onMoveChromeIcon,
                        fontCatalogVersion = fontCatalogVersion,
                        onImportCustomFont = onImportCustomFont,
                        onDeleteCustomFont = onDeleteCustomFont,
                        onImportReaderStyle = onImportReaderStyle,
                        onExportReaderStyle = onExportReaderStyle,
                        onSaveCurrentReaderStylePreset = onSaveCurrentReaderStylePreset,
                        onOverwriteReaderStylePreset = onOverwriteReaderStylePreset,
                        onApplyReaderStylePreset = onApplyReaderStylePreset,
                        onDeleteReaderStylePreset = onDeleteReaderStylePreset
                    )

                    ReaderControlTab.SERVICES -> ReaderServicesTab(
                        uiState = uiState,
                        isTextReader = isTextReader,
                        ttsRuntimeState = ttsRuntimeState,
                        onDismiss = onDismiss,
                        onOpenToc = onOpenToc,
                        onToggleBookmark = onToggleBookmark,
                        onRequestOcr = onRequestOcr,
                        onTtsTogglePlayback = onTtsTogglePlayback,
                        onTtsStop = onTtsStop,
                        onTtsPrevious = onTtsPrevious,
                        onTtsNext = onTtsNext,
                        onTtsVoiceNameChange = onTtsVoiceNameChange,
                        onTtsSpeedChange = onTtsSpeedChange,
                        onTtsPitchChange = onTtsPitchChange,
                        onTtsVolumeChange = onTtsVolumeChange,
                        onTtsSleepTimerChange = onTtsSleepTimerChange
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ReaderReadingTab(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    onReadingModeChange: (com.example.core.model.ReadingMode) -> Unit,
    onKeepScreenOnChange: (Boolean) -> Unit,
    onScreenTimeoutChange: (String) -> Unit,
    onImmersiveModeChange: (Boolean) -> Unit,
    onLandscapeSpreadChange: (Boolean) -> Unit,
    onPreloadPagesChange: (Int) -> Unit,
    onPageAnimationChange: (String) -> Unit,
    onTapZoneModeChange: (String) -> Unit,
    onTapZoneSwapChange: (Boolean) -> Unit,
    onTapZoneActionChange: (String, String) -> Unit,
    onVolumePagingChange: (Boolean) -> Unit,
    onHeaderSlotChange: (String, String) -> Unit,
    onFooterSlotChange: (String, String) -> Unit,
    onHeaderFooterFontSizeChange: (Int) -> Unit,
    onHeaderFooterVerticalPaddingChange: (Int) -> Unit,
    onHeaderFooterLeftPaddingChange: (Int) -> Unit,
    onHeaderFooterRightPaddingChange: (Int) -> Unit,
    onChromeAutoHideChange: (Boolean) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val activeReaderPreset = ReadingPreset.fromStored(uiState.readerPreset)
    val resolvedTapZoneLayout = remember(
        uiState.tapZoneMode,
        uiState.readingMode,
        uiState.tapZoneSwap,
        uiState.tapZoneLeftAction,
        uiState.tapZoneCenterAction,
        uiState.tapZoneRightAction
    ) {
        resolveReaderTapZoneLayout(
            mode = ReaderTapZoneMode.fromStored(uiState.tapZoneMode),
            readingMode = uiState.readingMode,
            swapped = uiState.tapZoneSwap,
            leftAction = uiState.tapZoneLeftAction,
            centerAction = uiState.tapZoneCenterAction,
            rightAction = uiState.tapZoneRightAction
        )
    }
    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        item { ReaderSectionTitle(readerText.readingModeTitle) }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                listOf(
                    com.example.core.model.ReadingMode.PAGE_LTR to strings.readingModeLtr,
                    com.example.core.model.ReadingMode.PAGE_RTL to strings.readingModeRtl,
                    com.example.core.model.ReadingMode.WEBTOON to strings.readingModeWebtoon
                ).forEach { (mode, label) ->
                    item(mode.name) {
                        ReaderChoiceChip(
                            selected = uiState.readingMode == mode,
                            onClick = { onReadingModeChange(mode) },
                            label = { Text(label, style = MaterialTheme.typography.labelSmall) }
                        )
                    }
                }
            }
        }
        item { HorizontalDivider() }
        item {
            ReaderSwitchRow(
                title = strings.keepScreenOn,
                checked = uiState.keepScreenOn,
                onCheckedChange = onKeepScreenOnChange
            )
        }
        item {
            ReaderSwitchRow(
                title = readerImmersiveTitle(strings.languageCode),
                checked = uiState.immersiveMode,
                onCheckedChange = onImmersiveModeChange
            )
        }
        item {
            ReaderSwitchRow(
                title = readerText.landscapeSpreadTitle,
                checked = uiState.landscapeSpreadEnabled,
                onCheckedChange = onLandscapeSpreadChange
            )
        }
        item { ReaderSectionTitle(readerTapZonesTitle(strings.languageCode)) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                ReaderTapZoneMode.entries.forEach { mode ->
                    ReaderChoiceChip(
                        selected = uiState.tapZoneMode == mode.name,
                        onClick = { onTapZoneModeChange(mode.name) },
                        label = { Text(readerTapZoneModeLabel(mode, strings.languageCode)) }
                    )
                }
            }
        }
        item {
            ReaderSwitchRow(
                title = readerTapZoneSwapTitle(strings.languageCode),
                checked = uiState.tapZoneSwap,
                onCheckedChange = onTapZoneSwapChange,
                subtitle = if (uiState.tapZoneMode == ReaderTapZoneMode.SIMPLE.name) {
                    readerTapZoneLayoutSummary(
                        left = resolvedTapZoneLayout.left,
                        center = resolvedTapZoneLayout.center,
                        right = resolvedTapZoneLayout.right,
                        language = strings.languageCode
                    )
                } else {
                    null
                }
            )
        }
        if (uiState.tapZoneMode == ReaderTapZoneMode.CUSTOM.name) {
            item {
                ReaderTapZoneActionPicker(
                    title = readerTapZoneLeftTitle(strings.languageCode),
                    selectedAction = uiState.tapZoneLeftAction,
                    language = strings.languageCode,
                    onActionSelected = { onTapZoneActionChange("LEFT", it) }
                )
            }
            item {
                ReaderTapZoneActionPicker(
                    title = readerTapZoneCenterTitle(strings.languageCode),
                    selectedAction = uiState.tapZoneCenterAction,
                    language = strings.languageCode,
                    onActionSelected = { onTapZoneActionChange("CENTER", it) }
                )
            }
            item {
                ReaderTapZoneActionPicker(
                    title = readerTapZoneRightTitle(strings.languageCode),
                    selectedAction = uiState.tapZoneRightAction,
                    language = strings.languageCode,
                    onActionSelected = { onTapZoneActionChange("RIGHT", it) }
                )
            }
        }
        item {
            ReaderSwitchRow(
                title = readerText.volumePagingTitle,
                checked = uiState.volumeKeysPagingEnabled,
                onCheckedChange = onVolumePagingChange,
                subtitle = readerText.volumePagingHint
            )
        }
        item { HorizontalDivider() }
        item { ReaderSectionTitle(readerHeaderFooterSectionTitle(strings.languageCode)) }
        item {
            Text(
                text = readerHeaderFooterHint(strings.languageCode),
                style = MaterialTheme.typography.labelSmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        item {
            ReaderHeaderFooterPreview(
                uiState = uiState,
                language = strings.languageCode
            )
        }
        item {
            ReaderHeaderFooterSlotStrip(
                language = strings.languageCode,
                slotItems = listOf(
                    ReaderInfoSlotPickerItem(
                        title = "${readerHeaderTitle(strings.languageCode)} · ${readerLeftLabel(strings.languageCode)}",
                        selectedSlot = uiState.headerLeftSlot,
                        onSlotSelected = { onHeaderSlotChange("LEFT", it) }
                    ),
                    ReaderInfoSlotPickerItem(
                        title = "${readerHeaderTitle(strings.languageCode)} · ${readerCenterLabel(strings.languageCode)}",
                        selectedSlot = uiState.headerCenterSlot,
                        onSlotSelected = { onHeaderSlotChange("CENTER", it) }
                    ),
                    ReaderInfoSlotPickerItem(
                        title = "${readerHeaderTitle(strings.languageCode)} · ${readerRightLabel(strings.languageCode)}",
                        selectedSlot = uiState.headerRightSlot,
                        onSlotSelected = { onHeaderSlotChange("RIGHT", it) }
                    ),
                    ReaderInfoSlotPickerItem(
                        title = "${readerFooterTitle(strings.languageCode)} · ${readerLeftLabel(strings.languageCode)}",
                        selectedSlot = uiState.footerLeftSlot,
                        onSlotSelected = { onFooterSlotChange("LEFT", it) }
                    ),
                    ReaderInfoSlotPickerItem(
                        title = "${readerFooterTitle(strings.languageCode)} · ${readerCenterLabel(strings.languageCode)}",
                        selectedSlot = uiState.footerCenterSlot,
                        onSlotSelected = { onFooterSlotChange("CENTER", it) }
                    ),
                    ReaderInfoSlotPickerItem(
                        title = "${readerFooterTitle(strings.languageCode)} · ${readerRightLabel(strings.languageCode)}",
                        selectedSlot = uiState.footerRightSlot,
                        onSlotSelected = { onFooterSlotChange("RIGHT", it) }
                    )
                )
            )
        }
        item {
            ReaderSliderRow(
                title = readerHeaderFooterFontSizeTitle(strings.languageCode),
                valueText = "${uiState.headerFooterFontSize}sp",
                value = uiState.headerFooterFontSize.toFloat(),
                valueRange = 10f..20f,
                steps = 9,
                onValueChange = { onHeaderFooterFontSizeChange(it.toInt()) }
            )
        }
        item {
            ReaderSliderRow(
                title = readerHeaderFooterVerticalPaddingTitle(strings.languageCode),
                valueText = "${uiState.headerFooterVerticalPadding}dp",
                value = uiState.headerFooterVerticalPadding.toFloat(),
                valueRange = 4f..20f,
                steps = 15,
                onValueChange = { onHeaderFooterVerticalPaddingChange(it.toInt()) }
            )
        }
        item {
            ReaderSliderRow(
                title = readerHeaderFooterLeftInsetTitle(strings.languageCode),
                valueText = "${uiState.headerFooterLeftPadding}dp",
                value = uiState.headerFooterLeftPadding.toFloat(),
                valueRange = 8f..32f,
                steps = 23,
                onValueChange = { onHeaderFooterLeftPaddingChange(it.toInt()) }
            )
        }
        item {
            ReaderSliderRow(
                title = readerHeaderFooterRightInsetTitle(strings.languageCode),
                valueText = "${uiState.headerFooterRightPadding}dp",
                value = uiState.headerFooterRightPadding.toFloat(),
                valueRange = 8f..32f,
                steps = 23,
                onValueChange = { onHeaderFooterRightPaddingChange(it.toInt()) }
            )
        }
        item {
            ReaderSwitchRow(
                title = readerText.chromeAutoHideTitle,
                checked = uiState.chromeAutoHideEnabled,
                onCheckedChange = onChromeAutoHideChange
            )
        }
        item { ReaderSectionTitle(readerText.screenTimeoutTitle) }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                items(ReaderScreenTimeoutMode.entries) { mode ->
                    ReaderChoiceChip(
                        selected = uiState.screenTimeoutMode == mode.storedValue,
                        onClick = { onScreenTimeoutChange(mode.storedValue) },
                        label = { Text(readerScreenTimeoutLabel(mode, strings.languageCode)) }
                    )
                }
            }
        }
        item { ReaderSectionTitle(readerText.pageAnimationTitle) }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                listOf("NONE", "SLIDE", "FADE").forEach { animation ->
                    val enabled = uiState.readingMode != com.example.core.model.ReadingMode.WEBTOON
                    item(animation) {
                        ReaderChoiceChip(
                            selected = uiState.readerPageAnimation == animation,
                            onClick = { if (enabled) onPageAnimationChange(animation) },
                            enabled = enabled,
                            label = { Text(readerPageAnimationLabel(animation, strings.languageCode), style = MaterialTheme.typography.labelSmall) }
                        )
                    }
                }
            }
        }
        if (uiState.readingMode == com.example.core.model.ReadingMode.WEBTOON) {
            item {
                Text(
                    text = readerText.pageAnimationDisabledHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item {
            ReaderSliderRow(
                title = strings.preloadLabel,
                valueText = uiState.preloadPages.toString(),
                value = uiState.preloadPages.toFloat(),
                valueRange = 2f..8f,
                steps = 5,
                onValueChange = { onPreloadPagesChange(it.toInt()) }
            )
        }
    }
}

@Composable
private fun ReaderHeaderFooterPreview(
    uiState: ReaderUiState,
    language: String
) {
    val clockText = rememberReaderClockText()
    val chapterTitle = remember(uiState.tableOfContents, uiState.currentPage) {
        resolveReaderCurrentChapterTitle(uiState.tableOfContents, uiState.currentPage)
    }
    val headerLine = remember(
        uiState.headerLeftSlot,
        uiState.headerCenterSlot,
        uiState.headerRightSlot,
        uiState.comic?.title,
        chapterTitle,
        clockText,
        uiState.currentPage,
        uiState.totalPages,
        uiState.readingMode
    ) {
        resolveReaderInfoOverlayLine(
            startSlot = uiState.headerLeftSlot,
            centerSlot = uiState.headerCenterSlot,
            endSlot = uiState.headerRightSlot,
            comicTitle = uiState.comic?.title,
            chapterTitle = chapterTitle,
            clockText = clockText,
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode
        )
    }
    val footerLine = remember(
        uiState.footerLeftSlot,
        uiState.footerCenterSlot,
        uiState.footerRightSlot,
        uiState.comic?.title,
        chapterTitle,
        clockText,
        uiState.currentPage,
        uiState.totalPages,
        uiState.readingMode
    ) {
        resolveReaderInfoOverlayLine(
            startSlot = uiState.footerLeftSlot,
            centerSlot = uiState.footerCenterSlot,
            endSlot = uiState.footerRightSlot,
            comicTitle = uiState.comic?.title,
            chapterTitle = chapterTitle,
            clockText = clockText,
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            readingMode = uiState.readingMode
        )
    }

    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Text(
            text = readerHeaderFooterPreviewTitle(language),
            style = MaterialTheme.typography.bodyMedium,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        val previewOverlaySurface = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
        val previewOverlayStyle = remember(previewOverlaySurface) {
            readerHeaderFooterOverlayStyle(
                surfaceColor = previewOverlaySurface,
                eink = false
            )
        }
        Surface(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            color = previewOverlaySurface
        ) {
            Column(modifier = Modifier.fillMaxWidth()) {
                if (headerLine.hasVisibleContent) {
                    ReaderHeaderFooterTextRow(
                        line = headerLine,
                        fontSizeSp = uiState.headerFooterFontSize,
                        leftPaddingDp = uiState.headerFooterLeftPadding,
                        rightPaddingDp = uiState.headerFooterRightPadding,
                        verticalPaddingDp = uiState.headerFooterVerticalPadding,
                        textColor = previewOverlayStyle.textColor,
                        textShadow = previewOverlayStyle.textShadow
                    )
                }
                if (headerLine.hasVisibleContent && footerLine.hasVisibleContent) {
                    HorizontalDivider(color = MaterialTheme.colorScheme.outlineVariant.copy(alpha = 0.45f))
                }
                if (footerLine.hasVisibleContent) {
                    ReaderHeaderFooterTextRow(
                        line = footerLine,
                        fontSizeSp = uiState.headerFooterFontSize,
                        leftPaddingDp = uiState.headerFooterLeftPadding,
                        rightPaddingDp = uiState.headerFooterRightPadding,
                        verticalPaddingDp = uiState.headerFooterVerticalPadding,
                        textColor = previewOverlayStyle.textColor,
                        textShadow = previewOverlayStyle.textShadow
                    )
                }
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ReaderInfoSlotPickerRow(
    title: String,
    selectedSlot: String,
    language: String,
    onSlotSelected: (String) -> Unit
) {
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(text = title, style = MaterialTheme.typography.bodyMedium)
        FlowRow(
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            ReaderInfoSlot.entries.forEach { slot ->
                ReaderChoiceChip(
                    selected = ReaderInfoSlot.fromStored(selectedSlot) == slot,
                    onClick = { onSlotSelected(slot.name) },
                    label = { Text(readerInfoSlotLabel(language, slot.name)) }
                )
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ReaderTapZoneActionPicker(
    title: String,
    selectedAction: String,
    language: String,
    onActionSelected: (String) -> Unit
) {
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        Text(text = title, style = MaterialTheme.typography.bodyMedium)
        FlowRow(
            horizontalArrangement = Arrangement.spacedBy(8.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            val normalizedSelectedAction = if (ReaderTapZoneAction.fromStored(selectedAction) == ReaderTapZoneAction.TOGGLE_UI) {
                ReaderTapZoneAction.MENU.name
            } else {
                ReaderTapZoneAction.fromStored(selectedAction).name
            }
            ReaderTapZoneAction.entries
                .filter { it != ReaderTapZoneAction.TOGGLE_UI }
                .forEach { action ->
                ReaderChoiceChip(
                    selected = normalizedSelectedAction == action.name,
                    onClick = { onActionSelected(action.name) },
                    label = { Text(readerTapZoneActionLabel(action, language)) }
                )
            }
        }
    }
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ReaderStyleTab(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    onApplyReadingPreset: (ReadingPreset) -> Unit,
    onFontSizeChange: (Int) -> Unit,
    onColorSchemeChange: (String) -> Unit,
    onFontFamilyChange: (String) -> Unit,
    onLineHeightChange: (Float) -> Unit,
    onLetterSpacingChange: (Float) -> Unit,
    onWordSpacingChange: (Float) -> Unit,
    onParagraphSpacingChange: (Float) -> Unit,
    onTextAlignChange: (String) -> Unit,
    onBoldChange: (Boolean) -> Unit,
    onResetStyle: () -> Unit,
    onToolbarOpacityChange: (Float) -> Unit,
    onToolbarBlurChange: (Float) -> Unit,
    onImageScaleModeChange: (String) -> Unit = {},
    onImageMarginCropHorizontalChange: (Float) -> Unit = {},
    onImageMarginCropVerticalChange: (Float) -> Unit = {},
    onChromeIconVisibleChange: (String, Boolean) -> Unit,
    onMoveChromeIcon: (String, Int) -> Unit,
    fontCatalogVersion: Int = 0,
    onImportCustomFont: () -> Unit,
    onDeleteCustomFont: (String) -> Unit,
    onImportReaderStyle: () -> Unit,
    onExportReaderStyle: () -> Unit,
    onSaveCurrentReaderStylePreset: () -> Unit,
    onOverwriteReaderStylePreset: (String) -> Unit,
    onApplyReaderStylePreset: (String) -> Unit,
    onDeleteReaderStylePreset: (String) -> Unit
) {
    val context = LocalContext.current
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val activeReaderPreset = ReadingPreset.fromStored(uiState.readerPreset)
    val combinedToolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
    val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(combinedToolbarOpacity, activeReaderPreset)
    val effectiveToolbarBlur = readerEffectiveToolbarBlur(uiState.toolbarBlur, activeReaderPreset)
    var chromeEditorTab by remember { mutableStateOf(ReaderChromeEditorTab.VISIBILITY) }
    val configurableChromeButtons = remember(uiState.chromeIconOrder) {
        ReaderChromeButton.resolveOrder(uiState.chromeIconOrder)
            .filterNot { it == ReaderChromeButton.STYLE }
    }
    val supportsMarginCrop = remember(uiState.comic?.format, isTextReader) {
        !isTextReader && (uiState.comic?.format == ComicFormat.PDF || uiState.comic?.format == ComicFormat.DJVU)
    }
    val availableFonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.availableFontFamilies(context)
    }
    val importedFonts = remember(context, fontCatalogVersion) {
        ReaderTextFontCatalog.customFontFamilies(context)
    }

    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        // Настройки панели управления — доступны для всех режимов чтения
        item { ReaderSectionTitle(readerText.panelSectionTitle) }
        item {
            ReaderSliderRow(
                title = readerText.toolbarOpacityTitle,
                valueText = "${(effectiveToolbarOpacity * 100).toInt()}%",
                value = effectiveToolbarOpacity,
                valueRange = READER_TOOLBAR_MIN_OPACITY..1f,
                onValueChange = onToolbarOpacityChange,
                enabled = activeReaderPreset != ReadingPreset.EINK
            )
        }
        item {
            ReaderSliderRow(
                title = readerText.toolbarBlurTitle,
                valueText = "${(effectiveToolbarBlur * 100).toInt()}%",
                value = effectiveToolbarBlur,
                valueRange = 0f..1f,
                onValueChange = onToolbarBlurChange,
                enabled = activeReaderPreset != ReadingPreset.EINK
            )
        }
        if (activeReaderPreset == ReadingPreset.EINK) {
            item {
                Text(
                    text = readerText.einkPanelModeHint,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        item { ReaderSectionTitle(readerChromeIconsTitle(strings.languageCode)) }
        item {
            TabRow(
                selectedTabIndex = chromeEditorTab.ordinal,
                containerColor = Color.Transparent
            ) {
                listOf(
                    ReaderChromeEditorTab.VISIBILITY to readerChromeVisibilityTab(strings.languageCode),
                    ReaderChromeEditorTab.ORDER to readerChromeOrderTab(strings.languageCode)
                ).forEach { (tab, label) ->
                    Tab(
                        selected = chromeEditorTab == tab,
                        onClick = { chromeEditorTab = tab },
                        text = { Text(label, style = MaterialTheme.typography.labelSmall) }
                    )
                }
            }
        }
        when (chromeEditorTab) {
            ReaderChromeEditorTab.VISIBILITY -> {
                items(configurableChromeButtons, key = { "chrome_visibility_${it.storedValue}" }) { action ->
                    ReaderSwitchRow(
                        title = readerChromeButtonLabel(action, strings.languageCode, readerText),
                        checked = readerChromeButtonVisible(action, uiState),
                        onCheckedChange = { onChromeIconVisibleChange(action.storedValue, it) }
                    )
                }
            }

            ReaderChromeEditorTab.ORDER -> {
                item {
                    Text(
                        text = readerChromeOrderHint(strings.languageCode),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                itemsIndexed(configurableChromeButtons, key = { _, action -> "chrome_order_${action.storedValue}" }) { index, action ->
                    ReaderSettingsCard {
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text(
                                text = readerChromeButtonLabel(action, strings.languageCode, readerText),
                                style = MaterialTheme.typography.bodySmall,
                                modifier = Modifier.weight(1f)
                            )
                            Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                                ReaderOutlinedActionButton(
                                    onClick = { onMoveChromeIcon(action.storedValue, -1) },
                                    enabled = index > 0
                                ) {
                                    Text(if (strings.languageCode == "ru") "Левее" else "Left")
                                }
                                ReaderOutlinedActionButton(
                                    onClick = { onMoveChromeIcon(action.storedValue, 1) },
                                    enabled = index < configurableChromeButtons.lastIndex
                                ) {
                                    Text(if (strings.languageCode == "ru") "Правее" else "Right")
                                }
                            }
                        }
                    }
                }
            }
        }
        item { HorizontalDivider() }

        if (!isTextReader) {
            item { ReaderSectionTitle(readerImageScaleTitle(strings.languageCode)) }
            item {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    ReaderImageScaleMode.entries.forEach { mode ->
                        ReaderChoiceChip(
                            selected = uiState.imageScaleMode == mode.storedValue,
                            onClick = { onImageScaleModeChange(mode.storedValue) },
                            label = { Text(readerImageScaleLabel(mode, strings.languageCode)) }
                        )
                    }
                }
            }
            if (supportsMarginCrop) {
                item {
                    Text(
                        text = readerMarginCropHint(strings.languageCode),
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
                item {
                    ReaderSliderRow(
                        title = readerMarginCropHorizontalLabel(uiState.imageMarginCropHorizontal, strings.languageCode),
                        valueText = "${(uiState.imageMarginCropHorizontal * 100f).toInt()}%",
                        value = uiState.imageMarginCropHorizontal,
                        valueRange = 0f..0.18f,
                        steps = 17,
                        onValueChange = onImageMarginCropHorizontalChange
                    )
                }
                item {
                    ReaderSliderRow(
                        title = readerMarginCropVerticalLabel(uiState.imageMarginCropVertical, strings.languageCode),
                        valueText = "${(uiState.imageMarginCropVertical * 100f).toInt()}%",
                        value = uiState.imageMarginCropVertical,
                        valueRange = 0f..0.18f,
                        steps = 17,
                        onValueChange = onImageMarginCropVerticalChange
                    )
                }
            }
        } else {
            item { ReaderSectionTitle(readerText.quickPresetsTitle) }
            item {
                LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    com.example.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
                        item {
                            ReaderChoiceChip(
                                selected = uiState.readerPreset == preset.name,
                                onClick = { onApplyReadingPreset(preset) },
                                label = { Text(readerPresetLabel(preset, strings.languageCode), style = MaterialTheme.typography.labelSmall) }
                            )
                        }
                    }
                }
            }
            item {
                ReaderStyleSummaryStrip(
                    activeStyle = uiState.readerStylePresetEntries
                        .map { it.snapshot }
                        .firstOrNull { it.matchesUiState(uiState) },
                    currentFont = uiState.textFontFamily,
                    fontSize = uiState.textFontSize,
                    lineHeight = uiState.textLineHeight,
                    importedFontCount = importedFonts.size,
                    language = strings.languageCode
                )
            }
            val savedReaderStyleCount = uiState.readerStylePresetEntries.size
            item { ReaderSectionTitle("${readerSavedStylesTitle(strings.languageCode)} ($savedReaderStyleCount)") }
            item {
                Text(
                    text = readerSavedStylesListHint(strings.languageCode),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
            item {
                ReaderOutlinedActionButton(
                    onClick = onSaveCurrentReaderStylePreset,
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(readerSavedStyleSaveCurrentAsNew(strings.languageCode))
                }
            }
        }
        item {
            Text(
                text = readerSavedStylesHint(strings.languageCode),
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        items(
            uiState.readerStylePresetEntries.sortedWith(
                compareByDescending<ReaderStylePresetEntry> { entry ->
                    entry.snapshot.matchesUiState(uiState)
                }.thenByDescending { entry ->
                    entry.snapshot.displayName?.isNotBlank() == true
                }.thenBy { entry ->
                    entry.snapshot.displayName ?: entry.id
                }
            ),
            key = { "reader_style_${it.id}" }
        ) { entry ->
            val active = entry.snapshot.matchesUiState(uiState)
            ReaderStylePresetListItem(
                slot = ReaderStylePresetSlot(
                    index = uiState.readerStylePresetEntries.indexOfFirst { it.id == entry.id } + 1,
                    serialized = entry.snapshot.serialize()
                ),
                language = strings.languageCode,
                isActive = active,
                onSave = { onOverwriteReaderStylePreset(entry.id) },
                onApply = { onApplyReaderStylePreset(entry.id) },
                onClear = { onDeleteReaderStylePreset(entry.id) }
            )
        }
        item { ReaderSectionTitle(readerText.colorSchemeTitle) }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                items(listOf(
                    "DAY" to readerText.day,
                    "SEPIA" to readerText.sepia,
                    "NIGHT" to readerText.night
                )) { (id, label) ->
                    ReaderChoiceChip(
                        selected = uiState.textColorScheme == id,
                        onClick = { onColorSchemeChange(id) },
                        label = { Text(label, style = MaterialTheme.typography.labelSmall) }
                    )
                }
            }
        }
        item { ReaderSectionTitle(readerText.fontTitle) }
        item {
            ReaderOutlinedActionButton(
                onClick = onImportCustomFont,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(readerText.importFontAction)
            }
        }
        item {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                ReaderOutlinedActionButton(
                    modifier = Modifier.weight(1f),
                    onClick = onImportReaderStyle
                ) {
                    Text(readerImportStyleAction(strings.languageCode))
                }
                ReaderOutlinedActionButton(
                    modifier = Modifier.weight(1f),
                    onClick = onExportReaderStyle
                ) {
                    Text(readerExportStyleAction(strings.languageCode))
                }
            }
        }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                items(
                    availableFonts.sortedWith(
                        compareByDescending<String> { font -> uiState.textFontFamily == font }
                            .thenBy { font -> font.lowercase(java.util.Locale.getDefault()) }
                    )
                ) { font ->
                    ReaderChoiceChip(
                        selected = (uiState.textFontFamily == font) || (uiState.textFontFamily !in availableFonts && font == "Georgia"),
                        onClick = { onFontFamilyChange(font) },
                        label = { Text(font) }
                    )
                }
            }
        }
        item { ReaderSectionTitle("${readerImportedFontsTitle(strings.languageCode)} (${importedFonts.size})") }
        if (importedFonts.isEmpty()) {
            item {
                Text(
                    text = readerImportedFontsEmpty(strings.languageCode),
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        } else {
            items(
                importedFonts.sortedWith(
                    compareByDescending<String> { font -> uiState.textFontFamily == font }
                        .thenBy { font -> font.lowercase(java.util.Locale.getDefault()) }
                ),
                key = { it }
            ) { font ->
                ReaderSettingsCard(selected = uiState.textFontFamily == font) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        Column(
                            modifier = Modifier.weight(1f),
                            verticalArrangement = Arrangement.spacedBy(2.dp)
                        ) {
                            Text(
                                text = font,
                                style = MaterialTheme.typography.bodySmall,
                                fontWeight = if (uiState.textFontFamily == font) FontWeight.SemiBold else FontWeight.Normal
                            )
                            if (uiState.textFontFamily == font) {
                                Text(
                                    text = readerImportedFontsActive(strings.languageCode),
                                    style = MaterialTheme.typography.labelSmall,
                                    color = MaterialTheme.colorScheme.primary
                                )
                            }
                        }
                        ReaderOutlinedActionButton(
                            onClick = { onDeleteCustomFont(font) }
                        ) {
                            Text(readerDeleteFontAction(strings.languageCode))
                        }
                    }
                }
            }
        }
        item {
            ReaderSliderRow(
                title = readerFontSizeLabel(uiState.textFontSize, strings.languageCode),
                valueText = "${uiState.textFontSize}sp",
                value = uiState.textFontSize.toFloat(),
                valueRange = 12f..32f,
                steps = 19,
                onValueChange = { onFontSizeChange(it.toInt()) }
            )
        }
        item {
            ReaderSwitchRow(
                title = readerText.boldFont,
                checked = uiState.textBold,
                onCheckedChange = onBoldChange
            )
        }
        item {
            ReaderSliderRow(
                title = readerLineHeightLabel((uiState.textLineHeight * 100).toInt(), strings.languageCode),
                valueText = "${(uiState.textLineHeight * 100).toInt()}%",
                value = uiState.textLineHeight,
                valueRange = 1.0f..3.0f,
                steps = 19,
                onValueChange = onLineHeightChange
            )
        }
        item {
            ReaderSliderRow(
                title = readerLetterSpacingLabel(uiState.textLetterSpacing, strings.languageCode),
                valueText = "${"%.2f".format(java.util.Locale.US, uiState.textLetterSpacing)}em",
                value = uiState.textLetterSpacing,
                valueRange = 0f..0.2f,
                steps = 19,
                onValueChange = onLetterSpacingChange
            )
        }
        item {
            ReaderSliderRow(
                title = readerWordSpacingLabel(uiState.textWordSpacing, strings.languageCode),
                valueText = "${"%.2f".format(java.util.Locale.US, uiState.textWordSpacing)}em",
                value = uiState.textWordSpacing,
                valueRange = 0f..0.6f,
                steps = 23,
                onValueChange = onWordSpacingChange
            )
        }
        item {
            ReaderSliderRow(
                title = readerParagraphSpacingLabel(uiState.textParagraphSpacing, strings.languageCode),
                valueText = "${"%.2f".format(java.util.Locale.US, uiState.textParagraphSpacing)}em",
                value = uiState.textParagraphSpacing,
                valueRange = 0.1f..1.2f,
                steps = 21,
                onValueChange = onParagraphSpacingChange
            )
        }
        item { ReaderSectionTitle(readerText.textAlignTitle) }
        item {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                listOf(
                    "justify" to readerText.alignJustify,
                    "left" to readerText.alignLeft,
                    "right" to readerText.alignRight,
                    "center" to readerText.alignCenter
                ).forEach { (id, label) ->
                    ReaderChoiceChip(
                        modifier = Modifier.weight(1f),
                        selected = uiState.textAlignment == id,
                        onClick = { onTextAlignChange(id) },
                        label = { Text(label, style = MaterialTheme.typography.labelSmall, maxLines = 1) }
                    )
                }
            }
        }
        item { HorizontalDivider() }
        item {
            OutlinedButton(
                onClick = onResetStyle,
                modifier = Modifier.fillMaxWidth()
            ) {
                Text(readerText.resetDefaults)
            }
        }
    }
}

@Composable
private fun ReaderStylePresetListItem(
    slot: ReaderStylePresetSlot,
    language: String,
    isActive: Boolean,
    onSave: () -> Unit,
    onApply: () -> Unit,
    onClear: () -> Unit
) {
    val snapshot = remember(slot.serialized) { parseReaderStylePreset(slot.serialized) }
    val slotLabel = "${readerSavedStyleSlotPrefix(language)} ${slot.index}"
    val titleLabel = snapshot?.displayName?.takeIf { it.isNotBlank() } ?: slotLabel
    val presetSummary = snapshot?.let {
        "${readerPresetLabel(ReadingPreset.fromStored(it.readerPreset), language)} · ${it.textFontFamily} · ${it.textFontSize}sp"
    } ?: readerSavedStyleEmpty(language)
    ReaderSettingsCard(
        modifier = Modifier.fillMaxWidth(),
        selected = isActive
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(
                    text = titleLabel,
                    style = MaterialTheme.typography.labelLarge,
                    fontWeight = FontWeight.SemiBold
                )
                if (isActive) {
                    Text(
                        text = readerSavedStyleCurrentLabel(language),
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
                    text = presetSummary,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant,
                    maxLines = 2,
                    overflow = TextOverflow.Ellipsis
                )
            }
        }
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(6.dp)
        ) {
            ReaderOutlinedActionButton(
                modifier = Modifier.weight(1f),
                onClick = onSave
            ) {
                Text(readerSavedStyleSave(language))
            }
            ReaderFilledActionButton(
                modifier = Modifier.weight(1f),
                onClick = onApply,
                enabled = snapshot != null
            ) {
                Text(readerSavedStyleApply(language))
            }
            ReaderOutlinedActionButton(
                modifier = Modifier.weight(1f),
                onClick = onClear,
                enabled = snapshot != null
            ) {
                Text(readerSavedStyleClear(language))
            }
        }
    }
}

@Composable
private fun ReaderManualColorRow(
    title: String,
    selectedColor: Color?,
    language: String,
    onColorSelected: (Color?) -> Unit
) {
    val colorScheme = MaterialTheme.colorScheme
    val options = listOf(
        null to readerManualColorAuto(language),
        colorScheme.onSurface to readerManualColorInk(language),
        colorScheme.surface to readerManualColorPaper(language),
        colorScheme.onSurfaceVariant to readerManualColorMuted(language),
        colorScheme.primary to readerManualColorAccent(language),
        colorScheme.tertiary to readerManualColorWarm(language)
    )
    ReaderSettingsCard {
        Column(verticalArrangement = Arrangement.spacedBy(6.dp)) {
            Text(
                text = title,
                style = MaterialTheme.typography.bodySmall,
                fontWeight = FontWeight.SemiBold
            )
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                items(options) { (color, label) ->
                    ReaderChoiceChip(
                        selected = selectedColor == color,
                        onClick = { onColorSelected(color) },
                        label = {
                            Row(
                                horizontalArrangement = Arrangement.spacedBy(6.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Surface(
                                    shape = RoundedCornerShape(999.dp),
                                    color = color ?: MaterialTheme.colorScheme.surfaceVariant,
                                    border = BorderStroke(
                                        width = 1.dp,
                                        color = MaterialTheme.colorScheme.outline.copy(alpha = 0.32f)
                                    )
                                ) {
                                    Box(
                                        modifier = Modifier
                                            .padding(3.dp)
                                            .width(10.dp)
                                            .height(10.dp)
                                    )
                                }
                                Text(label, style = MaterialTheme.typography.labelSmall)
                            }
                        }
                    )
                }
            }
        }
    }
}

@Composable
private fun ReaderStyleSummaryStrip(
    activeStyle: ReaderStylePresetSnapshot?,
    currentFont: String,
    fontSize: Int,
    lineHeight: Float,
    importedFontCount: Int,
    language: String
) {
    val title = when (language) {
        "en" -> "Current setup"
        "ja" -> "現在の設定"
        "zh" -> "当前设置"
        "ko" -> "현재 설정"
        else -> "Текущая настройка"
    }
    val activeStyleLabel = activeStyle?.displayName?.takeIf { it.isNotBlank() }
        ?: activeStyle?.let { readerPresetLabel(ReadingPreset.fromStored(it.readerPreset), language) }
        ?: when (language) {
            "en" -> "No active saved style"
            "ja" -> "有効な保存スタイルなし"
            "zh" -> "没有启用的保存样式"
            "ko" -> "활성 저장 스타일 없음"
            else -> "Активный сохранённый стиль не выбран"
        }
    val styleBadge = when (language) {
        "en" -> "Style"
        "ja" -> "スタイル"
        "zh" -> "样式"
        "ko" -> "스타일"
        else -> "Стиль"
    }
    val fontBadge = when (language) {
        "en" -> "Font"
        "ja" -> "フォント"
        "zh" -> "字体"
        "ko" -> "글꼴"
        else -> "Шрифт"
    }
    val details = listOf(
        "${readerImportedFontsTitle(language)}: $importedFontCount",
        "${readerFontSizeLabel(fontSize, language)} · ${readerLineHeightLabel((lineHeight * 100).toInt(), language)}",
        currentFont
    )

    Surface(
        shape = RoundedCornerShape(18.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.48f),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 14.dp, vertical = 12.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    text = title,
                    style = MaterialTheme.typography.labelLarge,
                    fontWeight = FontWeight.SemiBold
                )
                Row(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    Surface(
                        shape = RoundedCornerShape(999.dp),
                        color = MaterialTheme.colorScheme.primary.copy(alpha = 0.12f)
                    ) {
                        Text(
                            text = styleBadge,
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 5.dp),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.primary
                        )
                    }
                    Surface(
                        shape = RoundedCornerShape(999.dp),
                        color = MaterialTheme.colorScheme.secondary.copy(alpha = 0.12f)
                    ) {
                        Text(
                            text = fontBadge,
                            modifier = Modifier.padding(horizontal = 10.dp, vertical = 5.dp),
                            style = MaterialTheme.typography.labelSmall,
                            color = MaterialTheme.colorScheme.secondary
                        )
                    }
                }
            }
            Text(
                text = activeStyleLabel,
                style = MaterialTheme.typography.bodyMedium,
                fontWeight = FontWeight.SemiBold,
                maxLines = 1,
                overflow = TextOverflow.Ellipsis
            )
            Column(verticalArrangement = Arrangement.spacedBy(2.dp)) {
                details.forEach { detail ->
                    Text(
                        text = detail,
                        style = MaterialTheme.typography.bodySmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                }
            }
        }
    }
}

private fun readerSavedStyleCurrentLabel(language: String): String = when (language) {
    "en" -> "Current"
    "ja" -> "現在"
    "zh" -> "当前"
    "ko" -> "현재"
    else -> "Сейчас"
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
private fun ReaderServicesTab(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    ttsRuntimeState: ReaderTtsRuntimeState,
    onDismiss: () -> Unit,
    onOpenToc: () -> Unit,
    onToggleBookmark: () -> Unit,
    onRequestOcr: () -> Unit,
    onTtsTogglePlayback: () -> Unit,
    onTtsStop: () -> Unit,
    onTtsPrevious: () -> Unit,
    onTtsNext: () -> Unit,
    onTtsVoiceNameChange: (String?) -> Unit,
    onTtsSpeedChange: (Float) -> Unit,
    onTtsPitchChange: (Float) -> Unit,
    onTtsVolumeChange: (Float) -> Unit,
    onTtsSleepTimerChange: (String) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val activeReaderPreset = ReadingPreset.fromStored(uiState.readerPreset)
    val voiceMenuSurface = readerPanelSurfaceColor(
        base = MaterialTheme.colorScheme.surface,
        emphasis = if (activeReaderPreset == ReadingPreset.EINK) 1f else 0.99f,
        minAlpha = 1f
    )
    val isBookmarked = uiState.bookmarkedPages.contains(uiState.currentPage)
    val selectedVoiceLabel = remember(ttsRuntimeState.selectedVoiceName, ttsRuntimeState.availableVoices) {
        ttsRuntimeState.availableVoices.firstOrNull { it.name == ttsRuntimeState.selectedVoiceName }?.label
            ?: readerText.ttsVoiceDefault
    }
    var isVoiceMenuExpanded by remember { mutableStateOf(false) }
    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 12.dp, vertical = 8.dp),
        verticalArrangement = Arrangement.spacedBy(6.dp)
    ) {
        item { ReaderSectionTitle(readerText.servicesQuickActionsTitle) }
        item {
            LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                item("ocr") {
                    ReaderFilledActionButton(
                        onClick = {
                            onDismiss()
                            onRequestOcr()
                        }
                    ) {
                        Text(readerText.ocrTranslation, style = MaterialTheme.typography.labelSmall)
                    }
                }
            }
        }
        item { ReaderSectionTitle(readerText.servicesSelectionTitle) }
        item {
            Text(
                text = if (isTextReader) readerText.servicesSelectionBody else readerText.servicesOcrBody,
                style = MaterialTheme.typography.bodySmall,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
    }
}

@Composable
private fun ReaderSectionTitle(title: String) {
    Text(
        text = title,
        style = MaterialTheme.typography.labelLarge,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = 0.15.sp
    )
}

@Composable
private fun ReaderSettingsCard(
    modifier: Modifier = Modifier,
    fillMaxWidth: Boolean = true,
    selected: Boolean = false,
    content: @Composable () -> Unit
) {
    Surface(
        modifier = if (fillMaxWidth) modifier.fillMaxWidth() else modifier,
        shape = RoundedCornerShape(12.dp),
        color = if (selected) {
            MaterialTheme.colorScheme.primaryContainer.copy(alpha = 0.84f)
        } else {
            MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
        },
        border = if (selected) {
            BorderStroke(
                width = 1.dp,
                color = MaterialTheme.colorScheme.primary.copy(alpha = 0.34f)
            )
        } else {
            null
        }
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 10.dp, vertical = 8.dp),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            content()
        }
    }
}

@Composable
private fun ReaderChoiceChip(
    selected: Boolean,
    onClick: () -> Unit,
    label: @Composable () -> Unit,
    enabled: Boolean = true,
    modifier: Modifier = Modifier
) {
    FilterChip(
        selected = selected,
        onClick = onClick,
        enabled = enabled,
        shape = RoundedCornerShape(999.dp),
        modifier = modifier.heightIn(min = 28.dp),
        colors = FilterChipDefaults.filterChipColors(
            containerColor = MaterialTheme.colorScheme.surface,
            selectedContainerColor = MaterialTheme.colorScheme.primaryContainer,
            labelColor = MaterialTheme.colorScheme.onSurface,
            selectedLabelColor = MaterialTheme.colorScheme.onPrimaryContainer
        ),
        label = label
    )
}

@Composable
private fun ReaderFilledActionButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable RowScope.() -> Unit
) {
    Button(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier.heightIn(min = 30.dp),
        shape = RoundedCornerShape(999.dp),
        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 0.dp),
        colors = ButtonDefaults.buttonColors(
            containerColor = MaterialTheme.colorScheme.primaryContainer,
            contentColor = MaterialTheme.colorScheme.onPrimaryContainer,
            disabledContainerColor = MaterialTheme.colorScheme.surface,
            disabledContentColor = MaterialTheme.colorScheme.onSurfaceVariant
        ),
        content = content
    )
}

@Composable
private fun ReaderOutlinedActionButton(
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    enabled: Boolean = true,
    content: @Composable RowScope.() -> Unit
) {
    OutlinedButton(
        onClick = onClick,
        enabled = enabled,
        modifier = modifier.heightIn(min = 30.dp),
        shape = RoundedCornerShape(999.dp),
        contentPadding = PaddingValues(horizontal = 10.dp, vertical = 0.dp),
        colors = ButtonDefaults.outlinedButtonColors(
            containerColor = MaterialTheme.colorScheme.surface,
            contentColor = MaterialTheme.colorScheme.onSurface,
            disabledContainerColor = MaterialTheme.colorScheme.surface,
            disabledContentColor = MaterialTheme.colorScheme.onSurfaceVariant
        ),
        content = content
    )
}

@Composable
private fun ReaderSwitchRow(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    subtitle: String? = null
) {
    ReaderSettingsCard {
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(1.dp)
            ) {
                Text(text = title, style = MaterialTheme.typography.bodySmall)
                subtitle?.let {
                    Text(
                        text = it,
                        style = MaterialTheme.typography.labelSmall,
                        color = MaterialTheme.colorScheme.onSurfaceVariant
                    )
                }
            }
            Switch(
                checked = checked,
                onCheckedChange = onCheckedChange,
                modifier = Modifier.scale(0.88f),
                colors = SwitchDefaults.colors(
                    checkedThumbColor = MaterialTheme.colorScheme.onPrimary,
                    checkedTrackColor = MaterialTheme.colorScheme.primary,
                    uncheckedThumbColor = MaterialTheme.colorScheme.onSurfaceVariant,
                    uncheckedTrackColor = MaterialTheme.colorScheme.surface
        )
    )
}

    }
}

@Composable
private fun ReaderSliderRow(
    title: String,
    valueText: String,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    steps: Int = 0,
    enabled: Boolean = true
) {
    ReaderSettingsCard {
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
                enabled = enabled,
                valueRange = valueRange,
                steps = steps,
                colors = androidx.compose.material3.SliderDefaults.colors(
                    thumbColor = MaterialTheme.colorScheme.primary,
                    activeTrackColor = MaterialTheme.colorScheme.primary,
                    inactiveTrackColor = MaterialTheme.colorScheme.outlineVariant,
                    activeTickColor = MaterialTheme.colorScheme.onPrimary,
                    inactiveTickColor = MaterialTheme.colorScheme.onSurface.copy(alpha = 0.36f)
                )
            )
        }
    }
}

private data class ReaderInfoSlotPickerItem(
    val title: String,
    val selectedSlot: String,
    val onSlotSelected: (String) -> Unit
)

@Composable
private fun ReaderHeaderFooterSlotStrip(
    language: String,
    slotItems: List<ReaderInfoSlotPickerItem>
) {
    LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
        items(slotItems) { item ->
            ReaderSettingsCard(
                modifier = Modifier.width(232.dp),
                fillMaxWidth = false
            ) {
                ReaderInfoSlotPickerRow(
                    title = item.title,
                    selectedSlot = item.selectedSlot,
                    language = language,
                    onSlotSelected = item.onSlotSelected
                )
            }
        }
    }
}

private fun readerImageScaleTitle(language: String): String = when (language) {
    "ru" -> "Масштаб изображения"
    "ja" -> "画像の表示"
    "zh" -> "图像缩放"
    "ko" -> "이미지 배율"
    else -> "Image scale"
}

private fun readerImageScaleLabel(mode: ReaderImageScaleMode, language: String): String = when (mode) {
    ReaderImageScaleMode.FIT_WIDTH -> when (language) {
        "ru" -> "По ширине"
        "ja" -> "幅に合わせる"
        "zh" -> "适应宽度"
        "ko" -> "너비에 맞춤"
        else -> "Fit width"
    }
    ReaderImageScaleMode.FIT_HEIGHT -> when (language) {
        "ru" -> "По высоте"
        "ja" -> "高さに合わせる"
        "zh" -> "适应高度"
        "ko" -> "높이에 맞춤"
        else -> "Fit height"
    }
    ReaderImageScaleMode.REAL_SIZE -> when (language) {
        "ru" -> "Реальный размер"
        "ja" -> "実寸"
        "zh" -> "实际大小"
        "ko" -> "실제 크기"
        else -> "Real size"
    }
}

private fun readerMarginCropHint(language: String): String = when (language) {
    "ru" -> "Симметрично обрезает внешние поля PDF и DjVu, чтобы текст занимал больше места на экране."
    "ja" -> "PDF と DjVu の外側余白を左右上下から対称に切り取り、本文を広く表示します。"
    "zh" -> "对 PDF 和 DjVu 的外部留白进行对称裁切，让正文占据更多屏幕空间。"
    "ko" -> "PDF와 DjVu의 바깥 여백을 좌우·상하 대칭으로 잘라 본문이 화면을 더 넓게 쓰도록 합니다."
    else -> "Symmetrically trims outer PDF and DjVu margins so the page content uses more screen space."
}

private fun readerMarginCropHorizontalLabel(value: Float, language: String): String = when (language) {
    "ru" -> "Обрезка слева и справа: ${(value * 100f).toInt()}%"
    "ja" -> "左右トリム: ${(value * 100f).toInt()}%"
    "zh" -> "左右裁切：${(value * 100f).toInt()}%"
    "ko" -> "좌우 자르기: ${(value * 100f).toInt()}%"
    else -> "Left/right crop: ${(value * 100f).toInt()}%"
}

private fun readerMarginCropVerticalLabel(value: Float, language: String): String = when (language) {
    "ru" -> "Обрезка сверху и снизу: ${(value * 100f).toInt()}%"
    "ja" -> "上下トリム: ${(value * 100f).toInt()}%"
    "zh" -> "上下裁切：${(value * 100f).toInt()}%"
    "ko" -> "상하 자르기: ${(value * 100f).toInt()}%"
    else -> "Top/bottom crop: ${(value * 100f).toInt()}%"
}

private fun readerImportedFontsTitle(language: String): String = when (language) {
    "ru" -> "Импортированные шрифты"
    "ja" -> "追加したフォント"
    "zh" -> "已导入字体"
    "ko" -> "가져온 글꼴"
    else -> "Imported fonts"
}

private fun readerImportedFontsEmpty(language: String): String = when (language) {
    "ru" -> "Пока здесь только встроенные шрифты."
    "ja" -> "まだ追加したフォントはありません。"
    "zh" -> "这里还没有导入字体。"
    "ko" -> "아직 가져온 글꼴이 없습니다."
    else -> "Only built-in fonts are available yet."
}

private fun readerImportedFontsActive(language: String): String = when (language) {
    "ru" -> "Используется сейчас"
    "ja" -> "現在使用中"
    "zh" -> "当前正在使用"
    "ko" -> "현재 사용 중"
    else -> "Currently active"
}

private fun readerDeleteFontAction(language: String): String = when (language) {
    "ru" -> "Удалить"
    "ja" -> "削除"
    "zh" -> "删除"
    "ko" -> "삭제"
    else -> "Delete"
}

private fun readerScreenTimeoutLabel(mode: ReaderScreenTimeoutMode, language: String): String = when (mode) {
    ReaderScreenTimeoutMode.SYSTEM -> when (language) {
        "ru" -> "Системное"
        "ja" -> "システム"
        "zh" -> "系统"
        "ko" -> "시스템"
        else -> "System"
    }
    ReaderScreenTimeoutMode.SECONDS_30 -> when (language) {
        "ru" -> "30 сек"
        "ja" -> "30秒"
        "zh" -> "30秒"
        "ko" -> "30초"
        else -> "30s"
    }
    ReaderScreenTimeoutMode.MINUTE_1 -> when (language) {
        "ru" -> "1 мин"
        "ja" -> "1分"
        "zh" -> "1分钟"
        "ko" -> "1분"
        else -> "1m"
    }
    ReaderScreenTimeoutMode.MINUTE_2 -> when (language) {
        "ru" -> "2 мин"
        "ja" -> "2分"
        "zh" -> "2分钟"
        "ko" -> "2분"
        else -> "2m"
    }
    ReaderScreenTimeoutMode.MINUTE_5 -> when (language) {
        "ru" -> "5 мин"
        "ja" -> "5分"
        "zh" -> "5分钟"
        "ko" -> "5분"
        else -> "5m"
    }
    ReaderScreenTimeoutMode.MINUTE_10 -> when (language) {
        "ru" -> "10 мин"
        "ja" -> "10分"
        "zh" -> "10分钟"
        "ko" -> "10분"
        else -> "10m"
    }
    ReaderScreenTimeoutMode.NEVER -> when (language) {
        "ru" -> "Не выключать"
        "ja" -> "常にオン"
        "zh" -> "常亮"
        "ko" -> "항상 켜기"
        else -> "Never"
    }
}

private fun readerPageAnimationLabel(animation: String, language: String): String = when (animation) {
    "NONE" -> when (language) {
        "ru" -> "Нет"
        "ja" -> "なし"
        "zh" -> "无"
        "ko" -> "없음"
        else -> "None"
    }
    "FADE" -> when (language) {
        "ru" -> "Угасание"
        "ja" -> "フェード"
        "zh" -> "淡入淡出"
        "ko" -> "페이드"
        else -> "Fade"
    }
    else -> when (language) {
        "ru" -> "Слайд"
        "ja" -> "スライド"
        "zh" -> "滑动"
        "ko" -> "슬라이드"
        else -> "Slide"
    }
}

private fun readerImmersiveTitle(language: String): String = when (language) {
    "ru" -> "Режим погружения"
    "ja" -> "没入モード"
    "zh" -> "沉浸模式"
    "ko" -> "몰입 모드"
    else -> "Immersive mode"
}

private fun readerTapZonesTitle(language: String): String = when (language) {
    "ru" -> "Зоны нажатия"
    "ja" -> "タップゾーン"
    "zh" -> "点击区域"
    "ko" -> "탭 영역"
    else -> "Tap zones"
}

private fun readerTapZoneModeLabel(mode: ReaderTapZoneMode, language: String): String = when (mode) {
    ReaderTapZoneMode.SIMPLE -> when (language) {
        "ru" -> "Простой"
        "ja" -> "シンプル"
        "zh" -> "简单"
        "ko" -> "기본"
        else -> "Simple"
    }
    ReaderTapZoneMode.CUSTOM -> when (language) {
        "ru" -> "Настраиваемый"
        "ja" -> "カスタム"
        "zh" -> "自定义"
        "ko" -> "사용자 지정"
        else -> "Custom"
    }
}

private fun readerTapZoneSwapTitle(language: String): String = when (language) {
    "ru" -> "Поменять левую и правую зоны"
    "ja" -> "左右のゾーンを入れ替える"
    "zh" -> "交换左右区域"
    "ko" -> "좌우 영역 바꾸기"
    else -> "Swap left and right zones"
}

private fun readerTapZoneLeftTitle(language: String): String = when (language) {
    "ru" -> "Левая зона"
    "ja" -> "左ゾーン"
    "zh" -> "左侧区域"
    "ko" -> "왼쪽 영역"
    else -> "Left zone"
}

private fun readerTapZoneCenterTitle(language: String): String = when (language) {
    "ru" -> "Центральная зона"
    "ja" -> "中央ゾーン"
    "zh" -> "中间区域"
    "ko" -> "가운데 영역"
    else -> "Center zone"
}

private fun readerTapZoneRightTitle(language: String): String = when (language) {
    "ru" -> "Правая зона"
    "ja" -> "右ゾーン"
    "zh" -> "右侧区域"
    "ko" -> "오른쪽 영역"
    else -> "Right zone"
}

private fun readerTapZoneActionLabel(action: ReaderTapZoneAction, language: String): String = when (action) {
    ReaderTapZoneAction.PREVIOUS_PAGE -> when (language) {
        "ru" -> "Назад"
        "ja" -> "前へ"
        "zh" -> "上一页"
        "ko" -> "이전 페이지"
        else -> "Previous page"
    }
    ReaderTapZoneAction.MENU,
    ReaderTapZoneAction.TOGGLE_UI -> when (language) {
        "ru" -> "Меню"
        "ja" -> "メニュー"
        "zh" -> "菜单"
        "ko" -> "메뉴"
        else -> "Menu"
    }
    ReaderTapZoneAction.NEXT_PAGE -> when (language) {
        "ru" -> "Вперёд"
        "ja" -> "次へ"
        "zh" -> "下一页"
        "ko" -> "다음 페이지"
        else -> "Next page"
    }
    ReaderTapZoneAction.NONE -> when (language) {
        "ru" -> "Без действия"
        "ja" -> "なし"
        "zh" -> "无动作"
        "ko" -> "동작 없음"
        else -> "No action"
    }
    ReaderTapZoneAction.PREVIOUS_CHAPTER -> when (language) {
        "ru" -> "Предыдущая глава"
        "ja" -> "前の章"
        "zh" -> "上一章"
        "ko" -> "이전 챕터"
        else -> "Previous chapter"
    }
    ReaderTapZoneAction.NEXT_CHAPTER -> when (language) {
        "ru" -> "Следующая глава"
        "ja" -> "次の章"
        "zh" -> "下一章"
        "ko" -> "다음 챕터"
        else -> "Next chapter"
    }
}

private fun readerTapZoneLayoutSummary(
    left: ReaderTapZoneAction,
    center: ReaderTapZoneAction,
    right: ReaderTapZoneAction,
    language: String
): String = when (language) {
    "ru" -> "Слева: ${readerTapZoneActionLabel(left, language)} · Центр: ${readerTapZoneActionLabel(center, language)} · Справа: ${readerTapZoneActionLabel(right, language)}"
    "ja" -> "左: ${readerTapZoneActionLabel(left, language)} · 中央: ${readerTapZoneActionLabel(center, language)} · 右: ${readerTapZoneActionLabel(right, language)}"
    "zh" -> "左侧：${readerTapZoneActionLabel(left, language)} · 中间：${readerTapZoneActionLabel(center, language)} · 右侧：${readerTapZoneActionLabel(right, language)}"
    "ko" -> "왼쪽: ${readerTapZoneActionLabel(left, language)} · 가운데: ${readerTapZoneActionLabel(center, language)} · 오른쪽: ${readerTapZoneActionLabel(right, language)}"
    else -> "Left: ${readerTapZoneActionLabel(left, language)} · Center: ${readerTapZoneActionLabel(center, language)} · Right: ${readerTapZoneActionLabel(right, language)}"
}

private fun readerChromeIconsTitle(language: String): String = when (language) {
    "ru" -> "Значки верхней панели"
    "ja" -> "上部パネルのアイコン"
    "zh" -> "顶部面板图标"
    "ko" -> "상단 패널 아이콘"
    else -> "Top bar icons"
}

private fun readerChromeVisibilityTab(language: String): String = when (language) {
    "ru" -> "Видимость"
    "ja" -> "表示"
    "zh" -> "显示"
    "ko" -> "표시"
    else -> "Visibility"
}

private fun readerChromeOrderTab(language: String): String = when (language) {
    "ru" -> "Порядок"
    "ja" -> "順序"
    "zh" -> "顺序"
    "ko" -> "순서"
    else -> "Order"
}

private fun readerChromeOrderHint(language: String): String = when (language) {
    "ru" -> "Меняйте порядок значков так, как они должны идти слева направо."
    "ja" -> "アイコンの並び順を左から右へ調整します。"
    "zh" -> "调整图标从左到右的排列顺序。"
    "ko" -> "아이콘 순서를 왼쪽에서 오른쪽 기준으로 조정합니다."
    else -> "Adjust the icon order from left to right."
}

private fun readerChromeButtonLabel(
    button: ReaderChromeButton,
    language: String,
    readerText: ReaderUiText
): String = when (button) {
    ReaderChromeButton.TOC -> readerText.chapters
    ReaderChromeButton.STYLE -> readerText.controlTabStyle
    ReaderChromeButton.AUDIO -> readerText.servicesTtsTitle
    ReaderChromeButton.DIRECTION -> readerText.directionToggle
    ReaderChromeButton.TRANSLATE -> readerText.ocrTranslation
    ReaderChromeButton.BRIGHTNESS -> when (language) {
        "ru" -> "Яркость"
        "ja" -> "明るさ"
        "zh" -> "亮度"
        "ko" -> "밝기"
        else -> "Brightness"
    }
}

private fun readerChromeButtonVisible(
    button: ReaderChromeButton,
    uiState: ReaderUiState
): Boolean = when (button) {
    ReaderChromeButton.TOC -> uiState.chromeShowTocIcon
    ReaderChromeButton.STYLE -> uiState.chromeShowStyleIcon
    ReaderChromeButton.AUDIO -> uiState.chromeShowAudioIcon
    ReaderChromeButton.DIRECTION -> uiState.chromeShowDirectionIcon
    ReaderChromeButton.TRANSLATE -> uiState.chromeShowTranslateIcon
    ReaderChromeButton.BRIGHTNESS -> uiState.chromeShowBrightnessIcon
}

private fun readerTtsSleepTimerLabel(mode: ReaderTtsSleepTimerMode, language: String): String = when (mode) {
    ReaderTtsSleepTimerMode.OFF -> when (language) {
        "ru" -> "Выкл"
        "ja" -> "オフ"
        "zh" -> "关闭"
        "ko" -> "끔"
        else -> "Off"
    }
    ReaderTtsSleepTimerMode.MINUTES_10 -> when (language) {
        "ru" -> "10 мин"
        "ja" -> "10分"
        "zh" -> "10分钟"
        "ko" -> "10분"
        else -> "10m"
    }
    ReaderTtsSleepTimerMode.MINUTES_20 -> when (language) {
        "ru" -> "20 мин"
        "ja" -> "20分"
        "zh" -> "20分钟"
        "ko" -> "20분"
        else -> "20m"
    }
    ReaderTtsSleepTimerMode.MINUTES_30 -> when (language) {
        "ru" -> "30 мин"
        "ja" -> "30分"
        "zh" -> "30分钟"
        "ko" -> "30분"
        else -> "30m"
    }
    ReaderTtsSleepTimerMode.MINUTES_45 -> when (language) {
        "ru" -> "45 мин"
        "ja" -> "45分"
        "zh" -> "45分钟"
        "ko" -> "45분"
        else -> "45m"
    }
    ReaderTtsSleepTimerMode.MINUTES_60 -> when (language) {
        "ru" -> "60 мин"
        "ja" -> "60分"
        "zh" -> "60分钟"
        "ko" -> "60분"
        else -> "60m"
    }
}
