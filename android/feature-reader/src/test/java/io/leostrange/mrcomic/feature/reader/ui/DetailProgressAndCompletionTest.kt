package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

/**
 * TEST-11: progress display across every format.
 *
 * The reader showed two regressions:
 *   1) EPUB progress drifted: the chapter-aware absolute coordinate was
 *      wrong because the simple estimate used the first visited section's
 *      count for all unvisited sections.
 *   2) Non-EPUB formats sometimes persisted a "completed" mark while the
 *      reader was still on a blank "Failed to render page 1" surface and
 *      had zero manual page turns.
 *
 * Both regressions are pinned here:
 *   * EpubProgressCalculator must return a stable ordering-invariant
 *     estimate regardless of map insertion order,
 *   * EpubProgressCalculator must never regress to the first-only heuristic,
 *   * ReaderProgressPolicy.pageForPersistence must switch between EPUB
 *     absolute pages and reader-global pages for every non-EPUB format,
 *   * ReaderProgressPolicy.shouldComplete must refuse to mark a book as
 *     done if there have been zero manual page turns (the user opened the
 *     book, the spinner never stopped, etc.).
 */
class DetailProgressAndCompletionTest {

    // ── EpubProgressCalculator invariants ────────────────────────────

    @Test
    fun epubStableEstimateIsOrderingInvariant() {
        val firstLoaded = linkedMapOf(6 to 4, 0 to 2)
        val reverseLoaded = linkedMapOf(0 to 2, 6 to 4)

        val first = EpubProgressCalculator.accumulate(
            sectionPageCounts = firstLoaded,
            sectionIndex = 6,
            sectionPageIndex = 1,
            totalSections = 10
        )
        val reversed = EpubProgressCalculator.accumulate(
            sectionPageCounts = reverseLoaded,
            sectionIndex = 6,
            sectionPageIndex = 1,
            totalSections = 10
        )

        assertEquals(first, reversed)
    }

    @Test
    fun epubStableEstimateUsesAverageNotFirstOnlyHeuristic() {
        // The old "use the first visited section" heuristic gave:
        //   visitedTotal(6) + 2 * unvisited(8) = 22 pages total.
        // The average-of-visited estimator gives:
        //   visitedTotal(2+4=6 from the two visited) + 3 * 8 = 30 pages total.
        // The progress display must use the average-based estimate so the
        // progress bar doesn't lie when one early chapter has a low count.
        val result = EpubProgressCalculator.accumulate(
            sectionPageCounts = linkedMapOf(0 to 2, 6 to 4),
            sectionIndex = 6,
            sectionPageIndex = 1,
            totalSections = 10
        )

        assertEquals(30, result.accumulatedTotalPages)
    }

    @Test
    fun epubRejectsEmptyMapForTotalButKeepsAtLeastOne() {
        assertEquals(
            0,
            EpubProgressCalculator.estimatedTotalPages(emptyMap(), totalSections = 5)
        )
    }

    @Test
    fun epubStandardSectionTotalFromThreeSections() {
        // (2 + 5 + 3) = 10 measured pages, but totalSections = 3, so total = sum.
        val result = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 2, 1 to 5, 2 to 3),
            sectionIndex = 2,
            sectionPageIndex = 1,
            totalSections = 3
        )
        assertEquals(10, result.accumulatedTotalPages)
        assertEquals(8, result.accumulatedCurrentPage)
    }

    @Test
    fun epubCurrentPageNeverExceedsTotalPage() {
        val result = EpubProgressCalculator.accumulate(
            sectionPageCounts = mapOf(0 to 1, 1 to 1, 2 to 1),
            sectionIndex = 2,
            sectionPageIndex = 0,
            totalSections = 3
        )
        assertTrue(
            "Current page must not exceed total pages",
            result.accumulatedCurrentPage <= result.accumulatedTotalPages
        )
    }

    // ── ReaderProgressPolicy persistence ───────────────────────────────

    @Test
    fun epubPersistsAbsolutePageCoordinate() {
        // EPUB uses the absolute (chapter-aware) coordinate so restarts return
        // to the same spine position, not the reader's local sub-page.
        assertEquals(
            73,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.EPUB,
                readerPage = 3,
                epubAbsolutePage = 73
            )
        )
    }

    @Test
    fun fb2PersistsReaderGlobalPage() {
        // Any non-EPUB text format uses the reader-global page.
        assertEquals(
            12,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.FB2,
                readerPage = 12,
                epubAbsolutePage = 9999
            )
        )
    }

    @Test
    fun pdfPersistsReaderGlobalPage() {
        assertEquals(
            5,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.PDF,
                readerPage = 5,
                epubAbsolutePage = 9999
            )
        )
    }

    @Test
    fun cbzPersistsReaderGlobalPage() {
        assertEquals(
            27,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.CBZ,
                readerPage = 27,
                epubAbsolutePage = 9999
            )
        )
    }

    @Test
    fun djvuPersistsReaderGlobalPage() {
        assertEquals(
            1,
            ReaderProgressPolicy.pageForPersistence(
                format = ComicFormat.DJVU,
                readerPage = 1,
                epubAbsolutePage = 9999
            )
        )
    }

    @Test
    fun mobiMarkdownTextPersistReaderGlobalPage() {
        for (format in listOf(ComicFormat.MOBI, ComicFormat.MARKDOWN, ComicFormat.TXT, ComicFormat.RTF, ComicFormat.DOCX)) {
            assertEquals(
                "Every non-EPUB text format must ignore the EPUB absolute coord",
                4,
                ReaderProgressPolicy.pageForPersistence(
                    format = format,
                    readerPage = 4,
                    epubAbsolutePage = 9999
                )
            )
        }
    }

    // ── shouldPersist: EPUB needs ≥2 paginated sections before saving ──

    @Test
    fun epubDoesNotPersistUntilAtLeastTwoSectionsArePaginated() {
        assertFalse(
            "EPUB with ≤1 paginated section is unsafe to persist",
            ReaderProgressPolicy.shouldPersist(
                totalPages = 50,
                isHeavyReflowable = true,
                isEpub = true,
                epubAccumulatedPages = 0,
                paginatedSectionCount = 1
            )
        )
        assertTrue(
            "EPUB with ≥2 paginated sections and accumulated pages must persist",
            ReaderProgressPolicy.shouldPersist(
                totalPages = 50,
                isHeavyReflowable = true,
                isEpub = true,
                epubAccumulatedPages = 1,
                paginatedSectionCount = 2
            )
        )
    }

    @Test
    fun epubDoesNotPersistBeforeAnyAccumulatedPages() {
        assertFalse(
            "EPUB with 0 accumulated pages must not persist (would mark the book as started at coord 0)",
            ReaderProgressPolicy.shouldPersist(
                totalPages = 50,
                isHeavyReflowable = true,
                isEpub = true,
                epubAccumulatedPages = 0,
                paginatedSectionCount = 3
            )
        )
    }

    @Test
    fun nonEpubWithoutMultiplePagesMayStillPersistIfNotHeavyReflowable() {
        // A one-page comic (single image) is fine to persist at page 0.
        assertTrue(
            "Non-EPUB single-page books persist at first visit",
            ReaderProgressPolicy.shouldPersist(
                totalPages = 1,
                isHeavyReflowable = false,
                isEpub = false,
                epubAccumulatedPages = 0,
                paginatedSectionCount = 0
            )
        )
    }

    // ── shouldComplete: refuse to complete a book that's only been opened ─

    @Test
    fun doNotCompleteBeforeManualPageTurn() {
        // A user opened a book and immediately scrolled to the last page
        // (e.g. via TOC). Without any manual page turn the reader must not
        // silently mark the book as read.
        assertFalse(
            "shouldComplete must refuse if the user has not turned any page yet",
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
