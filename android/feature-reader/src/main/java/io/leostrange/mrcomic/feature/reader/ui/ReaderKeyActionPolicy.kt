package io.leostrange.mrcomic.feature.reader.ui

import android.view.KeyEvent
import io.leostrange.mrcomic.core.model.ReadingMode

/** Decision returned to the reader host for one hardware-key event. */
data class ReaderHardwareKeyDecision(
    val consume: Boolean,
    val pageStep: Int? = null,
)

/**
 * Returns the visual page step for volume keys. A zero step means the key is
 * recognized but the current mode is not a horizontal paged mode.
 */
fun readerVolumePagingStep(
    keyCode: Int,
    readingMode: ReadingMode = ReadingMode.PAGE_LTR,
): Int? = when (keyCode) {
    KeyEvent.KEYCODE_VOLUME_UP -> when (readingMode) {
        ReadingMode.PAGE_RTL -> 1
        ReadingMode.PAGE_LTR -> -1
        else -> 0
    }
    KeyEvent.KEYCODE_VOLUME_DOWN -> when (readingMode) {
        ReadingMode.PAGE_RTL -> -1
        ReadingMode.PAGE_LTR -> 1
        else -> 0
    }
    else -> null
}

/** Pure primitive form used by unit tests and the Android adapter below. */
fun resolveReaderHardwareKeyDecision(
    keyCode: Int,
    action: Int,
    repeatCount: Int,
    volumePagingEnabled: Boolean,
    readingMode: ReadingMode = ReadingMode.PAGE_LTR,
): ReaderHardwareKeyDecision {
    if (!volumePagingEnabled) return ReaderHardwareKeyDecision(consume = false)
    val pageStep = readerVolumePagingStep(keyCode, readingMode)
        ?: return ReaderHardwareKeyDecision(consume = false)
    return when (action) {
        KeyEvent.ACTION_DOWN -> if (repeatCount == 0) {
            ReaderHardwareKeyDecision(consume = true, pageStep = pageStep.takeUnless { it == 0 })
        } else {
            ReaderHardwareKeyDecision(consume = true)
        }
        KeyEvent.ACTION_UP -> ReaderHardwareKeyDecision(consume = true)
        else -> ReaderHardwareKeyDecision(consume = false)
    }
}

/** Android convenience adapter retained for the WebView/activity host. */
fun resolveReaderHardwareKeyDecision(
    event: KeyEvent,
    volumePagingEnabled: Boolean,
    readingMode: ReadingMode = ReadingMode.PAGE_LTR,
): ReaderHardwareKeyDecision = resolveReaderHardwareKeyDecision(
    keyCode = event.keyCode,
    action = event.action,
    repeatCount = event.repeatCount,
    volumePagingEnabled = volumePagingEnabled,
    readingMode = readingMode,
)
