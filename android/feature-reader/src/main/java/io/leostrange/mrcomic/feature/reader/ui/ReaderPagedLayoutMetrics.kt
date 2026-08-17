package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.feature.reader.ui.geometry.PagedViewportContract

/** Typed result returned by the WebView-side PAGE layout script. */
internal data class ReaderPagedLayoutMetrics(
    val handled: Boolean,
    val pageIndex: Int,
    val pageCount: Int,
    val characterOffset: Int,
    val clipHeight: Int,
    val usableHeight: Int
) {
    fun isUsable(): Boolean =
        handled &&
            pageCount >= 1 &&
            pageIndex in 0 until pageCount &&
            clipHeight >= PagedViewportContract.MIN_CLIP_HEIGHT_PX &&
            usableHeight >= PagedViewportContract.MIN_USABLE_HEIGHT_CSS_PX
}

internal fun decodeReaderPagedLayoutMetrics(rawValue: String?): ReaderPagedLayoutMetrics? {
    return ReaderWebViewProtocolCodec.decodePagedLayoutMetrics(rawValue)
}
