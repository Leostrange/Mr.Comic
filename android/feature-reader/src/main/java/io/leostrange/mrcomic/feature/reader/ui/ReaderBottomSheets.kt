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
import io.leostrange.mrcomic.core.ui.popup.ImageMessagePopup
import io.leostrange.mrcomic.core.ui.popup.ImageMessagePopupConfig
import io.leostrange.mrcomic.feature.reader.ui.rsvp.RsvpOverlay
import io.leostrange.mrcomic.feature.reader.ui.rsvp.extractWordsForRsvp

/**
 * All conditional bottom sheets, dialogs, and overlays for the reader screen.
 * Extracted from [ReaderScreen] to reduce its composable size.
 */
/**
 * ARC-11 slice 2. Все 35+ параметров свёрнуты в [ReaderBottomSheetHost]
 * (см. [ReaderBottomSheetHost.kt] — там же `rememberReaderBottomSheetHost`
 * для точек входа из [ReaderScreen]). Контракт функции не менялся:
 * все flag-states и setters, которые раньше жили в call-site'е,
 * теперь лежат в `host` и читаются через `host.fieldName`. Никаких
 * публичных API не изменилось; добавился только новый internal
 * data-class [ReaderBottomSheetHost].
 */
@Composable
internal fun ReaderBottomSheets(

    host: ReaderBottomSheetHost,
) {
    val strings = LocalStrings.current
    val uiState = host.uiState
    val viewModel = host.viewModel
    val isTextReader = host.isTextReader
    val ttsRuntimeState = host.ttsRuntimeState
    val ttsController = host.ttsController
    val activeReaderPreset = host.activeReaderPreset
    val currentChapterTitle = host.currentChapterTitle
    val clipboardManager = host.clipboardManager
    val readerText = host.readerText
    val fontCatalogVersion = host.fontCatalogVersion
    val openControlCenterAtServices = host.openControlCenterAtServices
    val showTextTranslationPageSheet = host.showTextTranslationPageSheet
    val showRsvpOverlay = host.showRsvpOverlay
    val rsvpWords = host.rsvpWords
    val showReaderAudioSheet = host.showReaderAudioSheet
    val pendingTtsRestartTargetPage = host.pendingTtsRestartTargetPage
    val pendingCustomFontDeletion = host.pendingCustomFontDeletion
    val quoteSavePopupVisible = host.quoteSavePopupVisible
    val quoteSavePopupToken = host.quoteSavePopupToken
    val eyeRestReminderMinutes = host.eyeRestReminderMinutes

    // Local setters/view — `host.onX` lambdas. Compose-область позволяет
    // короткие `= host.onX` без потери ссылочной стабильности, потому что
    // remember{} сверху блокирует изменения при неизменных зависимостях.
    val onOpenControlCenterAtServicesChange = host.onOpenControlCenterAtServicesChange
    val onShowTextTranslationPageSheetChange = host.onShowTextTranslationPageSheetChange
    val onShowRsvpOverlayChange = host.onShowRsvpOverlayChange
    val onRsvpWordsChange = host.onRsvpWordsChange
    val onShowReaderAudioSheetChange = host.onShowReaderAudioSheetChange
    val onPendingTtsRestartTargetPageChange = host.onPendingTtsRestartTargetPageChange
    val onPendingCustomFontDeletionChange = host.onPendingCustomFontDeletionChange
    val onQuoteSavePopupVisibleChange = host.onQuoteSavePopupVisibleChange
    val onEyeRestReminderMinutesChange = host.onEyeRestReminderMinutesChange
    val onLaunchFontImport = host.onLaunchFontImport
    val onLaunchStyleImport = host.onLaunchStyleImport
    val onLaunchStyleExport = host.onLaunchStyleExport
    val onDeleteCustomFont = host.onDeleteCustomFont

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
                viewModel.translationController.requestTextPageTranslation(viewModel.formatReader, page)
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
                viewModel.chromeController.toggleTextSettings()
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
            onDismiss = viewModel.translationController::dismissSelectedTextActions,
            onTranslate = viewModel.translationController::translateFromSelectedTextActions,
            onDictionary = viewModel.translationController::openDictionaryFromSelectedTextActions,
            onExplain = viewModel.translationController::explainFromSelectedTextActions,
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
            onDismiss = { viewModel.translationController.dismissTranslationComparison() }
        )
    }
    uiState.selectedTextTranslation?.let { translationState ->
        SelectedTextTranslationSheet(
            state = translationState,
            onDismiss = { viewModel.translationController.dismissSelectedTextTranslation() },
            onDictionary = { viewModel.translationController.openDictionaryForSelectedText() },
            onTranslateAsPhrase = { viewModel.translationController.translateSelectedTextAsPhrase() },
            onExplain = viewModel.translationController::explainSelectedTextFromResult,
            onTransportChange = { viewModel.translationController.translateSelectedTextWithTransport(it) },
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
