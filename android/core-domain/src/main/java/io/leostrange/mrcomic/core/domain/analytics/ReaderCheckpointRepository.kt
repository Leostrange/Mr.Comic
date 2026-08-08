package io.leostrange.mrcomic.core.domain.analytics

import kotlinx.coroutines.flow.Flow

/**
 * Repository interface for reader checkpoint storage.
 *
 * Moved from core-data to core-domain to enforce dependency inversion.
 * Implementation lives in core-data and is injected via Hilt.
 */
interface ReaderCheckpointRepository {
    val checkpointTrail: Flow<List<ReaderCheckpoint>>
    val latestCheckpoint: Flow<ReaderCheckpoint?>

    suspend fun recordChapterReached(
        comicId: String,
        comicTitle: String,
        chapterTitle: String,
        page: Int
    )

    suspend fun clearCheckpoint()

    suspend fun removeComicCheckpoints(comicId: String)

    suspend fun pruneToComicIds(validComicIds: Set<String>)
}
