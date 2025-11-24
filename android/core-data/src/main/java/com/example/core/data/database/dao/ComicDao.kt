package com.example.core.data.database.dao

import androidx.room.*
import com.example.core.model.Comic
import kotlinx.coroutines.flow.Flow

/**
 * DAO для работы с комиксами
 */
@Dao
interface ComicDao {
    
    @Query("SELECT * FROM comics ORDER BY addedDate DESC")
    fun getAllComics(): Flow<List<Comic>>
    
    @Query("SELECT * FROM comics WHERE folderId = :folderId ORDER BY addedDate DESC")
    fun getComicsByFolder(folderId: String): Flow<List<Comic>>
    
    @Query("SELECT * FROM comics WHERE title LIKE '%' || :query || '%' ORDER BY addedDate DESC")
    fun searchComics(query: String): Flow<List<Comic>>
    
    @Query("SELECT * FROM comics WHERE id = :id")
    suspend fun getById(id: String): Comic?
    
    @Query("SELECT * FROM comics WHERE path = :path")
    suspend fun getByPath(path: String): Comic?
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(comic: Comic)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertAll(comics: List<Comic>)
    
    @Update
    suspend fun update(comic: Comic)
    
    @Delete
    suspend fun delete(comic: Comic)
    
    @Query("DELETE FROM comics WHERE id = :id")
    suspend fun deleteById(id: String)
    
    @Query("DELETE FROM comics")
    suspend fun deleteAll()
    
    @Query("SELECT COUNT(*) FROM comics")
    suspend fun getCount(): Int
    
    @Query("SELECT * FROM comics WHERE format = :format ORDER BY addedDate DESC")
    fun getComicsByFormat(format: String): Flow<List<Comic>>
    
    @Query("SELECT * FROM comics WHERE lastReadDate IS NOT NULL ORDER BY lastReadDate DESC LIMIT :limit")
    fun getRecentlyRead(limit: Int = 10): Flow<List<Comic>>
    
    @Query("SELECT * FROM comics WHERE isSingle = 1 ORDER BY addedDate DESC")
    fun getSingleComics(): Flow<List<Comic>>
    
    @Query("SELECT * FROM comics WHERE displayGroup = :displayGroup ORDER BY addedDate DESC")
    fun getComicsByDisplayGroup(displayGroup: String): Flow<List<Comic>>
    
    @Query("SELECT DISTINCT displayGroup FROM comics WHERE displayGroup IS NOT NULL ORDER BY displayGroup ASC")
    fun getAllDisplayGroups(): Flow<List<String>>
}
