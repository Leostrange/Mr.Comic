package com.example.core.data.database.dao

import androidx.room.*
import com.example.core.model.Bookmark
import kotlinx.coroutines.flow.Flow

/**
 * DAO для работы с закладками
 */
@Dao
interface BookmarkDao {
    
    @Query("SELECT * FROM bookmarks ORDER BY createdAt DESC")
    fun getAllBookmarks(): Flow<List<Bookmark>>
    
    @Query("SELECT * FROM bookmarks WHERE comicId = :comicId ORDER BY pageIndex ASC")
    fun getBookmarksByComic(comicId: String): Flow<List<Bookmark>>
    
    @Query("SELECT * FROM bookmarks WHERE id = :id")
    suspend fun getById(id: String): Bookmark?
    
    @Query("SELECT * FROM bookmarks WHERE comicId = :comicId AND pageIndex = :pageIndex")
    suspend fun getByComicAndPage(comicId: String, pageIndex: Int): Bookmark?
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(bookmark: Bookmark)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertAll(bookmarks: List<Bookmark>)
    
    @Update
    suspend fun update(bookmark: Bookmark)
    
    @Delete
    suspend fun delete(bookmark: Bookmark)
    
    @Query("DELETE FROM bookmarks WHERE id = :id")
    suspend fun deleteById(id: String)
    
    @Query("DELETE FROM bookmarks WHERE comicId = :comicId")
    suspend fun deleteByComic(comicId: String)
    
    @Query("SELECT COUNT(*) FROM bookmarks WHERE comicId = :comicId")
    suspend fun getCountByComic(comicId: String): Int
}
