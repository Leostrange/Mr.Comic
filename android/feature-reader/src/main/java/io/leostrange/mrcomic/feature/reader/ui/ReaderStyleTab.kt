package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.background
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import io.leostrange.mrcomic.core.model.*
import io.leostrange.mrcomic.core.ui.locale.*
import io.leostrange.mrcomic.core.ui.theme.*
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.itemsIndexed
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.text.font.FontWeight
import io.leostrange.mrcomic.core.ui.theme.style
import io.leostrange.mrcomic.core.ui.designsystem.MrComicPreviewBackdrop
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetEntry
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSlot
import io.leostrange.mrcomic.feature.reader.domain.preset.ReaderStylePresetSnapshot
import io.leostrange.mrcomic.feature.reader.domain.preset.parseReaderStylePreset
import io.leostrange.mrcomic.feature.reader.ui.gesture.ReaderColorScheme

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
            // The graphic reader must keep the style/settings entry: it is
            // the only route to image scaling, crop and graphic presets.
            // Text-reader controls keep the style entry in their own tab.
            .filterNot { isTextReader && it == ReaderChromeButton.STYLE }
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
            item { ReaderSectionTitle(readerText.colorSchemeTitle) }
            item {
                LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    items(ReaderColorScheme.graphicQuickChoices) { id ->
                        val label = when (id) {
                            "SEPIA" -> readerText.sepia
                            "NIGHT" -> readerText.night
                            else -> readerText.day
                        }
                        ReaderChoiceChip(
                            selected = uiState.graphicColorScheme == id,
                            onClick = { onColorSchemeChange(id) },
                            label = { Text(label, style = MaterialTheme.typography.labelSmall) }
                        )
                    }
                }
            }
            item { ReaderSectionTitle(readerText.colorSchemeTitle) }
            item {
                LazyRow(horizontalArrangement = Arrangement.spacedBy(6.dp)) {
                    items(
                        listOf(
                            "DAY" to readerText.day,
                            "SEPIA" to readerText.sepia,
                            "NIGHT" to readerText.night
                        )
                    ) { (id, label) ->
                        ReaderChoiceChip(
                            selected = uiState.graphicColorScheme == id,
                            onClick = { onColorSchemeChange(id) },
                            label = { Text(label, style = MaterialTheme.typography.labelSmall) }
                        )
                    }
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
        if (isTextReader) {
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

/** Shows the retained image area and the exact horizontal/vertical crop zones. */
@Composable
private fun ReaderGraphicCropPreview(
    leftCrop: Float,
    topCrop: Float,
    rightCrop: Float,
    bottomCrop: Float,
    language: String
) {
    val maxFraction = 0.22f
    val left = leftCrop.coerceIn(0f, maxFraction)
    val top = topCrop.coerceIn(0f, maxFraction)
    val right = rightCrop.coerceIn(0f, maxFraction)
    val bottom = bottomCrop.coerceIn(0f, maxFraction)
    val previewLabel = when (language) {
        "en" -> "Preview · retained image area"
        "ja" -> "プレビュー・表示領域"
        "zh" -> "预览 · 保留图像区域"
        "ko" -> "미리보기 · 표시 영역"
        else -> "Предпросмотр · видимая область"
    }
    ReaderSettingsCard {
        Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(previewLabel, style = MaterialTheme.typography.labelLarge)
                Text(
                    text = "←${(left * 100f).toInt()}% ↑${(top * 100f).toInt()}% ↓${(bottom * 100f).toInt()}% →${(right * 100f).toInt()}%",
                    style = MaterialTheme.typography.labelSmall,
                    color = MaterialTheme.colorScheme.primary
                )
            }
            MrComicPreviewBackdrop(shape = RoundedCornerShape(12.dp)) {
            Box(
                modifier = Modifier
                    .fillMaxWidth()
                    .height(128.dp)
                    .clip(RoundedCornerShape(12.dp))
                    .background(MaterialTheme.colorScheme.surfaceVariant.copy(alpha = 0.55f)),
                contentAlignment = Alignment.Center
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxHeight()
                        .fillMaxWidth(0.72f)
                        .padding(horizontal = 12.dp, vertical = 10.dp)
                        .background(MaterialTheme.colorScheme.surface, RoundedCornerShape(8.dp))
                        .padding(horizontal = 10.dp, vertical = 8.dp)
                ) {
                    Column(verticalArrangement = Arrangement.spacedBy(7.dp)) {
                        repeat(5) { index ->
                            Box(
                                modifier = Modifier
                                    .fillMaxWidth(if (index == 1) 0.78f else 1f)
                                    .height(6.dp)
                                    .background(
                                        MaterialTheme.colorScheme.onSurfaceVariant.copy(alpha = 0.55f),
                                        RoundedCornerShape(50)
                                    )
                            )
                        }
                    }
                }
                val overlay = MaterialTheme.colorScheme.primary.copy(alpha = 0.18f)
                if (left > 0f) {
                    Box(
                        modifier = Modifier
                            .fillMaxHeight()
                            .fillMaxWidth(left / maxFraction)
                            .align(Alignment.CenterStart)
                            .background(overlay)
                    )
                }
                if (right > 0f) {
                    Box(
                        modifier = Modifier
                            .fillMaxHeight()
                            .fillMaxWidth(right / maxFraction)
                            .align(Alignment.CenterEnd)
                            .background(overlay)
                    )
                }
                if (top > 0f) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .fillMaxHeight(top / maxFraction)
                            .align(Alignment.TopCenter)
                            .background(overlay)
                    )
                }
                if (bottom > 0f) {
                    Box(
                        modifier = Modifier
                            .fillMaxWidth()
                            .fillMaxHeight(bottom / maxFraction)
                            .align(Alignment.BottomCenter)
                            .background(overlay)
                    )
                }
            }
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

