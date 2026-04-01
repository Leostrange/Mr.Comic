package com.example.core.data.db

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query

@Dao
interface EpubStructureCacheDao {

    @Query("SELECT * FROM epub_structure_cache WHERE filePath = :filePath LIMIT 1")
    suspend fun getByPath(filePath: String): EpubStructureCacheEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsert(entry: EpubStructureCacheEntity)

    @Query("DELETE FROM epub_structure_cache WHERE updatedAt < :updatedBefore")
    suspend fun deleteOlderThan(updatedBefore: Long)
}
