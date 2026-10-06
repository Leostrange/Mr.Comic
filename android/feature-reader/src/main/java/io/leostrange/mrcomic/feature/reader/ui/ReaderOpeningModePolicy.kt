package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode

/** Resolves the initial visual mode without depending on reader or ViewModel state. */
internal object ReaderOpeningModePolicy {

    fun resolve(
        readerRendersHtmlContent: Boolean,
        currentMode: ReadingMode,
        portraitMode: ReadingMode,
        portraitPagedMode: ReadingMode,
        isLandscape: Boolean,
        landscapeSpreadEnabled: Boolean
    ): ReadingMode = when {
        readerRendersHtmlContent -> {
            val rememberedMode = if (currentMode == ReadingMode.DUAL_PAGE) {
                portraitMode
            } else {
                currentMode
            }
            if (rememberedMode == ReadingMode.WEBTOON) ReadingMode.WEBTOON else portraitPagedMode
        }
        isLandscape &&
            landscapeSpreadEnabled &&
            supportsAutomaticLandscapeSpread(portraitMode) &&
            currentMode != ReadingMode.WEBTOON -> ReadingMode.DUAL_PAGE
        currentMode == ReadingMode.DUAL_PAGE -> portraitMode
        else -> currentMode
    }

    /**
     * The mode a book owns: its saved mode, else the Settings default. DUAL_PAGE is a transient
     * landscape layout, so a legacy DUAL_PAGE record maps back to a paged mode.
     */
    fun bookBaseMode(savedMode: ReadingMode?, defaultMode: ReadingMode): ReadingMode {
        val mode = savedMode ?: defaultMode
        if (mode != ReadingMode.DUAL_PAGE) return mode
        return defaultMode.takeIf { it == ReadingMode.PAGE_LTR || it == ReadingMode.PAGE_RTL }
            ?: ReadingMode.PAGE_LTR
    }

    fun supportsAutomaticLandscapeSpread(mode: ReadingMode): Boolean =
        mode == ReadingMode.PAGE_LTR || mode == ReadingMode.PAGE_RTL
}
