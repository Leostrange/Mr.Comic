package com.example.core.data.db

import androidx.room.Dao
import androidx.room.Insert
import androidx.room.OnConflictStrategy
import androidx.room.Query

@Dao
interface EpubManifestCacheDao {
    @Query("SELECT * FROM epub_manifest_cache WHERE filePath = :filePath LIMIT 1")
    suspend fun getByPath(filePath: String): EpubManifestCacheEntity?

    @Insert(onConflict = OnConflictStrategy.REPLACE)
    suspend fun upsert(entry: EpubManifestCacheEntity)

    @Query("DELETE FROM epub_manifest_cache WHERE updatedAt < :updatedBefore")
    suspend fun deleteOlderThan(updatedBefore: Long)
}
