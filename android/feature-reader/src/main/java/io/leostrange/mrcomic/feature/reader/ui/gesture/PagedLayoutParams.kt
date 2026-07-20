package io.leostrange.mrcomic.feature.reader.ui.gesture

import kotlin.math.floor
import kotlin.math.max

/**
 * Pure parameters for paged layout setup in WebView.
 *
 * Extracts the viewport/inset/page-step calculations from ReaderScreen's
 * inline JS so they can be tested without Android/WebView dependencies.
 */
object PagedLayoutParams {

    /**
     * Calculates the usable page height (the visible content area per page).
     *
     * This mirrors the JS logic:
     * ```
     * var rawUsableHeight = Math.max(lineHeight*3, clipHeight - pageInsetTop - pageInsetBottom - Math.max(2, lineHeight*0.12));
     * var usableLineCount = Math.max(3, Math.floor(rawUsableHeight / lineHeight));
     * var usableHeight = Math.max(lineHeight*3, usableLineCount * lineHeight);
     * ```
     *
     * @param viewportHeightPx Physical viewport height in pixels.
     * @param topInsetPx Top padding (status bar + chrome) in pixels.
     * @param bottomInsetPx Bottom padding (navigation bar + chrome) in pixels.
     * @param lineHeightPx Computed line height in pixels. If 0, defaults to 27 (18sp * 1.5).
     * @return Usable page content height in pixels, aligned to line boundaries.
     */
    fun calculateUsablePageHeight(
        viewportHeightPx: Int,
        topInsetPx: Int,
        bottomInsetPx: Int,
        lineHeightPx: Float = 0f
    ): Int {
        val lineHeight = if (lineHeightPx > 0f) lineHeightPx else 27f // 18sp * 1.5
        val clipHeight = max(lineHeight * 3, viewportHeightPx.toFloat())
        val safetyMargin = max(2f, lineHeight * 0.12f)
        val rawUsableHeight = max(lineHeight * 3, clipHeight - topInsetPx - bottomInsetPx - safetyMargin)
        val usableLineCount = max(3, floor(rawUsableHeight / lineHeight).toInt())
        return max(lineHeight * 3, usableLineCount * lineHeight).toInt()
    }

    /**
     * Calculates column width for paged mode.
     *
     * @param viewportWidthPx Physical viewport width in pixels.
     * @param horizontalPaddingPx Total horizontal padding (left + right) in pixels.
     * @return Column width in pixels, minimum 1.
     */
    fun calculateColumnWidth(
        viewportWidthPx: Int,
        horizontalPaddingPx: Int
    ): Int = max(1, viewportWidthPx - horizontalPaddingPx)

    /**
     * Calculates visible height (viewport minus insets).
     *
     * @param viewportHeightPx Physical viewport height in pixels.
     * @param topInsetPx Top padding in pixels.
     * @param bottomInsetPx Bottom padding in pixels.
     * @return Visible height in pixels, minimum 240.
     */
    fun calculateVisibleHeight(
        viewportHeightPx: Int,
        topInsetPx: Int,
        bottomInsetPx: Int
    ): Int = max(240, viewportHeightPx - topInsetPx - bottomInsetPx)
}
