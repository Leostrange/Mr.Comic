package com.example.mrcomic.theme.data.db

import androidx.room.*
import com.example.mrcomic.theme.data.model.Comic
import kotlinx.coroutines.flow.Flow
import com.example.mrcomic.data.FailedImport

/**
 * Data Access Object для работы с комиксами в локальной базе данных
 */
@Dao
interface ComicDao {
    @Query("SELECT * FROM comics ORDER BY addedAt DESC")
    fun getAllComics(): Flow<List<Comic>>

    @Query("SELECT * FROM comics WHERE id = :comicId")
    suspend fun getComicById(comicId: String): Comic?

    @Query("SELECT * FROM comics WHERE isFavorite = 1 ORDER BY addedAt DESC")
    fun getFavoriteComics(): Flow<List<Comic>>

    @Query("SELECT * FROM comics WHERE collectionId = :collectionId ORDER BY addedAt DESC")
    fun getComicsByCollection(collectionId: String): Flow<List<Comic>>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertComic(comic: Comic)

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertComics(comics: List<Comic>)

    @Update
    suspend fun updateComic(comic: Comic)

    @Delete
    suspend fun deleteComic(comic: Comic)

    @Query("DELETE FROM comics WHERE id = :comicId")
    suspend fun deleteComicById(comicId: String)

    @Query("DELETE FROM comics")
    suspend fun deleteAllComics()

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertFailedImport(failedImport: FailedImport)

    @Query("SELECT * FROM failed_imports ORDER BY timestamp DESC")
    fun getFailedImports(): Flow<List<FailedImport>>

    @Query("SELECT * FROM comics WHERE lastOpenedAt IS NOT NULL ORDER BY lastOpenedAt DESC LIMIT :limit")
    suspend fun getLastReadComics(limit: Int): List<Comic>

    @Query("SELECT * FROM comics WHERE ',' || labels || ',' LIKE '%' || ',' || :label || ',' || '%' ORDER BY addedAt DESC")
    fun getComicsByLabel(label: String): Flow<List<Comic>>

    @Query("UPDATE comics SET labels = :labels WHERE id = :comicId")
    suspend fun updateComicLabels(comicId: String, labels: String)
} 