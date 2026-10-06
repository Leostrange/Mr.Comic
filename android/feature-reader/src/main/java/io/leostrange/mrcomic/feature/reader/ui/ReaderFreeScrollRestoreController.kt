package io.leostrange.mrcomic.feature.reader.ui

/**
 * Controller for capturing, debouncing, and restoring scroll positions in free-scroll (WEBTOON) mode.
 *
 * Extracted from [ReaderWebView] (R1.3) to isolate free-scroll state transitions and lifecycle.
 */
internal class ReaderFreeScrollRestoreController(
    private val debounceMillis: Long = 120L,
    private val postDelayed: (action: Runnable, delayMillis: Long) -> Unit,
    private val removeCallbacks: (action: Runnable) -> Unit,
    private val evaluateJavascript: (script: String, callback: ((String?) -> Unit)?) -> Unit,
    private val onPositionChanged: (ReaderWebViewRestoreTarget) -> Unit
) {
    var pendingRestoreTarget: ReaderWebViewRestoreTarget? = null
        private set

    var latestRestoreTarget: ReaderWebViewRestoreTarget? = null
        private set

    private var captureRunnable: Runnable? = null

    /** Last restored target; reported verbatim while its line is still the first visible one. */
    private var restoreAnchor: ReaderWebViewRestoreTarget? = null

    fun primeRestoreTarget(target: ReaderWebViewRestoreTarget?, isPagedMode: Boolean) {
        if (isPagedMode) return
        pendingRestoreTarget = target?.normalizedFreeScrollTarget()
        latestRestoreTarget = pendingRestoreTarget
    }

    fun prepareReloadPreservingPosition(
        isPagedMode: Boolean,
        webtoonFadeEnabled: Boolean,
        hasActiveLoad: Boolean,
        currentProgression: Double?
    ) {
        if (isPagedMode || !webtoonFadeEnabled || !hasActiveLoad) return
        pendingRestoreTarget = currentRestoreTarget(currentProgression)
    }

    fun currentRestoreTarget(currentProgression: Double?): ReaderWebViewRestoreTarget? {
        val characterOffset = latestRestoreTarget?.characterOffset
        if (characterOffset == null && currentProgression == null) return null
        return ReaderWebViewRestoreTarget(
            sectionIndex = latestRestoreTarget?.sectionIndex?.takeIf { characterOffset != null },
            characterOffset = characterOffset,
            progression = currentProgression
        )
    }

    fun onScrollChanged(isPagedMode: Boolean) {
        if (isPagedMode || pendingRestoreTarget != null) return
        schedulePositionCapture()
    }

    fun schedulePositionCapture() {
        captureRunnable?.let(removeCallbacks)
        captureRunnable = Runnable {
            captureRunnable = null
            executeCapture()
        }.also { postDelayed(it, debounceMillis) }
    }

    fun executeCapture(currentProgression: Double? = null) {
        if (pendingRestoreTarget != null) return
        val anchor = restoreAnchor
        evaluateJavascript(readerCaptureFreeScrollPositionJs(currentProgression, anchor)) { rawValue ->
            val target = ReaderWebViewProtocolCodec.decodeRestoreTarget(rawValue)
                ?.normalizedFreeScrollTarget()
                ?: currentProgression?.let { ReaderWebViewRestoreTarget(progression = it) }
                ?: return@evaluateJavascript
            if (anchor != null && target.characterOffset != anchor.characterOffset) restoreAnchor = null
            latestRestoreTarget = target
            onPositionChanged(target)
        }
    }

    fun markRestoreCompleted(target: ReaderWebViewRestoreTarget? = null) {
        pendingRestoreTarget = null
        restoreAnchor = target?.takeIf { it.characterOffset != null && it.sectionIndex != null }
    }

    fun reset() {
        pendingRestoreTarget = null
        restoreAnchor = null
        captureRunnable?.let(removeCallbacks)
        captureRunnable = null
    }

    fun stop() {
        captureRunnable?.let(removeCallbacks)
        captureRunnable = null
    }
}
