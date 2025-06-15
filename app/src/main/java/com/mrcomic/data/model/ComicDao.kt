package com.example.mrcomic.data.model

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.Query
import androidx.room.Update

@Dao
interface ComicDao {
    @Insert
    suspend fun insert(comic: Comic)

    @Update
    suspend fun update(comic: Comic)

    @Query("SELECT * FROM comics")
    suspend fun getAllComics(): List<Comic>

    @Query("SELECT * FROM comics WHERE filePath = :filePath")
    suspend fun getComicByPath(filePath: String): Comic?
}

