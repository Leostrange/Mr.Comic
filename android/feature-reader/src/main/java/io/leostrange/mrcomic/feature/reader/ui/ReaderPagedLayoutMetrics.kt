package io.leostrange.mrcomic.feature.reader.ui

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
            clipHeight >= 320 &&
            usableHeight >= 72
}

internal fun decodeReaderPagedLayoutMetrics(rawValue: String?): ReaderPagedLayoutMetrics? {
    return ReaderWebViewProtocolCodec.decodePagedLayoutMetrics(rawValue)
}
