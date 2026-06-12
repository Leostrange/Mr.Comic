package com.example.feature.reader.ui.components

import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.webkit.WebViewAssetLoader
import com.example.core.model.ReadingMode
import com.example.core.ui.theme.ReadingPreset
import com.example.feature.reader.ui.HtmlPageView

@Composable
fun TextWebtoonContainer(
    html: String,
    baseUrl: String?,
    assetDocumentPath: String?,
    assetLoader: WebViewAssetLoader?,
    onLeftTap: () -> Unit,
    onRightTap: () -> Unit,
    onCenterTap: () -> Unit,
    onTranslateSelection: (String) -> Unit,
    onDictionarySelection: (String) -> Unit,
    onExplainSelection: (String) -> Unit,
    onSaveQuoteSelection: (String) -> Unit,
    onAnchorClick: (String) -> Unit = {},
    onInlineFootnote: (String) -> Unit = {},
    onVerticalBoundaryNavigation: (Int) -> Unit = {},
    fontSize: Int = 18,
    colorScheme: String = "DAY",
    readerPreset: ReadingPreset = ReadingPreset.CUSTOM,
    fontFamily: String = "Georgia",
    fontSourceUrl: String? = null,
    lineHeight: Float = 1.8f,
    letterSpacing: Float = 0f,
    wordSpacing: Float = 0f,
    paragraphSpacing: Float = 0.2f,
    textAlign: String = "left",
    bold: Boolean = false,
    contentTopInsetPx: Int = 8,
    contentBottomInsetPx: Int = 24,
    overrideTextColor: String? = null,
    overrideBackgroundColor: String? = null,
    overrideAccentColor: String? = null,
    translateActionLabel: String,
    dictionaryActionLabel: String,
    explainActionLabel: String,
    saveQuoteActionLabel: String,
    modifier: Modifier = Modifier
) {
    HtmlPageView(
        html = html,
        baseUrl = baseUrl,
        assetDocumentPath = assetDocumentPath,
        assetLoader = assetLoader,
        onLeftTap = onLeftTap,
        onRightTap = onRightTap,
        onCenterTap = onCenterTap,
        onTranslateSelection = onTranslateSelection,
        onDictionarySelection = onDictionarySelection,
        onExplainSelection = onExplainSelection,
        onSaveQuoteSelection = onSaveQuoteSelection,
        onAnchorClick = onAnchorClick,
        onInlineFootnote = onInlineFootnote,
        onVerticalBoundaryNavigation = onVerticalBoundaryNavigation,
        readingMode = ReadingMode.WEBTOON,
        fontSize = fontSize,
        colorScheme = colorScheme,
        readerPreset = readerPreset,
        fontFamily = fontFamily,
        fontSourceUrl = fontSourceUrl,
        lineHeight = lineHeight,
        letterSpacing = letterSpacing,
        wordSpacing = wordSpacing,
        paragraphSpacing = paragraphSpacing,
        textAlign = textAlign,
        bold = bold,
        contentTopInsetPx = contentTopInsetPx,
        contentBottomInsetPx = contentBottomInsetPx,
        overrideTextColor = overrideTextColor,
        overrideBackgroundColor = overrideBackgroundColor,
        overrideAccentColor = overrideAccentColor,
        translateActionLabel = translateActionLabel,
        dictionaryActionLabel = dictionaryActionLabel,
        explainActionLabel = explainActionLabel,
        saveQuoteActionLabel = saveQuoteActionLabel,
        modifier = modifier
    )
}
