package com.example.core.model

import java.util.Date

/**
 * Основная модель комикса/манги/книги (чистая модель без зависимостей Room)
 */
data class Comic(
    val id: String = java.util.UUID.randomUUID().toString(),
    val title: String = "",
    val filePath: String = "",
    val fileName: String = "",
    val fileSize: Long = 0L,
    val format: ComicFormat = ComicFormat.UNKNOWN,
    val coverPath: String? = null,
    val pageCount: Int = 0,
    val readingProgress: Float = 0f, // 0.0 - 1.0
    val lastReadDate: Date? = null,
    val addedDate: Date = Date(),
    val modifiedDate: Date = Date(),
    val isBookmarked: Boolean = false,
    val tags: List<String> = emptyList(),
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
    UNKNOWN
}