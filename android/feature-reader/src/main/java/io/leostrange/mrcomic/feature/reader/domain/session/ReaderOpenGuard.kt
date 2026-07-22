package io.leostrange.mrcomic.feature.reader.domain.session

import java.util.concurrent.atomic.AtomicLong

/**
 * Monotonically increasing token that guards against stale results after
 * a quick sequence of book-open requests.
 *
 * Every call to [nextToken] increments the counter.  Suspended work
 * captures the token at launch time and checks [isCurrent] after each
 * yield point; if the token no longer matches, the stale coroutine
 * exits early without mutating shared state.
 */
internal class ReaderOpenGuard {
    private val currentToken = AtomicLong(0L)

    /** Advance the counter and return the new token. */
    fun nextToken(): Long = currentToken.incrementAndGet()

    /** `true` when [token] matches the most recently issued token. */
    fun isCurrent(token: Long): Boolean = token == currentToken.get()
}
