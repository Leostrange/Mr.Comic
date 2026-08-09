package io.leostrange.mrcomic.feature.reader.ui

/** Pure state machine for WebView source rebuilds and scroll restoration. */
internal class ReaderWebViewLoadController {
    private var previousReloadKey: String? = null
    private var activeLoadToken: String? = null
    private var latestCommittedToken: String? = null

    fun shouldRebuildSource(currentKey: String?): Boolean {
        val previous = previousReloadKey ?: return true
        return previous != currentKey
    }

    fun markLoadRequested(token: String, key: String? = null) {
        if (key != null) previousReloadKey = key
        if (token == activeLoadToken) return
        activeLoadToken = token
    }

    fun markLoadCommitted(token: String) {
        latestCommittedToken = token
    }

    fun shouldRestoreScroll(token: String): Boolean =
        token == activeLoadToken && token == latestCommittedToken

    fun clear() {
        previousReloadKey = null
        activeLoadToken = null
        latestCommittedToken = null
    }
}
