package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.LaunchedEffect
import androidx.compose.runtime.rememberUpdatedState
import androidx.compose.runtime.withFrameNanos
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleEventObserver
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.update
import kotlinx.coroutines.isActive
import kotlin.math.abs

/**
 * More than one reason can pause the reader at the same time. A Set is essential here:
 * ActionMode closing must not restart auto-scroll while the user is still dragging a page.
 */
enum class ReaderAutoScrollPauseReason {
    TOUCH_GESTURE,
    WEBTOON_DRAG,
    IMAGE_ZOOM,
    TEXT_SELECTION_ACTION_MODE,
    BOTTOM_SHEET,
    APP_IN_BACKGROUND,
}

/**
 * Add the following fields to ReaderUiState. `autoScrollEnabled` is session-only and must be false
 * after restoring a book; `autoScrollCountdownProgress` is intentionally not written to DataStore.
 *
 * val autoScrollEnabled: Boolean = false,
 * val autoScrollCountdownProgress: Float = 0f,
 * val autoScrollPauseReasons: Set<ReaderAutoScrollPauseReason> = emptySet(),
 */
internal val ReaderUiState.isAutoScrollTemporarilyPaused: Boolean
    get() = autoScrollPauseReasons.isNotEmpty()

/**
 * Owns only volatile reader-session state. It never modifies the current page, selection, WebView
 * scroll position, or LazyListState; therefore pause/resume cannot make the document jump.
 */
internal class ReaderAutoScrollRuntimeController(
    private val uiState: MutableStateFlow<ReaderUiState>,
) {
    fun toggle() {
        val state = uiState.value
        uiState.update {
            if (state.autoScrollEnabled) {
                it.copy(
                    autoScrollEnabled = false,
                    autoScrollCountdownProgress = 0f,
                    autoScrollPauseReasons = emptySet(),
                )
            } else {
                it.copy(
                    autoScrollEnabled = true,
                    autoScrollCountdownProgress = 0f,
                )
            }
        }
    }

    /** A temporary pause preserves the in-progress countdown ratio. */
    fun pause(reason: ReaderAutoScrollPauseReason) {
        uiState.update { state ->
            state.copy(autoScrollPauseReasons = state.autoScrollPauseReasons + reason)
        }
    }

    /** Resumption happens only after every active reason is gone. */
    fun resume(reason: ReaderAutoScrollPauseReason) {
        uiState.update { state ->
            state.copy(autoScrollPauseReasons = state.autoScrollPauseReasons - reason)
        }
    }

    fun updateCountdown(progress: Float) {
        uiState.update { state ->
            if (!state.autoScrollEnabled) state else {
                state.copy(autoScrollCountdownProgress = progress.coerceIn(0f, 1f))
            }
        }
    }

    /** Stop is terminal for this reader session and clears the visual countdown. */
    fun stop() {
        uiState.update {
            it.copy(
                autoScrollEnabled = false,
                autoScrollCountdownProgress = 0f,
                autoScrollPauseReasons = emptySet(),
            )
        }
    }
}

/**
 * Drives page and dual-page auto-turning. `onRequestNextPage` must call
 * ReaderNavigationController.nextPage() only after it has checked the end of the document.
 * Returning false stops the timer, avoiding an apparent repeated turn on the last page.
 *
 * Do not use this effect for WEBTOON. Raster WEBTOON continues to use
 * WebtoonAutoPixelScrollEffect and text WEBTOON keeps its own continuous scroll implementation.
 */
@Composable
internal fun ReaderAutoPageCountdownEffect(
    enabled: Boolean,
    paused: Boolean,
    intervalMillis: Long,
    countdownProgress: Float,
    onCountdownProgress: (Float) -> Unit,
    onRequestNextPage: () -> Boolean,
    onReachedEnd: () -> Unit,
) {
    val latestProgress = rememberUpdatedState(countdownProgress.coerceIn(0f, 1f))
    val latestOnProgress = rememberUpdatedState(onCountdownProgress)
    val latestOnNextPage = rememberUpdatedState(onRequestNextPage)
    val latestOnReachedEnd = rememberUpdatedState(onReachedEnd)
    val safeIntervalNanos = intervalMillis.coerceAtLeast(1_500L) * 1_000_000L

    LaunchedEffect(enabled, paused, safeIntervalNanos) {
        if (!enabled || paused) return@LaunchedEffect

        // A paused timer starts again from exactly the saved percentage, not from zero.
        var elapsedNanos = (safeIntervalNanos * latestProgress.value).toLong()
        var previousFrameNanos = 0L
        var lastEmittedProgress = latestProgress.value
        var reachedEnd = false

        while (isActive && !reachedEnd) {
            withFrameNanos { frameNanos ->
                if (previousFrameNanos == 0L) {
                    previousFrameNanos = frameNanos
                    return@withFrameNanos
                }

                elapsedNanos += (frameNanos - previousFrameNanos).coerceAtMost(100_000_000L)
                previousFrameNanos = frameNanos

                if (elapsedNanos >= safeIntervalNanos) {
                    val advanced = latestOnNextPage.value.invoke()
                    if (!advanced) {
                        latestOnProgress.value.invoke(0f)
                        latestOnReachedEnd.value.invoke()
                        reachedEnd = true
                        return@withFrameNanos
                    }
                    elapsedNanos %= safeIntervalNanos
                    lastEmittedProgress = -1f // force a visible reset after a successful turn
                }

                val progress = elapsedNanos.toFloat() / safeIntervalNanos.toFloat()
                // Avoid a full Chrome recomposition on every frame while keeping the line visibly smooth.
                if (abs(progress - lastEmittedProgress) >= 0.01f) {
                    lastEmittedProgress = progress
                    latestOnProgress.value.invoke(progress)
                }
            }

        }
    }
}

/**
 * Pauses the timer while the app is not interactive. It also clears the background reason on resume.
 * Install once near ReaderScreen; no document position is read or changed by this observer.
 */
@Composable
internal fun ReaderAutoScrollLifecyclePauseEffect(
    controller: ReaderAutoScrollRuntimeController,
) {
    val lifecycleOwner = LocalLifecycleOwner.current
    LaunchedEffect(lifecycleOwner, controller) {
        val observer = LifecycleEventObserver { _, event ->
            when (event) {
                Lifecycle.Event.ON_PAUSE -> controller.pause(ReaderAutoScrollPauseReason.APP_IN_BACKGROUND)
                Lifecycle.Event.ON_RESUME -> controller.resume(ReaderAutoScrollPauseReason.APP_IN_BACKGROUND)
                else -> Unit
            }
        }
        lifecycleOwner.lifecycle.addObserver(observer)
        try {
            kotlinx.coroutines.awaitCancellation()
        } finally {
            lifecycleOwner.lifecycle.removeObserver(observer)
        }
    }
}
