package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderTextChromeLayoutInsets(
    val topCssPx: Int,
    val bottomCssPx: Int,
)

/**
 * Reader chrome is an overlay and must not change text wrapping or page
 * boundaries. Safe system bars and the persistent one-line text gutter are
 * handled by the Compose modifier around the WebView.
 */
internal fun resolveReaderTextChromeLayoutInsets(
    measuredTopCssPx: Int,
    measuredBottomCssPx: Int,
): ReaderTextChromeLayoutInsets {
    require(measuredTopCssPx >= 0)
    require(measuredBottomCssPx >= 0)
    return ReaderTextChromeLayoutInsets(topCssPx = 0, bottomCssPx = 0)
}
