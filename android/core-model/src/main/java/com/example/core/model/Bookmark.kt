package com.example.core.model

import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.Index
import androidx.room.PrimaryKey

/**
 * Модель закладки с Room аннотациями
 */
@Entity(
    tableName = "bookmarks",
    indices = [
        Index(value = ["comicId"]),
        Index(value = ["createdAt"])
    ],
    foreignKeys = [
        ForeignKey(
            entity = Comic::class,
            parentColumns = ["id"],
            childColumns = ["comicId"],
            onDelete = ForeignKey.CASCADE
        )
    ]
)
data class Bookmark(
    @PrimaryKey
    val id: String = java.util.UUID.randomUUID().toString(),
    val comicId: String,
    val pageIndex: Int,
    val note: String? = null,
    val createdAt: Long = System.currentTimeMillis()
)
