package io.leostrange.mrcomic.feature.reader.ui

/**
 * A shown reader chrome occupies layout space even when it is configured to
 * auto-hide. Otherwise the WebView paginates text underneath that overlay.
 */
internal fun visibleChromeContentReservePx(
    chromeIsVisible: Boolean,
    stableReservePx: Int,
    measuredReservePx: Int
): Int = if (chromeIsVisible) {
    maxOf(stableReservePx, measuredReservePx).coerceAtLeast(0)
} else {
    0
}
