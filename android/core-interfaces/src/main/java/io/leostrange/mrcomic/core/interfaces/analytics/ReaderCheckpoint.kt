package io.leostrange.mrcomic.core.interfaces.analytics

data class ReaderCheckpoint(
    val comicId: String,
    val comicTitle: String,
    val chapterTitle: String,
    val page: Int,
    val reachedAtMillis: Long = -1L
)

const val READER_CHECKPOINT_TRAIL_LIMIT = 3
