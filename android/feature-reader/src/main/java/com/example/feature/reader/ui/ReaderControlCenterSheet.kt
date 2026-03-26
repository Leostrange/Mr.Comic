package com.example.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.width
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.Button
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
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

@OptIn(ExperimentalMaterial3Api::class)
@Composable
internal fun ReaderControlCenterSheet(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    ttsRuntimeState: ReaderTtsRuntimeState,
    onDismiss: () -> Unit,
    onApplyReadingPreset: (ReadingPreset) -> Unit,
    onFontSizeChange: (Int) -> Unit,
    onColorSchemeChange: (String) -> Unit,
    onFontFamilyChange: (String) -> Unit,
    onLineHeightChange: (Float) -> Unit,
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
        ReadingPreset.NIGHT_INK -> 0.96f
        else -> 0.97f
    }
    val sheetVisualBlur = if (activeReaderPreset == ReadingPreset.EINK) 0f else 0.14f
    val sheetSurface = readerPanelSurfaceColor(
        base = MaterialTheme.colorScheme.surface,
        emphasis = sheetChromeEmphasis,
        minAlpha = if (activeReaderPreset == ReadingPreset.EINK) 1f else 0.94f
    )
    var selectedTab by remember(isTextReader) {
        mutableStateOf(if (isTextReader) ReaderControlTab.STYLE else ReaderControlTab.READING)
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
                            onChromeAutoHideChange = onChromeAutoHideChange,
                            onToolbarOpacityChange = onToolbarOpacityChange,
                            onToolbarBlurChange = onToolbarBlurChange,
                            onImageScaleModeChange = onImageScaleModeChange
                        )

                    ReaderControlTab.STYLE -> ReaderStyleTab(
                        uiState = uiState,
                        isTextReader = isTextReader,
                        onApplyReadingPreset = onApplyReadingPreset,
                        onFontSizeChange = onFontSizeChange,
                        onColorSchemeChange = onColorSchemeChange,
                        onFontFamilyChange = onFontFamilyChange,
                        onLineHeightChange = onLineHeightChange,
                        onTextAlignChange = onTextAlignChange,
                        onBoldChange = onBoldChange,
                        onResetStyle = onResetStyle
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
    onChromeAutoHideChange: (Boolean) -> Unit,
    onToolbarOpacityChange: (Float) -> Unit,
    onToolbarBlurChange: (Float) -> Unit,
    onImageScaleModeChange: (String) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    val activeReaderPreset = ReadingPreset.fromStored(uiState.readerPreset)
    val combinedToolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f)
    val effectiveToolbarOpacity = readerEffectiveToolbarOpacity(combinedToolbarOpacity, activeReaderPreset)
    val effectiveToolbarBlur = readerEffectiveToolbarBlur(uiState.toolbarBlur, activeReaderPreset)
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
        contentPadding = PaddingValues(horizontal = 14.dp, vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        item { ReaderSectionTitle(readerText.readingModeTitle) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                listOf(
                    com.example.core.model.ReadingMode.PAGE_LTR to strings.readingModeLtr,
                    com.example.core.model.ReadingMode.PAGE_RTL to strings.readingModeRtl,
                    com.example.core.model.ReadingMode.WEBTOON to strings.readingModeWebtoon
                ).forEach { (mode, label) ->
                    ReaderChoiceChip(
                        selected = uiState.readingMode == mode,
                        onClick = { onReadingModeChange(mode) },
                        label = { Text(label) }
                    )
                }
            }
        }
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
            LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
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
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                listOf("NONE", "SLIDE", "FADE").forEach { animation ->
                    val enabled = uiState.readingMode != com.example.core.model.ReadingMode.WEBTOON
                    ReaderChoiceChip(
                        selected = uiState.readerPageAnimation == animation,
                        onClick = { if (enabled) onPageAnimationChange(animation) },
                        enabled = enabled,
                        label = { Text(readerPageAnimationLabel(animation, strings.languageCode)) }
                    )
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
        item { HorizontalDivider() }
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
        Surface(
            modifier = Modifier.fillMaxWidth(),
            shape = MaterialTheme.shapes.large,
            color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
        ) {
            Column(modifier = Modifier.fillMaxWidth()) {
                if (headerLine.hasVisibleContent) {
                    ReaderHeaderFooterTextRow(
                        line = headerLine,
                        fontSizeSp = uiState.headerFooterFontSize,
                        leftPaddingDp = uiState.headerFooterLeftPadding,
                        rightPaddingDp = uiState.headerFooterRightPadding,
                        verticalPaddingDp = uiState.headerFooterVerticalPadding
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
                        verticalPaddingDp = uiState.headerFooterVerticalPadding
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
    onTextAlignChange: (String) -> Unit,
    onBoldChange: (Boolean) -> Unit,
    onResetStyle: () -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    if (!isTextReader) {
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .padding(horizontal = 16.dp, vertical = 14.dp),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Text(
                text = readerText.styleUnavailableTitle,
                style = MaterialTheme.typography.titleMedium,
                fontWeight = FontWeight.SemiBold
            )
            Text(
                text = readerText.styleUnavailableBody,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        return
    }

    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 14.dp, vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        item { ReaderSectionTitle(readerText.quickPresetsTitle) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                listOf(ReadingPreset.PAPER, ReadingPreset.NIGHT_INK, ReadingPreset.EINK).forEach { preset ->
                    ReaderChoiceChip(
                        selected = uiState.readerPreset == preset.name,
                        onClick = { onApplyReadingPreset(preset) },
                        label = { Text(readerPresetLabel(preset, strings.languageCode)) }
                    )
                }
            }
        }
        item { ReaderSectionTitle(readerText.colorSchemeTitle) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                listOf(
                    "DAY" to readerText.day,
                    "SEPIA" to readerText.sepia,
                    "NIGHT" to readerText.night
                ).forEach { (id, label) ->
                    ReaderChoiceChip(
                        selected = uiState.textColorScheme == id,
                        onClick = { onColorSchemeChange(id) },
                        label = { Text(label) }
                    )
                }
            }
        }
        item { ReaderSectionTitle(readerText.fontTitle) }
        item {
            val fonts = listOf("Georgia", "Merriweather", "Open Sans", "Roboto Slab", "PT Serif", "Literata")
            LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                items(fonts) { font ->
                    ReaderChoiceChip(
                        selected = uiState.textFontFamily == font,
                        onClick = { onFontFamilyChange(font) },
                        label = { Text(font) }
                    )
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
        item { ReaderSectionTitle(readerText.textAlignTitle) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                listOf(
                    "justify" to readerText.alignJustify,
                    "left" to readerText.alignLeft,
                    "right" to readerText.alignRight,
                    "center" to readerText.alignCenter
                ).forEach { (id, label) ->
                    ReaderChoiceChip(
                        selected = uiState.textAlignment == id,
                        onClick = { onTextAlignChange(id) },
                        label = { Text(label) }
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
    val isBookmarked = uiState.bookmarkedPages.contains(uiState.currentPage)
    val selectedVoiceLabel = remember(ttsRuntimeState.selectedVoiceName, ttsRuntimeState.availableVoices) {
        ttsRuntimeState.availableVoices.firstOrNull { it.name == ttsRuntimeState.selectedVoiceName }?.label
            ?: readerText.ttsVoiceDefault
    }
    var isVoiceMenuExpanded by remember { mutableStateOf(false) }
    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 14.dp, vertical = 10.dp),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        item { ReaderSectionTitle(readerText.servicesQuickActionsTitle) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                Button(
                    onClick = {
                        onDismiss()
                        onOpenToc()
                    }
                ) {
                    Text(strings.readerToc)
                }
                OutlinedButton(onClick = onToggleBookmark) {
                    Text(if (isBookmarked) strings.readerBookmarked else strings.readerBookmark)
                }
                if (!isTextReader) {
                    OutlinedButton(
                        onClick = {
                            onDismiss()
                            onRequestOcr()
                        }
                    ) {
                        Text(readerText.ocrTranslation)
                    }
                }
            }
        }
        item { ReaderSectionTitle(readerText.servicesSelectionTitle) }
        item {
            Text(
                text = if (isTextReader) readerText.servicesSelectionBody else readerText.servicesOcrBody,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        item { HorizontalDivider() }
        item { ReaderSectionTitle(readerText.servicesTtsTitle) }
        item {
            Text(
                text = if (isTextReader) readerText.servicesTtsBody else readerText.servicesTtsUnavailableBody,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        if (isTextReader) {
            item {
                ReaderChoiceChip(
                    selected = ttsRuntimeState.ready,
                    onClick = {},
                    enabled = false,
                    label = {
                        Text(if (ttsRuntimeState.ready) readerText.ttsReadyLabel else readerText.ttsUnavailableLabel)
                    }
                )
            }
            item {
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Button(onClick = onTtsTogglePlayback, enabled = ttsRuntimeState.ready) {
                        Text(if (ttsRuntimeState.isSpeaking) readerText.ttsPause else readerText.ttsPlay)
                    }
                    OutlinedButton(onClick = onTtsStop, enabled = ttsRuntimeState.ready) {
                        Text(readerText.ttsStop)
                    }
                    OutlinedButton(onClick = onTtsPrevious, enabled = ttsRuntimeState.ready) {
                        Text(readerText.ttsPrevious)
                    }
                    OutlinedButton(onClick = onTtsNext, enabled = ttsRuntimeState.ready) {
                        Text(readerText.ttsNext)
                    }
                }
            }
            item { ReaderSectionTitle(readerText.ttsVoiceTitle) }
            item {
                Box(modifier = Modifier.fillMaxWidth()) {
                    OutlinedButton(
                        onClick = { isVoiceMenuExpanded = true },
                        enabled = ttsRuntimeState.availableVoices.isNotEmpty(),
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
                                onTtsVoiceNameChange(null)
                                isVoiceMenuExpanded = false
                            }
                        )
                        ttsRuntimeState.availableVoices.forEach { voice ->
                            DropdownMenuItem(
                                text = { Text(voice.label) },
                                onClick = {
                                    onTtsVoiceNameChange(voice.name)
                                    isVoiceMenuExpanded = false
                                }
                            )
                        }
                    }
                }
            }
            item {
                ReaderSliderRow(
                    title = readerText.ttsSpeedTitle,
                    valueText = String.format("%.1fx", uiState.ttsSpeed),
                    value = uiState.ttsSpeed,
                    valueRange = 0.5f..2.0f,
                    onValueChange = onTtsSpeedChange
                )
            }
            item {
                ReaderSliderRow(
                    title = readerText.ttsPitchTitle,
                    valueText = String.format("%.1fx", uiState.ttsPitch),
                    value = uiState.ttsPitch,
                    valueRange = 0.5f..2.0f,
                    onValueChange = onTtsPitchChange
                )
            }
            item {
                ReaderSliderRow(
                    title = readerText.ttsVolumeTitle,
                    valueText = "${(uiState.ttsVolume * 100).toInt()}%",
                    value = uiState.ttsVolume,
                    valueRange = 0f..1f,
                    onValueChange = onTtsVolumeChange
                )
            }
            item { ReaderSectionTitle(readerText.ttsSleepTimerTitle) }
            item {
                LazyRow(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    items(ReaderTtsSleepTimerMode.entries) { mode ->
                        ReaderChoiceChip(
                            selected = uiState.ttsSleepTimerMode == mode.storedValue,
                            onClick = { onTtsSleepTimerChange(mode.storedValue) },
                            label = { Text(readerTtsSleepTimerLabel(mode, strings.languageCode)) }
                        )
                    }
                }
            }
        }
    }
}

@Composable
private fun ReaderSectionTitle(title: String) {
    Text(
        text = title,
        style = MaterialTheme.typography.titleSmall,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = 0.2.sp
    )
}

@Composable
private fun ReaderSettingsCard(
    modifier: Modifier = Modifier,
    fillMaxWidth: Boolean = true,
    content: @Composable () -> Unit
) {
    Surface(
        modifier = if (fillMaxWidth) modifier.fillMaxWidth() else modifier,
        shape = RoundedCornerShape(14.dp),
        color = MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.98f)
    ) {
        Column(
            modifier = Modifier.padding(horizontal = 12.dp, vertical = 10.dp),
            verticalArrangement = Arrangement.spacedBy(6.dp)
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
    enabled: Boolean = true
) {
    FilterChip(
        selected = selected,
        onClick = onClick,
        enabled = enabled,
        shape = RoundedCornerShape(999.dp),
        modifier = Modifier.heightIn(min = 30.dp),
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
                verticalArrangement = Arrangement.spacedBy(2.dp)
            ) {
                Text(text = title, style = MaterialTheme.typography.bodyMedium)
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
                modifier = Modifier.scale(0.94f),
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
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                Text(text = title, style = MaterialTheme.typography.bodyMedium)
                Text(
                    text = valueText,
                    style = MaterialTheme.typography.bodySmall,
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
