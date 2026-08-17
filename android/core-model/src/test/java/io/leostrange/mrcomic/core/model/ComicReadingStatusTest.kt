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
    fun placeholderFullProgressWithoutAnyReadingSignalStaysNew() {
        val comic = Comic(pageCount = 1, currentPage = 0, readingProgress = 1f, lastReadDate = null)

        assertEquals(ComicReadingStatus.NEW, comic.readingStatus())
        assertFalse(comic.isReadCompleted())
    }
}
