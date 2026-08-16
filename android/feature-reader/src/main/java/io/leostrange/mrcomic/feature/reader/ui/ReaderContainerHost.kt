package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.webkit.WebViewAssetLoader
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneLayout
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.ui.components.PageView
import io.leostrange.mrcomic.feature.reader.ui.components.ReadiumEpubView
import io.leostrange.mrcomic.feature.reader.ui.components.TextContainer
import io.leostrange.mrcomic.feature.reader.ui.components.WebtoonView

@Composable
internal fun ReaderContainerHost(
    uiState: ReaderUiState,
    viewModel: ReaderViewModel,
    readerAssetLoader: WebViewAssetLoader,
    activeReaderPreset: ReadingPreset,
    resolvedTextFont: ReaderResolvedTextFont,
    readerText: ReaderUiText,
    languageCode: String,
    tapZoneLayout: ReaderTapZoneLayout,
    effectiveMarginCropHorizontal: Float,
    effectiveMarginCropVertical: Float,
    effectivePageImageScaleMode: String,
    textReaderModifier: Modifier,
    imageReaderModifier: Modifier,
    textChromeTopInsetCssPx: Int,
    textChromeBottomInsetCssPx: Int,
    freeScrollRestoreTarget: ReaderWebViewRestoreTarget?,
    handleTapZoneAction: (ReaderTapZoneAction) -> Unit,
    onRegisterPagedColumnTurner: ((Int) -> Unit) -> Unit,
    modifier: Modifier = Modifier
) {
    Box(modifier = modifier.fillMaxSize()) {
        val htmlContent = uiState.currentHtmlContent
        val textWebtoonHtmlContent = uiState.textWebtoonHtmlContent ?: htmlContent
        val textWebtoonAssetBasePath = uiState.textWebtoonHtmlAssetBasePath ?: uiState.htmlAssetBasePath

        when (uiState.readerContainerKind) {
            ReaderContainerKind.TEXT_WEBTOON -> {
                TextContainer(
                    html = textWebtoonHtmlContent ?: htmlContent.orEmpty(),
                    baseUrl = uiState.htmlBaseUrl,
                    assetDocumentPath = textWebtoonAssetBasePath,
                    documentIdentity = uiState.comic?.id,
                    assetLoader = readerAssetLoader,
                    readingMode = ReadingMode.WEBTOON,
                    autoScrollSpeed = readerTextWebtoonPixelsPerSecond(
                        containerKind = uiState.readerContainerKind,
                        enabled = uiState.autoScrollEnabled,
                        paused = uiState.isAutoScrollTemporarilyPaused,
                        speed = uiState.autoScrollSpeed,
                    ),
                    onSelectionActionModeChange = { active ->
                        if (active) {
                            viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                        } else {
                            viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                        }
                    },
                    onLeftTap = {},
                    onRightTap = {},
                    onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                    onAnchorClick = { viewModel.footnoteController.onAnchorClick(it) },
                    onInlineFootnote = { viewModel.footnoteController.showInlineFootnote(it) },
                    onVerticalBoundaryNavigation = { pageStep ->
                        when {
                            pageStep < 0 -> viewModel.navigationController.prevPage()
                            pageStep > 0 -> viewModel.navigationController.nextPage()
                        }
                    },
                    onTranslateSelection = { selectedText ->
                        viewModel.translationController.translateSelectedText(
                            selectedText = selectedText,
                            preferDictionary = false
                        )
                    },
                    onDictionarySelection = { selectedText ->
                        viewModel.translationController.translateSelectedText(
                            selectedText = selectedText,
                            preferDictionary = true
                        )
                    },
                    onExplainSelection = viewModel.translationController::explainSelectedTextDirect,
                    onSaveQuoteSelection = viewModel.saveQuoteController::saveQuoteDirectly,
                    onHighlightSelection = { selectedText -> viewModel.highlightController.highlightSelectedText(selectedText) },
                    onTranslateChapter = { viewModel.translationController.translateCurrentChapter() },
                    onCompareTranslations = { text -> viewModel.translationController.compareTranslations(text) },
                    highlightsJs = viewModel.highlightController.injectHighlightsJs(),
                    fontSize = uiState.textFontSize,
                    readerPreset = activeReaderPreset,
                    fontFamily = resolvedTextFont.familyName,
                    fontSourceUrl = resolvedTextFont.sourceUrl,
                    lineHeight = uiState.textLineHeight,
                    letterSpacing = uiState.textLetterSpacing,
                    wordSpacing = uiState.textWordSpacing,
                    paragraphSpacing = uiState.textParagraphSpacing,
                    textAlign = uiState.textAlignment,
                    bold = uiState.textBold,
                    overrideTextColor = readerColorOverrideHex(uiState.textCustomTextColor),
                    overrideBackgroundColor = readerColorOverrideHex(uiState.textCustomBackgroundColor),
                    overrideAccentColor = readerColorOverrideHex(uiState.textCustomAccentColor),
                    translateActionLabel = readerText.selectionTranslateAction,
                    dictionaryActionLabel = readerText.openDictionary,
                    explainActionLabel = readerText.selectionExplainAction,
                    saveQuoteActionLabel = readerText.saveQuote,
                    selectionMenuLanguageCode = languageCode,
                    contentTopInsetPx = textChromeTopInsetCssPx,
                    contentBottomInsetPx = textChromeBottomInsetCssPx,
                    pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                    onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                    pendingWebtoonSectionIndex = uiState.pendingWebtoonSectionIndex,
                    onConsumeWebtoonSection = { viewModel.navigationController.consumePendingWebtoonSection() },
                    onTextWebtoonVisibleSectionChanged = { viewModel.navigationController.updateTextWebtoonVisibleSection(it) },
                    freeScrollRestoreTarget = freeScrollRestoreTarget,
                    onFreeScrollPositionUpdate = viewModel::onFreeScrollPositionChanged,
                    sectionCharacterOffset = uiState.sectionCharacterOffset,
                    modifier = textReaderModifier
                )
            }
            ReaderContainerKind.TEXT_PAGE -> {
                if (htmlContent == null) {
                    CircularProgressIndicator(
                        modifier = Modifier.align(Alignment.Center),
                        color = MaterialTheme.colorScheme.primary
                    )
                } else {
                    TextContainer(
                        html = htmlContent,
                        baseUrl = uiState.htmlBaseUrl,
                        assetDocumentPath = uiState.htmlAssetBasePath,
                        documentIdentity = uiState.comic?.id,
                        assetLoader = readerAssetLoader,
                        readingMode = uiState.readingMode,
                        onSelectionActionModeChange = { active ->
                            if (active) {
                                viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                            } else {
                                viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.TEXT_SELECTION_ACTION_MODE)
                            }
                        },
                        onLeftTap = {
                            if (readerModeAllowsHorizontalPageTurn(uiState.readingMode)) {
                                handleTapZoneAction(tapZoneLayout.left)
                            }
                        },
                        onRightTap = {
                            if (readerModeAllowsHorizontalPageTurn(uiState.readingMode)) {
                                handleTapZoneAction(tapZoneLayout.right)
                            }
                        },
                        onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                        onAnchorClick = { viewModel.footnoteController.onAnchorClick(it) },
                        onInlineFootnote = { viewModel.footnoteController.showInlineFootnote(it) },
                        onVerticalBoundaryNavigation = { pageStep ->
                            when {
                                pageStep < 0 -> viewModel.navigationController.prevPage()
                                pageStep > 0 -> viewModel.navigationController.nextPage()
                            }
                        },
                        onPagedLayoutPageCountChanged = { pageCount, pageIndex, charOffset ->
                            viewModel.onPagedLayoutPageCountChanged(pageCount, pageIndex, charOffset)
                        },
                        onTranslateSelection = { selectedText ->
                            viewModel.translationController.translateSelectedText(
                                selectedText = selectedText,
                                preferDictionary = false
                            )
                        },
                        onDictionarySelection = { selectedText ->
                            viewModel.translationController.translateSelectedText(
                                selectedText = selectedText,
                                preferDictionary = true
                            )
                        },
                        onExplainSelection = viewModel.translationController::explainSelectedTextDirect,
                        onSaveQuoteSelection = viewModel.saveQuoteController::saveQuoteDirectly,
                        onHighlightSelection = { selectedText -> viewModel.highlightController.highlightSelectedText(selectedText) },
                        onTranslateChapter = { viewModel.translationController.translateCurrentChapter() },
                        onCompareTranslations = { text -> viewModel.translationController.compareTranslations(text) },
                        highlightsJs = viewModel.highlightController.injectHighlightsJs(),
                        fontSize = uiState.textFontSize,
                        colorScheme = uiState.textColorScheme,
                        readerPreset = activeReaderPreset,
                        fontFamily = resolvedTextFont.familyName,
                        fontSourceUrl = resolvedTextFont.sourceUrl,
                        lineHeight = uiState.textLineHeight,
                        letterSpacing = uiState.textLetterSpacing,
                        wordSpacing = uiState.textWordSpacing,
                        paragraphSpacing = uiState.textParagraphSpacing,
                        textAlign = uiState.textAlignment,
                        bold = uiState.textBold,
                        overrideTextColor = readerColorOverrideHex(uiState.textCustomTextColor),
                        overrideBackgroundColor = readerColorOverrideHex(uiState.textCustomBackgroundColor),
                        overrideAccentColor = readerColorOverrideHex(uiState.textCustomAccentColor),
                        translateActionLabel = readerText.selectionTranslateAction,
                        dictionaryActionLabel = readerText.openDictionary,
                        explainActionLabel = readerText.selectionExplainAction,
                        saveQuoteActionLabel = readerText.saveQuote,
                        selectionMenuLanguageCode = languageCode,
                        contentTopInsetPx = textChromeTopInsetCssPx,
                        contentBottomInsetPx = textChromeBottomInsetCssPx,
                        pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                        onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                        onRegisterPageTurner = onRegisterPagedColumnTurner,
                        sectionCharacterOffset = uiState.sectionCharacterOffset,
                        modifier = textReaderModifier
                    )
                }
            }
            ReaderContainerKind.RASTER_WEBTOON -> {
                WebtoonView(
                    viewModel = viewModel,
                    uiState = uiState,
                    imageScaleMode = uiState.imageScaleMode,
                    marginCropHorizontal = effectiveMarginCropHorizontal,
                    marginCropVertical = effectiveMarginCropVertical,
                    onLeftTap = {},
                    onRightTap = {},
                    onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                    modifier = imageReaderModifier
                )
            }
            ReaderContainerKind.RASTER_PAGE -> {
                PageView(
                    viewModel = viewModel,
                    uiState = uiState,
                    imageScaleMode = effectivePageImageScaleMode,
                    marginCropHorizontal = effectiveMarginCropHorizontal,
                    marginCropVertical = effectiveMarginCropVertical,
                    onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                    onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                    onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                    onUserTouchChange = { touching ->
                        if (touching) {
                            viewModel.autoScrollRuntimeController.pause(ReaderAutoScrollPauseReason.TOUCH_GESTURE)
                        } else {
                            viewModel.autoScrollRuntimeController.resume(ReaderAutoScrollPauseReason.TOUCH_GESTURE)
                        }
                    },
                    modifier = imageReaderModifier
                )
            }
            ReaderContainerKind.READIUM_EPUB -> {
                ReadiumEpubView(
                    readingMode = uiState.readingMode,
                    onLeftTap = { handleTapZoneAction(tapZoneLayout.left) },
                    onRightTap = { handleTapZoneAction(tapZoneLayout.right) },
                    onCenterTap = { handleTapZoneAction(tapZoneLayout.center) },
                    onTranslateSelection = { selectedText ->
                        viewModel.translationController.translateSelectedText(
                            selectedText = selectedText,
                            preferDictionary = false
                        )
                    },
                    onDictionarySelection = { selectedText ->
                        viewModel.translationController.translateSelectedText(
                            selectedText = selectedText,
                            preferDictionary = true
                        )
                    },
                    onExplainSelection = viewModel.translationController::explainSelectedTextDirect,
                    onSaveQuoteSelection = viewModel.saveQuoteController::saveQuoteDirectly,
                    onHighlightSelection = { selectedText -> viewModel.highlightController.highlightSelectedText(selectedText) },
                    onAnchorClick = { viewModel.footnoteController.onAnchorClick(it) },
                    modifier = textReaderModifier
                )
            }
        }
    }
}
