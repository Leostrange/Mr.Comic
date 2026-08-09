package io.leostrange.mrcomic.feature.library

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class AudiobookPlayerPolicyTest {

    // --- progress persistence ---

    @Test
    fun forceAlwaysPersists() {
        assertTrue(
            AudiobookPlayerPolicy.shouldPersistProgress(
                force = true,
                lastPersistedChapterIndex = 1,
                lastPersistedPositionMs = 1_000L,
                currentChapterIndex = 1,
                currentPositionMs = 1_050L
            )
        )
    }

    @Test
    fun chapterChangePersistsWithoutThreshold() {
        assertTrue(
            AudiobookPlayerPolicy.shouldPersistProgress(
                force = false,
                lastPersistedChapterIndex = 0,
                lastPersistedPositionMs = 1_000L,
                currentChapterIndex = 1,
                currentPositionMs = 1_050L
            )
        )
    }

    @Test
    fun sameChapterSmallMoveDoesNotPersist() {
        assertFalse(
            AudiobookPlayerPolicy.shouldPersistProgress(
                force = false,
                lastPersistedChapterIndex = 2,
                lastPersistedPositionMs = 10_000L,
                currentChapterIndex = 2,
                currentPositionMs = 14_999L
            )
        )
    }

    @Test
    fun sameChapterBigMovePersists() {
        assertTrue(
            AudiobookPlayerPolicy.shouldPersistProgress(
                force = false,
                lastPersistedChapterIndex = 2,
                lastPersistedPositionMs = 10_000L,
                currentChapterIndex = 2,
                currentPositionMs = 15_000L
            )
        )
    }

    @Test
    fun firstPersistWithoutPriorChapterPersists() {
        assertTrue(
            AudiobookPlayerPolicy.shouldPersistProgress(
                force = false,
                lastPersistedChapterIndex = null,
                lastPersistedPositionMs = -1L,
                currentChapterIndex = 0,
                currentPositionMs = 0L
            )
        )
    }

    // --- chapter navigation ---

    @Test
    fun previousChapterClampsAtFirst() {
        assertEquals(0, AudiobookPlayerPolicy.previousChapterIndex(0))
        assertEquals(2, AudiobookPlayerPolicy.previousChapterIndex(3))
    }

    @Test
    fun nextChapterClampsAtLastAndHandlesEmpty() {
        assertEquals(1, AudiobookPlayerPolicy.nextChapterIndex(0, chapterCount = 4))
        assertEquals(3, AudiobookPlayerPolicy.nextChapterIndex(3, chapterCount = 4))
        assertEquals(0, AudiobookPlayerPolicy.nextChapterIndex(0, chapterCount = 0))
    }

    @Test
    fun startChapterIndexClampsToValidItem() {
        assertEquals(0, AudiobookPlayerPolicy.startChapterIndex(-5, itemCount = 3))
        assertEquals(2, AudiobookPlayerPolicy.startChapterIndex(2, itemCount = 3))
        assertEquals(2, AudiobookPlayerPolicy.startChapterIndex(99, itemCount = 3))
        assertEquals(0, AudiobookPlayerPolicy.startChapterIndex(3, itemCount = 0))
    }

    // --- seek / speed ---

    @Test
    fun seekTargetClampsToZeroAndDuration() {
        assertEquals(0L, AudiobookPlayerPolicy.seekTarget(1_000L, -5_000L, durationMs = 60_000L))
        assertEquals(60_000L, AudiobookPlayerPolicy.seekTarget(55_000L, 10_000L, durationMs = 60_000L))
        assertEquals(65_000L, AudiobookPlayerPolicy.seekTarget(55_000L, 10_000L, durationMs = 0L))
    }

    @Test
    fun clampSpeedStaysWithinRange() {
        assertEquals(0.75f, AudiobookPlayerPolicy.clampSpeed(0.1f))
        assertEquals(2.5f, AudiobookPlayerPolicy.clampSpeed(9f))
        assertEquals(1.5f, AudiobookPlayerPolicy.clampSpeed(1.5f))
    }

    // --- sleep timer ---

    @Test
    fun sleepTimerRemainingCountsDownAndExpires() {
        assertEquals(5_000L, AudiobookPlayerPolicy.sleepTimerRemaining(endAtMs = 105_000L, nowMs = 100_000L))
        assertNull(AudiobookPlayerPolicy.sleepTimerRemaining(endAtMs = 100_000L, nowMs = 100_000L))
        assertNull(AudiobookPlayerPolicy.sleepTimerRemaining(endAtMs = 99_000L, nowMs = 100_000L))
        assertNull(AudiobookPlayerPolicy.sleepTimerRemaining(endAtMs = null, nowMs = 100_000L))
    }
}
