package io.leostrange.mrcomic.feature.reader.ui.geometry

/**
 * Single contract for paged layout geometry, safe insets, and readiness criteria.
 *
 * Consolidates viewport thresholds between Kotlin metrics verification and WebView-side
 * JavaScript calculation (R1.1). Prevents false-positive retry/fallback loops on low-height
 * landscape viewports while ensuring safe content insets.
 */
data class PagedViewportContract(
    val cssWidth: Int,
    val cssHeight: Int,
    val topInsetCss: Int,
    val bottomInsetCss: Int,
    val usableHeightCss: Int,
    val canLayout: Boolean,
    val blockedReason: String? = null
) {
    companion object {
        /** Minimum physical clip height in pixels required for a usable page layout. */
        const val MIN_CLIP_HEIGHT_PX: Int = 240

        /** Minimum usable height in CSS pixels (at least 2-3 readable text lines). */
        const val MIN_USABLE_HEIGHT_CSS_PX: Int = 64

        /** Minimum CSS viewport width. */
        const val MIN_WIDTH_CSS_PX: Int = 120

        /**
         * Evaluates whether the given [geometry] can host a valid paged layout.
         */
        fun evaluate(geometry: ReaderViewportGeometry): PagedViewportContract {
            val width = geometry.contentWidthCssPx
            val height = (geometry.viewportHeightPx / geometry.densityScale).toInt().coerceAtLeast(1)
            val topInset = geometry.chromeTopInsetCssPx
            val bottomInset = geometry.chromeBottomInsetCssPx
            val usableHeight = (height - topInset - bottomInset).coerceAtLeast(0)

            val (canLayout, reason) = when {
                geometry.viewportWidthPx < MIN_WIDTH_CSS_PX -> {
                    false to "Viewport width (${geometry.viewportWidthPx}px) is below minimum ($MIN_WIDTH_CSS_PX px)"
                }
                geometry.viewportHeightPx < MIN_CLIP_HEIGHT_PX -> {
                    false to "Viewport height (${geometry.viewportHeightPx}px) is below minimum ($MIN_CLIP_HEIGHT_PX px)"
                }
                usableHeight < MIN_USABLE_HEIGHT_CSS_PX -> {
                    false to "Usable content height ($usableHeight CSS px) is below minimum ($MIN_USABLE_HEIGHT_CSS_PX CSS px)"
                }
                else -> true to null
            }

            return PagedViewportContract(
                cssWidth = width,
                cssHeight = height,
                topInsetCss = topInset,
                bottomInsetCss = bottomInset,
                usableHeightCss = usableHeight,
                canLayout = canLayout,
                blockedReason = reason
            )
        }
    }
}
