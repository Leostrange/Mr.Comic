package com.example.core.data.db

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import kotlinx.coroutines.flow.Flow

@Dao
interface AudiobookDao {

    @Query("SELECT * FROM audiobooks ORDER BY addedAt DESC")
    fun getAllFlow(): Flow<List<AudiobookEntity>>

    @Query("SELECT * FROM audiobooks WHERE id = :id LIMIT 1")
    suspend fun getById(id: String): AudiobookEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsert(audiobook: AudiobookEntity)

    @Update
    suspend fun update(audiobook: AudiobookEntity)

    @Query("DELETE FROM audiobooks WHERE id = :id")
    suspend fun deleteById(id: String)

    @Query("UPDATE audiobooks SET lastChapterIndex = :chapterIndex, lastPositionMs = :positionMs WHERE id = :id")
    suspend fun saveProgress(id: String, chapterIndex: Int, positionMs: Long)

    @Query("UPDATE audiobooks SET speed = :speed WHERE id = :id")
    suspend fun saveSpeed(id: String, speed: Float)

    @Query("UPDATE audiobooks SET chaptersJson = :json WHERE id = :id")
    suspend fun updateChapters(id: String, json: String)

    @Query("UPDATE audiobooks SET coverUri = :uri WHERE id = :id")
    suspend fun updateCover(id: String, uri: String)
}
