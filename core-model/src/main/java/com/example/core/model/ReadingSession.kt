package com.example.core.model

import androidx.room.Entity
import androidx.room.ForeignKey
import androidx.room.Index
import androidx.room.PrimaryKey

/**
 * Модель сессии чтения для сохранения прогресса и настроек
 */
@Entity(
    tableName = "reading_sessions",
    indices = [
        Index(value = ["lastReadAt"])
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
data class ReadingSession(
    @PrimaryKey
    val comicId: String,
    val currentPage: Int,
    val totalPages: Int,
    val lastReadAt: Long = System.currentTimeMillis(),
    val readingSettings: String? = null // JSON serialized ReadingSettings
)
