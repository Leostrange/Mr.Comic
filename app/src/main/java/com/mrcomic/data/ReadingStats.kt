package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "reading_stats")
data class ReadingStats(
    @PrimaryKey val comicId: String,
    val totalTimeSeconds: Long = 0,
    val lastReadTime: Long = 0
) 