package io.leostrange.mrcomic.feature.reader.ui

import io.leostrange.mrcomic.core.model.ReadingMode
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPosition
import io.leostrange.mrcomic.feature.reader.domain.progress.ReaderPositionCodec
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderProgressPersistencePolicyTest {

    @Test
    fun persistedPageMatch_ignoresStructuredPositionPayload() {
        val marker = PersistedProgressMarker(
            comicId = "comic-1",
            page = 12,
            positionJson = "{\"p\":5}"
        )

        assertTrue(isSamePersistedPage(marker, comicId = "comic-1", page = 12))
        assertFalse(isSamePersistedPage(marker, comicId = "comic-1", page = 13))
        assertFalse(isSamePersistedPage(marker, comicId = "comic-2", page = 12))
    }

    @Test
    fun persistedPositionMatch_ignoresTimestampButNotCursorChanges() {
        val original = ReaderPositionCodec.encode(
            ReaderPosition(
                engineSectionIndex = 4,
                visualPageIndex = 2,
                characterOffset = 320,
                mode = ReadingMode.PAGE_LTR,
                updatedAtMillis = 1_000L
            )
        )
        val sameCursorLater = ReaderPositionCodec.encode(
            ReaderPosition(
                engineSectionIndex = 4,
                visualPageIndex = 2,
                characterOffset = 320,
                mode = ReadingMode.PAGE_LTR,
                updatedAtMillis = 9_000L
            )
        )
        val movedCursor = ReaderPositionCodec.encode(
            ReaderPosition(
                engineSectionIndex = 4,
                visualPageIndex = 3,
                characterOffset = 480,
                mode = ReadingMode.PAGE_LTR,
                updatedAtMillis = 9_000L
            )
        )

        assertTrue(isSamePersistedPosition(original, sameCursorLater))
        assertFalse(isSamePersistedPosition(original, movedCursor))
    }

    @Test
    fun positionOnlyFlush_doesNotClaimLegacyPageWasPersisted() {
        val current = PersistedProgressMarker(comicId = "comic-1", page = 3)
        val positionOnly = PendingProgressSave(
            comicId = "comic-1",
            page = 9,
            totalPages = 20,
            countsTowardReadingProgress = false,
            positionJson = "{\"p\":9}",
            positionOnly = true
        )
        val fullProgress = positionOnly.copy(positionOnly = false)

        assertEquals(current, persistedPageMarkerAfterFlush(current, positionOnly))
        assertEquals(
            PersistedProgressMarker("comic-1", 9, "{\"p\":9}"),
            persistedPageMarkerAfterFlush(current, fullProgress)
        )
    }

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

    @Test
    fun completionBlockedForProvisionalHeavyReflowable() {
        assertFalse(
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 5,
                isHeavyReflowable = true,
                totalPages = 1
            )
        )
        assertTrue(
            ReaderProgressPolicy.shouldComplete(
                reachedLastPage = true,
                currentComicIdMatches = true,
                alreadyCompleted = false,
                countsTowardReadingProgress = true,
                sessionManualPageTurns = 5,
                isHeavyReflowable = true,
                totalPages = 150
            )
        )
    }
}
