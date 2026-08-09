package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.Box
import androidx.compose.foundation.layout.WindowInsets
import androidx.compose.foundation.layout.displayCutoutPadding
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.foundation.layout.navigationBarsPadding
import androidx.compose.foundation.layout.safeDrawing
import androidx.compose.foundation.layout.statusBarsPadding
import androidx.compose.foundation.layout.windowInsetsPadding
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.MaterialTheme
import androidx.compose.runtime.Composable
import androidx.webkit.WebViewAssetLoader
import io.leostrange.mrcomic.core.model.ReaderTapZoneAction
import io.leostrange.mrcomic.core.model.ReaderTapZoneLayout
import io.leostrange.mrcomic.feature.reader.ui.components.PageView
import io.leostrange.mrcomic.feature.reader.ui.components.WebtoonView
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.core.ui.theme.ReadingPreset
import io.leostrange.mrcomic.feature.reader.ui.components.TextContainer

/**
 * ARC-11 S10: reader content area composable extracted from [ReaderScreen].
 *
 * Owns the `when (readerContainerKind)` branch — TEXT_WEBTOON, TEXT_PAGE,
 * RASTER_WEBTOON, RASTER_PAGE — along with their full parameter lists.
 */
@Composable
internal fun ReaderContentArea(
    uiState: ReaderUiState,
    viewModel: ReaderViewModel,
    tapZoneLayout: ReaderTapZoneLayout,
    handleTapZoneAction: (ReaderTapZoneAction) -> Unit,
    readerAssetLoader: WebViewAssetLoader?,
    activeReaderPreset: ReadingPreset,
    resolvedTextFont: ReaderResolvedTextFont,
    readerColorOverrideHex: (Long?) -> String?,
    readerText: ReaderUiText,
    plan: ChromeInsetsPlan,
    onRegisterPageTurner: (((Int) -> Unit) -> Unit),
    effectiveMarginCropHorizontal: Float,
    effectiveMarginCropVertical: Float,
    effectivePageImageScaleMode: String,
    modifier: Modifier = Modifier,
) {
    Box(modifier = modifier.fillMaxSize().background(MaterialTheme.colorScheme.background)) {
        val htmlContent = uiState.currentHtmlContent
        val textWebtoonHtmlContent = uiState.textWebtoonHtmlContent ?: htmlContent
        val textWebtoonAssetBasePath = uiState.textWebtoonHtmlAssetBasePath ?: uiState.htmlAssetBasePath
        val textReaderModifier = Modifier.fillMaxSize()
        val textWebtoonModifier = Modifier.fillMaxSize()
        val imageReaderModifier = Modifier
            .fillMaxSize()
            .then(
                if (uiState.immersiveMode) {
                    Modifier.windowInsetsPadding(WindowInsets.safeDrawing)
                } else {
                    Modifier
                        .statusBarsPadding()
                        .displayCutoutPadding()
                        .navigationBarsPadding()
                }
            )

        when (uiState.readerContainerKind) {
            ReaderContainerKind.TEXT_WEBTOON -> {
                TextContainer(
                    html = textWebtoonHtmlContent ?: htmlContent.orEmpty(),
                    baseUrl = uiState.htmlBaseUrl,
                    assetDocumentPath = textWebtoonAssetBasePath,
                    assetLoader = readerAssetLoader,
                    readingMode = ReadingMode.WEBTOON,
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
                    onHighlightSelection = { viewModel.highlightController.highlightSelectedText(it) },
                    onTranslateChapter = { viewModel.translationController.translateCurrentChapter() },
                    onCompareTranslations = { viewModel.translationController.compareTranslations(it) },
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
                    contentTopInsetPx = plan.textContentTopInsetCssPx,
                    contentBottomInsetPx = plan.textContentBottomInsetCssPx,
                    pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                    onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                    pendingWebtoonSectionIndex = uiState.pendingWebtoonSectionIndex,
                    onConsumeWebtoonSection = { viewModel.navigationController.consumePendingWebtoonSection() },
                    onTextWebtoonVisibleSectionChanged = { viewModel.navigationController.updateTextWebtoonVisibleSection(it) },
                    sectionCharacterOffset = uiState.sectionCharacterOffset,
                    modifier = textWebtoonModifier
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
                        assetLoader = readerAssetLoader,
                        readingMode = uiState.readingMode,
                        autoScrollSpeed = uiState.autoScrollSpeed,
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
                        onHighlightSelection = { viewModel.highlightController.highlightSelectedText(it) },
                        onTranslateChapter = { viewModel.translationController.translateCurrentChapter() },
                        onCompareTranslations = { viewModel.translationController.compareTranslations(it) },
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
                        contentTopInsetPx = plan.textContentTopInsetCssPx,
                        contentBottomInsetPx = plan.textContentBottomInsetCssPx,
                        pendingScrollToAnchor = uiState.pendingScrollToAnchor,
                        onConsumeScrollToAnchor = { viewModel.navigationController.consumePendingScrollToAnchor() },
                        onRegisterPageTurner = onRegisterPageTurner,
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
                    modifier = imageReaderModifier
                )
            }
        }
    }
}
