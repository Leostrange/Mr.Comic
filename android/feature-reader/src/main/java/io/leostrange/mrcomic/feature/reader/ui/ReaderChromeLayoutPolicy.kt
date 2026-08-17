package io.leostrange.mrcomic.feature.reader.ui

private const val DEFAULT_READER_CHROME_BUTTON_SIZE_DP = 42f

internal fun readerChromeActionButtonSizeDp(
    availableWidthDp: Float,
    actionCount: Int,
): Float {
    require(availableWidthDp > 0f && availableWidthDp.isFinite())
    require(actionCount >= 0)
    if (actionCount == 0) return DEFAULT_READER_CHROME_BUTTON_SIZE_DP
    return minOf(DEFAULT_READER_CHROME_BUTTON_SIZE_DP, availableWidthDp / actionCount)
}

internal fun readerShouldShowTocChromeButton(
    isTextReader: Boolean,
    buttonEnabled: Boolean,
): Boolean = isTextReader && buttonEnabled
