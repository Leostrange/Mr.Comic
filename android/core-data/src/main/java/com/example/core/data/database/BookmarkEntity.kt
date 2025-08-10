package com.example.core.data.database

import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.Index
import androidx.room.PrimaryKey

@Entity(
    tableName = "bookmarks",
    foreignKeys = [
        ForeignKey(
            entity = ComicEntity::class,
            parentColumns = ["filePath"],
            childColumns = ["comicId"],
            onDelete = ForeignKey.CASCADE
        )
    ],
    indices = [
        Index(value = ["comicId"])
    ]
)
data class BookmarkEntity(
    @PrimaryKey(autoGenerate = true) val id: Long = 0,
    val comicId: String, // Foreign key to ComicEntity.filePath
    val page: Int,
    val label: String?,
    val timestamp: Long = System.currentTimeMillis()
)
