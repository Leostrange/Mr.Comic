package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Arrangement
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.BoxScope
import androidx.compose.foundation.layout.Column
import androidx.compose.foundation.layout.Spacer
import androidx.compose.foundation.layout.displayCutoutPadding
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.layout.statusBarsPadding
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Surface
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.BlurredEdgeTreatment
import androidx.compose.ui.draw.blur
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.layout.onGloballyPositioned
import androidx.compose.ui.unit.dp
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.domain.enums.FootnotePresentation
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderChromeState

/**
 * Chrome surface calculations result.
 */
internal data class ChromeSurfaceData(
    val chromeSurface: Color,
    val overlaySurface: Color,
    val overlayTextStyle: ReaderHeaderFooterOverlayStyle
)

/**
 * Bottom chrome panel: note card, footnote panel, expanded bottom controls, and footer overlay.
 * Must be called inside a [BoxScope] for alignment.
 */
@Composable
internal fun BoxScope.ReaderBottomChromePanel(
    uiState: ReaderUiState,
    chromeSurface: Color,
    overlaySurface: Color,
    effectiveToolbarBlur: Float,
    overlayTextStyle: ReaderHeaderFooterOverlayStyle,
    activeReaderPreset: ReadingPreset,
    supportsLandscapeSpread: Boolean,
    showHeaderFooterOverlay: Boolean,
    footerOverlayLine: ReaderInfoOverlayLine,
    onBottomMeasured: (Int) -> Unit,
    onFooterMeasured: (Int) -> Unit,
    onToggleBookmark: () -> Unit,
    onApplyPreset: (ReadingPreset) -> Unit,
    onReadingModeChange: (ReadingMode) -> Unit,
    onPageChange: (Int) -> Unit,
    onDismissFootnote: () -> Unit,
    onExpandFootnote: () -> Unit,
    onCollapseFootnote: () -> Unit
) {
    Box(
        modifier = Modifier
            .align(Alignment.BottomCenter)
            .fillMaxWidth()
            .onGloballyPositioned { onBottomMeasured(it.size.height) }
    ) {
        if (uiState.chromeState == ReaderChromeState.EXPANDED) {
            Spacer(
                modifier = Modifier
                    .matchParentSize()
                    .then(
                        if (effectiveToolbarBlur > 0.01f)
                            Modifier.blur(
                                radius = (effectiveToolbarBlur * 8f).dp,
                                edgeTreatment = BlurredEdgeTreatment.Unbounded
                            )
                        else Modifier
                    )
                    .background(chromeSurface)
            )
        }
        Column(
            modifier = Modifier
                .fillMaxWidth()
                .then(
                    if (uiState.chromeState == ReaderChromeState.EXPANDED) {
                        Modifier.navigationBarsPadding()
                    } else {
                        Modifier
                    }
                ),
            verticalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            uiState.pageTranslationNote?.let { note ->
                SavedPageNoteCard(
                    note = note,
                    modifier = Modifier.padding(horizontal = 16.dp)
                )
            }

            uiState.footnotePopup?.let { popup ->
                ReaderNotePanel(
                    text = popup.text,
                    colorScheme = uiState.textColorScheme,
                    expanded = uiState.footnotePresentation == FootnotePresentation.EXPANDED,
                    onDismiss = onDismissFootnote,
                    onExpand = onExpandFootnote,
                    onCollapse = onCollapseFootnote,
                    chromeReservedDp = if (uiState.chromeState == ReaderChromeState.HIDDEN) 0 else 64,
                    modifier = Modifier
                        .padding(horizontal = if (uiState.chromeState == ReaderChromeState.HIDDEN) 12.dp else 0.dp)
                        .then(
                            if (uiState.chromeState == ReaderChromeState.HIDDEN) {
                                Modifier.navigationBarsPadding()
                            } else {
                                Modifier
                            }
                        ),
                    palette = { scheme -> colorSchemePaletteForPreset(scheme, activeReaderPreset) }
                )
            }

            if (
                uiState.chromeState != ReaderChromeState.HIDDEN &&
                !uiState.showTextSettings &&
                !uiState.showTocSheet &&
                uiState.footnotePresentation != FootnotePresentation.EXPANDED
            ) {
                when (uiState.chromeState) {
                    ReaderChromeState.EXPANDED -> ReaderExpandedBottomPanel(
                        uiState = uiState,
                        isLandscape = supportsLandscapeSpread,
                        onToggleBookmark = onToggleBookmark,
                        onApplyPreset = onApplyPreset,
                        onReadingModeChange = onReadingModeChange,
                        onPageChange = onPageChange
                    )
                    else -> Unit
                }
            } else if (uiState.chromeState == ReaderChromeState.HIDDEN) {
                if (showHeaderFooterOverlay && footerOverlayLine.hasVisibleContent) {
                    Surface(
                        modifier = Modifier
                            .fillMaxWidth()
                            .onGloballyPositioned { onFooterMeasured(it.size.height) },
                        shape = RoundedCornerShape(0.dp),
                        color = overlaySurface
                    ) {
                        ReaderHeaderFooterTextRow(
                            line = footerOverlayLine,
                            fontSizeSp = uiState.headerFooterFontSize,
                            leftPaddingDp = uiState.headerFooterLeftPadding,
                            rightPaddingDp = uiState.headerFooterRightPadding,
                            verticalPaddingDp = uiState.headerFooterVerticalPadding,
                            textColor = overlayTextStyle.textColor,
                            textShadow = overlayTextStyle.textShadow,
                            modifier = Modifier.navigationBarsPadding()
                        )
                    }
                } else {
                    Spacer(Modifier.navigationBarsPadding())
                }
            }
        }
    }
}

/**
 * Top chrome bar: header overlay and expanded toolbar.
 * Must be called inside a [BoxScope] for alignment.
 */
@Composable
internal fun BoxScope.ReaderTopChromeBar(
    uiState: ReaderUiState,
    chromeSurface: Color,
    effectiveToolbarBlur: Float,
    overlaySurface: Color,
    overlayTextStyle: ReaderHeaderFooterOverlayStyle,
    activeReaderPreset: ReadingPreset,
    isTextReader: Boolean,
    directionShortcutActive: Boolean,
    showBrightnessRow: Boolean,
    showHeaderFooterOverlay: Boolean,
    headerOverlayLine: ReaderInfoOverlayLine,
    onHeaderMeasured: (Int) -> Unit,
    onTopMeasured: (Int) -> Unit,
    onNavigateBack: () -> Unit,
    onToggleToc: () -> Unit,
    onToggleTextSettings: () -> Unit,
    onSwapDirection: () -> Unit,
    onRequestOcr: () -> Unit,
    onToggleBrightness: () -> Unit,
    onToggleTtsControls: () -> Unit,
    onAutoScrollToggle: () -> Unit,
    onBrightnessChange: (Float) -> Unit
) {
    if (showHeaderFooterOverlay && headerOverlayLine.hasVisibleContent) {
        Surface(
            modifier = Modifier
                .align(Alignment.TopCenter)
                .fillMaxWidth()
                .onGloballyPositioned { onHeaderMeasured(it.size.height) },
            shape = RoundedCornerShape(0.dp),
            color = overlaySurface
        ) {
            ReaderHeaderFooterTextRow(
                line = headerOverlayLine,
                fontSizeSp = uiState.headerFooterFontSize,
                leftPaddingDp = uiState.headerFooterLeftPadding,
                rightPaddingDp = uiState.headerFooterRightPadding,
                verticalPaddingDp = uiState.headerFooterVerticalPadding,
                textColor = overlayTextStyle.textColor,
                textShadow = overlayTextStyle.textShadow,
                modifier = Modifier
                    .statusBarsPadding()
                    .displayCutoutPadding()
            )
        }
    }

    if (uiState.chromeState != ReaderChromeState.HIDDEN && !uiState.showTextSettings && !uiState.showTocSheet) {
        Box(
            modifier = Modifier
                .align(Alignment.TopCenter)
                .fillMaxWidth()
                .onGloballyPositioned { onTopMeasured(it.size.height) }
        ) {
            Spacer(
                modifier = Modifier
                    .matchParentSize()
                    .then(
                        if (effectiveToolbarBlur > 0.01f)
                            Modifier.blur(
                                radius = (effectiveToolbarBlur * 8f).dp,
                                edgeTreatment = BlurredEdgeTreatment.Unbounded
                            )
                        else Modifier
                    )
                    .background(chromeSurface)
            )
            Column(
                modifier = Modifier
                    .fillMaxWidth()
                    .statusBarsPadding()
                    .displayCutoutPadding()
            ) {
                when (uiState.chromeState) {
                    ReaderChromeState.EXPANDED -> {
                        ReaderExpandedBar(
                            title = uiState.comic?.title.orEmpty(),
                            canShowToc = uiState.tableOfContents.isNotEmpty() || uiState.bookmarkedPages.isNotEmpty(),
                            showTextSettings = true,
                            showOcrAction = true,
                            canSwapDirection = uiState.readingMode == ReadingMode.PAGE_LTR ||
                                uiState.readingMode == ReadingMode.PAGE_RTL,
                            directionShortcutActive = directionShortcutActive,
                            showBrightnessRow = showBrightnessRow,
                            useDirectActions = isTextReader,
                            chromeIconOrder = uiState.chromeIconOrder,
                            showTocIcon = uiState.chromeShowTocIcon && isTextReader,
                            showTextSettingsIcon = uiState.chromeShowStyleIcon,
                            showAudioIcon = uiState.chromeShowAudioIcon && isTextReader,
                            showDirectionIcon = uiState.chromeShowDirectionIcon,
                            showTranslateIcon = uiState.chromeShowTranslateIcon,
                            showBrightnessIcon = uiState.chromeShowBrightnessIcon,
                            showAutoScrollIcon = true,
                            autoScrollActive = uiState.autoScrollSpeed > 0f,
                            onNavigateBack = onNavigateBack,
                            onToggleToc = onToggleToc,
                            onToggleTextSettings = onToggleTextSettings,
                            onSwapDirection = onSwapDirection,
                            onRequestOcr = onRequestOcr,
                            onToggleBrightness = onToggleBrightness,
                            onToggleTtsControls = onToggleTtsControls,
                            onAutoScrollToggle = onAutoScrollToggle
                        )
                        if (showBrightnessRow) {
                            ReaderBrightnessRow(
                                brightness = uiState.brightness,
                                onBrightnessChange = onBrightnessChange
                            )
                        }
                    }
                    else -> Unit
                }
            }
        }
    }
}
