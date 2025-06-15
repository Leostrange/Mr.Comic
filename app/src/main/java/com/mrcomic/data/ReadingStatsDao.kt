package com.example.mrcomic.data

import androidx.room.*
import kotlinx.coroutines.flow.Flow

@Dao
interface ReadingStatsDao {
    @Query("SELECT * FROM reading_stats")
    fun getAllStats(): Flow<List<ReadingStats>>

    @Query("SELECT * FROM reading_stats WHERE comicId = :comicId")
    suspend fun getStats(comicId: String): ReadingStats?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertStats(stats: ReadingStats)

    @Update
    suspend fun updateStats(stats: ReadingStats)
} 