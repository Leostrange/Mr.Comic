package io.leostrange.mrcomic.feature.reader.ui

import android.graphics.Bitmap

/**
 * Explicit per-page load state for raster containers. Replaces the old combination of
 * nullable Bitmap + HTML cache so a failed decode can be surfaced and retried instead of
 * leaving an infinite spinner or black placeholder.
 */
sealed interface PageLoadState {
    data object Loading : PageLoadState
    data class BitmapReady(val bitmap: Bitmap) : PageLoadState
    data class HtmlReady(val html: String) : PageLoadState
    data class Failed(val reason: String) : PageLoadState
}

/**
 * Priority-ordered page state derivation. A successfully decoded bitmap takes precedence
 * over cached HTML, which takes precedence over an error; only when all three are absent
 * is the page still loading. Extracted so RASTER-01 state priority is unit-testable without
 * a live [ReaderPageLoader].
 */
internal fun pageLoadStateFrom(
    bitmap: Bitmap?,
    html: String?,
    error: String?,
): PageLoadState = when {
    bitmap != null -> PageLoadState.BitmapReady(bitmap)
    html != null -> PageLoadState.HtmlReady(html)
    error != null -> PageLoadState.Failed(error)
    else -> PageLoadState.Loading
}

/**
 * Derives the per-page webtoon error entry from raw readiness signals. Returns null when
 * the page has either a decoded bitmap or cached HTML (nothing to surface), otherwise the
 * (pageIndex -> message) pair that [ReaderPageLoader] publishes into its error map.
 */
internal fun webtoonPageErrorEntry(
    bitmapReady: Boolean,
    htmlReady: Boolean,
    pageIndex: Int
): Pair<Int, String>? =
    if (!bitmapReady && !htmlReady) {
        pageIndex to "Ошибка загрузки страницы ${pageIndex + 1}"
    } else {
        null
    }
