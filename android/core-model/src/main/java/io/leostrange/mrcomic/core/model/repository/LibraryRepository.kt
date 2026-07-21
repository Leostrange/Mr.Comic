package io.leostrange.mrcomic.core.model.repository

import android.net.Uri
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
    suspend fun updateProgress(comicId: String, currentPage: Int, totalPages: Int)
}
