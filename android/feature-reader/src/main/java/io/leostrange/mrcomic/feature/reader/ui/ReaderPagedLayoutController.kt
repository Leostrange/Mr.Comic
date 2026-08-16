package io.leostrange.mrcomic.feature.reader.ui

import android.util.Log

/**
 * Manages paged layout readiness, retries, metrics verification, column turns, and character offset restoration.
 *
 * Extracted from [ReaderWebView] (R1.3) to isolate layout lifecycle and retry state machine.
 */
internal class ReaderPagedLayoutController(
    private val evaluateJavascript: (script: String, callback: ((String?) -> Unit)?) -> Unit,
    private val postDelayed: (action: Runnable, delayMillis: Long) -> Unit,
    private val removeCallbacks: (action: Runnable) -> Unit,
    private val post: (action: Runnable) -> Unit,
    private val getViewportWidthCss: () -> Int?,
    private val getViewportHeightCss: () -> Int?,
    private val onAlphaChanged: (Float) -> Unit,
    private val onPageMetricsChanged: (pageCount: Int, pageIndex: Int, characterOffset: Int) -> Unit,
    private val onRuntimeEvent: ((ReaderWebViewEvent) -> Unit)? = null
) {
    var pagedLayoutReady: Boolean = false
        private set

    var pendingPagedLayoutTarget: Int? = null

    private var pagedLayoutRetryCount: Int = 0
    private var pagedLayoutRetryRunnable: Runnable? = null
    private val pagedLayoutSettleRunnables = mutableListOf<Runnable>()

    fun resetForNewLoad(isPagedMode: Boolean) {
        pagedLayoutReady = !isPagedMode
        pagedLayoutRetryCount = 0
        cancelPagedLayoutRetry()
        cancelPagedLayoutSettle()
    }

    fun schedulePagedLayoutSettle(
        isPagedMode: Boolean,
        activeLoadToken: String?,
        isTokenCommitted: (String) -> Boolean
    ) {
        cancelPagedLayoutSettle()
        if (!isPagedMode) return
        val expectedToken = activeLoadToken ?: return
        listOf(180L, 700L).forEach { delayMs ->
            val runnable = Runnable {
                if (!isPagedMode) return@Runnable
                if (!isTokenCommitted(expectedToken)) return@Runnable
                applyPagedLayout(isPagedMode = true, runtimeGeneration = 0L)
            }
            pagedLayoutSettleRunnables += runnable
            postDelayed(runnable, delayMs)
        }
    }

    fun cancelPagedLayoutSettle() {
        pagedLayoutSettleRunnables.forEach(removeCallbacks)
        pagedLayoutSettleRunnables.clear()
    }

    fun applyPagedLayout(
        isPagedMode: Boolean,
        runtimeGeneration: Long,
        targetPage: Int? = pendingPagedLayoutTarget,
        onLayoutApplied: (() -> Unit)? = null
    ) {
        if (!isPagedMode) {
            pagedLayoutReady = true
            onAlphaChanged(1f)
            return
        }
        val cssHeight = getViewportHeightCss()
        val cssWidth = getViewportWidthCss()
        if (!readerPagedViewportIsReady(cssWidth, cssHeight)) {
            schedulePagedLayoutRetry(isPagedMode, runtimeGeneration, "viewport not ready (${cssWidth}x$cssHeight)")
            return
        }
        val target = targetPage ?: -1
        pendingPagedLayoutTarget = null
        val generation = runtimeGeneration.takeIf { it > 0L }
        evaluateJavascript(readerPagedLayoutJs(target, generation)) { rawValue ->
            val metrics = decodeReaderPagedLayoutMetrics(rawValue)
            if (metrics == null || !metrics.isUsable()) {
                logWarn("Paged layout not ready yet: raw=$rawValue metrics=$metrics")
                schedulePagedLayoutRetry(isPagedMode, runtimeGeneration, "invalid metrics")
                return@evaluateJavascript
            }
            cancelPagedLayoutRetry()
            pagedLayoutRetryCount = 0
            logDebug(
                "Paged layout ready: page=${metrics.pageIndex + 1}/${metrics.pageCount} " +
                    "clip=${metrics.clipHeight} usable=${metrics.usableHeight}"
            )
            pagedLayoutReady = true
            onAlphaChanged(1f)
            onPageMetricsChanged(metrics.pageCount, metrics.pageIndex, metrics.characterOffset)
            generation?.let { activeGen ->
                onRuntimeEvent?.invoke(ReaderWebViewEvent.LayoutReady(activeGen, metrics))
            }
            onLayoutApplied?.invoke()
        }
    }

    fun schedulePagedLayoutRetry(isPagedMode: Boolean, runtimeGeneration: Long, reason: String) {
        if (!isPagedMode || pagedLayoutReady) return
        if (pagedLayoutRetryCount >= 10) {
            logError("Paged layout retries exhausted ($reason)")
            revealPagedContentFallback("retries exhausted: $reason")
            return
        }
        pagedLayoutRetryCount++
        val delayMs = when (pagedLayoutRetryCount) {
            1 -> 60L
            2 -> 120L
            3 -> 240L
            else -> 320L
        }
        cancelPagedLayoutRetry()
        val runnable = Runnable {
            if (!isPagedMode || pagedLayoutReady) return@Runnable
            applyPagedLayout(isPagedMode, runtimeGeneration)
        }
        pagedLayoutRetryRunnable = runnable
        postDelayed(runnable, delayMs)
    }

    fun cancelPagedLayoutRetry() {
        pagedLayoutRetryRunnable?.let(removeCallbacks)
        pagedLayoutRetryRunnable = null
    }

    fun revealPagedContentFallback(reason: String) {
        if (pagedLayoutReady) return
        logWarn("Paged layout fallback reveal: $reason")
        cancelPagedLayoutRetry()
        pagedLayoutReady = true
        onAlphaChanged(1f)
    }

    private fun logDebug(message: String) {
        runCatching { Log.d(HTML_READER_TAG, message) }
    }

    private fun logWarn(message: String) {
        runCatching { Log.w(HTML_READER_TAG, message) }
    }

    private fun logError(message: String) {
        runCatching { Log.e(HTML_READER_TAG, message) }
    }

    fun turnPagedColumn(
        isPagedMode: Boolean,
        delta: Int,
        runtimeGeneration: Long,
        onBoundary: () -> Unit,
        onMetricsChanged: ((pageCount: Int, pageIndex: Int, characterOffset: Int) -> Unit)? = null
    ) {
        if (!isPagedMode) {
            onBoundary()
            return
        }
        evaluateJavascript(readerPagedTurnJs(delta, runtimeGeneration.takeIf { it > 0L })) { rawValue ->
            val metrics = decodeReaderPagedLayoutMetrics(rawValue)
            if (metrics == null || !metrics.handled) {
                pendingPagedLayoutTarget = if (delta < 0) Int.MAX_VALUE else 0
                post { onBoundary() }
            } else {
                onMetricsChanged?.invoke(metrics.pageCount, metrics.pageIndex, metrics.characterOffset)
            }
        }
    }

    fun scrollToCharacterOffset(
        isPagedMode: Boolean,
        offset: Int,
        onRestored: ((Boolean) -> Unit)? = null
    ) {
        if (!isPagedMode || offset < 0) {
            onRestored?.invoke(false)
            return
        }
        evaluateJavascript(readerScrollToCharacterOffsetJs(offset)) { rawValue ->
            val pageIndex = rawValue?.trim('"')?.toIntOrNull()
            if (pageIndex == null || pageIndex < 0) {
                onRestored?.invoke(false)
                return@evaluateJavascript
            }
            onRestored?.invoke(true)
        }
    }
}
