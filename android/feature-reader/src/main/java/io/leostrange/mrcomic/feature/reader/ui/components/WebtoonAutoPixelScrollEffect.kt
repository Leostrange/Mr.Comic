package io.leostrange.mrcomic.feature.reader.ui.components

import androidx.compose.foundation.gestures.scrollBy
import androidx.compose.foundation.lazy.LazyListState
import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.withFrameNanos
import io.leostrange.mrcomic.feature.reader.ui.ReaderAutoScrollPrecision
import kotlinx.coroutines.isActive
import kotlin.math.min

internal object WebtoonAutoScrollPolicy {
    /** Avoid a huge jump after lifecycle pauses or a blocked main thread. */
    const val MAX_FRAME_DELTA_NANOS = 100_000_000L // 100 ms
    const val MIN_CONSUMPTION_RATIO = 0.80f
}

/**
 * Smooth auto-scroll for RASTER_WEBTOON only. It operates in content pixels,
 * not item indices, so pages of unequal heights scroll at a stable perceived
 * speed. A direct user drag, zoom, or end-of-list pauses the session but keeps
 * the selected per-mode speed in Preferences for the next explicit start.
 */
@Composable
internal fun WebtoonAutoPixelScrollEffect(
    enabled: Boolean,
    speed: Float,
    listState: LazyListState,
    userIsDragging: Boolean,
    zoomed: Boolean,
    onStop: () -> Unit,
) {
    val pixelsPerSecond = ReaderAutoScrollPrecision.webtoonPixelsPerSecond(speed)
    LaunchedEffect(enabled, pixelsPerSecond, listState, userIsDragging, zoomed) {
        if (!enabled || pixelsPerSecond <= 0f) return@LaunchedEffect
        if (userIsDragging || zoomed || !listState.canScrollForward) {
            onStop()
            return@LaunchedEffect
        }

        var previousFrameNanos = 0L
        while (isActive) {
            val deltaNanos = withFrameNanos { now ->
                val delta = if (previousFrameNanos == 0L) 0L else min(
                    now - previousFrameNanos,
                    WebtoonAutoScrollPolicy.MAX_FRAME_DELTA_NANOS,
                )
                previousFrameNanos = now
                delta
            }
            if (deltaNanos == 0L) continue
            if (userIsDragging || zoomed || !listState.canScrollForward) {
                onStop()
                break
            }
            val requestedPx = pixelsPerSecond * (deltaNanos / 1_000_000_000f)
            val consumedPx = listState.scrollBy(requestedPx)
            if (consumedPx < requestedPx * WebtoonAutoScrollPolicy.MIN_CONSUMPTION_RATIO) {
                onStop()
                break
            }
        }
    }
}
