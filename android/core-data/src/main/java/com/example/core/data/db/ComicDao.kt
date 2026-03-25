package com.example.core.data.db

import androidx.room.*
import com.example.core.model.Comic
import kotlinx.coroutines.flow.Flow

@Dao
interface ComicDao {

    @Query("SELECT * FROM comics ORDER BY addedDate DESC")
    fun getAllComics(): Flow<List<Comic>>

    @Query("""
        SELECT * FROM comics
        WHERE LOWER(title)     LIKE '%' || LOWER(:query) || '%'
           OR LOWER(series)    LIKE '%' || LOWER(:query) || '%'
           OR LOWER(author)    LIKE '%' || LOWER(:query) || '%'
           OR LOWER(genre)     LIKE '%' || LOWER(:query) || '%'
           OR LOWER(publisher) LIKE '%' || LOWER(:query) || '%'
           OR LOWER(folderId)  LIKE '%' || LOWER(:query) || '%'
           OR LOWER(tags)      LIKE '%' || LOWER(:query) || '%'
        ORDER BY addedDate DESC
    """)
    fun searchComics(query: String): Flow<List<Comic>>

    @Query("SELECT * FROM comics WHERE id = :id LIMIT 1")
    suspend fun getComicById(id: String): Comic?

    @Query("SELECT * FROM comics WHERE path = :path LIMIT 1")
    suspend fun getComicByPath(path: String): Comic?

    @Query("SELECT path FROM comics")
    suspend fun getAllPaths(): List<String>

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertComic(comic: Comic)

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertComics(comics: List<Comic>)

    @Update
    suspend fun updateComic(comic: Comic)

    @Query("DELETE FROM comics WHERE id = :id")
    suspend fun deleteComic(id: String)

    @Query("""
        UPDATE comics
        SET currentPage = :currentPage,
            readingProgress = :progress,
            lastReadDate = :lastReadDate,
            pageCount = CASE WHEN :pageCount > pageCount THEN :pageCount ELSE pageCount END
        WHERE id = :id
    """)
    suspend fun updateProgress(id: String, currentPage: Int, progress: Float, lastReadDate: Long, pageCount: Int)
}
