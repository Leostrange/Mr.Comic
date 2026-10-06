package io.leostrange.mrcomic.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-11: progress persistence and completion guards across formats.
 *
 * Non-EPUB formats sometimes persisted a "completed" mark while the reader was still on a blank
 * "Failed to render page 1" surface and had zero manual page turns.
 * ReaderProgressPolicy.shouldComplete must refuse to mark a book as done in that case.
 */
class DetailProgressAndCompletionTest {

    // ── shouldPersist ─────────────────────────────────────────────────

    @Test
    fun singlePageBookPersistsUnlessHeavyReflowable() {
        // A one-page comic (single image) is fine to persist at page 0.
        assertTrue(ReaderProgressPolicy.shouldPersist(totalPages = 1, isHeavyReflowable = false))
        // A heavy reflowable book still on its provisional one-page model must wait.
        assertFalse(ReaderProgressPolicy.shouldPersist(totalPages = 1, isHeavyReflowable = true))
    }

    // ── shouldComplete: refuse to complete a book that's only been opened ─

    @Test
    fun completeWhenReadingProgressCountsEvenWithoutExplicitManualTurns() {
        // When the navigation source counts toward reading progress (e.g.
        // the reader turned pages as part of normal reading), a zero manual-page
        // turn count is still a valid completion and must not be blocked.
        // Pure "open-and-jump-to-last-page-via-TOC" navigations never set
        // countsTowardReadingProgress=true, so the guard is the navigation
        // source, not the manual turn counter.
        assertTrue(
            "shouldComplete must allow completion when countsTowardReadingProgress is true",
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 0
            )
        )
    }

    @Test
    fun doNotCompleteIfAlreadyCompleted() {
        // Idempotent: re-opening must not re-fire completion.
        assertFalse(
            "shouldComplete must refuse if alreadyCompleted is true",
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = true,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 3
            )
        )
    }

    @Test
    fun doNotCompleteIfComicIdChangedMidRender() {
        // Stale completion event: comicId no longer matches the open comic.
        assertFalse(
            "shouldComplete must refuse if currentComicIdMatches is false",
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = false,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 5
            )
        )
    }

    @Test
    fun doNotCompleteOnLastPageIfUserHasNotReachedIt() {
        assertFalse(
            "shouldComplete must refuse if reachedLastPage is false",
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = false,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 5
            )
        )
    }

    @Test
    fun completeOnlyWhenAllGuardsHold() {
        // The exact happy path: last page, correct comic, not already done,
        // counts toward progress, at least one manual page turn.
        assertTrue(
            "shouldComplete must fire when every guard holds",
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 1
            )
        )
    }
}
