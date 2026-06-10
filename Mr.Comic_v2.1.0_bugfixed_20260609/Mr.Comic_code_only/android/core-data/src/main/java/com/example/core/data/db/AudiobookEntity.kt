package com.example.core.data.db

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "audiobooks")
data class AudiobookEntity(
    @PrimaryKey val id: String,
    val title: String,
    val coverUri: String?,
    val sourcePath: String,
    val sourceIsFolder: Boolean,
    /** JSON-serialized List<AudioChapterJson> */
    val chaptersJson: String = "[]",
    val lastChapterIndex: Int = 0,
    val lastPositionMs: Long = 0L,
    val speed: Float = 1.0f,
    val addedAt: Long = System.currentTimeMillis()
)
