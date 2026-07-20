package com.example.core.data.db

import androidx.room.Dao
import androidx.room.Delete
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import androidx.room.Update
import com.example.core.model.TextHighlight
import kotlinx.coroutines.flow.Flow

@Dao
interface TextHighlightDao {

    @Query("SELECT * FROM text_highlights WHERE comicId = :comicId AND page = :page ORDER BY startOffset ASC")
    fun highlightsForPage(comicId: String, page: Int): Flow<List<TextHighlight>>

    @Query("SELECT * FROM text_highlights WHERE comicId = :comicId ORDER BY page ASC, startOffset ASC")
    fun highlightsForComic(comicId: String): Flow<List<TextHighlight>>

    @Query("SELECT * FROM text_highlights WHERE comicId = :comicId ORDER BY page ASC, startOffset ASC")
    suspend fun getHighlightsForComic(comicId: String): List<TextHighlight>

    @Query("SELECT * FROM text_highlights WHERE id = :id")
    suspend fun getById(id: String): TextHighlight?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insert(highlight: TextHighlight)

    @Update
    suspend fun update(highlight: TextHighlight)

    @Delete
    suspend fun delete(highlight: TextHighlight)

    @Query("DELETE FROM text_highlights WHERE id = :id")
    suspend fun deleteById(id: String)

    @Query("DELETE FROM text_highlights WHERE comicId = :comicId AND page = :page")
    suspend fun deleteAllForPage(comicId: String, page: Int)

    @Query("DELETE FROM text_highlights WHERE comicId = :comicId")
    suspend fun deleteAllForComic(comicId: String)

    @Query("SELECT COUNT(*) FROM text_highlights WHERE comicId = :comicId")
    suspend fun countForComic(comicId: String): Int

    @Query("SELECT COUNT(*) FROM text_highlights WHERE comicId = :comicId AND page = :page")
    suspend fun countForPage(comicId: String, page: Int): Int
}
