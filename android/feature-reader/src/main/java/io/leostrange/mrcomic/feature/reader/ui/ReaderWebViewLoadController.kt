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
    }
}
