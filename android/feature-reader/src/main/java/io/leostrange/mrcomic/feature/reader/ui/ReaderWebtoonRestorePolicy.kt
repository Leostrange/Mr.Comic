package io.leostrange.mrcomic.feature.reader.ui

internal const val TEXT_WEBTOON_RESTORE_DELAY_MILLIS = 350L

/**
 * A stitched webtoon document is replaced while its sections are loaded in batches.
 * Only the WebView load that is still current may restore the requested section.
 */
internal fun shouldRestoreTextWebtoonSection(
    expectedLoadToken: String?,
    activeLoadToken: String?
): Boolean = expectedLoadToken != null && expectedLoadToken == activeLoadToken
