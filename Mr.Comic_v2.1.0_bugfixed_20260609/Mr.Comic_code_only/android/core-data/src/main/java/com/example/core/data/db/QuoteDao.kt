package com.example.core.data.db

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import com.example.core.model.SavedQuote
import kotlinx.coroutines.flow.Flow

@Dao
interface QuoteDao {

    @Query("SELECT * FROM saved_quotes ORDER BY createdAt DESC")
    fun getAllQuotes(): Flow<List<SavedQuote>>

    @Query(
        """
        SELECT * FROM saved_quotes
        WHERE LOWER(text) LIKE '%' || LOWER(:query) || '%'
           OR LOWER(COALESCE(translatedText, '')) LIKE '%' || LOWER(:query) || '%'
           OR LOWER(comicTitle) LIKE '%' || LOWER(:query) || '%'
        ORDER BY createdAt DESC
        """
    )
    fun searchQuotes(query: String): Flow<List<SavedQuote>>

    @Query("SELECT * FROM saved_quotes WHERE id = :id LIMIT 1")
    suspend fun getQuoteById(id: String): SavedQuote?

    @Query(
        """
        SELECT * FROM saved_quotes
        WHERE comicId = :comicId AND page = :page AND contentHash = :contentHash
        LIMIT 1
        """
    )
    suspend fun findExistingQuote(comicId: String, page: Int, contentHash: String): SavedQuote?

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertQuote(quote: SavedQuote)

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    suspend fun insertQuotes(quotes: List<SavedQuote>)

    @Update
    suspend fun updateQuote(quote: SavedQuote)

    @Query(
        """
        UPDATE saved_quotes
        SET comicTitle = :comicTitle,
            comicPath = :comicPath,
            updatedAt = :updatedAt
        WHERE comicId = :comicId
        """
    )
    suspend fun refreshComicSnapshot(
        comicId: String,
        comicTitle: String,
        comicPath: String,
        updatedAt: Long
    )

    @Query("DELETE FROM saved_quotes WHERE id = :id")
    suspend fun deleteQuote(id: String)
}
