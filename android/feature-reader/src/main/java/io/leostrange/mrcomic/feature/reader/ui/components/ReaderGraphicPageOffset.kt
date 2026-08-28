package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.core.model.ComicFormat

internal data class ReaderGraphicPageOffset(
    val xDp: Int,
    val yDp: Int,
)

/**
 * PDF and DJVU pages use the same vertical baseline as the original document
 * viewport. Horizontal placement remains neutral because [PagePane] already
 * centers the page in its viewport. Other raster formats keep the neutral
 * centered placement as well.
 */
internal fun readerGraphicPageOffset(format: ComicFormat?): ReaderGraphicPageOffset =
    if (format == ComicFormat.PDF || format == ComicFormat.DJVU) {
        ReaderGraphicPageOffset(xDp = 0, yDp = 20)
    } else {
        ReaderGraphicPageOffset(xDp = 0, yDp = 0)
    }
