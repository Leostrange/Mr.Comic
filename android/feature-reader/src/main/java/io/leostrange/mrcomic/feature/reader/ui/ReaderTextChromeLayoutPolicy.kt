package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderTextChromeLayoutInsets(
    val topCssPx: Int,
    val bottomCssPx: Int,
)

/**
 * Reader chrome is an overlay and must not change text wrapping or page
 * boundaries. The persistent text gutter is kept symmetrically in CSS. The
 * measured chrome bounds are intentionally ignored because chrome is overlay.
 */
internal fun resolveReaderTextChromeLayoutInsets(
    measuredTopCssPx: Int,
    measuredBottomCssPx: Int,
    persistentGutterCssPx: Int = 0,
): ReaderTextChromeLayoutInsets {
    require(measuredTopCssPx >= 0)
    require(measuredBottomCssPx >= 0)
    require(persistentGutterCssPx >= 0)
    val gutter = persistentGutterCssPx.coerceAtLeast(0)
    // Keep parameters validated for the geometry contract, but never feed the
    // panel height into reflow: opening chrome must not move the current page.
    return ReaderTextChromeLayoutInsets(topCssPx = gutter, bottomCssPx = gutter)
}
