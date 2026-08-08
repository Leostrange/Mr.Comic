package io.leostrange.mrcomic.engine.api

/**
 * Viewport and typography inputs for deterministic text sub-page calculation.
 *
 * Moved from engine.formats.text.pagination to engine-api so feature modules
 * can reference pagination constraints without depending on engine-formats.
 */
data class TextPaginationConstraints(
    val viewportWidthPx: Int,
    val viewportHeightPx: Int,
    val contentTopInsetPx: Int = 0,
    val contentBottomInsetPx: Int = 0,
    val fontSizeSp: Int = 18,
    val lineHeight: Float = 1.6f,
    val letterSpacingEm: Float = 0f,
    val wordSpacingEm: Float = 0f,
    val paragraphSpacingEm: Float = 0.2f,
    val bold: Boolean = false
)
