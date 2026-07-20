package com.example.feature.reader.domain.session

import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertNull
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderSessionCoordinatorTest {
    @Test
    fun close_collectsSessionSignalsAndUsesUpdatedPageCount() {
        val coordinator = ReaderSessionCoordinator()
        coordinator.start(session(startPage = 4, totalPages = 10))
        coordinator.updateTotalPages(42)
        coordinator.recordManualPageTurn()
        coordinator.recordChapterTransition()

        val closed = coordinator.close(
            currentComicId = "comic-1",
            currentComicCompleted = true,
            currentPage = 12
        )!!

        assertEquals(42, closed.session.totalPages)
        assertEquals(12, closed.metrics.endPage)
        assertTrue(closed.metrics.completed)
        assertEquals(1, closed.metrics.manualPageTurns)
        assertEquals(1, closed.metrics.chapterTransitions)
        assertTrue(shouldRecordReaderSessionMinutes(closed.metrics))
        assertNull(coordinator.close("comic-1", true, 12))
    }

    @Test
    fun close_doesNotMarkDifferentComicCompleteAndKeepsStartFloor() {
        val coordinator = ReaderSessionCoordinator()
        coordinator.start(session(startPage = 8, totalPages = 10))

        val closed = coordinator.close(
            currentComicId = null,
            currentComicCompleted = false,
            currentPage = 3
        )!!

        assertEquals(8, closed.metrics.endPage)
        assertFalse(closed.metrics.completed)
        assertFalse(shouldRecordReaderSessionMinutes(closed.metrics))
    }

    private fun session(startPage: Int, totalPages: Int) = ReaderSessionSnapshot(
        comicId = "comic-1",
        format = "EPUB",
        totalPages = totalPages,
        startPage = startPage,
        readingMode = "PAGE_LTR",
        startedAtMillis = 0L,
        resumedFromProgress = false
    )
}
