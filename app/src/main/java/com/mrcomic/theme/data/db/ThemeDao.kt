package com.example.mrcomic.theme.data.db

import androidx.room.*
import com.example.mrcomic.theme.data.model.Theme
import kotlinx.coroutines.flow.Flow

/**
 * Data Access Object для работы с темами в локальной базе данных
 */
@Dao
interface ThemeDao {
    @Query("SELECT * FROM themes ORDER BY createdAt DESC")
    fun getAllThemes(): Flow<List<Theme>>
    
    @Query("SELECT * FROM themes WHERE id = :themeId")
    suspend fun getThemeById(themeId: String): Theme?
    
    @Query("SELECT * FROM themes WHERE authorId = :userId ORDER BY createdAt DESC")
    fun getThemesByAuthor(userId: String): Flow<List<Theme>>
    
    @Query("SELECT * FROM themes ORDER BY rating.average DESC LIMIT :limit")
    fun getTopRatedThemes(limit: Int): Flow<List<Theme>>
    
    @Query("SELECT * FROM themes ORDER BY downloads DESC LIMIT :limit")
    fun getMostDownloadedThemes(limit: Int): Flow<List<Theme>>
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertTheme(theme: Theme)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertThemes(themes: List<Theme>)
    
    @Update
    suspend fun updateTheme(theme: Theme)
    
    @Delete
    suspend fun deleteTheme(theme: Theme)
    
    @Query("DELETE FROM themes WHERE id = :themeId")
    suspend fun deleteThemeById(themeId: String)
    
    @Query("DELETE FROM themes")
    suspend fun deleteAllThemes()
}
