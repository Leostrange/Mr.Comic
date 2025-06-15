package com.example.mrcomic.data

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query
import kotlinx.coroutines.flow.Flow

@Dao
interface ComicFtsDao {
    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun insertTag(tag: ComicFts)

    @Query("SELECT * FROM comics_fts WHERE comics_fts MATCH :query")
    fun searchComics(query: String): Flow<List<ComicFts>>

    @Query("SELECT * FROM comics_fts WHERE author LIKE '%' || :author || '%'")
    fun filterByAuthor(author: String): Flow<List<ComicFts>>

    @Query("SELECT * FROM comics_fts WHERE tags LIKE '%' || :tags || '%'")
    fun filterByTags(tags: String): Flow<List<ComicFts>>

    @Query("SELECT * FROM comics_fts WHERE collectionName LIKE '%' || :collectionName || '%'")
    fun filterByCollection(collectionName: String): Flow<List<ComicFts>>

    @Query("SELECT * FROM comics_fts WHERE publisher LIKE '%' || :publisher || '%'")
    fun filterByPublisher(publisher: String): Flow<List<ComicFts>>

    @Query("SELECT * FROM comics_fts WHERE year LIKE '%' || :year || '%'")
    fun filterByYear(year: String): Flow<List<ComicFts>>
} 