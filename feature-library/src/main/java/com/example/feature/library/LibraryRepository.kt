package com.example.feature.library

import com.example.feature.library.data.ComicEntity
import com.example.feature.library.data.ComicDao
import com.example.mrcomic.data.BookmarkEntity
import kotlinx.coroutines.flow.Flow
import javax.inject.Inject

interface LibraryRepository {
    fun getComicsFlow(): Flow<List<ComicEntity>>
    fun getAllComics(): Flow<List<ComicEntity>>
    fun getComicById(comicId: Long): Flow<ComicEntity?>
    suspend fun addComic(comic: ComicEntity)
    suspend fun deleteComic(id: Long)
    suspend fun searchComics(query: String): List<ComicEntity>
    suspend fun updateFavorite(id: Long, isFavorite: Boolean)
    suspend fun setFavorite(comicId: Long, isFavorite: Boolean)
    suspend fun updateProgress(comicId: Long, page: Int)
    suspend fun updateLastOpened(comicId: Long)
    suspend fun addReadingTime(comicId: Long, delta: Long)
    suspend fun getRecentComics(limit: Int): List<ComicEntity>
    suspend fun importComicFromUri(uri: android.net.Uri)
    suspend fun addBookmark(bookmark: BookmarkEntity)
    suspend fun removeBookmark(bookmark: BookmarkEntity)
    suspend fun getBookmarks(comicId: Long): List<BookmarkEntity>
}

class RoomLibraryRepository @Inject constructor(
    private val dao: ComicDao
) : LibraryRepository {
    override fun getComicsFlow(): Flow<List<ComicEntity>> = dao.getAllComics()
    override fun getAllComics(): Flow<List<ComicEntity>> = dao.getAllComics()
    override fun getComicById(comicId: Long): Flow<ComicEntity?> = dao.getComicById(comicId)
    override suspend fun addComic(comic: ComicEntity) = dao.insertComic(comic)
    override suspend fun deleteComic(id: Long) = dao.deleteComicById(id)
    override suspend fun searchComics(query: String): List<ComicEntity> = dao.searchComics("%$query%")
    override suspend fun updateFavorite(id: Long, isFavorite: Boolean) = dao.updateFavorite(id, isFavorite)
    override suspend fun setFavorite(comicId: Long, isFavorite: Boolean) = dao.updateFavorite(comicId, isFavorite)
    override suspend fun updateProgress(comicId: Long, page: Int) = dao.updateProgress(comicId, page)
    override suspend fun updateLastOpened(comicId: Long) = dao.updateLastOpened(comicId, System.currentTimeMillis())
    override suspend fun addReadingTime(comicId: Long, delta: Long) = dao.addReadingTime(comicId, delta)
    override suspend fun getRecentComics(limit: Int): List<ComicEntity> = dao.getRecentComics(limit)
    override suspend fun importComicFromUri(uri: android.net.Uri) {
        // TODO: Implement import functionality
    }
    override suspend fun addBookmark(bookmark: BookmarkEntity) {
        // TODO: Implement bookmark functionality
    }
    override suspend fun removeBookmark(bookmark: BookmarkEntity) {
        // TODO: Implement bookmark functionality
    }
    override suspend fun getBookmarks(comicId: Long): List<BookmarkEntity> {
        // TODO: Implement bookmark functionality
        return emptyList()
    }
} 