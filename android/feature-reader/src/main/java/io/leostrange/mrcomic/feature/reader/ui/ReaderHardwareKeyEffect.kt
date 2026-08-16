package io.leostrange.mrcomic.feature.reader.ui

import androidx.compose.runtime.Composable
import androidx.compose.runtime.DisposableEffect
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.runtime.rememberUpdatedState
import io.leostrange.mrcomic.core.model.ReadingMode

/**
 * Pure-Kotlin throttling state machine for hardware key page turns.
 */
class ReaderHardwarePageTurnThrottler(
    private val throttleIntervalMs: Long = 280L,
    private val clock: () -> Long = { android.os.SystemClock.uptimeMillis() }
) {
    private var lastTurnMs = 0L

    fun shouldProcessTurn(now: Long = clock()): Boolean {
        if (now - lastTurnMs < throttleIntervalMs) {
            return false
        }
        lastTurnMs = now
        return true
    }

    fun reset() {
        lastTurnMs = 0L
    }
}

/**
 * Dispatches hardware page turn events according to current container kind and paged turn handler.
 */
fun dispatchHardwarePageTurn(
    step: Int,
    readerContainerKind: ReaderContainerKind,
    pagedColumnTurn: ((Int) -> Unit)?,
    onPrevPage: () -> Unit,
    onNextPage: () -> Unit,
) {
    if (pagedColumnTurn != null && readerContainerKind == ReaderContainerKind.TEXT_PAGE) {
        pagedColumnTurn(step)
    } else {
        when {
            step < 0 -> onPrevPage()
            step > 0 -> onNextPage()
        }
    }
}

@Composable
fun ReaderHardwareKeyEffect(
    readerHardwareKeyHost: ReaderHardwareKeyHost?,
    volumeKeysPagingEnabled: Boolean,
    readingMode: ReadingMode,
    readerContainerKind: ReaderContainerKind,
    pagedColumnTurn: ((Int) -> Unit)?,
    onPrevPage: () -> Unit,
    onNextPage: () -> Unit,
    throttleIntervalMs: Long = 280L,
) {
    val latestVolumeKeysPagingEnabled by rememberUpdatedState(volumeKeysPagingEnabled)
    val latestReadingMode by rememberUpdatedState(readingMode)
    val latestReaderContainerKind by rememberUpdatedState(readerContainerKind)
    val latestPagedColumnTurn by rememberUpdatedState(pagedColumnTurn)
    val latestOnPrevPage by rememberUpdatedState(onPrevPage)
    val latestOnNextPage by rememberUpdatedState(onNextPage)

    val throttler = remember(throttleIntervalMs) {
        ReaderHardwarePageTurnThrottler(throttleIntervalMs = throttleIntervalMs)
    }

    DisposableEffect(readerHardwareKeyHost) {
        readerHardwareKeyHost?.setReaderHardwareKeyHandler { event ->
            val decision = resolveReaderHardwareKeyDecision(
                event = event,
                volumePagingEnabled = latestVolumeKeysPagingEnabled,
                readingMode = latestReadingMode
            )
            if (!decision.consume) {
                return@setReaderHardwareKeyHandler false
            }
            decision.pageStep?.let { step ->
                if (throttler.shouldProcessTurn()) {
                    dispatchHardwarePageTurn(
                        step = step,
                        readerContainerKind = latestReaderContainerKind,
                        pagedColumnTurn = latestPagedColumnTurn,
                        onPrevPage = latestOnPrevPage,
                        onNextPage = latestOnNextPage,
                    )
                }
            }
            true
        }
        onDispose {
            readerHardwareKeyHost?.setReaderHardwareKeyHandler(null)
        }
    }
}
