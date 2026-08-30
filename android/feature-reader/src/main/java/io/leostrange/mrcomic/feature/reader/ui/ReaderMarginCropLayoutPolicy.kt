package io.leostrange.mrcomic.feature.reader.ui

internal data class ReaderMarginCropLayout(
    val sideColumns: Int,
    val widthFraction: Float,
    val verticalPaddingDp: Float,
)

internal fun readerMarginCropLayout(isLandscape: Boolean): ReaderMarginCropLayout =
    if (isLandscape) {
        ReaderMarginCropLayout(sideColumns = 2, widthFraction = 0.66f, verticalPaddingDp = 8f)
    } else {
        ReaderMarginCropLayout(sideColumns = 1, widthFraction = 0.86f, verticalPaddingDp = 12f)
    }
