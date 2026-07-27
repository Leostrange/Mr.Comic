package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.material3.AlertDialog
import androidx.compose.material3.Text
import androidx.compose.material3.TextButton
import androidx.compose.runtime.Composable
import androidx.compose.ui.platform.ClipboardManager
import androidx.compose.ui.text.AnnotatedString
import io.leostrange.mrcomic.core.ui.locale.LocalStrings
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.R
import io.leostrange.mrcomic.feature.reader.domain.enums.ReaderNavigationProgressSource
import io.leostrange.mrcomic.feature.reader.ui.components.ImageMessagePopup
import io.leostrange.mrcomic.feature.reader.ui.components.ImageMessagePopupConfig
import io.leostrange.mrcomic.feature.reader.ui.rsvp.RsvpOverlay
import io.leostrange.mrcomic.feature.reader.ui.rsvp.extractWordsForRsvp

/**
 * All conditional bottom sheets, dialogs, and overlays for the reader screen.
 * Extracted from [ReaderScreen] to reduce its composable size.
 */
@Composable
internal fun ReaderBottomSheets(
    uiState: ReaderUiState,
    viewModel: ReaderViewModel,
    isTextReader: Boolean,
    ttsRuntimeState: ReaderTtsRuntimeState,
    ttsController: ReaderTextToSpeechController,
    activeReaderPreset: ReadingPreset,
    currentChapterTitle: String?,
    clipboardManager: ClipboardManager,
    readerText: ReaderUiText,
    // Mutable state holders (owned by ReaderScreen)
    fontCatalogVersion: Int,
    openControlCenterAtServices: Boolean,
    onOpenControlCenterAtServicesChange: (Boolean) -> Unit,
    showTextTranslationPageSheet: Boolean,
    onShowTextTranslationPageSheetChange: (Boolean) -> Unit,
    showRsvpOverlay: Boolean,
    onShowRsvpOverlayChange: (Boolean) -> Unit,
    rsvpWords: List<String>,
    onRsvpWordsChange: (List<String>) -> Unit,
    showReaderAudioSheet: Boolean,
    onShowReaderAudioSheetChange: (Boolean) -> Unit,
    pendingTtsRestartTargetPage: Int?,
    onPendingTtsRestartTargetPageChange: (Int?) -> Unit,
    pendingCustomFontDeletion: String?,
    onPendingCustomFontDeletionChange: (String?) -> Unit,
    quoteSavePopupVisible: Boolean,
    onQuoteSavePopupVisibleChange: (Boolean) -> Unit,
    quoteSavePopupToken: Int,
    eyeRestReminderMinutes: Int?,
    onEyeRestReminderMinutesChange: (Int?) -> Unit,
    // Launchers
    onLaunchFontImport: () -> Unit,
    onLaunchStyleImport: () -> Unit,
    onLaunchStyleExport: () -> Unit,
    onDeleteCustomFont: (String) -> Unit,
) {
    val strings = LocalStrings.current

    // ── Оглавление (ModalBottomSheet) ──────────────────────────────────────────
    if (uiState.showTocSheet) {
        TocBottomSheet(
            entries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            bookmarkedPages = uiState.bookmarkedPages,
            readerPreset = activeReaderPreset,
            toolbarOpacity = ((uiState.topToolbarOpacity + uiState.bottomToolbarOpacity) * 0.5f).coerceIn(0f, 1f),
            toolbarBlur = uiState.toolbarBlur,
            resolveDisplayPage = viewModel::tocDisplayPage,
            onNavigate = { entry ->
                viewModel.navigationController.navigateToTocEntry(
                    page = entry.pageIndex,
                    anchorId = entry.anchorId ?: "",
                    sectionIndex = entry.sectionIndex,
                    charOffset = entry.charOffset
                )
                viewModel.toggleTocSheet()
            },
            onRemoveBookmark = { viewModel.bookmarkController.removeBookmark(it) },
            onDismiss = viewModel::toggleTocSheet
        )
    }

    if (showTextTranslationPageSheet && isTextReader) {
        TextPageTranslationSheet(
            entries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            totalPages = uiState.totalPages,
            onDismiss = { onShowTextTranslationPageSheetChange(false) },
            onTranslatePage = { page ->
                onShowTextTranslationPageSheetChange(false)
                viewModel.requestTextPageTranslation(page)
            }
        )
    }

    // RSVP speed reading overlay
    if (showRsvpOverlay && rsvpWords.isNotEmpty()) {
        RsvpOverlay(
            words = rsvpWords,
            onClose = { onShowRsvpOverlayChange(false) },
            onFinished = { onShowRsvpOverlayChange(false) }
        )
    }

    if (showReaderAudioSheet && isTextReader) {
        ReaderAudioSheet(
            title = uiState.comic?.title.orEmpty(),
            chapterTitle = currentChapterTitle,
            tocEntries = uiState.tableOfContents,
            currentPage = uiState.currentPage,
            runtimeState = ttsRuntimeState,
            speed = uiState.ttsSpeed,
            pitch = uiState.ttsPitch,
            volume = uiState.ttsVolume,
            sleepTimerMode = uiState.ttsSleepTimerMode,
            onDismiss = { onShowReaderAudioSheetChange(false) },
            onTogglePlayback = ttsController::togglePlayback,
            onPrevious = ttsController::previousChunk,
            onNext = ttsController::nextChunk,
            onStop = {
                ttsController.stop()
                onShowReaderAudioSheetChange(false)
            },
            onNavigateToPage = { page ->
                if (page == uiState.currentPage) {
                    ttsController.restartFromBeginning()
                } else {
                    onPendingTtsRestartTargetPageChange(page)
                    ttsController.stop()
                    viewModel.navigationController.navigateTo(page, progressSource = ReaderNavigationProgressSource.JUMP)
                }
            },
            onVoiceNameChange = { value ->
                viewModel.settingsController.setTtsVoiceName(value)
                ttsController.selectVoice(value)
            },
            onSpeedChange = viewModel.settingsController::setTtsSpeed,
            onPitchChange = viewModel.settingsController::setTtsPitch,
            onVolumeChange = viewModel.settingsController::setTtsVolume,
            onSleepTimerChange = viewModel.settingsController::setTtsSleepTimerMode,
            onSpeedRead = if (isTextReader) {{
                val pageText = uiState.currentHtmlContent ?: ""
                val words = extractWordsForRsvp(pageText)
                if (words.isNotEmpty()) {
                    onRsvpWordsChange(words)
                    onShowRsvpOverlayChange(true)
                }
            }} else null
        )
    }

    // ── Настройки текста (ModalBottomSheet) ────────────────────────────────────
    if (uiState.showTextSettings) {
        ReaderControlCenterSheet(
            uiState = uiState,
            isTextReader = isTextReader,
            ttsRuntimeState = ttsRuntimeState,
            fontCatalogVersion = fontCatalogVersion,
            openAtServicesTab = openControlCenterAtServices,
            onDismiss = {
                onOpenControlCenterAtServicesChange(false)
                viewModel.toggleTextSettings()
            },
            onApplyReadingPreset = viewModel.settingsController::applyReadingPreset,
            onFontSizeChange = viewModel.settingsController::setTextFontSize,
            onColorSchemeChange = viewModel.settingsController::setTextColorScheme,
            onFontFamilyChange = viewModel.settingsController::setTextFontFamily,
            onLineHeightChange = viewModel.settingsController::setTextLineHeight,
            onLetterSpacingChange = viewModel.settingsController::setTextLetterSpacing,
            onWordSpacingChange = viewModel.settingsController::setTextWordSpacing,
            onParagraphSpacingChange = viewModel.settingsController::setTextParagraphSpacing,
            onTextAlignChange = viewModel.settingsController::setTextAlignment,
            onBoldChange = viewModel.settingsController::setTextBold,
            onResetStyle = viewModel.settingsController::resetTextSettings,
            onReadingModeChange = viewModel.readingModeController::setReadingMode,
            onKeepScreenOnChange = viewModel.settingsController::setKeepScreenOn,
            onScreenTimeoutChange = viewModel.settingsController::setScreenTimeoutMode,
            onImmersiveModeChange = viewModel.settingsController::setImmersiveMode,
            onLandscapeSpreadChange = viewModel.readingModeController::setLandscapeSpreadEnabled,
            onPreloadPagesChange = viewModel.readingModeController::setPreloadPages,
            onPageAnimationChange = viewModel.settingsController::setPageAnimation,
            onTapZoneModeChange = viewModel.settingsController::setTapZoneMode,
            onTapZoneSwapChange = viewModel.settingsController::setTapZoneSwap,
            onTapZoneActionChange = viewModel.settingsController::setTapZoneAction,
            onVolumePagingChange = viewModel.settingsController::setVolumeKeysPagingEnabled,
            onHeaderSlotChange = viewModel.settingsController::setHeaderSlot,
            onFooterSlotChange = viewModel.settingsController::setFooterSlot,
            onHeaderFooterFontSizeChange = viewModel.settingsController::setHeaderFooterFontSize,
            onHeaderFooterVerticalPaddingChange = viewModel.settingsController::setHeaderFooterVerticalPadding,
            onHeaderFooterLeftPaddingChange = viewModel.settingsController::setHeaderFooterLeftPadding,
            onHeaderFooterRightPaddingChange = viewModel.settingsController::setHeaderFooterRightPadding,
            onChromeAutoHideChange = viewModel.settingsController::setChromeAutoHideEnabled,
            onToolbarOpacityChange = viewModel.settingsController::setToolbarOpacity,
            onToolbarBlurChange = viewModel.settingsController::setToolbarBlur,
            onImageScaleModeChange = viewModel.settingsController::setImageScaleMode,
            onImageMarginCropHorizontalChange = viewModel.settingsController::setImageMarginCropHorizontal,
            onImageMarginCropVerticalChange = viewModel.settingsController::setImageMarginCropVertical,
            onChromeIconVisibleChange = viewModel.settingsController::setChromeIconVisible,
            onMoveChromeIcon = viewModel.settingsController::moveChromeIcon,
            onImportCustomFont = onLaunchFontImport,
            onDeleteCustomFont = { pendingCustomFontDeletion -> onPendingCustomFontDeletionChange(pendingCustomFontDeletion) },
            onImportReaderStyle = onLaunchStyleImport,
            onExportReaderStyle = onLaunchStyleExport,
            onSaveCurrentReaderStylePreset = viewModel.settingsController::saveCurrentReaderStylePreset,
            onOverwriteReaderStylePreset = viewModel.settingsController::overwriteReaderStylePreset,
            onApplyReaderStylePreset = viewModel.settingsController::applyReaderStylePreset,
            onDeleteReaderStylePreset = viewModel.settingsController::deleteReaderStylePreset,
            onOpenToc = viewModel::toggleTocSheet,
            onToggleBookmark = { viewModel.bookmarkController.toggleBookmark() },
            onRequestOcr = { viewModel.ocrController.requestOcr() },
            onTtsTogglePlayback = ttsController::togglePlayback,
            onTtsStop = ttsController::stop,
            onTtsPrevious = ttsController::previousChunk,
            onTtsNext = ttsController::nextChunk,
            onTtsVoiceNameChange = { value ->
                viewModel.settingsController.setTtsVoiceName(value)
                ttsController.selectVoice(value)
            },
            onTtsSpeedChange = viewModel.settingsController::setTtsSpeed,
            onTtsPitchChange = viewModel.settingsController::setTtsPitch,
            onTtsVolumeChange = viewModel.settingsController::setTtsVolume,
            onTtsSleepTimerChange = viewModel.settingsController::setTtsSleepTimerMode
        )
    }
    pendingCustomFontDeletion?.let { fontName ->
        AlertDialog(
            onDismissRequest = { onPendingCustomFontDeletionChange(null) },
            confirmButton = {
                TextButton(onClick = {
                    onPendingCustomFontDeletionChange(null)
                    onDeleteCustomFont(fontName)
                }) {
                    Text(if (strings.languageCode == "ru") "Удалить" else "Delete")
                }
            },
            dismissButton = {
                TextButton(onClick = { onPendingCustomFontDeletionChange(null) }) {
                    Text(if (strings.languageCode == "ru") "Отмена" else "Cancel")
                }
            },
            title = {
                Text(if (strings.languageCode == "ru") "Удалить шрифт?" else "Delete font?")
            },
            text = {
                Text(
                    if (strings.languageCode == "ru") {
                        "Шрифт \"$fontName\" будет удалён из приложения. Если он выбран сейчас, чтение вернётся на Georgia."
                    } else {
                        "Font \"$fontName\" will be removed from the app. If it is currently selected, reading will fall back to Georgia."
                    }
                )
            }
        )
    }
    uiState.selectedTextActionSheet?.let { actionState ->
        SelectedTextActionSheet(
            state = actionState,
            onDismiss = viewModel::dismissSelectedTextActions,
            onTranslate = viewModel::translateFromSelectedTextActions,
            onDictionary = viewModel::openDictionaryFromSelectedTextActions,
            onExplain = viewModel::explainFromSelectedTextActions,
            onSaveQuote = { viewModel.saveQuoteController.saveQuoteFromSelectedTextActions() }
        )
    }
    uiState.pendingHighlightText?.let { highlightText ->
        HighlightColorPickerSheet(
            text = highlightText,
            onColorSelected = { color -> viewModel.highlightController.confirmHighlight(color) },
            onDismiss = { viewModel.highlightController.dismissHighlight() }
        )
    }
    uiState.chapterTranslationProgress?.let { progress ->
        ChapterTranslationProgressBar(progress = progress)
    }
    uiState.translationComparison?.let { comparison ->
        TranslationComparisonSheet(
            comparison = comparison,
            onDismiss = viewModel::dismissTranslationComparison
        )
    }
    uiState.selectedTextTranslation?.let { translationState ->
        SelectedTextTranslationSheet(
            state = translationState,
            onDismiss = viewModel::dismissSelectedTextTranslation,
            onDictionary = viewModel::openDictionaryForSelectedText,
            onTranslateAsPhrase = viewModel::translateSelectedTextAsPhrase,
            onExplain = viewModel::explainSelectedTextFromResult,
            onTransportChange = viewModel::translateSelectedTextWithTransport,
            onCopy = { text ->
                clipboardManager.setText(AnnotatedString(text))
            },
            onSaveQuote = { viewModel.saveQuoteController.saveQuoteFromSelectedTextResult() }
        )
    }
    if (quoteSavePopupVisible) {
        ImageMessagePopup(
            drawableId = R.drawable.reader_quote_saved_popup,
            contentDescription = readerText.quoteSaved,
            config = ImageMessagePopupConfig(durationSeconds = 3),
            eventToken = quoteSavePopupToken,
            onDismiss = { onQuoteSavePopupVisibleChange(false) }
        )
    }
    eyeRestReminderMinutes?.let {
        AlertDialog(
            onDismissRequest = { onEyeRestReminderMinutesChange(null) },
            title = { Text(readerText.eyeRestTitle) },
            text = { Text(readerText.eyeRestMessage) },
            confirmButton = {
                TextButton(onClick = { onEyeRestReminderMinutesChange(null) }) {
                    Text(readerText.eyeRestDismiss)
                }
            },
            dismissButton = {
                TextButton(
                    onClick = {
                        onEyeRestReminderMinutesChange(null)
                        viewModel.eyeRestController.snoozeEyeRestReminder()
                    }
                ) {
                    Text(readerText.eyeRestSnooze)
                }
            }
        )
    }
}
