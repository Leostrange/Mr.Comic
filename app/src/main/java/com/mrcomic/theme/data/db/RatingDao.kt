package com.example.mrcomic.theme.data.db

import androidx.room.*
import com.example.mrcomic.theme.data.model.Rating
import kotlinx.coroutines.flow.Flow

/**
 * Data Access Object для работы с рейтингами в локальной базе данных
 */
@Dao
interface RatingDao {
    @Query("SELECT * FROM ratings WHERE themeId = :themeId")
    fun getRatingsByTheme(themeId: String): Flow<List<Rating>>
    
    @Query("SELECT * FROM ratings WHERE userId = :userId")
    fun getRatingsByUser(userId: String): Flow<List<Rating>>
    
    @Query("SELECT * FROM ratings WHERE themeId = :themeId AND userId = :userId")
    suspend fun getRatingByThemeAndUser(themeId: String, userId: String): Rating?
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertRating(rating: Rating)
    
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertRatings(ratings: List<Rating>)
    
    @Update
    suspend fun updateRating(rating: Rating)
    
    @Delete
    suspend fun deleteRating(rating: Rating)
    
    @Query("DELETE FROM ratings WHERE themeId = :themeId")
    suspend fun deleteRatingsByTheme(themeId: String)
    
    @Query("DELETE FROM ratings WHERE userId = :userId")
    suspend fun deleteRatingsByUser(userId: String)
    
    @Query("DELETE FROM ratings")
    suspend fun deleteAllRatings()
}
