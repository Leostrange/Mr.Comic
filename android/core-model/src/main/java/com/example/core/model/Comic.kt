package com.example.core.model

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey
import androidx.room.TypeConverters

@Entity(
    tableName = "comics",
    indices = [
        Index("title"), Index("addedDate"), Index("lastReadDate"), Index("folderId")
    ]
)
@TypeConverters(Converters::class)
data class Comic(
    @PrimaryKey val id: String = java.util.UUID.randomUUID().toString(),
    val title: String = "",
    val path: String = "",
    val format: ComicFormat = ComicFormat.UNKNOWN,
    val libraryShelf: String = "",
    val coverPath: String? = null,
    val treeUri: String? = null,
    val documentId: String? = null,
    val pageCount: Int = 0,
    val fileSize: Long = 0L,
    val addedDate: Long = System.currentTimeMillis(),
    val lastModified: Long = System.currentTimeMillis(),
    val folderId: String? = null,
    val lastReadDate: Long? = null,
    val readingProgress: Float = 0f,
    val currentPage: Int = 0,
    val isBookmarked: Boolean = false,
    val tags: String = "",
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

enum class ComicLibraryShelf {
    AUTO,
    GRAPHIC,
    BOOKS
}

fun Comic.libraryShelfCategory(): ComicLibraryShelf = when (libraryShelf.trim().uppercase()) {
    "GRAPHIC" -> ComicLibraryShelf.GRAPHIC
    "BOOKS" -> ComicLibraryShelf.BOOKS
    else -> ComicLibraryShelf.AUTO
}

enum class ComicReadingStatus {
    NEW,
    READING,
    COMPLETED
}

fun Comic.readingStatus(): ComicReadingStatus {
    val normalizedProgress = readingProgress.coerceIn(0f, 1f)
    val normalizedPageCount = pageCount.coerceAtLeast(0)
    val normalizedCurrentPage = currentPage.coerceAtLeast(0)
    val completedByProgress = normalizedProgress >= 0.999f
    val completedByPage = normalizedPageCount > 0 && normalizedCurrentPage >= normalizedPageCount - 1
    return when {
        isCompleted || completedByProgress || completedByPage -> ComicReadingStatus.COMPLETED
        normalizedCurrentPage > 0 || normalizedProgress > 0.001f -> ComicReadingStatus.READING
        else -> ComicReadingStatus.NEW
    }
}

fun Comic.isReadingInProgress(): Boolean = readingStatus() == ComicReadingStatus.READING

fun Comic.isReadCompleted(): Boolean = readingStatus() == ComicReadingStatus.COMPLETED

enum class ComicFormat {
    CBZ,
    CBR,
    PDF,
    EPUB,
    ZIP,
    RAR,
    SEVENZ,
    TAR,
    FB2,
    TXT,
    HTML,
    MARKDOWN,
    RTF,
    MOBI,
    AZW3,
    DOCX,
    ODT,
    DJVU,
    FOLDER,
    UNKNOWN
}

fun ComicFormat.isTextReadingFormat(): Boolean = when (this) {
    ComicFormat.EPUB,
    ComicFormat.FB2,
    ComicFormat.TXT,
    ComicFormat.HTML,
    ComicFormat.MARKDOWN,
    ComicFormat.RTF,
    ComicFormat.MOBI,
    ComicFormat.AZW3,
    ComicFormat.DOCX,
    ComicFormat.ODT -> true
    else -> false
}

fun ComicFormat.supportsHighResZoomTiers(): Boolean = when (this) {
    ComicFormat.CBZ,
    ComicFormat.CBR,
    ComicFormat.PDF,
    ComicFormat.ZIP,
    ComicFormat.RAR,
    ComicFormat.SEVENZ,
    ComicFormat.TAR,
    ComicFormat.FOLDER -> true
    else -> false
}
