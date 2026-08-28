package io.leostrange.mrcomic.home

import io.leostrange.mrcomic.core.interfaces.analytics.ReaderCheckpoint
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat
import org.junit.Assert.assertEquals
import org.junit.Assert.assertFalse
import org.junit.Assert.assertTrue
import org.junit.Test

class ContinueStartupWarmStateTest {

    @Test
    fun keepsLoadingWhileWarmSnapshotIsStillPendingAndLibraryIsEmpty() {
        val resolved = resolveContinueStartupData(
            liveComics = emptyList(),
            liveTrail = emptyList(),
            warmState = ContinueWarmState.Loading
        )

        assertTrue(resolved.isLoading)
        assertTrue(resolved.comics.isEmpty())
    }

    @Test
    fun usesWarmSnapshotBeforeLiveLibraryFlowCatchesUp() {
        val warmComic = sampleComic("warm-1")
        val warmTrail = listOf(sampleCheckpoint("warm-1"))

        val resolved = resolveContinueStartupData(
            liveComics = emptyList(),
            liveTrail = emptyList(),
            warmState = ContinueWarmState.Ready(
                ContinueWarmSnapshot(
                    comics = listOf(warmComic),
                    trail = warmTrail
                )
            )
        )

        assertFalse(resolved.isLoading)
        assertEquals(listOf(warmComic), resolved.comics)
        assertEquals(warmTrail, resolved.trail)
    }

    @Test
    fun prefersLiveLibraryDataOverWarmSnapshot() {
        val liveComic = sampleComic("live-1")
        val warmComic = sampleComic("warm-1")

        val resolved = resolveContinueStartupData(
            liveComics = listOf(liveComic),
            liveTrail = listOf(sampleCheckpoint("live-1")),
            warmState = ContinueWarmState.Ready(
                ContinueWarmSnapshot(
                    comics = listOf(warmComic),
                    trail = listOf(sampleCheckpoint("warm-1"))
                )
            )
        )

        assertFalse(resolved.isLoading)
        assertEquals(listOf(liveComic), resolved.comics)
        assertEquals("live-1", resolved.trail.first().comicId)
    }

    @Test
    fun doesNotRestoreWarmSnapshotAfterLiveLibraryBecomesEmpty() {
        val resolved = resolveContinueStartupData(
            liveComics = emptyList(),
            liveTrail = emptyList(),
            warmState = ContinueWarmState.Ready(
                ContinueWarmSnapshot(
                    comics = listOf(sampleComic("deleted")),
                    trail = listOf(sampleCheckpoint("deleted"))
                )
            ),
            liveDataReady = true
        )

        assertFalse(resolved.isLoading)
        assertTrue(resolved.comics.isEmpty())
        assertTrue(resolved.trail.isEmpty())
    }

    private fun sampleComic(id: String): Comic = Comic(
        id = id,
        title = "Sample",
        path = "/tmp/$id.epub",
        format = ComicFormat.EPUB,
        coverPath = "",
        readingProgress = 0.4f
    )

    private fun sampleCheckpoint(comicId: String): ReaderCheckpoint = ReaderCheckpoint(
        comicId = comicId,
        comicTitle = "Sample",
        chapterTitle = "Chapter 1",
        page = 12
    )
}
