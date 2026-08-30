package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat
import io.leostrange.mrcomic.core.model.ReaderImageScaleMode
import io.leostrange.mrcomic.core.model.ReadingMode

internal fun resolvePageImageScaleMode(
    format: ComicFormat?,
    readingMode: ReadingMode,
    requestedMode: String,
): String {
    val isDocument = format == ComicFormat.PDF || format == ComicFormat.DJVU
    if (isDocument && readingMode == ReadingMode.DUAL_PAGE) {
        return ReaderImageScaleMode.FIT_HEIGHT.storedValue
    }
    if (format == ComicFormat.DJVU && requestedMode == ReaderImageScaleMode.FIT_WIDTH.storedValue) {
        return ReaderImageScaleMode.FIT_HEIGHT.storedValue
    }
    return requestedMode
}
