package io.leostrange.mrcomic.core.domain.analytics

import io.leostrange.mrcomic.core.interfaces.analytics.READER_CHECKPOINT_TRAIL_LIMIT
import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpoint
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test

class ReaderCheckpointTrailPolicyTest {

    @Test
    fun mergeCheckpointTrail_movesDuplicateCheckpointToFront() {
        val older = checkpoint(
            comicId = "comic-a",
            chapterTitle = "Chapter 1",
            page = 4,
            reachedAtMillis = 100L
        )
        val newer = checkpoint(
            comicId = "comic-b",
            chapterTitle = "Chapter 2",
            page = 8,
            reachedAtMillis = 200L
        )
        val duplicate = checkpoint(
            comicId = "comic-a",
            chapterTitle = "Chapter 1",
            page = 4,
            reachedAtMillis = 300L
        )

        val merged = mergeCheckpointTrail(listOf(newer, older), duplicate)

        assertEquals(listOf(duplicate, newer), merged)
    }

    @Test
    fun mergeCheckpointTrail_capsTrailToConfiguredLimit() {
        val existing = listOf(
            checkpoint("comic-1", "Chapter 1", 1, 100L),
            checkpoint("comic-2", "Chapter 2", 2, 90L),
            checkpoint("comic-3", "Chapter 3", 3, 80L)
        )

        val merged = mergeCheckpointTrail(
            currentTrail = existing,
            checkpoint = checkpoint("comic-4", "Chapter 4", 4, 110L)
        )

        assertEquals(READER_CHECKPOINT_TRAIL_LIMIT, merged.size)
        assertEquals(listOf("comic-4", "comic-1", "comic-2"), merged.map { it.comicId })
    }

    @Test
    fun removeComicCheckpoints_dropsOnlyMatchingComic() {
        val trail = listOf(
            checkpoint("comic-1", "Chapter 1", 1, 100L),
            checkpoint("comic-2", "Chapter 2", 2, 90L),
            checkpoint("comic-1", "Chapter 3", 3, 80L)
        )

        val filtered = removeComicCheckpoints(trail, "comic-1")

        assertEquals(listOf("comic-2"), filtered.map { it.comicId })
    }

    @Test
    fun pruneCheckpointTrail_keepsOnlyValidComicIds() {
        val trail = listOf(
            checkpoint("comic-1", "Chapter 1", 1, 100L),
            checkpoint("comic-2", "Chapter 2", 2, 90L),
            checkpoint("comic-3", "Chapter 3", 3, 80L)
        )

        val pruned = pruneCheckpointTrail(
            currentTrail = trail,
            validComicIds = setOf("comic-1", "comic-3")
        )

        assertEquals(listOf("comic-1", "comic-3"), pruned.map { it.comicId })
        assertTrue(pruned.none { it.comicId == "comic-2" })
    }

    private fun checkpoint(
        comicId: String,
        chapterTitle: String,
        page: Int,
        reachedAtMillis: Long
    ): ReaderCheckpoint {
        return ReaderCheckpoint(
            comicId = comicId,
            comicTitle = comicId.uppercase(),
            chapterTitle = chapterTitle,
            page = page,
            reachedAtMillis = reachedAtMillis
        )
    }
}
