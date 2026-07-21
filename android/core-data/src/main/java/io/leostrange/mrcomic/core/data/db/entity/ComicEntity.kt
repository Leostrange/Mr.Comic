package io.leostrange.mrcomic.core.data.db.entity

import androidx.room.Entity
import androidx.room.Index
import androidx.room.PrimaryKey
import androidx.room.TypeConverters
// Converters is in the same package
import io.leostrange.mrcomic.core.model.Comic
import io.leostrange.mrcomic.core.model.ComicFormat

/**
 * Room entity for the comics table.
 *
 * Separate from the domain [Comic] model so core-model stays pure Kotlin
 * (no Android/Room dependency). Mappers convert between the two.
 */
@Entity(
    tableName = "comics",
    indices = [
        Index("title"), Index("addedDate"), Index("lastReadDate"), Index("folderId")
    ]
)
@TypeConverters(Converters::class)
data class ComicEntity(
    @PrimaryKey val id: String,
    val title: String = "",
    val path: String = "",
    val format: ComicFormat = ComicFormat.UNKNOWN,
    val libraryShelf: String = "",
    val coverPath: String? = null,
    val treeUri: String? = null,
    val documentId: String? = null,
    val pageCount: Int = 0,
    val fileSize: Long = 0L,
    val addedDate: Long = 0L,
    val lastModified: Long = 0L,
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

/** Convert domain model to Room entity. */
internal fun Comic.toEntity(): ComicEntity = ComicEntity(
    id = id, title = title, path = path, format = format,
    libraryShelf = libraryShelf, coverPath = coverPath,
    treeUri = treeUri, documentId = documentId,
    pageCount = pageCount, fileSize = fileSize,
    addedDate = addedDate, lastModified = lastModified,
    folderId = folderId,
    readerLocatorHref = readerLocatorHref,
    readerLocatorProgression = readerLocatorProgression,
    readerLocatorPosition = readerLocatorPosition,
    readerLocatorTitle = readerLocatorTitle,
    readerLocatorFragment = readerLocatorFragment,
    lastReadDate = lastReadDate, readingProgress = readingProgress,
    currentPage = currentPage, isBookmarked = isBookmarked,
    tags = tags, series = series, volume = volume, issue = issue,
    year = year, publisher = publisher, author = author, artist = artist,
    genre = genre, language = language, isCompleted = isCompleted
)

/** Convert Room entity to domain model. */
internal fun ComicEntity.toDomain(): Comic = Comic(
    id = id, title = title, path = path, format = format,
    libraryShelf = libraryShelf, coverPath = coverPath,
    treeUri = treeUri, documentId = documentId,
    pageCount = pageCount, fileSize = fileSize,
    addedDate = addedDate, lastModified = lastModified,
    folderId = folderId,
    readerLocatorHref = readerLocatorHref,
    readerLocatorProgression = readerLocatorProgression,
    readerLocatorPosition = readerLocatorPosition,
    readerLocatorTitle = readerLocatorTitle,
    readerLocatorFragment = readerLocatorFragment,
    lastReadDate = lastReadDate, readingProgress = readingProgress,
    currentPage = currentPage, isBookmarked = isBookmarked,
    tags = tags, series = series, volume = volume, issue = issue,
    year = year, publisher = publisher, author = author, artist = artist,
    genre = genre, language = language, isCompleted = isCompleted
)
