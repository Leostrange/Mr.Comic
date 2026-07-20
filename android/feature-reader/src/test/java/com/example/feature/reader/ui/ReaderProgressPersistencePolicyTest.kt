package com.example.feature.reader.ui

import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderProgressPersistencePolicyTest {

    @Test
    fun blocksNewHeavyReflowableBookUntilAPageCountIsAuthoritative() {
        assertFalse(
            ReaderProgressPolicy.shouldPersist(
                totalPages = 1,
                isHeavyReflowable = true,
                isEpub = false,
                epubAccumulatedPages = 0,
                paginatedSectionCount = 0
            )
        )
    }

    @Test
    fun blocksEpubBeforeWebViewHasPaginatedEnoughSections() {
        assertFalse(
            ReaderProgressPolicy.shouldPersist(
                totalPages = 8,
                isHeavyReflowable = true,
                isEpub = true,
                epubAccumulatedPages = 0,
                paginatedSectionCount = 0
            )
        )
        assertFalse(
            ReaderProgressPolicy.shouldPersist(
                totalPages = 8,
                isHeavyReflowable = true,
                isEpub = true,
                epubAccumulatedPages = 3,
                paginatedSectionCount = 1
            )
        )
    }

    @Test
    fun allowsPersistingMeasuredEpubAndOtherLoadedBooks() {
        assertTrue(
            ReaderProgressPolicy.shouldPersist(
                totalPages = 8,
                isHeavyReflowable = true,
                isEpub = true,
                epubAccumulatedPages = 8,
                paginatedSectionCount = 2
            )
        )
        assertTrue(
            ReaderProgressPolicy.shouldPersist(
                totalPages = 1,
                isHeavyReflowable = false,
                isEpub = false,
                epubAccumulatedPages = 0,
                paginatedSectionCount = 0
            )
        )
    }

    @Test
    fun completionRequiresTheLastPageAndActualReading() {
        assertTrue(
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 1
            )
        )
        assertFalse(
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = false,
                sessionManualPageTurns = 0
            )
        )
    }
}
