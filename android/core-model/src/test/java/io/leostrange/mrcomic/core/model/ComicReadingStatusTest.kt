package io.leostrange.mrcomic.core.model

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ComicReadingStatusTest {

    @Test
    fun readingProgressForPage_keepsFirstPageUnreadAndCompletesOnlyAtLastPage() {
        assertEquals(0f, readingProgressForPage(currentPage = 0, pageCount = 1))
        assertEquals(0f, readingProgressForPage(currentPage = 0, pageCount = 100))
        assertEquals(0.5f, readingProgressForPage(currentPage = 50, pageCount = 101))
        assertEquals(1f, readingProgressForPage(currentPage = 99, pageCount = 100))
    }

    @Test
    fun displayReadingProgress_hidesLegacyFullProgressForUnreadBook() {
        assertEquals(
            0f,
            Comic(pageCount = 1, currentPage = 0, readingProgress = 1f).displayReadingProgress()
        )
        assertEquals(
            1f,
            Comic(pageCount = 100, currentPage = 99, lastReadDate = 123L).displayReadingProgress()
        )
    }

    @Test
    fun unreadSinglePageBookStaysNew() {
        val comic = Comic(pageCount = 1, currentPage = 0, readingProgress = 0f, lastReadDate = null)

        assertEquals(ComicReadingStatus.NEW, comic.readingStatus())
        assertFalse(comic.isReadCompleted())
        assertFalse(comic.isReadingInProgress())
    }

    @Test
    fun unreadFirstPageOfMultipageBookStaysNew() {
        val comic = Comic(pageCount = 100, currentPage = 0, readingProgress = 0f, lastReadDate = null)

        assertEquals(ComicReadingStatus.NEW, comic.readingStatus())
    }

    @Test
    fun lastPageIndexWithoutConfirmedEndIsStillReading() {
        // Being parked on the final page index is not a confirmed completion:
        // a crash or a text book left on its last section can set currentPage to
        // the last index while progress is far from 100%.
        val comic = Comic(
            pageCount = 100,
            currentPage = 99,
            readingProgress = 0.75f,
            lastReadDate = 123L
        )

        assertFalse(comic.isReadCompleted())
        assertTrue(comic.isReadingInProgress())
    }

    @Test
    fun lastPageWithConfirmedFullProgressIsCompleted() {
        val comic = Comic(
            pageCount = 100,
            currentPage = 99,
            readingProgress = 1f,
            lastReadDate = 123L
        )

        assertTrue(comic.isReadCompleted())
    }

    @Test
    fun explicitCompletedFlagCompletesWithoutProgress() {
        val comic = Comic(
            pageCount = 100,
            currentPage = 5,
            readingProgress = 0.1f,
            isCompleted = true
        )

        assertTrue(comic.isReadCompleted())
    }

    @Test
    fun explicitProgressStillCompletesSinglePageBook() {
        val comic = Comic(pageCount = 1, currentPage = 0, readingProgress = 1f, lastReadDate = 123L)

        assertTrue(comic.isReadCompleted())
    }

    @Test
    fun rtfSingleSectionBookDoesNotFalseCompleteWhenOpened() {
        val rtfOpened = Comic(
            format = ComicFormat.RTF,
            pageCount = 1,
            currentPage = 0,
            readingProgress = 1f,
            lastReadDate = 123L
        )
        assertFalse(rtfOpened.isReadCompleted())
        assertTrue(rtfOpened.isReadingInProgress())
        assertEquals(0f, rtfOpened.displayReadingProgress())

        val rtfWithEndLocator = Comic(
            format = ComicFormat.RTF,
            pageCount = 1,
            currentPage = 0,
            readingProgress = 1f,
            lastReadDate = 123L,
            readerLocatorProgression = 0.995
        )
        assertTrue(rtfWithEndLocator.isReadCompleted())
    }

    @Test
    fun placeholderFullProgressWithoutAnyReadingSignalStaysNew() {
        val comic = Comic(pageCount = 1, currentPage = 0, readingProgress = 1f, lastReadDate = null)

        assertEquals(ComicReadingStatus.NEW, comic.readingStatus())
        assertFalse(comic.isReadCompleted())
    }

    // ── BUG-READER-04: displayReadingProgress() consistency ──

    @Test
    fun displayReadingProgress_completedBookAlwaysReturnsOne() {
        // Explicit isCompleted must always yield 1f regardless of page values.
        val comic = Comic(pageCount = 100, currentPage = 0, isCompleted = true)
        assertEquals(1f, comic.displayReadingProgress())
    }

    @Test
    fun displayReadingProgress_readingBookDerivesFromPageCount() {
        // Canonical progress is always derived from currentPage/pageCount when pageCount > 1.
        val comic = Comic(pageCount = 200, currentPage = 100, lastReadDate = 123L)
        // readingProgressForPage(100, 200) = 100 / 199 ≈ 0.5025
        assertEquals(0.5025f, comic.displayReadingProgress(), 0.001f)
    }

    @Test
    fun displayReadingProgress_ignoresStoredProgressWhenPageCountKnown() {
        // Even if stored readingProgress is stale/wrong, pageCount-based calculation wins.
        val comic = Comic(pageCount = 100, currentPage = 50, readingProgress = 0.99f, lastReadDate = 123L)
        val progress = comic.displayReadingProgress()
        // readingProgressForPage(50, 100) = 50/99 ≈ 0.505
        assertEquals(0.505f, progress, 0.001f)
    }

    @Test
    fun displayReadingProgress_fallsBackToStoredProgressWhenPageCountZero() {
        // Legacy records with pageCount=0 use stored readingProgress as fallback.
        val comic = Comic(pageCount = 0, currentPage = 0, readingProgress = 0.45f, lastReadDate = 123L)
        assertEquals(0.45f, comic.displayReadingProgress(), 0.001f)
    }

    @Test
    fun displayReadingProgress_staleFullProgressWithUnknownPageCountShowsZero() {
        // RTF/EPUB with pageCount=0 and readingProgress=1.0 (stale) but no reader locator
        // must display 0 %, not 100 %.
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 0,
            currentPage = 0,
            readingProgress = 1f,
            lastReadDate = 123L,
        )
        assertEquals(0f, comic.displayReadingProgress(), 0.001f)
    }

    @Test
    fun displayReadingProgress_nonStaleProgressWithUnknownPageCountStillFallsBack() {
        // Genuine partial progress (< 1.0) with unresolved page count should be preserved.
        val comic = Comic(pageCount = 0, currentPage = 0, readingProgress = 0.3f, lastReadDate = 123L)
        assertEquals(0.3f, comic.displayReadingProgress(), 0.001f)
    }

    @Test
    fun displayReadingProgress_newBookReturnsZero() {
        val comic = Comic(pageCount = 100, currentPage = 0, lastReadDate = null)
        assertEquals(0f, comic.displayReadingProgress())
    }

    @Test
    fun staleKnownPageCountProgressDoesNotMarkRtfAsRead() {
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 370,
            currentPage = 0,
            readingProgress = 1f,
            lastReadDate = 123L,
        )

        assertEquals(ComicReadingStatus.READING, comic.readingStatus())
        assertEquals(0f, comic.displayReadingProgress())
    }

    @Test
    fun rtfIsCompletedOnlyOnLastConfirmedPage() {
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 370,
            currentPage = 369,
            readingProgress = 1f,
            lastReadDate = 123L,
        )

        assertEquals(ComicReadingStatus.COMPLETED, comic.readingStatus())
        assertEquals(1f, comic.displayReadingProgress())
    }

    // ── BUG-B3: reflowable with unresolved pageCount must not fake 100% ──

    @Test
    fun rtfWithUnresolvedPageCountAndStaleProgressIsNotCompleted() {
        // RTF opened once (lastReadDate set) but never actually read:
        // pageCount=0 (not yet paginated), readingProgress=1.0 (stale legacy),
        // currentPage=0, locator=null → must NOT be COMPLETED.
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 0,
            currentPage = 0,
            readingProgress = 1.0f,
            lastReadDate = 123L,
        )

        assertEquals(ComicReadingStatus.READING, comic.readingStatus())
        // Stale full-progress without a real reader locator → display shows 0 %, not 100 %.
        assertEquals(0f, comic.displayReadingProgress(), 0.001f)
    }

    @Test
    fun rtfWithPageCountOneAndStaleProgressIsNotCompleted() {
        // Same scenario but pageCount=1 (single unresolved section).
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 1,
            currentPage = 0,
            readingProgress = 1.0f,
            lastReadDate = 456L,
        )

        assertEquals(ComicReadingStatus.READING, comic.readingStatus())
    }

    @Test
    fun rtfWithUnresolvedPageCountButRealLocatorIsCompleted() {
        // RTF with stale progress=1 BUT a real locator → genuinely read to the end.
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 0,
            currentPage = 0,
            readingProgress = 1.0f,
            lastReadDate = 123L,
            readerLocatorHref = "chapter-5.xhtml",
            readerLocatorProgression = 1.0,
        )

        assertEquals(ComicReadingStatus.COMPLETED, comic.readingStatus())
    }

    @Test
    fun rtfWithUnresolvedPageCountButRealCurrentPageIsNotCompleted() {
        // RTF with stale progress=1, no locator, but currentPage > 0
        // → has been read, but pageCount unknown → still READING.
        val comic = Comic(
            format = ComicFormat.RTF,
            pageCount = 0,
            currentPage = 5,
            readingProgress = 1.0f,
            lastReadDate = 123L,
        )

        assertEquals(ComicReadingStatus.READING, comic.readingStatus())
    }

    @Test
    fun epubWithUnresolvedPageCountAndStaleProgressIsNotCompleted() {
        // Same guard applies to EPUB and other text formats with unresolved page counts.
        val comic = Comic(
            format = ComicFormat.EPUB,
            pageCount = 0,
            currentPage = 0,
            readingProgress = 1.0f,
            lastReadDate = 789L,
        )

        assertEquals(ComicReadingStatus.READING, comic.readingStatus())
    }

    @Test
    fun nonTextFormatWithUnresolvedPageCountCanStillCompleteByProgress() {
        // Non-text formats (e.g. UNKNOWN) with stale progress=1 and lastReadDate
        // should still complete — the reflowable guard doesn't apply.
        val comic = Comic(
            format = ComicFormat.UNKNOWN,
            pageCount = 0,
            currentPage = 0,
            readingProgress = 1.0f,
            lastReadDate = 123L,
        )

        assertEquals(ComicReadingStatus.COMPLETED, comic.readingStatus())
    }
}
