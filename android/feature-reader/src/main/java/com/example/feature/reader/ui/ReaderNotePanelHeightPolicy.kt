package com.example.feature.reader.ui

/** Calculates the scrollable note body without letting it extend below reader chrome. */
internal object ReaderNotePanelHeightPolicy {

    private const val panelHeaderHeightDp = 68

    fun maxContentHeightDp(
        screenHeightDp: Int,
        topInsetDp: Int,
        bottomInsetDp: Int,
        chromeReservedDp: Int,
        expanded: Boolean
    ): Int {
        val screenHeight = screenHeightDp.coerceAtLeast(0)
        val availableContentHeight = (
            screenHeight -
                topInsetDp.coerceAtLeast(0) -
                bottomInsetDp.coerceAtLeast(0) -
                chromeReservedDp.coerceAtLeast(0) -
                panelHeaderHeightDp
            ).coerceAtLeast(0)
        val preferredHeight = if (expanded) {
            (screenHeight.coerceAtLeast(480) * 0.72f).toInt().coerceIn(280, 720)
        } else {
            (screenHeight.coerceAtLeast(480) * 0.36f).toInt().coerceIn(180, 320)
        }
        if (topInsetDp <= 0 && bottomInsetDp <= 0 && chromeReservedDp <= 0) {
            return preferredHeight
        }
        return minOf(preferredHeight, availableContentHeight)
    }
}
