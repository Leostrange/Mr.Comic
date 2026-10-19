package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderTextChromeLayoutInsets(
    val topCssPx: Int,
    val bottomCssPx: Int,
)

/**
 * PAGED-02: the measured chrome reserve (toolbar height in CSS px, 0 when the
 * chrome is hidden) is the single source of truth for the WebView content
 * inset. It flows into the settings JS as `__mrcomicPageInsetTop/Bottom`, so
 * the paginator offsets the content and shrinks the usable page height by the
 * same amount — top/bottom insets stay consistent across pages and modes, and
 * text never crowds (or slides under) a visible toolbar.
 *
 * System bars stay handled by the Compose `windowInsetsPadding` modifier
 * around the WebView; only the reader chrome goes into CSS, so a stale JS
 * layout cannot paint text under system bars.
 */
internal fun resolveReaderTextChromeLayoutInsets(
    measuredTopCssPx: Int,
    measuredBottomCssPx: Int,
): ReaderTextChromeLayoutInsets {
    require(measuredTopCssPx >= 0)
    require(measuredBottomCssPx >= 0)
    return ReaderTextChromeLayoutInsets(topCssPx = measuredTopCssPx, bottomCssPx = measuredBottomCssPx)
}
