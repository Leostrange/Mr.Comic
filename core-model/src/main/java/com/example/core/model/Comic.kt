package com.example.core.model

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey
import androidx.room.TypeConverters
import java.util.Date

/**
 * Основная модель комикса/манги/книги с Room аннотациями
 */
@Entity(
    tableName = "comics",
    indices = [
        Index(value = ["title"]),
        Index(value = ["addedDate"]),
        Index(value = ["lastReadDate"]),
        Index(value = ["folderId"])
    ]
)
@TypeConverters(Converters::class)
data class Comic(
    @PrimaryKey
    val id: String = java.util.UUID.randomUUID().toString(),
    val title: String = "",
    val path: String = "",
    val format: ComicFormat = ComicFormat.UNKNOWN,
    val coverPath: String? = null,
    val pageCount: Int = 0,
    val fileSize: Long = 0L,
    val addedDate: Long = System.currentTimeMillis(),
    val lastModified: Long = System.currentTimeMillis(),
    val folderId: String? = null,
    val lastReadDate: Long? = null,
    val readingProgress: Float = 0f, // 0.0 - 1.0
    val isBookmarked: Boolean = false,
    val tags: String = "", // JSON serialized list
    val series: String? = null,
    val volume: Int? = null,
    val issue: Int? = null,
    val year: Int? = null,
    val publisher: String? = null,
    val author: String? = null,
    val artist: String? = null,
    val genre: String? = null,
    val language: String = "en",
    val isCompleted: Boolean = false
)

enum class ComicFormat {
    CBZ,    // Comic Book ZIP
    CBR,    // Comic Book RAR
    PDF,    // PDF Document
    EPUB,   // EPUB Book
    ZIP,    // Generic ZIP
    RAR,    // Generic RAR
    SEVENZ, // 7-Zip
    TAR,    // TAR Archive
    FOLDER, // Folder with images
    UNKNOWN
}
