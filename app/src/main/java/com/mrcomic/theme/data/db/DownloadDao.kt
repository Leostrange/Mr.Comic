package com.example.mrcomic.theme.data.db

import androidx.room.*
import com.example.mrcomic.theme.data.model.Download
import kotlinx.coroutines.flow.Flow

/**
 * Data Access Object для работы с загрузками в локальной базе данных
 */
@Dao
interface DownloadDao {
    @Query("SELECT * FROM downloads WHERE themeId = :themeId ORDER BY downloadedAt DESC")
    fun getDownloadsByTheme(themeId: String): Flow<List<Download>>
    
    @Query("SELECT * FROM downloads WHERE userId = :userId ORDER BY downloadedAt DESC")
    fun getDownloadsByUser(userId: String): Flow<List<Download>>
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertDownload(download: Download)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertDownloads(downloads: List<Download>)
    
    @Delete
    suspend fun deleteDownload(download: Download)
    
    @Query("DELETE FROM downloads WHERE themeId = :themeId")
    suspend fun deleteDownloadsByTheme(themeId: String)
    
    @Query("DELETE FROM downloads WHERE userId = :userId")
    suspend fun deleteDownloadsByUser(userId: String)
    
    @Query("DELETE FROM downloads")
    suspend fun deleteAllDownloads()
}
