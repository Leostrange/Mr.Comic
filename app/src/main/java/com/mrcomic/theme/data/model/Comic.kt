package com.example.mrcomic.theme.data.model

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "comics")
data class Comic(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val title: String,
    val series: String?,
    val issueNumber: String?,
    val filePath: String,
    val lastReadPage: Int = 0,
    val totalPages: Int,
    val lastReadTimestamp: Long = 0
)

