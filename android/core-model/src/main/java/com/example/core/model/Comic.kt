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
    val readerLocatorHref: String? = null,
    val readerLocatorProgression: Double? = null,
    val readerLocatorPosition: Int? = null,
    val readerLocatorTitle: String? = null,
    val readerLocatorFragment: String? = null,
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

fun Comic.storedReaderLocator(): ReaderLocator? {
    val href = readerLocatorHref?.takeIf { it.isNotBlank() }
    val fragment = readerLocatorFragment?.takeIf { it.isNotBlank() }
    val title = readerLocatorTitle?.takeIf { it.isNotBlank() }
    val progression = readerLocatorProgression
    val position = readerLocatorPosition
    return if (href == null && fragment == null && title == null && progression == null && position == null) {
        null
    } else {
        ReaderLocator(
            href = href,
            progression = progression,
            position = position,
            title = title,
            fragment = fragment,
            pageIndex = currentPage
        )
    }
}

fun Comic.withStoredReaderLocator(locator: ReaderLocator?): Comic =
    copy(
        readerLocatorHref = locator?.href?.takeIf { it.isNotBlank() },
        readerLocatorProgression = locator?.progression,
        readerLocatorPosition = locator?.position,
        readerLocatorTitle = locator?.title?.takeIf { it.isNotBlank() },
        readerLocatorFragment = locator?.fragment?.takeIf { it.isNotBlank() }
    )

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

fun ComicFormat.supportsReaderImageScaling(): Boolean = when (this) {
    ComicFormat.CBZ,
    ComicFormat.CBR,
    ComicFormat.PDF,
    ComicFormat.ZIP,
    ComicFormat.RAR,
    ComicFormat.SEVENZ,
    ComicFormat.TAR,
    ComicFormat.DJVU,
    ComicFormat.FOLDER -> true
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
    ComicFormat.DJVU,
    ComicFormat.FOLDER -> true
    else -> false
}

fun ComicFormat.supportsAdaptiveLandscapeSpread(): Boolean =
    supportsReaderImageScaling()

fun ComicFormat.supportsDocumentMarginCrop(): Boolean =
    this == ComicFormat.PDF || this == ComicFormat.DJVU
