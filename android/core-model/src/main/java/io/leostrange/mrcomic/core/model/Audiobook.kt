package io.leostrange.mrcomic.core.model

data class Audiobook(
    val id: String = java.util.UUID.randomUUID().toString(),
    val title: String = "",
    val coverUri: String? = null,
    /** SAF URI — points to a single audio file or a folder */
    val sourcePath: String = "",
    val sourceIsFolder: Boolean = false,
    val chapters: List<AudioChapter> = emptyList(),
    val lastChapterIndex: Int = 0,
    val lastPositionMs: Long = 0L,
    val speed: Float = 1.0f,
    val addedAt: Long = System.currentTimeMillis()
)

data class AudioChapter(
    val index: Int,
    val title: String,
    /** SAF URI string for the audio file */
    val uri: String,
    val durationMs: Long = 0L
)
