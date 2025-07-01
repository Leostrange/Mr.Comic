package com.example.mrcomic.data

import androidx.room.Entity
import androidx.room.PrimaryKey

@Entity(tableName = "bookmarks")
data class BookmarkEntity(
    @PrimaryKey(autoGenerate = true) val id: Int = 0,
    val comicId: Int,
    val page: Int,
    val label: String? = null,
    val timestamp: Long = System.currentTimeMillis()
) 