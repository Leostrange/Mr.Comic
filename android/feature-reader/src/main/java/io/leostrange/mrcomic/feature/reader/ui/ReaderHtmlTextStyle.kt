package io.leostrange.mrcomic.feature.reader.ui

import android.webkit.WebView

internal data class ReaderHtmlTextStyle(
    val fontSize: Int,
    val backgroundColor: String,
    val textColor: String,
    val accentColor: String,
    val fontFamily: String,
    val fontSourceUrl: String?,
    val lineHeight: Float,
    val letterSpacing: Float,
    val wordSpacing: Float,
    val paragraphSpacing: Float,
    val textAlign: String,
    val bold: Boolean,
    val topPaddingPx: Int,
    val bottomPaddingPx: Int,
    val horizontalPaddingPx: Int,
    val maxWidthPx: Int
) {
    fun settingsScript(view: WebView, pagedMode: Boolean, isRtl: Boolean): String = textSettingsJs(
        fontSize = fontSize,
        bg = backgroundColor,
        fg = textColor,
        overrideTextColor = textColor,
        overrideBackgroundColor = backgroundColor,
        overrideAccentColor = accentColor,
        fontFamily = fontFamily,
        fontSourceUrl = fontSourceUrl,
        lineHeight = lineHeight,
        letterSpacing = letterSpacing,
        wordSpacing = wordSpacing,
        paragraphSpacing = paragraphSpacing,
        align = textAlign,
        bold = bold,
        topPaddingPx = topPaddingPx,
        bottomPaddingPx = bottomPaddingPx,
        horizontalPaddingPx = horizontalPaddingPx,
        maxWidthPx = maxWidthPx,
        pagedMode = pagedMode,
        nativeViewportWidthPx = view.readerCssViewportWidthPxOrNull(),
        nativeViewportHeightPx = view.readerCssViewportHeightPxOrNull(),
        isRtl = isRtl
    )

    fun signature(pagedMode: Boolean, viewportWidthPx: Int?, viewportHeightPx: Int?, isRtl: Boolean): String =
        listOf(
            fontSize,
            backgroundColor,
            textColor,
            accentColor,
            fontFamily,
            fontSourceUrl.orEmpty(),
            lineHeight,
            letterSpacing,
            wordSpacing,
            paragraphSpacing,
            textAlign,
            bold,
            if (pagedMode) 0 else topPaddingPx,
            if (pagedMode) 0 else bottomPaddingPx,
            horizontalPaddingPx,
            maxWidthPx,
            pagedMode,
            viewportWidthPx ?: -1,
            viewportHeightPx ?: -1,
            isRtl
        ).joinToString(separator = "|")

    fun layoutSignature(
        pagedMode: Boolean,
        viewportWidthPx: Int?,
        viewportHeightPx: Int?,
        isRtl: Boolean
    ): String = ReaderTextLayoutFingerprint(
        fontSize = fontSize,
        fontFamily = fontFamily,
        fontSourceUrl = fontSourceUrl.orEmpty(),
        lineHeight = lineHeight,
        letterSpacing = letterSpacing,
        wordSpacing = wordSpacing,
        paragraphSpacing = paragraphSpacing,
        textAlign = textAlign,
        bold = bold,
        topPaddingPx = topPaddingPx,
        bottomPaddingPx = bottomPaddingPx,
        horizontalPaddingPx = horizontalPaddingPx,
        maxWidthPx = maxWidthPx,
        pagedMode = pagedMode,
        viewportWidthPx = viewportWidthPx ?: -1,
        viewportHeightPx = viewportHeightPx ?: -1,
        isRtl = isRtl
    ).signature()
}
