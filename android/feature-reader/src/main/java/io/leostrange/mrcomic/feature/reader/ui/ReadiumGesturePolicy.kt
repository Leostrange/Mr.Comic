package io.leostrange.mrcomic.feature.reader.ui

/**
 * Tap action zones for Readium Navigator rendering.
 */
enum class ReadiumTapAction {
    PREV_PAGE,
    NEXT_PAGE,
    TOGGLE_CHROME
}

/**
 * Resolves tap location to the corresponding reader action based on 3-zone layout (1/3 left, 1/3 center, 1/3 right).
 *
 * @param tapX Normalized or absolute X coordinate of the tap.
 * @param totalWidth Total width of the container.
 * @param isRtl If true, left turns next page and right turns previous page.
 */
fun resolveReadiumTapAction(
    tapX: Float,
    totalWidth: Float,
    isRtl: Boolean = false
): ReadiumTapAction {
    if (totalWidth <= 0f || tapX < 0f) return ReadiumTapAction.TOGGLE_CHROME

    val ratio = (tapX / totalWidth).coerceIn(0f, 1f)
    return when {
        ratio < 0.33f -> if (isRtl) ReadiumTapAction.NEXT_PAGE else ReadiumTapAction.PREV_PAGE
        ratio > 0.67f -> if (isRtl) ReadiumTapAction.PREV_PAGE else ReadiumTapAction.NEXT_PAGE
        else -> ReadiumTapAction.TOGGLE_CHROME
    }
}
