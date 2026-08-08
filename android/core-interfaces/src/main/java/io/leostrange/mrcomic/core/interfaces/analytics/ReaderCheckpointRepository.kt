package io.leostrange.mrcomic.core.interfaces.analytics

import kotlinx.coroutines.flow.Flow

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
