package io.leostrange.mrcomic.feature.library

import kotlin.math.abs

/**
 * 4.2 (slice 3): pure decision rules extracted from AudiobookPlayerViewModel.
 *
 * The ViewModel keeps the MediaController plumbing; every branch that can be
 * reasoned about in isolation (when to persist, how to clamp chapter/seek
 * targets, sleep-timer math) lives here and is unit-tested without Android.
 */
internal object AudiobookPlayerPolicy {

    /** Minimum position delta (ms) that makes a same-chapter progress worth persisting. */
    const val PROGRESS_PERSIST_THRESHOLD_MS = 5_000L

    /** Speed range enforced when resuming a stored audiobook. */
    const val MIN_SPEED = 0.75f
    const val MAX_SPEED = 2.5f

    /**
     * True when progress should be persisted: forced, or the chapter changed,
     * or the position moved at least [PROGRESS_PERSIST_THRESHOLD_MS] within
     * the same chapter.
     */
    fun shouldPersistProgress(
        force: Boolean,
        lastPersistedChapterIndex: Int?,
        lastPersistedPositionMs: Long,
        currentChapterIndex: Int,
        currentPositionMs: Long,
    ): Boolean {
        if (force) return true
        val sameChapter = lastPersistedChapterIndex == currentChapterIndex
        val movedEnough = abs(currentPositionMs - lastPersistedPositionMs) >= PROGRESS_PERSIST_THRESHOLD_MS
        return !sameChapter || movedEnough
    }

    /** Previous chapter index, clamped to the first chapter. */
    fun previousChapterIndex(currentIndex: Int): Int = (currentIndex - 1).coerceAtLeast(0)

    /** Next chapter index, clamped to the last chapter (never below 0). */
    fun nextChapterIndex(currentIndex: Int, chapterCount: Int): Int =
        (currentIndex + 1).coerceAtMost((chapterCount - 1).coerceAtLeast(0))

    /** Start chapter when opening an audiobook, clamped to a valid item index. */
    fun startChapterIndex(lastChapterIndex: Int, itemCount: Int): Int =
        lastChapterIndex.coerceIn(0, (itemCount - 1).coerceAtLeast(0))

    /** Seek target for a relative delta, clamped to [0, duration] when known. */
    fun seekTarget(currentPositionMs: Long, deltaMs: Long, durationMs: Long): Long {
        val candidate = (currentPositionMs + deltaMs).coerceAtLeast(0L)
        return if (durationMs > 0L) candidate.coerceAtMost(durationMs) else candidate
    }

    /** Clamp a playback speed to the supported range. */
    fun clampSpeed(speed: Float): Float = speed.coerceIn(MIN_SPEED, MAX_SPEED)

    /**
     * Remaining sleep-timer time in ms, or null when the timer is unset or
     * already expired.
     */
    fun sleepTimerRemaining(endAtMs: Long?, nowMs: Long): Long? =
        endAtMs?.let { end -> (end - nowMs).takeIf { it > 0L } }
}
