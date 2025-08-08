package com.example.mrcomic.data

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Entity
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow

@Dao
interface ComicDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertComic(comic: ComicEntity)

    @Update
    suspend fun updateComic(comic: ComicEntity)

    @Delete
    suspend fun deleteComic(comic: ComicEntity)

    @Query("SELECT * FROM comics WHERE id = :comicId")
    fun getComicById(comicId: Long): Flow<ComicEntity?>

    @Query("SELECT * FROM comics ORDER BY addedDate DESC")
    fun getAllComics(): Flow<List<ComicEntity>>
    
    @Query("SELECT * FROM comics WHERE isFavorite = 1 ORDER BY title ASC")
    fun getFavoriteComics(): Flow<List<ComicEntity>>
    
    @Query("SELECT * FROM comics WHERE id = :comicId")
    suspend fun getComicByIdSync(comicId: Long): ComicEntity?
    
    @Query("UPDATE comics SET currentPage = :page WHERE id = :comicId")
    suspend fun updateProgress(comicId: Long, page: Int)

    @Query("UPDATE comics SET isFavorite = :isFavorite WHERE id = :comicId")
    suspend fun setFavorite(comicId: Long, isFavorite: Boolean)

    // Закладки
    @Insert
    suspend fun insertBookmark(bookmark: BookmarkEntity): Long

    @Delete
    suspend fun deleteBookmark(bookmark: BookmarkEntity)

    @Query("SELECT * FROM bookmarks WHERE comicId = :comicId ORDER BY page ASC")
    suspend fun getBookmarksForComic(comicId: Long): List<BookmarkEntity>

    @Query("UPDATE comics SET lastOpened = :timestamp WHERE id = :comicId")
    suspend fun updateLastOpened(comicId: Long, timestamp: Long)

    @Query("SELECT * FROM comics WHERE lastOpened > 0 ORDER BY lastOpened DESC LIMIT :limit")
    suspend fun getRecentComics(limit: Int = 5): List<ComicEntity>

    @Query("UPDATE comics SET readingTime = readingTime + :delta WHERE id = :comicId")
    suspend fun addReadingTime(comicId: Long, delta: Long)
} 