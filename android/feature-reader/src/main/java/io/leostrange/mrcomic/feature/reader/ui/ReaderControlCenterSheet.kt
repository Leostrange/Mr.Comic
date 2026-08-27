package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.BoxWithConstraints
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.heightIn
import androidx.compose.material3.BottomSheetDefaults
import androidx.compose.material3.ExperimentalMaterial3Api
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.ModalBottomSheet
import androidx.compose.material3.Tab
import androidx.compose.material3.TabRow
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

internal enum class ReaderControlTab {
    READING,
    STYLE,
    SERVICES
}

internal enum class ReaderChromeEditorTab {
    VISIBILITY,
    ORDER
}

internal data class ReaderAutoScrollActions(
    val toggle: () -> Unit,
    val previewSpeed: (Float) -> Unit,
    val commitSpeed: (Float) -> Unit
)

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
    onTtsSleepTimerChange: (String) -> Unit,
    autoScrollActions: ReaderAutoScrollActions
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
                        onTtsSleepTimerChange = onTtsSleepTimerChange,
                        onAutoScrollToggle = autoScrollActions.toggle,
                        onAutoScrollSpeedPreview = autoScrollActions.previewSpeed,
                        onAutoScrollSpeedCommit = autoScrollActions.commitSpeed
                    )
                }
            }
        }
    }
}
