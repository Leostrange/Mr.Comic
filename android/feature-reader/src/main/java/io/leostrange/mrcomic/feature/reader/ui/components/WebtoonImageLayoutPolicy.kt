package io.leostrange.mrcomic.feature.reader.ui.components

import io.leostrange.mrcomic.core.model.ReaderImageScaleMode

internal data class WebtoonImageSizePx(
    val width: Float,
    val height: Float,
)

/**
 * Resolves raster WEBTOON item dimensions without using an unbounded LazyColumn height.
 * FIT_HEIGHT has no finite viewport inside a lazy item, so it safely degrades to FIT_WIDTH.
 */
internal fun resolveWebtoonImageSizePx(
    containerWidthPx: Float,
    containerHeightPx: Float,
    hasBoundedHeight: Boolean,
    sourceWidthPx: Float,
    sourceHeightPx: Float,
    scaleMode: ReaderImageScaleMode,
): WebtoonImageSizePx {
    require(containerWidthPx.isFinite() && containerWidthPx > 0f)
    require(sourceWidthPx.isFinite() && sourceWidthPx > 0f)
    require(sourceHeightPx.isFinite() && sourceHeightPx > 0f)

    return when (scaleMode) {
        ReaderImageScaleMode.FIT_HEIGHT -> {
            if (hasBoundedHeight && containerHeightPx.isFinite() && containerHeightPx > 0f) {
                WebtoonImageSizePx(
                    width = containerHeightPx * (sourceWidthPx / sourceHeightPx),
                    height = containerHeightPx,
                )
            } else {
                fitWebtoonImageToWidth(containerWidthPx, sourceWidthPx, sourceHeightPx)
            }
        }
        ReaderImageScaleMode.FIT_WIDTH ->
            fitWebtoonImageToWidth(containerWidthPx, sourceWidthPx, sourceHeightPx)
        ReaderImageScaleMode.REAL_SIZE ->
            WebtoonImageSizePx(sourceWidthPx, sourceHeightPx)
    }
}

private fun fitWebtoonImageToWidth(
    containerWidthPx: Float,
    sourceWidthPx: Float,
    sourceHeightPx: Float,
): WebtoonImageSizePx = WebtoonImageSizePx(
    width = containerWidthPx,
    height = containerWidthPx * (sourceHeightPx / sourceWidthPx),
)
