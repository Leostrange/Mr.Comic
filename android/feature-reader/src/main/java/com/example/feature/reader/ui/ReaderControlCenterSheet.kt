package com.example.feature.reader.ui

import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.ExperimentalLayoutApi
import androidx.compose.foundation.layout.FlowRow
import androidx.compose.foundation.layout.PaddingValues
import androidx.compose.foundation.layout.Row
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.Button
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.FilterChip
import androidx.compose.material3.HorizontalDivider
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.OutlinedButton
import androidx.compose.material3.Slider
import androidx.compose.material3.Switch
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.example.core.model.ReaderImageScaleMode
import com.example.core.model.ReaderScreenTimeoutMode
import com.example.core.model.ReaderTtsSleepTimerMode
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
    onVolumePagingChange: (Boolean) -> Unit,
    onChromeAutoHideChange: (Boolean) -> Unit,
    onTopToolbarOpacityChange: (Float) -> Unit,
    onBottomToolbarOpacityChange: (Float) -> Unit,
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
    var selectedTab by remember(isTextReader) {
        mutableStateOf(if (isTextReader) ReaderControlTab.STYLE else ReaderControlTab.READING)
    }

    ModalBottomSheet(
        onDismissRequest = onDismiss,
        dragHandle = { BottomSheetDefaults.DragHandle() }
    ) {
        BoxWithConstraints(modifier = Modifier.fillMaxWidth()) {
            val maxSheetHeight = maxHeight * 0.74f
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .heightIn(max = maxSheetHeight)
            ) {
                TabRow(selectedTabIndex = selectedTab.ordinal) {
                    listOf(
                        ReaderControlTab.READING to readerText.controlTabReading,
                        ReaderControlTab.STYLE to readerText.controlTabStyle,
                        ReaderControlTab.SERVICES to readerText.controlTabServices
                    ).forEach { (tab, label) ->
                        Tab(
                            selected = selectedTab == tab,
                            onClick = { selectedTab = tab },
                            text = { Text(label) }
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
                        onVolumePagingChange = onVolumePagingChange,
                        onChromeAutoHideChange = onChromeAutoHideChange,
                        onTopToolbarOpacityChange = onTopToolbarOpacityChange,
                        onBottomToolbarOpacityChange = onBottomToolbarOpacityChange,
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
    onVolumePagingChange: (Boolean) -> Unit,
    onChromeAutoHideChange: (Boolean) -> Unit,
    onTopToolbarOpacityChange: (Float) -> Unit,
    onBottomToolbarOpacityChange: (Float) -> Unit,
    onToolbarBlurChange: (Float) -> Unit,
    onImageScaleModeChange: (String) -> Unit
) {
    val strings = LocalStrings.current
    val readerText = readerUiText(strings.languageCode)
    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 20.dp, vertical = 16.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
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
                    FilterChip(
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
                        FilterChip(
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
        item {
            ReaderSwitchRow(
                title = readerText.volumePagingTitle,
                checked = uiState.volumeKeysPagingEnabled,
                onCheckedChange = onVolumePagingChange,
                subtitle = readerText.volumePagingHint
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
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                ReaderScreenTimeoutMode.entries.forEach { mode ->
                    FilterChip(
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
                    FilterChip(
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
                title = readerText.topToolbarOpacityTitle,
                valueText = "${(uiState.topToolbarOpacity * 100).toInt()}%",
                value = uiState.topToolbarOpacity,
                valueRange = READER_TOOLBAR_MIN_OPACITY..1f,
                onValueChange = onTopToolbarOpacityChange
            )
        }
        item {
            ReaderSliderRow(
                title = readerText.bottomToolbarOpacityTitle,
                valueText = "${(uiState.bottomToolbarOpacity * 100).toInt()}%",
                value = uiState.bottomToolbarOpacity,
                valueRange = READER_TOOLBAR_MIN_OPACITY..1f,
                onValueChange = onBottomToolbarOpacityChange
            )
        }
        item {
            ReaderSliderRow(
                title = readerText.toolbarBlurTitle,
                valueText = "${(uiState.toolbarBlur * 100).toInt()}%",
                value = uiState.toolbarBlur,
                valueRange = 0f..1f,
                onValueChange = onToolbarBlurChange
            )
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
                .padding(horizontal = 20.dp, vertical = 18.dp),
            verticalArrangement = Arrangement.spacedBy(10.dp)
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
        contentPadding = PaddingValues(horizontal = 20.dp, vertical = 16.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
    ) {
        item { ReaderSectionTitle(readerText.quickPresetsTitle) }
        item {
            FlowRow(
                horizontalArrangement = Arrangement.spacedBy(8.dp),
                verticalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                listOf(ReadingPreset.PAPER, ReadingPreset.NIGHT_INK, ReadingPreset.EINK).forEach { preset ->
                    FilterChip(
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
                    FilterChip(
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
                    FilterChip(
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
                    FilterChip(
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
    LazyColumn(
        modifier = Modifier.fillMaxWidth(),
        contentPadding = PaddingValues(horizontal = 20.dp, vertical = 16.dp),
        verticalArrangement = Arrangement.spacedBy(14.dp)
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
                FilterChip(
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
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    FilterChip(
                        selected = ttsRuntimeState.selectedVoiceName == null,
                        onClick = { onTtsVoiceNameChange(null) },
                        label = { Text(readerText.ttsVoiceDefault) }
                    )
                    ttsRuntimeState.availableVoices.take(8).forEach { voice ->
                        FilterChip(
                            selected = ttsRuntimeState.selectedVoiceName == voice.name,
                            onClick = { onTtsVoiceNameChange(voice.name) },
                            label = { Text(voice.label) }
                        )
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
                FlowRow(
                    horizontalArrangement = Arrangement.spacedBy(8.dp),
                    verticalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    ReaderTtsSleepTimerMode.entries.forEach { mode ->
                        FilterChip(
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
        style = MaterialTheme.typography.titleMedium,
        fontWeight = FontWeight.SemiBold,
        letterSpacing = 0.3.sp
    )
}

@Composable
private fun ReaderSwitchRow(
    title: String,
    checked: Boolean,
    onCheckedChange: (Boolean) -> Unit,
    subtitle: String? = null
) {
    Row(
        modifier = Modifier.fillMaxWidth(),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(4.dp)
        ) {
            Text(text = title, style = MaterialTheme.typography.bodyLarge)
            subtitle?.let {
                Text(
                    text = it,
                    style = MaterialTheme.typography.bodySmall,
                    color = MaterialTheme.colorScheme.onSurfaceVariant
                )
            }
        }
        Switch(checked = checked, onCheckedChange = onCheckedChange)
    }
}

@Composable
private fun ReaderSliderRow(
    title: String,
    valueText: String,
    value: Float,
    valueRange: ClosedFloatingPointRange<Float>,
    onValueChange: (Float) -> Unit,
    steps: Int = 0
) {
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(8.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Text(text = title, style = MaterialTheme.typography.bodyLarge)
            Text(
                text = valueText,
                style = MaterialTheme.typography.bodyMedium,
                color = MaterialTheme.colorScheme.onSurfaceVariant
            )
        }
        Slider(
            value = value,
            onValueChange = onValueChange,
            valueRange = valueRange,
            steps = steps
        )
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
