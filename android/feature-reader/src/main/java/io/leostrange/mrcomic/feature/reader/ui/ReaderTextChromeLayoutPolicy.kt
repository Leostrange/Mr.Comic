package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderTextChromeLayoutInsets(
    val topCssPx: Int,
    val bottomCssPx: Int,
    /** Fixed physical gutter kept outside the WebView content viewport. */
    val outerTopPx: Int,
    val outerBottomPx: Int,
)

/**
 * Returns the stable physical reserve for paged text. Two line-height steps
 * are kept outside the WebView: one for the status bar / compact toolbar and
 * one for the gap to the text. Keeping a third line here shrinks landscape
 * pages and makes otherwise valid content fall below the viewport.
 */
internal fun readerTextTwoLineGutterPx(lineHeightPx: Int): Int =
    (lineHeightPx.coerceAtLeast(8) * 2).coerceAtLeast(16)

/**
 * Reader chrome is an overlay and must not change text wrapping or page
 * boundaries. The persistent text gutter is kept symmetrically outside the
 * WebView. The measured chrome bounds are intentionally ignored because
 * chrome is overlay.
 */
internal fun resolveReaderTextChromeLayoutInsets(
    measuredTopCssPx: Int,
    measuredBottomCssPx: Int,
    persistentGutterCssPx: Int = 0,
    persistentGutterPx: Int = persistentGutterCssPx,
): ReaderTextChromeLayoutInsets {
    require(measuredTopCssPx >= 0)
    require(measuredBottomCssPx >= 0)
    require(persistentGutterCssPx >= 0)
    require(persistentGutterPx >= 0)
    val gutterPx = persistentGutterPx.coerceAtLeast(0)
    // Keep parameters validated for the geometry contract, but never feed the
    // panel height into reflow: opening chrome must not move the current page.
    // The gutter belongs to the Compose viewport, not the document. This keeps
    // the WebView's page budget identical with chrome hidden and shown.
    return ReaderTextChromeLayoutInsets(
        topCssPx = 0,
        bottomCssPx = 0,
        outerTopPx = gutterPx,
        outerBottomPx = gutterPx,
    )
}
