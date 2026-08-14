package io.leostrange.mrcomic.feature.reader.ui.geometry

import kotlin.math.roundToInt

/**
 * Unified viewport geometry model for the text reader.
 *
 * Consolidates all inset calculations into a single place so that PAGE mode,
 * WEBTOON mode, CSS injection, and position restoration all use the same
 * content bounds. This replaces scattered inline calculations in ReaderScreen.
 *
 * GEOMETRY-01: Single source of truth for content boundaries.
 */
data class ReaderViewportGeometry(
    /** Physical viewport width in pixels. */
    val viewportWidthPx: Int,
    /** Physical viewport height in pixels. */
    val viewportHeightPx: Int,
    /** System status bar inset in physical pixels. */
    val statusBarInsetPx: Int,
    /** System navigation bar inset in physical pixels. */
    val navigationBarInsetPx: Int,
    /** Display cutout inset in physical pixels. */
    val displayCutoutInsetPx: Int,
    /** Measured top toolbar height in physical pixels (0 if hidden). */
    val topToolbarHeightPx: Int,
    /** Measured bottom toolbar height in physical pixels (0 if hidden). */
    val bottomToolbarHeightPx: Int,
    /** Reader-specific top padding in physical pixels. */
    val readerTopPaddingPx: Int,
    /** Reader-specific bottom padding in physical pixels. */
    val readerBottomPaddingPx: Int,
    /** Whether toolbars are hidden while reading. */
    val hideToolbarsWhileReading: Boolean,
    /** Screen density scale (e.g. 2.75 for xxhdpi). */
    val densityScale: Float
) {
    // ── Derived content bounds ─────────────────────────────────────────

    /**
     * Top inset for CSS injection (in CSS pixels).
     * Accounts for: status bar + cutout + toolbar (if visible) + reader padding.
     * VERTICAL-01: Includes safety margin for edge-to-edge mode.
     */
    val contentTopInsetCssPx: Int
        get() {
            val systemInset = maxOf(statusBarInsetPx, displayCutoutInsetPx)
            val chromeReserve = if (hideToolbarsWhileReading) 0 else topToolbarHeightPx
            val safetyMarginPx = if (hideToolbarsWhileReading) MIN_SAFETY_MARGIN_PX else 0
            val totalPx = systemInset + chromeReserve + readerTopPaddingPx + safetyMarginPx
            return (totalPx / densityScale).roundToInt().coerceAtLeast(MIN_INSET_CSS_PX)
        }

    /**
     * Bottom inset for CSS injection (in CSS pixels).
     * Accounts for: navigation bar + toolbar (if visible) + reader padding.
     * VERTICAL-02: Includes safety margin for edge-to-edge mode.
     */
    val contentBottomInsetCssPx: Int
        get() {
            val chromeReserve = if (hideToolbarsWhileReading) 0 else bottomToolbarHeightPx
            val safetyMarginPx = if (hideToolbarsWhileReading) MIN_SAFETY_MARGIN_PX else 0
            val totalPx = navigationBarInsetPx + chromeReserve + readerBottomPaddingPx + safetyMarginPx
            return (totalPx / densityScale).roundToInt().coerceAtLeast(MIN_INSET_CSS_PX)
        }

    /**
     * Top inset for paged layout calculation (in physical pixels).
     * Used by PagedLayoutParams.calculateUsablePageHeight.
     */
    val contentTopInsetPx: Int
        get() {
            val systemInset = maxOf(statusBarInsetPx, displayCutoutInsetPx)
            val chromeReserve = if (hideToolbarsWhileReading) 0 else topToolbarHeightPx
            return systemInset + chromeReserve + readerTopPaddingPx
        }

    /**
     * Bottom inset for paged layout calculation (in physical pixels).
     */
    val contentBottomInsetPx: Int
        get() {
            val chromeReserve = if (hideToolbarsWhileReading) 0 else bottomToolbarHeightPx
            return navigationBarInsetPx + chromeReserve + readerBottomPaddingPx
        }

    /**
     * Usable content width in CSS pixels.
     * Viewport width minus horizontal reader padding.
     */
    val contentWidthCssPx: Int
        get() = (viewportWidthPx / densityScale).roundToInt().coerceAtLeast(1)

    /**
     * Usable content height in CSS pixels.
     */
    val contentHeightCssPx: Int
        get() {
            val totalInsetPx = contentTopInsetPx + contentBottomInsetPx
            val usablePx = (viewportHeightPx - totalInsetPx).coerceAtLeast(240)
            return (usablePx / densityScale).roundToInt().coerceAtLeast(1)
        }

    // ── Chrome-reserve-only CSS insets ─────────────────────────────────
    // System bars are handled by Compose WindowInsetsPadding modifiers and
    // the sentence gutter by vertical padding on the text reader modifier;
    // only the visible chrome reserve is injected into CSS.  When toolbars
    // are hidden the reserve (and therefore the CSS inset) is zero.

    /**
     * Top chrome-reserve inset in CSS pixels.
     * Returns 0 when toolbars are hidden.
     */
    val chromeTopInsetCssPx: Int
        get() {
            val reservePx = if (hideToolbarsWhileReading) 0 else topToolbarHeightPx
            return (reservePx / densityScale).roundToInt().coerceAtLeast(0)
        }

    /**
     * Bottom chrome-reserve inset in CSS pixels.
     * Returns 0 when toolbars are hidden.
     */
    val chromeBottomInsetCssPx: Int
        get() {
            val reservePx = if (hideToolbarsWhileReading) 0 else bottomToolbarHeightPx
            return (reservePx / densityScale).roundToInt().coerceAtLeast(0)
        }

    companion object {
        /** Minimum safety margin in physical pixels for edge-to-edge mode. */
        private const val MIN_SAFETY_MARGIN_PX = 8
        /** Minimum CSS inset to prevent text from touching screen edges. */
        private const val MIN_INSET_CSS_PX = 4
        /**
         * Creates a [ReaderViewportGeometry] from measured Compose values.
         *
         * @param viewportWidthPx Physical viewport width from WebView.
         * @param viewportHeightPx Physical viewport height from WebView.
         * @param statusBarInsetPx Status bar inset from WindowInsets.
         * @param navigationBarInsetPx Navigation bar inset from WindowInsets.
         * @param displayCutoutInsetPx Display cutout inset from WindowInsets.
         * @param topToolbarHeightPx Measured top toolbar height (0 if hidden).
         * @param bottomToolbarHeightPx Measured bottom toolbar height (0 if hidden).
         * @param readerTopPaddingPx Reader-specific top padding.
         * @param readerBottomPaddingPx Reader-specific bottom padding.
         * @param hideToolbarsWhileReading Whether toolbars are hidden while reading.
         * @param densityScale Screen density scale.
         */
        fun fromMeasured(
            viewportWidthPx: Int,
            viewportHeightPx: Int,
            statusBarInsetPx: Int,
            navigationBarInsetPx: Int,
            displayCutoutInsetPx: Int = 0,
            topToolbarHeightPx: Int = 0,
            bottomToolbarHeightPx: Int = 0,
            readerTopPaddingPx: Int = 0,
            readerBottomPaddingPx: Int = 0,
            hideToolbarsWhileReading: Boolean = true,
            densityScale: Float = 2.75f
        ): ReaderViewportGeometry = ReaderViewportGeometry(
            viewportWidthPx = viewportWidthPx.coerceAtLeast(1),
            viewportHeightPx = viewportHeightPx.coerceAtLeast(240),
            statusBarInsetPx = statusBarInsetPx.coerceAtLeast(0),
            navigationBarInsetPx = navigationBarInsetPx.coerceAtLeast(0),
            displayCutoutInsetPx = displayCutoutInsetPx.coerceAtLeast(0),
            topToolbarHeightPx = topToolbarHeightPx.coerceAtLeast(0),
            bottomToolbarHeightPx = bottomToolbarHeightPx.coerceAtLeast(0),
            readerTopPaddingPx = readerTopPaddingPx.coerceAtLeast(0),
            readerBottomPaddingPx = readerBottomPaddingPx.coerceAtLeast(0),
            hideToolbarsWhileReading = hideToolbarsWhileReading,
            densityScale = densityScale.coerceAtLeast(1f)
        )
    }
}
