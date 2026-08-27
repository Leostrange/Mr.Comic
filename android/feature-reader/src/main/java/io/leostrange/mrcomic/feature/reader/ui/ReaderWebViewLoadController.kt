package io.leostrange.mrcomic.feature.reader.ui

/**
 * ARC-11 slice 1: WebView lifecycle / reload / scroll-restoration controller.
 *
 * Owns the single in-flight load for a reader WebView so the UI layer only
 * has to ask one place "should I rebuild the page source", "did the requested
 * load land" and "may I restore the previous scroll position for this token".
 *
 * The controller is intentionally UI-/Compose-/Android-free: it depends only
 * on Kotlin stdlib so unit tests can exercise every branch without
 * Robolectric or instrumentation. Splits on a single page are kept opaque to
 * the controller via [loadToken], which the caller mints.
 *
 * @see ReaderWebtoonRestorePolicy for the sibling policy that decides
 *   whether a stitched webtoon section is still current.
 */
internal class ReaderWebViewLoadController {

    private var previousReloadKey: String? = null
    private var activeLoadToken: String? = null
    private var latestCommittedToken: String? = null

    var runtimeState: ReaderWebViewRuntimeState = ReaderWebViewRuntimeState()
        private set

    /**
     * Advances the generation-aware runtime state machine and returns Android
     * effects for the UI layer to execute. Events for stale generations are
     * deliberately ignored; the instrumentation probe still records them.
     */
    fun dispatch(event: ReaderWebViewRuntimeEvent): List<ReaderWebViewRuntimeEffect> {
        if (runtimeState.phase == ReaderWebViewRuntimePhase.DISPOSED) return emptyList()
        return when (event) {
            is ReaderWebViewRuntimeEvent.LoadRequested -> handleLoadRequested(event)
            is ReaderWebViewRuntimeEvent.DocumentCommitted -> handleCommitted(event.generation)
            is ReaderWebViewRuntimeEvent.LayoutReady -> handleLayoutReady(event)
            is ReaderWebViewRuntimeEvent.RestoreAcknowledged -> handleRestoreAcknowledged(event.generation)
            is ReaderWebViewRuntimeEvent.RestoreRejected -> handleRestoreRejected(event.generation)
            is ReaderWebViewRuntimeEvent.LoadFailed -> handleFailure(event.generation, event.reason.ifBlank { "load failed" })
            is ReaderWebViewRuntimeEvent.ContentBlank -> handleFailure(event.generation, blankReason())
            ReaderWebViewRuntimeEvent.Disposed -> {
                runtimeState = ReaderWebViewRuntimeState(phase = ReaderWebViewRuntimePhase.DISPOSED)
                emptyList()
            }
        }
    }

    private fun handleLoadRequested(
        event: ReaderWebViewRuntimeEvent.LoadRequested
    ): List<ReaderWebViewRuntimeEffect> {
        if (event.documentIdentity.isBlank() || event.generation <= 0L) return emptyList()
        if (
            event.generation == runtimeState.generation &&
            event.documentIdentity == runtimeState.documentIdentity
        ) {
            return emptyList()
        }
        if (runtimeState.generation > 0L && event.generation <= runtimeState.generation) return emptyList()

        runtimeState = ReaderWebViewRuntimeState(
            phase = ReaderWebViewRuntimePhase.LOADING,
            documentIdentity = event.documentIdentity,
            generation = event.generation,
            loadAttempt = PRIMARY_LOAD_ATTEMPT,
            restoreTarget = event.restoreTarget
        )
        return listOf(
            ReaderWebViewRuntimeEffect.LoadDocument(
                generation = event.generation,
                attempt = PRIMARY_LOAD_ATTEMPT,
                fallback = false
            )
        )
    }

    private fun handleCommitted(generation: Long): List<ReaderWebViewRuntimeEffect> {
        if (!isActive(generation) || runtimeState.committed) return emptyList()
        runtimeState = runtimeState.copy(
            phase = ReaderWebViewRuntimePhase.COMMITTED,
            committed = true
        )
        return advanceAfterReadiness()
    }

    private fun handleLayoutReady(
        event: ReaderWebViewRuntimeEvent.LayoutReady
    ): List<ReaderWebViewRuntimeEffect> {
        if (!isActive(event.generation) || runtimeState.layoutMetrics != null) return emptyList()
        runtimeState = runtimeState.copy(
            phase = ReaderWebViewRuntimePhase.LAYOUT_READY,
            layoutMetrics = event.metrics
        )
        return advanceAfterReadiness()
    }

    private fun advanceAfterReadiness(): List<ReaderWebViewRuntimeEffect> {
        val metrics = runtimeState.layoutMetrics ?: return emptyList()
        if (!runtimeState.committed) return emptyList()
        val restoreTarget = runtimeState.restoreTarget
        if (restoreTarget != null) {
            if (runtimeState.restoreIssued) return emptyList()
            runtimeState = runtimeState.copy(
                phase = ReaderWebViewRuntimePhase.RESTORING,
                restoreIssued = true,
                restoreAttempt = FIRST_RESTORE_ATTEMPT
            )
            return listOf(
                ReaderWebViewRuntimeEffect.Restore(
                    runtimeState.generation,
                    restoreTarget,
                    FIRST_RESTORE_ATTEMPT
                )
            )
        }
        if (runtimeState.phase == ReaderWebViewRuntimePhase.READY) return emptyList()
        runtimeState = runtimeState.copy(phase = ReaderWebViewRuntimePhase.READY)
        return listOf(ReaderWebViewRuntimeEffect.PublishReady(runtimeState.generation, metrics))
    }

    private fun handleRestoreAcknowledged(generation: Long): List<ReaderWebViewRuntimeEffect> {
        if (!isActive(generation) || runtimeState.phase != ReaderWebViewRuntimePhase.RESTORING) {
            return emptyList()
        }
        val metrics = runtimeState.layoutMetrics ?: return emptyList()
        runtimeState = runtimeState.copy(phase = ReaderWebViewRuntimePhase.READY)
        return listOf(ReaderWebViewRuntimeEffect.PublishReady(generation, metrics))
    }

    private fun handleRestoreRejected(generation: Long): List<ReaderWebViewRuntimeEffect> {
        if (!isActive(generation) || runtimeState.phase != ReaderWebViewRuntimePhase.RESTORING) {
            return emptyList()
        }
        val target = runtimeState.restoreTarget ?: return emptyList()
        if (runtimeState.restoreAttempt >= MAX_RESTORE_ATTEMPTS) {
            val metrics = runtimeState.layoutMetrics ?: return emptyList()
            runtimeState = runtimeState.copy(
                phase = ReaderWebViewRuntimePhase.READY,
                error = "restore target unavailable"
            )
            return listOf(ReaderWebViewRuntimeEffect.PublishReady(generation, metrics))
        }
        val nextAttempt = runtimeState.restoreAttempt + 1
        runtimeState = runtimeState.copy(restoreAttempt = nextAttempt)
        return listOf(ReaderWebViewRuntimeEffect.Restore(generation, target, nextAttempt))
    }

    private fun handleFailure(
        generation: Long,
        reason: String
    ): List<ReaderWebViewRuntimeEffect> {
        if (!isActive(generation)) return emptyList()
        if (runtimeState.loadAttempt < FALLBACK_LOAD_ATTEMPT) {
            runtimeState = runtimeState.copy(
                phase = ReaderWebViewRuntimePhase.LOADING,
                loadAttempt = FALLBACK_LOAD_ATTEMPT,
                committed = false,
                layoutMetrics = null,
                restoreIssued = false,
                restoreAttempt = 0,
                error = reason
            )
            return listOf(
                ReaderWebViewRuntimeEffect.LoadDocument(
                    generation = generation,
                    attempt = FALLBACK_LOAD_ATTEMPT,
                    fallback = true
                )
            )
        }
        runtimeState = runtimeState.copy(
            phase = ReaderWebViewRuntimePhase.TERMINAL_ERROR,
            error = reason
        )
        return listOf(ReaderWebViewRuntimeEffect.ShowTerminalError(generation, reason))
    }

    private fun blankReason(): String =
        if (runtimeState.loadAttempt >= FALLBACK_LOAD_ATTEMPT) "fallback blank" else "content blank"

    private fun isActive(generation: Long): Boolean =
        generation > 0L && generation == runtimeState.generation &&
            runtimeState.phase in setOf(
                ReaderWebViewRuntimePhase.LOADING,
                ReaderWebViewRuntimePhase.COMMITTED,
                ReaderWebViewRuntimePhase.LAYOUT_READY,
                ReaderWebViewRuntimePhase.RESTORING
            )

    /**
     * Decide whether the page source must be rebuilt because the input that
     * drives it (HTML body, resolved base URL, cache dir) actually changed.
     *
     * First load ([currentKey] is null) and any structural change to the
     * reload key returned by [readerHtmlPageSourceReloadKey] force a rebuild.
     * The check mirrors [readerHtmlPageSourceReloadKey]'s joinAndHash: two
     * keys are equal iff every one of `length`, `hashCode`, `resolvedBaseUrl`,
     * `cacheDirPath` is the same.
     */
    fun shouldRebuildSource(currentKey: String?): Boolean {
        val previous = previousReloadKey ?: return true
        return previous != currentKey
    }

    /**
     * Record a request for a new WebView load. [token] is the caller's per-load
     * identity (for example the `loadToken` field of [ReaderHtmlPageSource]).
     * Passing the same token twice is a no-op; passing a new one cancels the
     * previous request — scroll restoration for the older token will be
     * denied even if it eventually commits.
     */
    fun markLoadRequested(token: String, key: String? = null) {
        if (token.isBlank()) return
        if (key != null) previousReloadKey = key
        if (token == activeLoadToken) return
        activeLoadToken = token
    }

    /**
     * Mark [token] as having finished loading inside the WebView. The
     * caller is expected to only call this once per load attempt; subsequent
     * calls for the already-committed token are no-ops.
     */
    fun markLoadCommitted(token: String) {
        if (token.isBlank() || token != activeLoadToken) return
        latestCommittedToken = token
    }

    /**
     * True iff [token] matches the currently active load AND that load has
     * committed. Use this to gate any side effect that should not fire if
     * the WebView has been reloaded under the calling code's feet.
     */
    fun shouldRestoreScroll(token: String): Boolean =
        token == activeLoadToken && token == latestCommittedToken

    /**
     * Drop all state. Call before opening a different document or when the
     * reader screen is destroyed; otherwise a stale token can pass
     * [shouldRestoreScroll] for the next book.
     */
    fun clear() {
        previousReloadKey = null
        activeLoadToken = null
        latestCommittedToken = null
        runtimeState = ReaderWebViewRuntimeState()
    }

    private companion object {
        const val PRIMARY_LOAD_ATTEMPT = 1
        const val FALLBACK_LOAD_ATTEMPT = 2
        const val FIRST_RESTORE_ATTEMPT = 1
        const val MAX_RESTORE_ATTEMPTS = 5
    }
}
