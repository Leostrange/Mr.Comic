package io.leostrange.mrcomic.feature.reader.ui

// Phase I (2026-08-05): composable helpers from ReaderControlCenterSheet.kt

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.draw.scale
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButton
import io.leostrange.mrcomic.core.ui.designsystem.MrComicButtonVariant
import io.leostrange.mrcomic.core.ui.designsystem.MrComicSwitchRow
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.core.ui.theme.*
import androidx.compose.ui.text.font.FontWeight
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntry
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSlot
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePreset

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun ReaderReadingTab(
    uiState: ReaderUiState,
    isTextReader: Boolean,
    onReadingModeChange: (io.leostrange.mrcomic.core.model.ReadingMode) -> Unit,
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
                    io.leostrange.mrcomic.core.model.ReadingMode.PAGE_LTR to strings.readingModeLtr,
                    io.leostrange.mrcomic.core.model.ReadingMode.WEBTOON to strings.readingModeWebtoon
                ).forEach { (mode, label) ->
                    item(mode.name) {
                        ReaderChoiceChip(
                            selected = uiState.readingMode == mode ||
                                    (mode == io.leostrange.mrcomic.core.model.ReadingMode.PAGE_LTR &&
                                            uiState.readingMode == io.leostrange.mrcomic.core.model.ReadingMode.PAGE_RTL),
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
                    val enabled = uiState.readingMode != io.leostrange.mrcomic.core.model.ReadingMode.WEBTOON
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
        if (uiState.readingMode == io.leostrange.mrcomic.core.model.ReadingMode.WEBTOON) {
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
internal fun ReaderHeaderFooterPreview(
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
internal fun ReaderInfoSlotPickerRow(
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
internal fun ReaderTapZoneActionPicker(
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
internal fun ReaderStyleTab(
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
                    io.leostrange.mrcomic.core.ui.theme.readingPresetQuickChoices().forEach { preset ->
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
        if (isTextReader) {
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
internal fun ReaderStylePresetListItem(
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
internal fun ReaderManualColorRow(
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
internal fun ReaderStyleSummaryStrip(
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

internal fun readerSavedStyleCurrentLabel(language: String): String = when (language) {
    "en" -> "Current"
    "ja" -> "現在"
    "zh" -> "当前"
    "ko" -> "현재"
    else -> "Сейчас"
}

@OptIn(ExperimentalLayoutApi::class)
@Composable
internal fun ReaderServicesTab(
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
internal fun ReaderSectionTitle(title: String) {
    Text(
        text = title,
        style = MaterialTheme.typography.labelLarge,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = 0.15.sp
    )
}

@Composable
internal fun ReaderSettingsCard(
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
internal fun ReaderChoiceChip(
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
internal fun ReaderFilledActionButton(
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
internal fun ReaderOutlinedActionButton(
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
internal fun ReaderSwitchRow(
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
internal fun ReaderSliderRow(
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

internal data class ReaderInfoSlotPickerItem(
    val title: String,
    val selectedSlot: String,
    val onSlotSelected: (String) -> Unit
)

@Composable
internal fun ReaderHeaderFooterSlotStrip(
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

// Localization strings extracted to ReaderControlCenterStrings.kt