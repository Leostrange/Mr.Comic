package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.BoxScope
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset

/**
 * ARC-11 S12: chrome bar shell — top and bottom reader chrome composables.
 *
 * Extracted from [ReaderScreen] to reduce its size. Must be a [BoxScope]
 * extension because [ReaderTopChromeBar] and [ReaderBottomChromePanel]
 * require the BoxScope receiver from the reading-area Box.
 */
@Composable
internal fun BoxScope.ReaderChromeBars(
    uiState: ReaderUiState,
    chromeSurface: Color,
    effectiveToolbarBlur: Float,
    overlaySurface: Color,
    overlayTextStyle: ReaderHeaderFooterOverlayStyle,
    activeReaderPreset: ReadingPreset,
    isTextReader: Boolean,
    supportsLandscapeSpread: Boolean,
    directionShortcutActive: Boolean,
    showBrightnessRow: Boolean,
    showHeaderFooterOverlay: Boolean,
    headerOverlayLine: ReaderInfoOverlayLine,
    footerOverlayLine: ReaderInfoOverlayLine,
    onHeaderMeasured: (Int) -> Unit,
    onTopMeasured: (Int) -> Unit,
    onFooterMeasured: (Int) -> Unit,
    onBottomMeasured: (Int) -> Unit,
    onNavigateBack: () -> Unit,
    onToggleToc: () -> Unit,
    onToggleTextSettings: () -> Unit,
    onSwapDirection: () -> Unit,
    onRequestOcr: () -> Unit,
    onToggleBrightness: () -> Unit,
    onToggleTtsControls: () -> Unit,
    onAutoScrollToggle: () -> Unit,
    onBrightnessChange: (Float) -> Unit,
    onAutoScrollSpeedPreview: (Float) -> Unit,
    onAutoScrollSpeedCommit: (Float) -> Unit,
    onToggleBookmark: () -> Unit,
    onApplyPreset: (ReadingPreset) -> Unit,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit,
    onDismissFootnote: () -> Unit,
    onExpandFootnote: () -> Unit,
    onCollapseFootnote: () -> Unit,
) {
    ReaderTopChromeBar(
        uiState = uiState,
        chromeSurface = chromeSurface,
        effectiveToolbarBlur = effectiveToolbarBlur,
        overlaySurface = overlaySurface,
        overlayTextStyle = overlayTextStyle,
        activeReaderPreset = activeReaderPreset,
        isTextReader = isTextReader,
        directionShortcutActive = directionShortcutActive,
        showBrightnessRow = showBrightnessRow,
        showHeaderFooterOverlay = showHeaderFooterOverlay,
        headerOverlayLine = headerOverlayLine,
        onHeaderMeasured = onHeaderMeasured,
        onTopMeasured = onTopMeasured,
        onNavigateBack = onNavigateBack,
        onToggleToc = onToggleToc,
        onToggleTextSettings = onToggleTextSettings,
        onSwapDirection = onSwapDirection,
        onRequestOcr = onRequestOcr,
        onToggleBrightness = onToggleBrightness,
        onToggleTtsControls = onToggleTtsControls,
        onAutoScrollToggle = onAutoScrollToggle,
        onBrightnessChange = onBrightnessChange,
        onAutoScrollSpeedPreview = onAutoScrollSpeedPreview,
        onAutoScrollSpeedCommit = onAutoScrollSpeedCommit,
    )

    ReaderBottomChromePanel(
        uiState = uiState,
        chromeSurface = chromeSurface,
        overlaySurface = overlaySurface,
        effectiveToolbarBlur = effectiveToolbarBlur,
        overlayTextStyle = overlayTextStyle,
        activeReaderPreset = activeReaderPreset,
        supportsLandscapeSpread = supportsLandscapeSpread,
        showHeaderFooterOverlay = showHeaderFooterOverlay,
        footerOverlayLine = footerOverlayLine,
        onBottomMeasured = onBottomMeasured,
        onFooterMeasured = onFooterMeasured,
        onToggleBookmark = onToggleBookmark,
        onApplyPreset = onApplyPreset,
        onReadingModeChange = onReadingModeChange,
        onPageChange = onPageChange,
        onDismissFootnote = onDismissFootnote,
        onExpandFootnote = onExpandFootnote,
        onCollapseFootnote = onCollapseFootnote,
    )
}
