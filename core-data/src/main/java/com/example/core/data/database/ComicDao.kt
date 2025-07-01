package com.example.core.data.database

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import kotlinx.coroutines.flow.Flow

@Dao
interface ComicDao {
    @Query("SELECT * FROM comics ORDER BY title COLLATE NOCASE ASC")
    fun getComicsSortedByTitleAsc(): Flow<List<ComicEntity>>

    @Query("SELECT * FROM comics ORDER BY title COLLATE NOCASE DESC")
    fun getComicsSortedByTitleDesc(): Flow<List<ComicEntity>>

    @Query("SELECT * FROM comics ORDER BY dateAdded DESC")
    fun getComicsSortedByDateDesc(): Flow<List<ComicEntity>>

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertAll(comics: List<ComicEntity>)

    @Query("SELECT COUNT(*) FROM comics")
    suspend fun getComicCount(): Int

    @Query("SELECT * FROM comics WHERE filePath IN (:filePaths)")
    suspend fun getComicsByFilePaths(filePaths: List<String>): List<ComicEntity>

    @Query("DELETE FROM comics WHERE filePath IN (:filePaths)")
    suspend fun deleteComicsByFilePaths(filePaths: List<String>)
}