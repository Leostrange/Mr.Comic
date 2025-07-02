package com.example.mrcomic.data

import androidx.room.*
import kotlinx.coroutines.flow.Flow

@Dao
interface BookmarkDao {
    @Query("SELECT * FROM bookmarks WHERE comicId = :comicId ORDER BY page ASC")
    fun getBookmarksForComic(comicId: String): Flow<List<BookmarkEntity>>
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertBookmark(bookmark: BookmarkEntity): Long
    
    @Delete
    suspend fun deleteBookmark(bookmark: BookmarkEntity)
    
    @Query("DELETE FROM bookmarks WHERE comicId = :comicId")
    suspend fun deleteAllBookmarksForComic(comicId: String)
    @Query("SELECT * FROM bookmarks WHERE comicId = :comicId AND page = :page LIMIT 1")
    suspend fun getBookmarkAtPage(comicId: String, page: Int): BookmarkEntity?
} 