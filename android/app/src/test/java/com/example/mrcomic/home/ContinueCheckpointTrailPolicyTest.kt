package com.example.mrcomic.home

import com.example.core.domain.analytics.ReaderCheckpoint
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ContinueCheckpointTrailPolicyTest {

    @Test
    fun visibleCheckpointTrail_keepsRecentLibraryHistoryEvenWhenTitlesAreCompleted() {
        val trail = listOf(
            checkpoint("completed-title", 300L),
            checkpoint("active-title", 200L),
            checkpoint("older-title", 100L)
        )

        val visible = visibleCheckpointTrail(
            trail = trail,
            libraryComicIds = setOf("completed-title", "active-title", "older-title")
        )

        assertEquals(
            listOf("completed-title", "active-title", "older-title"),
            visible.map { it.comicId }
        )
    }

    @Test
    fun visibleCheckpointTrail_dropsCheckpointsForTitlesMissingFromLibrary() {
        val trail = listOf(
            checkpoint("library-title", 300L),
            checkpoint("deleted-title", 200L),
            checkpoint("other-library-title", 100L)
        )

        val visible = visibleCheckpointTrail(
            trail = trail,
            libraryComicIds = setOf("library-title", "other-library-title")
        )

        assertEquals(listOf("library-title", "other-library-title"), visible.map { it.comicId })
        assertTrue(visible.none { it.comicId == "deleted-title" })
    }

    @Test
    fun visibleCheckpointTrail_capsHistoryToThreeItems() {
        val trail = listOf(
            checkpoint("comic-1", 400L),
            checkpoint("comic-2", 300L),
            checkpoint("comic-3", 200L),
            checkpoint("comic-4", 100L)
        )

        val visible = visibleCheckpointTrail(
            trail = trail,
            libraryComicIds = setOf("comic-1", "comic-2", "comic-3", "comic-4")
        )

        assertEquals(listOf("comic-1", "comic-2", "comic-3"), visible.map { it.comicId })
    }

    private fun checkpoint(
        comicId: String,
        reachedAtMillis: Long
    ): ReaderCheckpoint {
        return ReaderCheckpoint(
            comicId = comicId,
            comicTitle = comicId,
            chapterTitle = "Chapter",
            page = 1,
            reachedAtMillis = reachedAtMillis
        )
    }
}
