package com.example.core.data.database.dao

import androidx.room.*
import com.example.core.model.ReadingSession
import kotlinx.coroutines.flow.Flow

/**
 * DAO для работы с сессиями чтения
 */
@Dao
interface ReadingSessionDao {
    
    @Query("SELECT * FROM reading_sessions ORDER BY lastReadAt DESC")
    fun getAllSessions(): Flow<List<ReadingSession>>
    
    @Query("SELECT * FROM reading_sessions WHERE comicId = :comicId")
    suspend fun getByComicId(comicId: String): ReadingSession?
    
    @Query("SELECT * FROM reading_sessions WHERE comicId = :comicId")
    fun observeByComicId(comicId: String): Flow<ReadingSession?>
    
    @Query("SELECT * FROM reading_sessions ORDER BY lastReadAt DESC LIMIT :limit")
    fun getRecentSessions(limit: Int = 10): Flow<List<ReadingSession>>
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(session: ReadingSession)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertAll(sessions: List<ReadingSession>)
    
    @Update
    suspend fun update(session: ReadingSession)
    
    @Delete
    suspend fun delete(session: ReadingSession)
    
    @Query("DELETE FROM reading_sessions WHERE comicId = :comicId")
    suspend fun deleteByComicId(comicId: String)
    
    @Query("UPDATE reading_sessions SET currentPage = :currentPage, lastReadAt = :timestamp WHERE comicId = :comicId")
    suspend fun updateProgress(comicId: String, currentPage: Int, timestamp: Long = System.currentTimeMillis())
    
    @Query("DELETE FROM reading_sessions WHERE lastReadAt < :timestamp")
    suspend fun deleteOlderThan(timestamp: Long)
}
