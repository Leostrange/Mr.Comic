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

    fun supportsAutomaticLandscapeSpread(mode: ReadingMode): Boolean =
        mode == ReadingMode.PAGE_LTR || mode == ReadingMode.PAGE_RTL
}
