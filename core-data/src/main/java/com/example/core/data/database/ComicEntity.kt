package com.example.core.data.database

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "comics")
data class ComicEntity(
    @PrimaryKey val filePath: String,
    val title: String,
    val coverPath: String?, // Path to the cached cover image
    val dateAdded: Long
)