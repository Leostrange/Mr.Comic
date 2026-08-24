package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.*
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.core.ui.theme.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.theme.style

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
        Text(
            text = title,
            style = MaterialTheme.typography.bodyMedium,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )
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
        Text(
            text = title,
            style = MaterialTheme.typography.bodyMedium,
            maxLines = 2,
            overflow = TextOverflow.Ellipsis
        )
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