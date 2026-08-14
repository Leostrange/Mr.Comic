package io.leostrange.mrcomic.core.model.repository

import io.leostrange.mrcomic.core.model.Comic
import kotlinx.coroutines.flow.Flow

/**
 * CRUD operations for the comic library.
 *
 * Read-only queries and mutations for comics, bookmarks, and reading progress.
 */
interface LibraryRepository {
    fun getAllComics(): Flow<List<Comic>>
    fun searchComics(query: String): Flow<List<Comic>>
    suspend fun getComicById(id: String): Comic?
    suspend fun getComicByPath(path: String): Comic?
    suspend fun deleteComic(comicId: String)
    suspend fun toggleBookmark(comicId: String)
    suspend fun updateComicMeta(comicId: String, title: String, tags: String, libraryShelf: String)
    suspend fun markCompleted(comicId: String, completed: Boolean = true)
    suspend fun updateProgress(comicId: String, currentPage: Int, totalPages: Int, characterOffset: Int? = null)

    /**
     * Persists the structured reading position (TEXT-01) as an opaque JSON blob.
     * Null clears the structured position (falls back to legacy fields). The blob format is
     * owned by feature-reader's ReaderPositionCodec; core-data stores it verbatim.
     */
    suspend fun updateReaderPosition(comicId: String, positionJson: String?)

    /** Returns the stored structured reading position JSON, or null when only legacy fields exist. */
    suspend fun getReaderPositionJson(comicId: String): String?
}
