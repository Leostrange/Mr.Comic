package io.leostrange.mrcomic.feature.reader.ui

/**
 * Values that change line wrapping or page boundaries in the WebView text reader.
 * Content identity is intentionally handled by the WebView load token.
 */
internal data class ReaderTextLayoutFingerprint(
    val fontSize: Int,
    val fontFamily: String,
    val fontSourceUrl: String,
    val lineHeight: Float,
    val letterSpacing: Float,
    val wordSpacing: Float,
    val paragraphSpacing: Float,
    val textAlign: String,
    val bold: Boolean,
    val topPaddingPx: Int,
    val bottomPaddingPx: Int,
    val horizontalPaddingPx: Int,
    val maxWidthPx: Int,
    val pagedMode: Boolean,
    val viewportWidthPx: Int,
    val viewportHeightPx: Int,
    val isRtl: Boolean
) {
    fun signature(): String = listOf(
        fontSize,
        fontFamily,
        fontSourceUrl,
        lineHeight,
        letterSpacing,
        wordSpacing,
        paragraphSpacing,
        textAlign,
        bold,
        topPaddingPx,
        bottomPaddingPx,
        horizontalPaddingPx,
        maxWidthPx,
        pagedMode,
        viewportWidthPx,
        viewportHeightPx,
        isRtl
    ).joinToString(separator = "|")
}
