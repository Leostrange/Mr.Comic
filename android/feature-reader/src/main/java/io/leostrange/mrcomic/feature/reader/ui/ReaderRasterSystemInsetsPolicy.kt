package io.leostrange.mrcomic.feature.reader.ui

internal enum class ReaderRasterSystemInsets {
    HORIZONTAL_ONLY,
    FULL_SAFE_DRAWING
}

/**
 * Raster chrome is drawn over the page. Reserving vertical system-bar space when
 * it opens changes the measured image viewport and makes FIT_HEIGHT pages jump,
 * exposing a black strip at the bottom. Keep that viewport stable in both states.
 */
internal fun readerRasterSystemInsets(immersiveMode: Boolean): ReaderRasterSystemInsets =
    ReaderRasterSystemInsets.HORIZONTAL_ONLY
