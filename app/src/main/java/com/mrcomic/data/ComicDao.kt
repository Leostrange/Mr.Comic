package com.example.mrcomic.data

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import kotlinx.coroutines.flow.Flow

@Dao
interface ComicDao {
    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertComic(comic: ComicEntity)

    @Query("SELECT * FROM comics WHERE file_path = :filePath")
    suspend fun getComicByFilePath(filePath: String): ComicEntity?

    @Query("SELECT * FROM comics")
    fun getAllComics(): Flow<List<ComicEntity>>

    @Query("DELETE FROM comics")
    suspend fun clearDatabase()
}

